Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/fse_compress?download=true
inline.NumInlined: 48
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@FSE_writeNCount_generic:bb.a
  %i.bc = sub nsw i32 %.0132230, %i.bb            ; 6 uses
  %i.bd = add nsw i32 %i.ax, 1                    ; 2 uses
  %.not163 = icmp slt i32 %i.bd, %.0129231
  %i.be = select i1 %.not163, i32 0, i32 %i.ba
  %spec.select = add nsw i32 %i.be, %i.bd         ; 3 uses
  %i.bf = shl i32 %spec.select, %.4
  %i.bg = add i32 %i.bf, %.5127                   ; 3 uses
  %i.bh = add nsw i32 %.4, %.0133229
  %i.bi = icmp slt i32 %spec.select, %i.ba
  %.neg = sext i1 %i.bi to i32
  %i.bj = add i32 %i.bh, %.neg                    ; 3 uses
  %i.bk = icmp ne i32 %spec.select, 1
  %i.bl = icmp sgt i32 %i.bc, 0
  br i1 %i.bl, label %.preheader, label %.thread

.preheader:                                       ; preds = %.thread178
  %i.bm = icmp slt i32 %i.bc, %.0129231
  br i1 %i.bm, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %.preheader, %.lr.ph224
  %.1130223 = phi i32 [ %i.bo, %.lr.ph224 ], [ %.0129231, %.preheader ]
  %.1134222 = phi i32 [ %i.bn, %.lr.ph224 ], [ %.0133229, %.preheader ]
  %i.bn = add nsw i32 %.1134222, -1               ; 2 uses
  %i.bo = ashr i32 %.1130223, 1                   ; 3 uses
  %i.bp = icmp slt i32 %i.bc, %i.bo
  br i1 %i.bp, label %.lr.ph224, label %._crit_edge225, !llvm.loop !36

._crit_edge225:                                   ; preds = %.lr.ph224, %.preheader
  %.1134.lcssa = phi i32 [ %.0133229, %.preheader ], [ %i.bn, %.lr.ph224 ]
  %.1130.lcssa = phi i32 [ %.0129231, %.preheader ], [ %i.bo, %.lr.ph224 ]
  %i.bq = icmp sgt i32 %i.bj, 16
  br i1 %i.bq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge225
  %i.br = icmp ugt ptr %.4140, %i.g
  %or.cond169 = select i1 %.not160, i1 %i.br, i1 false
  br i1 %or.cond169, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = trunc i32 %i.bg to i16
  store i16 %i.bs, ptr %.4140, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.4140, i64 2
  %i.bu = lshr i32 %i.bg, 16
  %i.bv = add nsw i32 %i.bj, -16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge225
  %.5141 = phi ptr [ %i.bt, %bb.h ], [ %.4140, %._crit_edge225 ] ; 2 uses
  %.6128 = phi i32 [ %i.bu, %bb.h ], [ %i.bg, %._crit_edge225 ] ; 2 uses
  %.5 = phi i32 [ %i.bv, %bb.h ], [ %i.bj, %._crit_edge225 ] ; 2 uses
  %i.bw = icmp ult i32 %i.at, %i.b
  %i.bx = icmp ne i32 %i.bc, 1
  %i.by = and i1 %i.bw, %i.bx
  br i1 %i.by, label %bb.b, label %.critedge._crit_edge, !llvm.loop !37

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
define range(i32 5, 13) i32 @FSE_optimalTableLog_internal(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = add i32 %i.a, -1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = xor i32 %i.c, 31
  %i.e = sub i32 %i.d, %3
  %i.f = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %i.h = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.i = sub nuw nsw i32 33, %i.h
  %i.j = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.g, i32 %i.i)
  %i.k = icmp eq i32 %0, 0
  %spec.store.select = select i1 %i.k, i32 11, i32 %0
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %spec.store.select)
  %.1 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %spec.select)
  %spec.store.select1 = tail call i32 @llvm.umax.i32(i32 %.1, i32 5)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select1, i32 12)
  ret i32 %spec.store.select2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 5, 13) i32 @FSE_optimalTableLog(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = add i32 %i.a, -1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nsw i32 29, %i.c
  %i.e = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.h = sub nuw nsw i32 33, %i.g
  %i.i = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.f, i32 %i.h)
  %i.j = icmp eq i32 %0, 0
  %spec.store.select.i = select i1 %i.j, i32 11, i32 %0
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %spec.store.select.i)
  %.1.i = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %spec.select.i)
  %spec.store.select1.i = tail call i32 @llvm.umax.i32(i32 %.1.i, i32 5)
  %spec.store.select2.i = tail call range(i32 5, 13) i32 @llvm.umin.i32(i32 %spec.store.select1.i, i32 12)
  ret i32 %spec.store.select2.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -44, 13) i64 @FSE_normalizeCount(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
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
  %i.e = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %i.h = sub nuw nsw i32 33, %i.g
  %i.i = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.f, i32 %i.h)
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
  %.079102 = phi i32 [ 0, %bb.d ], [ %i.ar, %bb.m ] ; 3 uses
  %.080101 = phi i32 [ %i.q, %bb.d ], [ %.181, %bb.m ] ; 3 uses
  %i.u = zext i32 %.079102 to i64                 ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !20   ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = icmp eq i64 %3, %i.x
  br i1 %i.y, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %i.w, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 0, ptr %i.aa, align 2, !tbaa !12
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %.not88 = icmp ugt i32 %i.w, %i.t
  br i1 %.not88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 %i.k, ptr %i.ab, align 2, !tbaa !12
  %i.ac = add nsw i32 %.080101, -1
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ad = mul i64 %i.o, %i.x                      ; 2 uses
  %i.ae = lshr i64 %i.ad, %i.m                    ; 4 uses
  %i.af = trunc nuw nsw i64 %i.ae to i16          ; 2 uses
  %6 = icmp slt i64 %i.ae, 8
  br i1 %6, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @FSE_normalizeCount.rtbTable, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !20
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl i64 %i.ai, %i.p
  %i.ak = shl nuw nsw i64 %i.ae, %i.m
  %i.al = sub i64 %i.ad, %i.ak
  %i.am = icmp ugt i64 %i.al, %i.aj
  %7 = zext i1 %i.am to i16
  %8 = add nuw nsw i16 %7, %i.af
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.070 = phi i16 [ %8, %bb.k ], [ %i.af, %bb.j ] ; 4 uses
  %i.an = zext nneg i16 %.070 to i32
  %i.ao = icmp ugt i16 %.070, %.073104
  %spec.select = select i1 %i.ao, i32 %.079102, i32 %.076103
  %spec.select89 = tail call i16 @llvm.umax.i16(i16 %.070, i16 %.073104)
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 %.070, ptr %i.ap, align 2, !tbaa !12
  %i.aq = sub nsw i32 %.080101, %i.an
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.g
  %.181 = phi i32 [ %.080101, %bb.g ], [ %i.ac, %bb.i ], [ %i.aq, %bb.l ] ; 3 uses
  %.278 = phi i32 [ %.076103, %bb.g ], [ %.076103, %bb.i ], [ %spec.select, %bb.l ] ; 2 uses
  %.275 = phi i16 [ %.073104, %bb.g ], [ %.073104, %bb.i ], [ %spec.select89, %bb.l ]
  %i.ar = add i32 %.079102, 1                     ; 2 uses
  %.not85 = icmp ugt i32 %i.ar, %4
  br i1 %.not85, label %bb.n, label %bb.e, !llvm.loop !38

bb.n:                                             ; preds = %bb.m
  %i.as = sub nsw i32 0, %.181
  %i.at = zext i32 %.278 to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !12 ; 2 uses
  %i.aw = ashr i16 %i.av, 1
  %i.ax = sext i16 %i.aw to i32
  %.not86 = icmp sgt i32 %i.ax, %i.as
  br i1 %.not86, label %bb.as, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = mul i64 %3, 3
  %i.az = add nuw nsw i32 %spec.store.select, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = lshr i64 %i.ay, %i.ba                   ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add nuw i32 %4, 1                       ; 3 uses
  %wide.trip.count.i = zext i32 %i.bd to i64      ; 5 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i, %bb.w ] ; 5 uses
  %.0118156.i = phi i32 [ 0, %bb.o ], [ %.1119.i, %bb.w ] ; 4 uses
  %.0131154.i = phi i64 [ %3, %bb.o ], [ %.1132.i, %bb.w ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !20 ; 5 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 0, ptr %i.bh, align 2, !tbaa !12
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %.not148.i = icmp ugt i32 %i.bf, %i.t
  br i1 %.not148.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.k, ptr %i.bi, align 2, !tbaa !12
  %i.bj = add i32 %.0118156.i, 1
  %i.bk = zext i32 %i.bf to i64
  %i.bl = sub i64 %.0131154.i, %i.bk
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %.not149.i = icmp ugt i32 %i.bf, %i.bc
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  br i1 %.not149.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i16 1, ptr %i.bm, align 2, !tbaa !12
  %i.bn = add i32 %.0118156.i, 1
  %i.bo = zext i32 %i.bf to i64
  %i.bp = sub i64 %.0131154.i, %i.bo
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i16 -2, ptr %i.bm, align 2, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s, %bb.q
  %.1132.i = phi i64 [ %.0131154.i, %bb.q ], [ %i.bl, %bb.s ], [ %i.bp, %bb.u ], [ %.0131154.i, %bb.v ] ; 6 uses
  %.1119.i = phi i32 [ %.0118156.i, %bb.q ], [ %i.bj, %bb.s ], [ %i.bn, %bb.u ], [ %.0118156.i, %bb.v ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %bb.x, label %bb.p, !llvm.loop !39

bb.x:                                             ; preds = %bb.w
  %i.bq = sub i32 %i.q, %.1119.i                  ; 4 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = zext i32 %i.bq to i64
  %i.bt = udiv i64 %.1132.i, %i.bs
  %i.bu = and i64 %i.bb, 4294967295
  %i.bv = icmp ugt i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.bw = mul i64 %.1132.i, 3
  %i.bx = shl i32 %i.bq, 1
  %i.by = zext i32 %i.bx to i64
  %i.bz = udiv i64 %i.bw, %i.by
  %i.ca = trunc i64 %i.bz to i32                  ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cb = icmp eq i32 %4, 0
  br i1 %i.cb, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.z
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.new
  %indvars.iv170.i = phi i64 [ 0, %.new ], [ %indvars.iv.next171.i.1, %bb.ag ] ; 4 uses
  %.2120159.i = phi i32 [ %.1119.i, %.new ], [ %.3.i.1, %bb.ag ] ; 3 uses
  %.2133157.i = phi i64 [ %.1132.i, %.new ], [ %.3134.i.1, %bb.ag ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.ag ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv170.i ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !12
  %i.ce = icmp eq i16 %i.cd, -2
  br i1 %i.ce, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv170.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !20 ; 2 uses
  %.not147.i = icmp ugt i32 %i.cg, %i.ca
  br i1 %.not147.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i16 1, ptr %i.cc, align 2, !tbaa !12
  %i.ch = add i32 %.2120159.i, 1
  %i.ci = zext i32 %i.cg to i64
  %i.cj = sub i64 %.2133157.i, %i.ci
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.3134.i = phi i64 [ %i.cj, %bb.ac ], [ %.2133157.i, %bb.ab ], [ %.2133157.i, %bb.aa ] ; 3 uses
  %.3.i = phi i32 [ %i.ch, %bb.ac ], [ %.2120159.i, %bb.ab ], [ %.2120159.i, %bb.aa ] ; 3 uses
  %indvars.iv.next171.i = or disjoint i64 %indvars.iv170.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next171.i ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !12
  %i.cm = icmp eq i16 %i.cl, -2
  br i1 %i.cm, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next171.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !20 ; 2 uses
  %.not147.i.1 = icmp ugt i32 %i.co, %i.ca
  br i1 %.not147.i.1, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i16 1, ptr %i.ck, align 2, !tbaa !12
  %i.cp = add i32 %.3.i, 1
  %i.cq = zext i32 %i.co to i64
  %i.cr = sub i64 %.3134.i, %i.cq
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.3134.i.1 = phi i64 [ %i.cr, %bb.af ], [ %.3134.i, %bb.ae ], [ %.3134.i, %bb.ad ] ; 3 uses
  %.3.i.1 = phi i32 [ %i.cp, %bb.af ], [ %.3.i, %bb.ae ], [ %.3.i, %bb.ad ] ; 3 uses
  %indvars.iv.next171.i.1 = add nuw nsw i64 %indvars.iv170.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.aa, !llvm.loop !40

.unr-lcssa:                                       ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.z
  %indvars.iv170.i.epil.init = phi i64 [ 0, %bb.z ], [ %indvars.iv.next171.i.1, %.unr-lcssa ] ; 2 uses
  %.2120159.i.epil.init = phi i32 [ %.1119.i, %bb.z ], [ %.3.i.1, %.unr-lcssa ] ; 3 uses
  %.2133157.i.epil.init = phi i64 [ %.1132.i, %bb.z ], [ %.3134.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod126 = trunc i32 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv170.i.epil.init ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !12
  %i.cu = icmp eq i16 %i.ct, -2
  br i1 %i.cu, label %bb.ah, label %.epilog-lcssa

bb.ah:                                            ; preds = %.epil.preheader
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv170.i.epil.init
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !20 ; 2 uses
  %.not147.i.epil = icmp ugt i32 %i.cw, %i.ca
  br i1 %.not147.i.epil, label %.epilog-lcssa, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i16 1, ptr %i.cs, align 2, !tbaa !12
  %i.cx = add i32 %.2120159.i.epil.init, 1
  %i.cy = zext i32 %i.cw to i64
  %i.cz = sub i64 %.2133157.i.epil.init, %i.cy
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.ah, %bb.ai, %.unr-lcssa
  %.3134.i.lcssa = phi i64 [ %.3134.i.1, %.unr-lcssa ], [ %i.cz, %bb.ai ], [ %.2133157.i.epil.init, %bb.ah ], [ %.2133157.i.epil.init, %.epil.preheader ]
  %.3.i.lcssa = phi i32 [ %.3.i.1, %.unr-lcssa ], [ %i.cx, %bb.ai ], [ %.2120159.i.epil.init, %bb.ah ], [ %.2120159.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.da = sub i32 %i.q, %.3.i.lcssa
  br label %bb.aj

bb.aj:                                            ; preds = %.epilog-lcssa, %bb.y
end_hunk_0
