Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/compound_dictionary?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden noundef ptr @CreatePreparedDictionary(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %2, 2097152
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 4194304
  br i1 %i.b, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.c = icmp ugt i64 %2, 8388608
  br i1 %i.c, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.d = icmp ugt i64 %2, 16777216
  br i1 %i.d, label %.lr.ph.3, label %._crit_edge

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.e = icmp ugt i64 %2, 33554432                ; 2 uses
  %spec.select = select i1 %i.e, i32 22, i32 21
  %spec.select55 = select i1 %i.e, i32 12, i32 11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.a
  %.014.lcssa = phi i32 [ 17, %bb.a ], [ 18, %.lr.ph ], [ 19, %.lr.ph.1 ], [ 20, %.lr.ph.2 ], [ %spec.select, %.lr.ph.3 ] ; 5 uses
  %.013.lcssa = phi i32 [ 7, %bb.a ], [ 8, %.lr.ph ], [ 9, %.lr.ph.1 ], [ 10, %.lr.ph.2 ], [ %spec.select55, %.lr.ph.3 ] ; 4 uses
  %i.f = shl nuw i32 1, %.013.lcssa               ; 2 uses
  %i.g = sub nuw nsw i32 64, %.014.lcssa
  %i.h = add i32 %i.f, -1
  %i.i = zext nneg i32 %.013.lcssa to i64         ; 2 uses
  %i.j = shl i64 4, %i.i
  %i.k = zext nneg i32 %.014.lcssa to i64         ; 2 uses
  %i.l = shl nuw nsw i64 2, %i.k                  ; 2 uses
  %i.m = sub nuw nsw i32 %.014.lcssa, %.013.lcssa
  %i.n = icmp samesign ugt i32 %i.m, 15
  br i1 %i.n, label %CreatePreparedDictionaryWithParams.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %3 = shl nuw nsw i32 1, %.014.lcssa
  %4 = shl nuw nsw i64 8, %i.i
  %i.o = shl nuw nsw i64 4, %i.k
  %5 = shl i64 %2, 2
  %6 = add i64 %i.l, %5
  %i.p = add i64 %6, %i.o
  %7 = add i64 %i.p, %4                           ; 2 uses
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.q = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %7) #6 ; 6 uses
  %i.r = zext i32 %i.f to i64                     ; 7 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r ; 5 uses
  %i.u = zext nneg i32 %3 to i64                  ; 7 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u ; 6 uses
  %i.x = shl nuw nsw i64 %i.u, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.t, i8 0, i64 %i.x, i1 false)
  %i.y = icmp ugt i64 %2, 7
  br i1 %i.y, label %.lr.ph.i, label %.preheader213.i.preheader

.lr.ph.i:                                         ; preds = %bb.b
  %i.z = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.0178215.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ap, %bb.e ] ; 4 uses
  %i.aa = zext i32 %.0178215.i to i64             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %.0.copyload.i.i = load i64, ptr %i.ab, align 1
  %i.ac = and i64 %.0.copyload.i.i, 1099511627775
  %i.ad = mul i64 %i.ac, 2297779722762296275
  %i.ae = lshr i64 %i.ad, %i.z
  %i.af = and i64 %i.ae, 4294967295               ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.af ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !22 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.af
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi i32 [ %i.ak, %bb.d ], [ -1, %bb.c ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aa
  store i32 %i.al, ptr %i.am, align 4, !tbaa !23
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.af
  store i32 %.0178215.i, ptr %i.an, align 4, !tbaa !23
  %i.ao = add i16 %i.ah, 1
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %i.ao, i16 32)
  store i16 %spec.select.i, ptr %i.ag, align 2, !tbaa !22
  %i.ap = add i32 %.0178215.i, 1
  %i.aq = add i32 %.0178215.i, 8
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp ugt i64 %2, %i.ar
  br i1 %i.as, label %bb.c, label %.preheader213.i.preheader, !llvm.loop !14

.preheader213.i.preheader:                        ; preds = %bb.e, %bb.b
  br label %.preheader213.i

.preheader213.i:                                  ; preds = %.preheader213.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.preheader213.i.preheader ] ; 5 uses
  %.0175227.i = phi i32 [ %i.be, %._crit_edge.i ], [ 0, %.preheader213.i.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.au = icmp samesign ult i64 %indvars.iv.i, %i.u
  br i1 %i.au, label %.lr.ph218.us.i, label %._crit_edge.i

.lr.ph218.us.i:                                   ; preds = %.preheader213.i, %bb.h
  %storemerge222.us.i = phi i32 [ %i.bc, %bb.h ], [ 32, %.preheader213.i ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph218.us.i
  %.0167217.us.i = phi i32 [ 0, %.lr.ph218.us.i ], [ %i.az, %bb.g ] ; 2 uses
  %.0168216.us.i = phi i64 [ %indvars.iv.i, %.lr.ph218.us.i ], [ %i.ba, %bb.g ] ; 2 uses
  %i.av = icmp samesign ugt i32 %.0167217.us.i, 65534
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.0168216.us.i
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !22
  %i.ay = zext i16 %i.ax to i32
  %spec.select195.us.i = tail call i32 @llvm.umin.i32(i32 %storemerge222.us.i, i32 %i.ay)
  %i.az = add nuw nsw i32 %spec.select195.us.i, %.0167217.us.i ; 2 uses
  %i.ba = add nuw nsw i64 %.0168216.us.i, %i.r    ; 2 uses
  %i.bb = icmp samesign ult i64 %i.ba, %i.u
  br i1 %i.bb, label %bb.f, label %._crit_edge.i, !llvm.loop !15

bb.h:                                             ; preds = %bb.f
  %i.bc = add i32 %storemerge222.us.i, -1
  br label %.lr.ph218.us.i

._crit_edge.i:                                    ; preds = %bb.g, %.preheader213.i
  %storemerge.i = phi i32 [ 32, %.preheader213.i ], [ %storemerge222.us.i, %bb.g ]
  %.0167.lcssa.i = phi i32 [ 0, %.preheader213.i ], [ %i.az, %bb.g ] ; 2 uses
  store i32 %storemerge.i, ptr %i.at, align 4, !tbaa !23
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  store i32 %.0167.lcssa.i, ptr %i.bd, align 4, !tbaa !23
  %i.be = add i32 %.0167.lcssa.i, %.0175227.i     ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.r
  br i1 %exitcond.not.i, label %.new, label %.preheader213.i, !llvm.loop !16

.new:                                             ; preds = %._crit_edge.i
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = add nuw i64 %i.l, 32
  %i.bi = add i64 %i.bh, %i.j
  %i.bj = add i64 %i.bi, %i.bg                    ; 2 uses
  %.not193.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not193.i)
  %i.bk = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bj) #6 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.r ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.u ; 7 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bf
  store i32 -558043677, ptr %i.bk, align 4, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.be, ptr %i.bp, align 4, !tbaa !10
  %i.bq = trunc nuw i64 %2 to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 40, ptr %i.bs, align 4, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i32 %.014.lcssa, ptr %i.bt, align 4, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store i32 %.013.lcssa, ptr %i.bu, align 4, !tbaa !13
  store ptr %1, ptr %i.bo, align 1
  %xtraiter = and i64 %i.r, 1
  %unroll_iter = and i64 %i.r, 4294967294
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %indvars.iv237.i = phi i64 [ 0, %.new ], [ %indvars.iv.next238.i.1, %bb.i ] ; 4 uses
  %.3229.i = phi i32 [ 0, %.new ], [ %i.cc, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv237.i
  store i32 %.3229.i, ptr %i.bv, align 4, !tbaa !23
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv237.i ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !23
  %i.by = add i32 %i.bx, %.3229.i                 ; 2 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !23
  %indvars.iv.next238.i = or disjoint i64 %indvars.iv237.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next238.i
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !23
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next238.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !23
  %i.cc = add i32 %i.cb, %i.by
  store i32 0, ptr %i.ca, align 4, !tbaa !23
  %indvars.iv.next238.i.1 = add nuw nsw i64 %indvars.iv237.i, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.preheader.i.unr-lcssa, label %bb.i, !llvm.loop !17

.preheader.preheader.i.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod.not)
  %i.cd = zext nneg i32 %i.h to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.n, %.preheader.preheader.i.unr-lcssa
  %indvars.iv243.i = phi i64 [ 0, %.preheader.preheader.i.unr-lcssa ], [ %indvars.iv.next244.i, %bb.n ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv243.i
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !22
  %i.cg = zext i16 %i.cf to i32
  %i.ch = and i64 %indvars.iv243.i, %i.cd         ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !23
  %spec.select196.i = tail call i32 @llvm.umin.i32(i32 %i.cj, i32 %i.cg) ; 4 uses
  %i.ck = icmp eq i32 %spec.select196.i, 0
  br i1 %i.ck, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv243.i
  store i16 -1, ptr %i.cl, align 2, !tbaa !22
  br label %bb.n

bb.k:                                             ; preds = %.preheader.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ch ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !23 ; 3 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = trunc i32 %i.cn to i16
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv243.i
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !22
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ch
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !23
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, %i.co            ; 2 uses
  %i.cv = add i32 %i.cn, %spec.select196.i
  store i32 %i.cv, ptr %i.cm, align 4, !tbaa !23
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv243.i ; 2 uses
  %i.cx = zext nneg i32 %spec.select196.i to i64  ; 2 uses
  %xtraiter43 = and i64 %i.cx, 3                  ; 3 uses
  %i.cy = icmp samesign ult i32 %spec.select196.i, 4
  br i1 %i.cy, label %.epil.preheader42, label %.new41

.new41:                                           ; preds = %bb.k
  %unroll_iter48 = and i64 %i.cx, 65532
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new41
  %.0232.i = phi i64 [ %i.cu, %.new41 ], [ %i.dk, %bb.l ] ; 5 uses
  %.0164.in230.i = phi ptr [ %i.cw, %.new41 ], [ %i.do, %bb.l ]
  %niter49 = phi i64 [ 0, %.new41 ], [ %niter49.next.3, %bb.l ]
  %.0164.i = load i32, ptr %.0164.in230.i, align 4, !tbaa !23 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0232.i
  store i32 %.0164.i, ptr %i.cz, align 4, !tbaa !23
  %i.da = zext i32 %.0164.i to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.da
  %.0164.i.1 = load i32, ptr %i.db, align 4, !tbaa !23 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0232.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %.0164.i.1, ptr %i.dd, align 4, !tbaa !23
  %i.de = zext i32 %.0164.i.1 to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.de
  %.0164.i.2 = load i32, ptr %i.df, align 4, !tbaa !23 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0232.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 %.0164.i.2, ptr %i.dh, align 4, !tbaa !23
  %i.di = zext i32 %.0164.i.2 to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.di
  %.0164.i.3 = load i32, ptr %i.dj, align 4, !tbaa !23 ; 3 uses
  %i.dk = add nuw nsw i64 %.0232.i, 4             ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0232.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 %.0164.i.3, ptr %i.dm, align 4, !tbaa !23
  %i.dn = zext i32 %.0164.i.3 to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dn ; 2 uses
  %niter49.next.3 = add i64 %niter49, 4           ; 2 uses
  %niter49.ncmp.3 = icmp eq i64 %niter49.next.3, %unroll_iter48
  br i1 %niter49.ncmp.3, label %.unr-lcssa, label %bb.l, !llvm.loop !18

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.epilog-lcssa, label %.epil.preheader42

.epil.preheader42:                                ; preds = %.unr-lcssa, %bb.k
  %.0232.i.epil.init = phi i64 [ %i.cu, %bb.k ], [ %i.dk, %.unr-lcssa ]
  %.0164.in230.i.epil.init = phi ptr [ %i.cw, %bb.k ], [ %i.do, %.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter43, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader42
  %.0232.i.epil = phi i64 [ %.0232.i.epil.init, %.epil.preheader42 ], [ %i.dp, %bb.m ] ; 2 uses
  %.0164.in230.i.epil = phi ptr [ %.0164.in230.i.epil.init, %.epil.preheader42 ], [ %i.ds, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader42 ], [ %epil.iter.next, %bb.m ]
  %.0164.i.epil = load i32, ptr %.0164.in230.i.epil, align 4, !tbaa !23 ; 3 uses
  %i.dp = add nuw nsw i64 %.0232.i.epil, 1        ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.0232.i.epil
  store i32 %.0164.i.epil, ptr %i.dq, align 4, !tbaa !23
  %i.dr = zext i32 %.0164.i.epil to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dr
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.m, !llvm.loop !19

.epilog-lcssa:                                    ; preds = %bb.m, %.unr-lcssa
  %.0164.i.lcssa = phi i32 [ %.0164.i.3, %.unr-lcssa ], [ %.0164.i.epil, %bb.m ]
  %.lcssa = phi i64 [ %i.dk, %.unr-lcssa ], [ %i.dp, %bb.m ]
  %i.dt = getelementptr [4 x i8], ptr %i.bn, i64 %.lcssa
  %i.du = getelementptr i8, ptr %i.dt, i64 -4
  %i.dv = or i32 %.0164.i.lcssa, -2147483648
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %.epilog-lcssa, %bb.j
  %indvars.iv.next244.i = add nuw nsw i64 %indvars.iv243.i, 1 ; 2 uses
  %exitcond247.not.i = icmp eq i64 %indvars.iv.next244.i, %i.u
  br i1 %exitcond247.not.i, label %bb.o, label %.preheader.i, !llvm.loop !20

bb.o:                                             ; preds = %bb.n
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.q) #6
  br label %CreatePreparedDictionaryWithParams.exit

CreatePreparedDictionaryWithParams.exit:          ; preds = %._crit_edge, %bb.o
  %.0182.i = phi ptr [ %i.bk, %bb.o ], [ null, %._crit_edge ]
  ret ptr %.0182.i
}

; Function Attrs: nounwind uwtable
define hidden void @DestroyPreparedDictionary(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare hidden void @BrotliFree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @AttachPreparedDictionary(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !29     ; 4 uses
  %i.b = icmp eq i64 %i.a, 15
  %.not = icmp eq ptr %1, null
  %or.cond = or i1 %.not, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
