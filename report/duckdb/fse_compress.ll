Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/fse_compress?download=true
inline.NumInlined: 48
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11duckdb_zstdL23FSE_writeNCount_genericEPvmPKsjjj:bb.a
.critedge._crit_edge:                             ; preds = %bb.i, %.critedge, %bb.c
  %.0136.lcssa.ph = phi ptr [ %.0136228, %bb.c ], [ %.0136228, %.critedge ], [ %.5141, %bb.i ] ; 3 uses
  %.0132.lcssa.ph = phi i32 [ %.0132230, %bb.c ], [ %.0132230, %.critedge ], [ %i.bc, %bb.i ]
  %.0122.lcssa.ph = phi i32 [ %.0122232, %bb.c ], [ %.0122232, %.critedge ], [ %.6128, %bb.i ]
  %.0119.lcssa.ph = phi i32 [ %.0119233, %bb.c ], [ %.0119233, %.critedge ], [ %.5, %bb.i ]
  %i.bz = icmp eq i32 %.0132.lcssa.ph, 1
  %i.ca = add nsw i32 %.0119.lcssa.ph, 7
  %i.cb = sdiv i32 %i.ca, 8
  %i.cc = sext i32 %i.cb to i64
  br i1 %i.bz, label %bb.j, label %.thread

bb.j:                                             ; preds = %.critedge._crit_edge
  %.not162 = icmp eq i32 %5, 0
  %i.cd = getelementptr inbounds i8, ptr %i.a, i64 -2
  %i.ce = icmp ugt ptr %.0136.lcssa.ph, %i.cd
  %or.cond171 = select i1 %.not162, i1 %i.ce, i1 false
  br i1 %or.cond171, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = trunc i32 %.0122.lcssa.ph to i16
  store i16 %i.cf, ptr %.0136.lcssa.ph, align 1
  %i.cg = getelementptr inbounds i8, ptr %.0136.lcssa.ph, i64 %i.cc
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %0 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  br label %.thread

.thread:                                          ; preds = %.thread178, %bb.e, %bb.g, %.lr.ph209.split, %bb.a, %bb.j, %.critedge._crit_edge, %bb.k
  %.4147 = phi i64 [ %i.cj, %bb.k ], [ -1, %.critedge._crit_edge ], [ -70, %bb.j ], [ -70, %.lr.ph209.split ], [ -1, %bb.a ], [ -70, %bb.g ], [ -1, %.thread178 ], [ -70, %bb.e ]
  ret i64 %.4147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 5, 13) i32 @_ZN11duckdb_zstd28FSE_optimalTableLog_internalEjmjj(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 !guid !38 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = add i32 %i.a, -1
  %i.c = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = xor i32 %i.c, 31
  %i.e = sub i32 %i.d, %3
  %i.f = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %i.h = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.i = sub nuw nsw i32 33, %i.h
  %i.j = tail call noundef range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.g, i32 %i.i)
  %i.k = icmp eq i32 %0, 0
  %spec.store.select = select i1 %i.k, i32 11, i32 %0
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %spec.store.select)
  %.1 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %spec.select)
  %spec.store.select1 = tail call i32 @llvm.umax.i32(i32 %.1, i32 5)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select1, i32 12)
  ret i32 %spec.store.select2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 5, 13) i32 @_ZN11duckdb_zstd19FSE_optimalTableLogEjmj(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 !guid !39 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = add i32 %i.a, -1
  %i.c = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nsw i32 29, %i.c
  %i.e = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.h = sub nuw nsw i32 33, %i.g
  %i.i = tail call noundef range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.f, i32 %i.h)
  %i.j = icmp eq i32 %0, 0
  %spec.store.select.i = select i1 %i.j, i32 11, i32 %0
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %spec.store.select.i)
  %.1.i = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %spec.select.i)
  %spec.store.select1.i = tail call i32 @llvm.umax.i32(i32 %.1.i, i32 5)
  %spec.store.select2.i = tail call noundef range(i32 5, 13) i32 @llvm.umin.i32(i32 %spec.store.select1.i, i32 12)
  ret i32 %spec.store.select2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i64 -44, 13) i64 @_ZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjj(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !guid !47 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %spec.store.select = select i1 %i.a, i32 11, i32 %1 ; 7 uses
  %i.b = icmp ult i32 %spec.store.select, 5
  br i1 %i.b, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %spec.store.select, 12
  br i1 %i.c, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %3 to i32
  %i.e = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %i.h = sub nuw nsw i32 33, %i.g
  %i.i = tail call noundef range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.f, i32 %i.h)
  %i.j = icmp samesign ult i32 %spec.store.select, %i.i
  br i1 %i.j, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 0
  %i.k = select i1 %.not, i16 1, i16 -1           ; 2 uses
  %i.l = sub nuw nsw i32 62, %spec.store.select
  %i.m = zext nneg i32 %i.l to i64                ; 7 uses
  %i.n = and i64 %3, 4294967295
  %i.o = udiv i64 4611686018427387904, %i.n
  %i.p = add nsw i64 %i.m, -20
  %i.q = shl nuw nsw i32 1, %spec.store.select    ; 3 uses
  %i.r = zext nneg i32 %spec.store.select to i64  ; 7 uses
  %i.s = lshr i64 %3, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.m
  %.073104 = phi i16 [ 0, %bb.d ], [ %.275, %bb.m ] ; 4 uses
  %.076103 = phi i32 [ 0, %bb.d ], [ %.278, %bb.m ] ; 3 uses
  %.079102 = phi i32 [ 0, %bb.d ], [ %i.ax, %bb.m ] ; 3 uses
  %.080101 = phi i32 [ %i.q, %bb.d ], [ %.181, %bb.m ] ; 3 uses
  %i.u = zext i32 %.079102 to i64                 ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !6    ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = icmp eq i64 %3, %i.x
  br i1 %i.y, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %i.w, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 0, ptr %i.aa, align 2, !tbaa !9
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %.not88 = icmp ugt i32 %i.w, %i.t
  br i1 %.not88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 %i.k, ptr %i.ab, align 2, !tbaa !9
  %i.ac = add nsw i32 %.080101, -1
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ad = mul i64 %i.o, %i.x                      ; 2 uses
  %i.ae = lshr i64 %i.ad, %i.m                    ; 4 uses
  %i.af = trunc nuw nsw i64 %i.ae to i16
  %i.ag = trunc nuw nsw i64 %i.ae to i32          ; 2 uses
  %i.ah = and i32 %i.ag, 65528
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstd18FSE_normalizeCountEPsjPKjmjjE8rtbTable, i64 %i.ae
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !6
  %i.al = zext i32 %i.ak to i64
  %i.am = shl i64 %i.al, %i.p
  %i.an = shl i64 %i.ae, %i.m
  %i.ao = sub i64 %i.ad, %i.an
  %i.ap = icmp ugt i64 %i.ao, %i.am
  %i.aq = zext i1 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.aq, %i.ag
  %i.as = trunc nuw nsw i32 %i.ar to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.070 = phi i16 [ %i.as, %bb.k ], [ %i.af, %bb.j ] ; 4 uses
  %i.at = zext nneg i16 %.070 to i32
  %i.au = icmp ugt i16 %.070, %.073104
  %spec.select = select i1 %i.au, i32 %.079102, i32 %.076103
  %spec.select89 = tail call i16 @llvm.umax.i16(i16 %.070, i16 %.073104)
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 %.070, ptr %i.av, align 2, !tbaa !9
  %i.aw = sub nsw i32 %.080101, %i.at
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.g
  %.181 = phi i32 [ %.080101, %bb.g ], [ %i.ac, %bb.i ], [ %i.aw, %bb.l ] ; 3 uses
  %.278 = phi i32 [ %.076103, %bb.g ], [ %.076103, %bb.i ], [ %spec.select, %bb.l ] ; 2 uses
  %.275 = phi i16 [ %.073104, %bb.g ], [ %.073104, %bb.i ], [ %spec.select89, %bb.l ]
  %i.ax = add i32 %.079102, 1                     ; 2 uses
  %.not85 = icmp ugt i32 %i.ax, %4
  br i1 %.not85, label %bb.n, label %bb.e, !llvm.loop !40

bb.n:                                             ; preds = %bb.m
  %i.ay = sub nsw i32 0, %.181
  %i.az = zext i32 %.278 to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !9  ; 2 uses
  %i.bc = ashr i16 %i.bb, 1
  %i.bd = sext i16 %i.bc to i32
  %.not86 = icmp sgt i32 %i.bd, %i.ay
  br i1 %.not86, label %bb.as, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = mul i64 %3, 3
  %i.bf = add nuw nsw i32 %spec.store.select, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = lshr i64 %i.be, %i.bg                   ; 2 uses
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = add nuw i32 %4, 1                       ; 3 uses
  %wide.trip.count.i = zext i32 %i.bj to i64      ; 6 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i, %bb.w ] ; 5 uses
  %.0118156.i = phi i32 [ 0, %bb.o ], [ %.1119.i, %bb.w ] ; 4 uses
  %.0131154.i = phi i64 [ %3, %bb.o ], [ %.1132.i, %bb.w ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !6  ; 5 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 0, ptr %i.bn, align 2, !tbaa !9
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %.not148.i = icmp ugt i32 %i.bl, %i.t
  br i1 %.not148.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.k, ptr %i.bo, align 2, !tbaa !9
  %i.bp = add i32 %.0118156.i, 1
  %i.bq = zext i32 %i.bl to i64
  %i.br = sub i64 %.0131154.i, %i.bq
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %.not149.i = icmp ugt i32 %i.bl, %i.bi
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  br i1 %.not149.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i16 1, ptr %i.bs, align 2, !tbaa !9
  %i.bt = add i32 %.0118156.i, 1
  %i.bu = zext i32 %i.bl to i64
  %i.bv = sub i64 %.0131154.i, %i.bu
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i16 -2, ptr %i.bs, align 2, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s, %bb.q
  %.1132.i = phi i64 [ %.0131154.i, %bb.q ], [ %i.br, %bb.s ], [ %i.bv, %bb.u ], [ %.0131154.i, %bb.v ] ; 6 uses
  %.1119.i = phi i32 [ %.0118156.i, %bb.q ], [ %i.bp, %bb.s ], [ %i.bt, %bb.u ], [ %.0118156.i, %bb.v ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %bb.x, label %bb.p, !llvm.loop !41

bb.x:                                             ; preds = %bb.w
  %i.bw = sub i32 %i.q, %.1119.i                  ; 4 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = zext i32 %i.bw to i64
  %i.bz = udiv i64 %.1132.i, %i.by
  %i.ca = and i64 %i.bh, 4294967295
  %i.cb = icmp ugt i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.cc = mul i64 %.1132.i, 3
  %i.cd = shl i32 %i.bw, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = udiv i64 %i.cc, %i.ce
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ch = icmp eq i32 %4, 0
  br i1 %i.ch, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.z
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.new
  %indvars.iv170.i = phi i64 [ 0, %.new ], [ %indvars.iv.next171.i.1, %bb.ag ] ; 4 uses
  %.2120159.i = phi i32 [ %.1119.i, %.new ], [ %.3.i.1, %bb.ag ] ; 3 uses
  %.2133157.i = phi i64 [ %.1132.i, %.new ], [ %.3134.i.1, %bb.ag ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.ag ]
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv170.i ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !9
  %i.ck = icmp eq i16 %i.cj, -2
  br i1 %i.ck, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv170.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !6  ; 2 uses
  %.not147.i = icmp ugt i32 %i.cm, %i.cg
  br i1 %.not147.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i16 1, ptr %i.ci, align 2, !tbaa !9
  %i.cn = add i32 %.2120159.i, 1
  %i.co = zext i32 %i.cm to i64
  %i.cp = sub i64 %.2133157.i, %i.co
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.3134.i = phi i64 [ %i.cp, %bb.ac ], [ %.2133157.i, %bb.ab ], [ %.2133157.i, %bb.aa ] ; 3 uses
  %.3.i = phi i32 [ %i.cn, %bb.ac ], [ %.2120159.i, %bb.ab ], [ %.2120159.i, %bb.aa ] ; 3 uses
  %indvars.iv.next171.i = or disjoint i64 %indvars.iv170.i, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next171.i ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !9
  %i.cs = icmp eq i16 %i.cr, -2
  br i1 %i.cs, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next171.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !6  ; 2 uses
  %.not147.i.1 = icmp ugt i32 %i.cu, %i.cg
  br i1 %.not147.i.1, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i16 1, ptr %i.cq, align 2, !tbaa !9
  %i.cv = add i32 %.3.i, 1
  %i.cw = zext i32 %i.cu to i64
  %i.cx = sub i64 %.3134.i, %i.cw
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.3134.i.1 = phi i64 [ %i.cx, %bb.af ], [ %.3134.i, %bb.ae ], [ %.3134.i, %bb.ad ] ; 3 uses
  %.3.i.1 = phi i32 [ %i.cv, %bb.af ], [ %.3.i, %bb.ae ], [ %.3.i, %bb.ad ] ; 3 uses
  %indvars.iv.next171.i.1 = add nuw nsw i64 %indvars.iv170.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.aa, !llvm.loop !42

.unr-lcssa:                                       ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.z
  %indvars.iv170.i.epil.init = phi i64 [ 0, %bb.z ], [ %indvars.iv.next171.i.1, %.unr-lcssa ] ; 2 uses
  %.2120159.i.epil.init = phi i32 [ %.1119.i, %bb.z ], [ %.3.i.1, %.unr-lcssa ] ; 3 uses
  %.2133157.i.epil.init = phi i64 [ %.1132.i, %bb.z ], [ %.3134.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod126 = trunc i32 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv170.i.epil.init ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !9
  %i.da = icmp eq i16 %i.cz, -2
  br i1 %i.da, label %bb.ah, label %.epilog-lcssa

bb.ah:                                            ; preds = %.epil.preheader
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv170.i.epil.init
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !6  ; 2 uses
  %.not147.i.epil = icmp ugt i32 %i.dc, %i.cg
  br i1 %.not147.i.epil, label %.epilog-lcssa, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i16 1, ptr %i.cy, align 2, !tbaa !9
  %i.dd = add i32 %.2120159.i.epil.init, 1
  %i.de = zext i32 %i.dc to i64
  %i.df = sub i64 %.2133157.i.epil.init, %i.de
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.ah, %bb.ai, %.unr-lcssa
  %.3134.i.lcssa = phi i64 [ %.3134.i.1, %.unr-lcssa ], [ %i.df, %bb.ai ], [ %.2133157.i.epil.init, %bb.ah ], [ %.2133157.i.epil.init, %.epil.preheader ]
  %.3.i.lcssa = phi i32 [ %.3.i.1, %.unr-lcssa ], [ %i.dd, %bb.ai ], [ %.2120159.i.epil.init, %bb.ah ], [ %.2120159.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.dg = sub i32 %i.q, %.3.i.lcssa
  br label %bb.aj

bb.aj:                                            ; preds = %.epilog-lcssa, %bb.y
  %.4135.i = phi i64 [ %.3134.i.lcssa, %.epilog-lcssa ], [ %.1132.i, %bb.y ] ; 2 uses
  %.4.i = phi i32 [ %.3.i.lcssa, %.epilog-lcssa ], [ %.1119.i, %bb.y ]
  %.0115.i = phi i32 [ %i.dg, %.epilog-lcssa ], [ %i.bw, %bb.y ] ; 4 uses
  %i.dh = icmp eq i32 %.4.i, %i.bj
  br i1 %i.dh, label %.preheader.i.preheader, label %bb.ak

.preheader.i.preheader:                           ; preds = %bb.aj
  %xtraiter128 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.di = icmp ult i32 %4, 3
  br i1 %i.di, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter133 = and i64 %wide.trip.count.i, 4294967292
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %indvars.iv175.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %indvars.iv.next176.i.3, %.preheader.i ] ; 6 uses
  %.0109168.i = phi i32 [ 0, %.preheader.i.preheader.new ], [ %spec.select150.i.3, %.preheader.i ] ; 2 uses
  %.0111167.i = phi i32 [ 0, %.preheader.i.preheader.new ], [ %spec.select.i.3, %.preheader.i ]
  %niter134 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter134.next.3, %.preheader.i ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv175.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !6  ; 2 uses
  %i.dl = icmp ugt i32 %i.dk, %.0109168.i
  %i.dm = trunc nuw i64 %indvars.iv175.i to i32
  %spec.select.i = select i1 %i.dl, i32 %i.dm, i32 %.0111167.i
  %spec.select150.i = tail call i32 @llvm.umax.i32(i32 %i.dk, i32 %.0109168.i) ; 2 uses
  %indvars.iv.next176.i = or disjoint i64 %indvars.iv175.i, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next176.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !6  ; 2 uses
  %i.dp = icmp ugt i32 %i.do, %spec.select150.i
  %i.dq = trunc nuw i64 %indvars.iv.next176.i to i32
  %spec.select.i.1 = select i1 %i.dp, i32 %i.dq, i32 %spec.select.i
  %spec.select150.i.1 = tail call i32 @llvm.umax.i32(i32 %i.do, i32 %spec.select150.i) ; 2 uses
  %indvars.iv.next176.i.1 = or disjoint i64 %indvars.iv175.i, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next176.i.1
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !6  ; 2 uses
  %i.dt = icmp ugt i32 %i.ds, %spec.select150.i.1
  %i.du = trunc nuw i64 %indvars.iv.next176.i.1 to i32
  %spec.select.i.2 = select i1 %i.dt, i32 %i.du, i32 %spec.select.i.1
  %spec.select150.i.2 = tail call i32 @llvm.umax.i32(i32 %i.ds, i32 %spec.select150.i.1) ; 2 uses
  %indvars.iv.next176.i.2 = or disjoint i64 %indvars.iv175.i, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next176.i.2
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !6  ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, %spec.select150.i.2
  %i.dy = trunc nuw i64 %indvars.iv.next176.i.2 to i32
  %spec.select.i.3 = select i1 %i.dx, i32 %i.dy, i32 %spec.select.i.2 ; 3 uses
  %spec.select150.i.3 = tail call i32 @llvm.umax.i32(i32 %i.dw, i32 %spec.select150.i.2) ; 2 uses
  %indvars.iv.next176.i.3 = add nuw nsw i64 %indvars.iv175.i, 4 ; 2 uses
  %niter134.next.3 = add i64 %niter134, 4         ; 2 uses
  %niter134.ncmp.3 = icmp eq i64 %niter134.next.3, %unroll_iter133
  br i1 %niter134.ncmp.3, label %.unr-lcssa127, label %.preheader.i, !llvm.loop !43

.unr-lcssa127:                                    ; preds = %.preheader.i
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.epilog-lcssa130, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa127, %.preheader.i.preheader
  %indvars.iv175.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next176.i.3, %.unr-lcssa127 ]
  %.0109168.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %spec.select150.i.3, %.unr-lcssa127 ]
  %.0111167.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %spec.select.i.3, %.unr-lcssa127 ]
  %lcmp.mod132 = icmp ne i64 %xtraiter128, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv175.i.epil = phi i64 [ %indvars.iv.next176.i.epil, %.preheader.i.epil ], [ %indvars.iv175.i.epil.init, %.preheader.i.epil.preheader ] ; 3 uses
  %.0109168.i.epil = phi i32 [ %spec.select150.i.epil, %.preheader.i.epil ], [ %.0109168.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.0111167.i.epil = phi i32 [ %spec.select.i.epil, %.preheader.i.epil ], [ %.0111167.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv175.i.epil
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !6  ; 2 uses
  %i.eb = icmp ugt i32 %i.ea, %.0109168.i.epil
  %i.ec = trunc nuw i64 %indvars.iv175.i.epil to i32
  %spec.select.i.epil = select i1 %i.eb, i32 %i.ec, i32 %.0111167.i.epil ; 2 uses
  %spec.select150.i.epil = tail call i32 @llvm.umax.i32(i32 %i.ea, i32 %.0109168.i.epil)
  %indvars.iv.next176.i.epil = add nuw nsw i64 %indvars.iv175.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter128
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa130, label %.preheader.i.epil, !llvm.loop !44

.epilog-lcssa130:                                 ; preds = %.preheader.i.epil, %.unr-lcssa127
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %.unr-lcssa127 ], [ %spec.select.i.epil, %.preheader.i.epil ]
  %i.ed = zext i32 %spec.select.i.lcssa to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ed ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !9
  %i.eg = trunc i32 %.0115.i to i16
  %i.eh = add i16 %i.ef, %i.eg
  store i16 %i.eh, ptr %i.ee, align 2, !tbaa !9
  br label %select.unfold

bb.ak:                                            ; preds = %bb.aj
  %i.ei = icmp eq i64 %.4135.i, 0
  br i1 %i.ei, label %.preheader153.i, label %bb.an

.preheader153.i:                                  ; preds = %bb.ak
  %.not145163.i = icmp eq i32 %.0115.i, 0
  br i1 %.not145163.i, label %select.unfold, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader153.i, %bb.am
  %.1116165.i = phi i32 [ %.2117.i, %bb.am ], [ %.0115.i, %.preheader153.i ] ; 2 uses
  %.3124164.i = phi i32 [ %i.er, %bb.am ], [ 0, %.preheader153.i ] ; 3 uses
  %i.ej = zext i32 %.3124164.i to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ej ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !9  ; 2 uses
  %i.em = icmp sgt i16 %i.el, 0
  br i1 %i.em, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i
  %i.en = add i32 %.1116165.i, -1
  %i.eo = add nuw i16 %i.el, 1
  store i16 %i.eo, ptr %i.ek, align 2, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i
  %.2117.i = phi i32 [ %i.en, %bb.al ], [ %.1116165.i, %.lr.ph.i ] ; 2 uses
  %i.ep = add i32 %.3124164.i, 1
  %i.eq = icmp eq i32 %.3124164.i, %4
  %i.er = select i1 %i.eq, i32 0, i32 %i.ep
  %.not145.i = icmp eq i32 %.2117.i, 0
  br i1 %.not145.i, label %select.unfold, label %.lr.ph.i, !llvm.loop !45

bb.an:                                            ; preds = %bb.ak
  %i.es = add nsw i64 %i.m, -1
  %notmask.i = shl nsw i64 -1, %i.es
  %i.et = xor i64 %notmask.i, -1                  ; 2 uses
  %i.eu = zext i32 %.0115.i to i64
  %i.ev = shl i64 %i.eu, %i.m
  %i.ew = add i64 %i.ev, %i.et
  %i.ex = and i64 %.4135.i, 4294967295
  %i.ey = udiv i64 %i.ew, %i.ex
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %bb.an
  %.0161.i.a = phi i64 [ %indvars.iv.next, %bb.ar ], [ 0, %bb.an ] ; 3 uses
  %.0161.i = phi i64 [ %.2.i, %bb.ar ], [ %i.et, %bb.an ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0161.i.a ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !9
  %i.fb = icmp eq i16 %i.fa, -2
  br i1 %i.fb, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0161.i.a
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !6
  %i.fe = zext i32 %i.fd to i64
  %i.ff = mul i64 %i.ey, %i.fe
  %i.fg = add i64 %i.ff, %.0161.i                 ; 2 uses
  %i.fh = lshr i64 %.0161.i, %i.m                 ; 2 uses
  %i.fi = lshr i64 %i.fg, %i.m                    ; 2 uses
  %.not144.i = icmp eq i64 %i.fi, %i.fh
  br i1 %.not144.i, label %select.unfold, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = trunc nuw nsw i64 %i.fh to i16
  %i.fk = trunc nuw nsw i64 %i.fi to i16
  %i.fl = sub nsw i16 %i.fk, %i.fj
  store i16 %i.fl, ptr %i.ez, align 2, !tbaa !9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.2.i = phi i64 [ %i.fg, %bb.aq ], [ %.0161.i, %bb.ao ]
  %indvars.iv.next = add nuw nsw i64 %.0161.i.a, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond, label %select.unfold, label %bb.ao, !llvm.loop !46

bb.as:                                            ; preds = %bb.n
  %i.fm = trunc i32 %.181 to i16
  %i.fn = add i16 %i.bb, %i.fm
  store i16 %i.fn, ptr %i.ba, align 2, !tbaa !9
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.ap, %bb.ar, %bb.am, %.preheader153.i, %bb.x, %.epilog-lcssa130, %bb.as, %bb.c, %bb.b, %bb.a
  %.3 = phi i64 [ -1, %bb.c ], [ -1, %bb.a ], [ -44, %bb.b ], [ %i.r, %bb.am ], [ %i.r, %.preheader153.i ], [ %i.r, %bb.as ], [ %i.r, %bb.ar ], [ %i.r, %.epilog-lcssa130 ], [ %i.r, %bb.x ], [ -1, %bb.ap ], [ 0, %bb.e ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @_ZN11duckdb_zstd19FSE_buildCTable_rleEPjh(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i8 noundef zeroext %1) local_unnamed_addr #4 !guid !49 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %0, align 2, !tbaa !9
  %i.c = zext i8 %1 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.c, ptr %i.d, align 2, !tbaa !9
  store i16 0, ptr %i.a, align 2, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 0, ptr %i.e, align 2, !tbaa !9
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !15
  store i32 0, ptr %i.g, align 4, !tbaa !16
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd24FSE_compress_usingCTableEPvmPKvmPKj(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 !guid !50 {
bb.a:
  %i.a = lshr i64 %3, 7
  %i.b = add i64 %3, 12
  %i.c = add i64 %i.b, %i.a
  %.not = icmp uge i64 %1, %i.c
  %. = zext i1 %.not to i32
  %i.d = tail call fastcc noundef i64 @_ZN11duckdb_zstdL32FSE_compress_usingCTable_genericEPvmPKvmPKjj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %.)
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL32FSE_compress_usingCTable_genericEPvmPKvmPKjj(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 !guid !52 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %i.b = icmp ult i64 %3, 3
  br i1 %i.b, label %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 13 uses
  %i.e = icmp ugt i64 %1, 8
  br i1 %i.e, label %bb.c, label %_ZN11duckdb_zstdL16BIT_closeCStreamEPNS_13BIT_CStream_tE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %3, 1
  %.not36 = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %.val.i.i52 = load i16, ptr %4, align 1, !tbaa !9 ; 2 uses
  %i.i = zext i16 %.val.i.i52 to i32              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %.not.i.i53 = icmp eq i16 %.val.i.i52, 0
  %i.k = add nsw i32 %i.i, -1
  %i.l = shl nuw i32 1, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = select i1 %.not.i.i53, i64 1, i64 %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n ; 10 uses
  %i.p = zext i8 %i.h to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %.sroa.0.0.copyload.i54 = load i32, ptr %i.q, align 4, !tbaa !6
  %.sroa.4.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.4.0.copyload.i56 = load i32, ptr %.sroa.4.0..sroa_idx.i55, align 4, !tbaa !6 ; 2 uses
  %i.r = add i32 %.sroa.4.0.copyload.i56, 32768   ; 2 uses
  %i.s = lshr i32 %i.r, 16
  %i.t = and i32 %i.r, -65536
  %i.u = sub i32 %i.t, %.sroa.4.0.copyload.i56
  %i.v = zext i32 %i.u to i64
  %i.w = zext nneg i32 %i.s to i64
  %i.x = lshr i64 %i.v, %i.w
  %i.y = sext i32 %.sroa.0.0.copyload.i54 to i64
  %i.z = getelementptr [2 x i8], ptr %i.j, i64 %i.x
  %i.aa = getelementptr [2 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9  ; 2 uses
  br i1 %.not36, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i16 %i.ab to i64                   ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 -2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.ag, align 4, !tbaa !6
  %.sroa.4.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.4.0.copyload.i48 = load i32, ptr %.sroa.4.0..sroa_idx.i47, align 4, !tbaa !6 ; 2 uses
  %i.ah = add i32 %.sroa.4.0.copyload.i48, 32768  ; 2 uses
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = and i32 %i.ah, -65536
  %i.ak = sub i32 %i.aj, %.sroa.4.0.copyload.i48
  %i.al = zext i32 %i.ak to i64
  %i.am = zext nneg i32 %i.ai to i64
  %i.an = lshr i64 %i.al, %i.am
  %i.ao = sext i32 %.sroa.0.0.copyload.i46 to i64
  %i.ap = getelementptr [2 x i8], ptr %i.j, i64 %i.an
  %i.aq = getelementptr [2 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !9  ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.a, i64 -3 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload.i49 = load i32, ptr %i.av, align 4, !tbaa !6
  %.sroa.4.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.sroa.4.0.copyload.i51 = load i32, ptr %.sroa.4.0..sroa_idx.i50, align 4, !tbaa !6
  %i.aw = zext i32 %.sroa.4.0.copyload.i51 to i64
  %i.ax = add nuw nsw i64 %i.aw, %i.ac            ; 2 uses
  %i.ay = lshr i64 %i.ax, 16                      ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32          ; 3 uses
  %notmask.i.i = shl nsw i32 -1, %i.az
  %i.ba = xor i32 %notmask.i.i, -1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = and i64 %i.bb, %i.ac                    ; 3 uses
  %i.bd = lshr i64 %i.ac, %i.ay
  %i.be = sext i32 %.sroa.0.0.copyload.i49 to i64
  %i.bf = getelementptr [2 x i8], ptr %i.j, i64 %i.bd
  %i.bg = getelementptr [2 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !9  ; 2 uses
  %.not37 = icmp eq i32 %5, 0
  %i.bi = lshr i64 %i.ax, 19                      ; 3 uses
  store i64 %i.bc, ptr %0, align 1, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi ; 3 uses
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = and i32 %i.az, 7
  %i.bl = shl nuw nsw i64 %i.bi, 3
  %i.bm = lshr i64 %i.bc, %i.bl
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.bn = icmp ugt ptr %i.bj, %i.d
  %spec.store.select.i = select i1 %i.bn, ptr %i.d, ptr %i.bj
  %i.bo = and i32 %i.az, 7
  %i.bp = shl nuw nsw i64 %i.bi, 3
  %i.bq = lshr i64 %i.bc, %i.bp
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds i8, ptr %i.a, i64 -2 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !10
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i59 = load i32, ptr %i.bu, align 4, !tbaa !6
  %.sroa.4.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.sroa.4.0.copyload.i61 = load i32, ptr %.sroa.4.0..sroa_idx.i60, align 4, !tbaa !6 ; 2 uses
  %i.bv = add i32 %.sroa.4.0.copyload.i61, 32768  ; 2 uses
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = and i32 %i.bv, -65536
  %i.by = sub i32 %i.bx, %.sroa.4.0.copyload.i61
  %i.bz = zext i32 %i.by to i64
  %i.ca = zext nneg i32 %i.bw to i64
  %i.cb = lshr i64 %i.bz, %i.ca
  %i.cc = sext i32 %.sroa.0.0.copyload.i59 to i64
  %i.cd = getelementptr [2 x i8], ptr %i.j, i64 %i.cb
  %i.ce = getelementptr [2 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.47.0 = phi i32 [ 0, %bb.g ], [ %i.bo, %bb.f ], [ %i.bk, %bb.e ] ; 3 uses
  %.sroa.0110.0 = phi i64 [ 0, %bb.g ], [ %i.bq, %bb.f ], [ %i.bm, %bb.e ] ; 2 uses
  %.sroa.82.0 = phi ptr [ %0, %bb.g ], [ %spec.store.select.i, %bb.f ], [ %i.bj, %bb.e ] ; 3 uses
  %.sroa.099.0.in = phi i16 [ %i.cf, %bb.g ], [ %i.bh, %bb.f ], [ %i.bh, %bb.e ]
  %.sroa.0.0.in = phi i16 [ %i.ab, %bb.g ], [ %i.ar, %bb.f ], [ %i.ar, %bb.e ]
  %.032 = phi ptr [ %i.br, %bb.g ], [ %i.as, %bb.f ], [ %i.as, %bb.e ] ; 3 uses
  %.sroa.0.0 = zext i16 %.sroa.0.0.in to i64      ; 4 uses
  %.sroa.099.0 = zext i16 %.sroa.099.0.in to i64  ; 4 uses
  %i.cg = and i64 %3, 2
  %.not38.not = icmp eq i64 %i.cg, 0
  br i1 %.not38.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.032, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !10
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ck ; 2 uses
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.cl, align 4, !tbaa !6
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.sroa.4.0.copyload.i64 = load i32, ptr %.sroa.4.0..sroa_idx.i63, align 4, !tbaa !6
  %i.cm = zext i32 %.sroa.4.0.copyload.i64 to i64
  %i.cn = add nuw nsw i64 %i.cm, %.sroa.0.0
  %i.co = lshr i64 %i.cn, 16                      ; 2 uses
  %i.cp = trunc nuw nsw i64 %i.co to i32          ; 2 uses
  %notmask.i.i65 = shl nsw i32 -1, %i.cp
  %i.cq = xor i32 %notmask.i.i65, -1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = and i64 %i.cr, %.sroa.0.0
end_hunk_0
