inline.NumInlined: 530
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5boost8charconv6detail10fast_float8long_mulILt62EEEbRNS2_8stackvecIXT_EEENS2_4spanImEE:bb.a
  %unroll_iter123 = and i64 %i.aw, 65534
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i37.us.new
  %.016.i38.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bq, %bb.l ] ; 3 uses
  %.01215.i39.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bo, %bb.l ]
  %niter124 = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %niter124.next.1, %bb.l ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10
  %i.bb = zext i64 %i.ba to i128
  %i.bc = mul nuw i128 %i.bb, %i.ax
  %i.bd = zext i64 %.01215.i39.us to i128
  %i.be = add nuw i128 %i.bc, %i.bd               ; 2 uses
  %i.bf = lshr i128 %i.be, 64
  %i.bg = trunc i128 %i.be to i64
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !10
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10
  %i.bk = zext i64 %i.bj to i128
  %i.bl = mul nuw i128 %i.bk, %i.ax
  %i.bm = add nuw i128 %i.bl, %i.bf               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64                     ; 2 uses
  %i.bo = trunc nuw i128 %i.bn to i64             ; 3 uses
  %i.bp = trunc i128 %i.bm to i64
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !10
  %i.bq = add nuw nsw i64 %.016.i38.us, 2         ; 2 uses
  %niter124.next.1 = add i64 %niter124, 2         ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %._crit_edge.i41.us.unr-lcssa, label %bb.l, !llvm.loop !66

._crit_edge.i41.us.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %._crit_edge.i41.us, label %.epil.preheader117

.epil.preheader117:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.lr.ph.i37.us
  %.016.i38.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bq, %._crit_edge.i41.us.unr-lcssa ]
  %.01215.i39.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bo, %._crit_edge.i41.us.unr-lcssa ]
  %lcmp.mod122 = trunc i16 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us.epil.init ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !10
  %i.bt = zext i64 %i.bs to i128
  %i.bu = mul nuw i128 %i.bt, %i.ax
  %i.bv = zext i64 %.01215.i39.us.epil.init to i128
  %i.bw = add nuw i128 %i.bu, %i.bv               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64                     ; 2 uses
  %i.by = trunc nuw i128 %i.bx to i64
  %i.bz = trunc i128 %i.bw to i64
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !10
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader117
  %.lcssa108 = phi i128 [ %i.bn, %._crit_edge.i41.us.unr-lcssa ], [ %i.bx, %.epil.preheader117 ]
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i41.us.unr-lcssa ], [ %i.by, %.epil.preheader117 ]
  %.not.i42.us = icmp eq i128 %.lcssa108, 0
  br i1 %.not.i42.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i41.us
  %i.ca = icmp ult i16 %i.av, 62
  br i1 %i.ca, label %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_extendENS2_4spanImEE.exit

_ZN5boost8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  store i64 %.lcssa, ptr %i.cb, align 8, !tbaa !10
  %i.cc = add nuw nsw i16 %i.av, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %bb.k
  %i.cd = phi i16 [ %i.cc, %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %i.av, %._crit_edge.i41.us ], [ 0, %bb.k ] ; 2 uses
  %i.ce = zext i16 %i.cd to i64                   ; 4 uses
  %i.cf = zext i16 %i.ar to i64                   ; 5 uses
  %i.cg = icmp ugt i64 %.02769.us, %i.cf
  %i.ch = sub nsw i64 %i.cf, %.02769.us
  %i.ci = icmp ult i64 %i.ch, %i.ce
  %or.cond.i.us = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.02769.us, %i.ce               ; 4 uses
  %i.ck = icmp ult i64 %i.cj, 63
  br i1 %i.ck, label %bb.p, label %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_extendENS2_4spanImEE.exit

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp samesign ugt i64 %i.cj, %i.cf
  br i1 %i.cl, label %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %bb.p
  %i.cm = getelementptr [8 x i8], ptr %0, i64 %i.cf
  %i.cn = sub nuw nsw i64 %i.cj, %i.cf
  %i.co = shl nuw nsw i64 %i.cn, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.co, i1 false), !tbaa !10
  br label %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %bb.p
  %storemerge.i.i.i.us = trunc nuw nsw i64 %i.cj to i16 ; 2 uses
  store i16 %storemerge.i.i.i.us, ptr %i.a, align 8, !tbaa !62
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %bb.n
  %i.cp = phi i16 [ %i.ar, %bb.n ], [ %storemerge.i.i.i.us, %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; 6 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us
  %.not.i46.us = icmp eq i16 %i.cd, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02335.i.us = phi i64 [ %i.da, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02434.i.us = phi i1 [ %.031.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02335.i.us ; 2 uses
  %i.cq = load i64, ptr %gep.i.us, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02335.i.us
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10
  %i.ct = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cq, i64 %i.cs) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1       ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.ct, 0       ; 2 uses
  br i1 %.02434.i.us, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i47.us
  %i.cw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cv, i64 1) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  %i.cy = extractvalue { i64, i1 } %i.cw, 0
  %i.cz = or i1 %i.cu, %i.cx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i47.us
  %.031.in.i.us = phi i1 [ %i.cz, %bb.r ], [ %i.cu, %.lr.ph.i47.us ] ; 2 uses
  %.0.i.us = phi i64 [ %i.cy, %bb.r ], [ %i.cv, %.lr.ph.i47.us ]
  store i64 %.0.i.us, ptr %gep.i.us, align 8, !tbaa !10
  %i.da = add nuw nsw i64 %.02335.i.us, 1         ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %i.da, %i.ce
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !88

._crit_edge.i49.us:                               ; preds = %bb.s
  br i1 %.031.in.i.us, label %bb.t, label %.critedge.us

bb.t:                                             ; preds = %._crit_edge.i49.us
  %i.db = add i64 %.02769.us, %i.ce               ; 3 uses
  %i.dc = zext i16 %i.cp to i64                   ; 3 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %exitcond.not.i.i.us105.not = icmp ult i64 %i.db, %i.dc
  br i1 %exitcond.not.i.i.us105.not, label %.lr.ph107, label %.critedge.i.i.us

bb.u:                                             ; preds = %.lr.ph107
  %i.dd = add i64 %.01421.i.i.us106, 1            ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.dd, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.critedge.i.i.us, label %.lr.ph107, !llvm.loop !89

.lr.ph107:                                        ; preds = %bb.t, %bb.u
  %.01421.i.i.us106 = phi i64 [ %i.dd, %bb.u ], [ %i.db, %bb.t ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us106 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !10
  %i.dg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.df, i64 1) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  store i64 %i.di, ptr %i.de, align 8, !tbaa !10
  br i1 %i.dh, label %bb.u, label %.critedge.us, !llvm.loop !89

.critedge.i.i.us:                                 ; preds = %bb.u, %bb.t
  %i.dj = icmp ult i16 %i.cp, 62
  br i1 %i.dj, label %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_extendENS2_4spanImEE.exit

_ZN5boost8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dc
  store i64 1, ptr %i.dk, align 8, !tbaa !10
  %i.dl = add nuw nsw i16 %i.cp, 1                ; 2 uses
  store i16 %i.dl, ptr %i.a, align 8, !tbaa !62
  br label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph107, %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %bb.q, %.lr.ph.split.us
  %i.dm = phi i16 [ %i.ar, %.lr.ph.split.us ], [ %i.dl, %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %i.cp, %._crit_edge.i49.us ], [ %i.cp, %bb.q ], [ %i.cp, %.lr.ph107 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.dn = add nuw i64 %.02769.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !90

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %i.dq, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %.not29 = icmp eq i64 %i.dp, 0
  br i1 %.not29, label %.critedge, label %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_extendENS2_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.dq = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !90

_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_extendENS2_4spanImEE.exit: ; preds = %.lr.ph.split, %bb.m, %bb.o, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.critedge32

.critedge34:                                      ; preds = %.critedge, %.critedge.us, %_ZN5boost8charconv6detail10fast_float9small_mulILt62EEEbRNS2_8stackvecIXT_EEEm.exit, %_ZN5boost8charconv6detail10fast_float8stackvecILt62EEC2ENS2_4spanImEE.exit
  %.promoted.i = phi i16 [ %i.dm, %.critedge.us ], [ %i.b, %_ZN5boost8charconv6detail10fast_float8stackvecILt62EEC2ENS2_4spanImEE.exit ], [ %i.ao, %_ZN5boost8charconv6detail10fast_float9small_mulILt62EEEbRNS2_8stackvecIXT_EEEm.exit ], [ %i.ao, %.critedge ] ; 2 uses
  %.not1.i = icmp eq i16 %.promoted.i, 0
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dr = getelementptr i8, ptr %0, i64 -8
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %5 = phi i16 [ %.promoted.i, %.lr.ph.i50 ], [ %7, %bb.w ] ; 2 uses
  %6 = zext i16 %5 to i64
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %6
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !10
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %7 = add i16 %5, -1                             ; 3 uses
  store i16 %7, ptr %i.a, align 8, !tbaa !62
  %.not.i51 = icmp eq i16 %7, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !91

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_extendENS2_4spanImEE.exit
  %.6 = phi i1 [ false, %bb.g ], [ false, %_ZN5boost8charconv6detail10fast_float8stackvecILt62EE10try_extendENS2_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail6parserImlEENS0_19from_chars_result_tIcEEPKcS6_RbRT_RT0_NS0_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca [20 x i8], align 16               ; 13 uses
  %i.c = alloca [6 x i8], align 1                 ; 15 uses
  %i.d = icmp ugt ptr %0, %1
  %.4297.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br i1 %i.d, label %.critedge357, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !22
  switch i8 %i.e, label %bb.d [
    i8 45, label %bb.c
    i8 43, label %.critedge357
  ]

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %2, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0281 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.d ] ; 13 uses
  %.0281447 = ptrtoaddr ptr %.0281 to i64
  %.not = icmp eq ptr %.0281, %1
  br i1 %.not, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr %.0281, align 1, !tbaa !22  ; 3 uses
  switch i8 %i.g, label %.lr.ph.preheader [
    i8 105, label %bb.g
    i8 73, label %bb.g
    i8 110, label %bb.l
    i8 78, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.0281, i64 1 ; 4 uses
  %.not352 = icmp eq ptr %i.h, %1
  br i1 %.not352, label %.critedge357, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22
  switch i8 %i.i, label %.critedge357 [
    i8 110, label %bb.i
    i8 78, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %.0281, i64 2 ; 5 uses
  %.not353 = icmp eq ptr %i.j, %1
  br i1 %.not353, label %.critedge357, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22
  switch i8 %i.k, label %.critedge357 [
    i8 102, label %bb.k
    i8 70, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  store i64 0, ptr %3, align 8, !tbaa !10
  br label %.critedge357

bb.l:                                             ; preds = %bb.f, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.0281, i64 1 ; 4 uses
  %.not348 = icmp eq ptr %i.l, %1
  br i1 %.not348, label %.critedge357, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  switch i8 %i.m, label %.critedge357 [
    i8 97, label %bb.n
    i8 65, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.n = getelementptr inbounds nuw i8, ptr %.0281, i64 2 ; 4 uses
  %.not349 = icmp eq ptr %i.n, %1
  br i1 %.not349, label %.critedge357, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = load i8, ptr %i.n, align 1, !tbaa !22
  switch i8 %i.o, label %.critedge357 [
    i8 110, label %bb.p
    i8 78, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.p = getelementptr inbounds nuw i8, ptr %.0281, i64 3 ; 3 uses
  %.not350 = icmp eq ptr %i.p, %1
  br i1 %.not350, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22
  %i.r = icmp eq i8 %i.q, 40
  br i1 %i.r, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0281, i64 4 ; 6 uses
  %.not351 = icmp eq ptr %i.s, %1
  br i1 %.not351, label %.critedge357, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22
  %i.u = add i8 %i.t, -73                         ; 2 uses
  %i.v = tail call i8 @llvm.fshl.i8(i8 %i.u, i8 %i.u, i8 7)
  switch i8 %i.v, label %.critedge357 [
    i8 21, label %bb.t
    i8 5, label %bb.t
    i8 16, label %bb.u
    i8 0, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  store i64 1, ptr %3, align 8, !tbaa !10
  br label %.critedge357

bb.u:                                             ; preds = %bb.s, %bb.s
  store i64 0, ptr %3, align 8, !tbaa !10
  br label %.critedge357

bb.v:                                             ; preds = %bb.q, %bb.p
  store i64 0, ptr %3, align 8, !tbaa !10
  br label %.critedge357

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.w = sub i64 %i.a, %.0281447
  %scevgep = getelementptr i8, ptr %.0281, i64 %i.w
  %i.x = icmp eq i8 %i.g, 48
  br i1 %i.x, label %.lr.ph550, label %.lr.ph._crit_edge

.lr.phthread-pre-split:                           ; preds = %.lr.ph550
  %.pr = load i8, ptr %i.z, align 1, !tbaa !22    ; 2 uses
  %i.y = icmp eq i8 %.pr, 48
  br i1 %i.y, label %.lr.ph550, label %.lr.ph._crit_edge

.lr.ph550:                                        ; preds = %.lr.ph.preheader, %.lr.phthread-pre-split
  %.3391549 = phi ptr [ %i.z, %.lr.phthread-pre-split ], [ %.0281, %.lr.ph.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.3391549, i64 1 ; 4 uses
  %.not336 = icmp eq ptr %i.z, %1
  br i1 %.not336, label %.critedge.thread, label %.lr.phthread-pre-split, !llvm.loop !92

.lr.ph._crit_edge:                                ; preds = %.lr.phthread-pre-split, %.lr.ph.preheader
  %.lcssa547 = phi i8 [ %i.g, %.lr.ph.preheader ], [ %.pr, %.lr.phthread-pre-split ] ; 2 uses
  %.3391.lcssa = phi ptr [ %.0281, %.lr.ph.preheader ], [ %i.z, %.lr.phthread-pre-split ] ; 5 uses
  %.not337 = icmp eq i32 %5, 4                    ; 6 uses
  %. = select i1 %.not337, i32 112, i32 101       ; 2 uses
  %.358.neg = select i1 %.not337, i32 -80, i32 -69
  %.358 = select i1 %.not337, i32 80, i32 69
  %i.aa = sext i8 %.lcssa547 to i32               ; 2 uses
  %i.ab = icmp eq i32 %., %i.aa
  %i.ac = icmp eq i32 %.358.neg, %i.aa
  %or.cond360 = or i1 %i.ab, %i.ac
  br i1 %or.cond360, label %.critedge.thread, label %.lr.ph396.preheader

.critedge.thread:                                 ; preds = %.lr.ph550, %bb.e, %.lr.ph._crit_edge
  %.3389 = phi ptr [ %.3391.lcssa, %.lr.ph._crit_edge ], [ %.0281, %bb.e ], [ %scevgep, %.lr.ph550 ]
  store i64 0, ptr %3, align 8, !tbaa !10
  store i64 0, ptr %4, align 8, !tbaa !10
  br label %.critedge357

.lr.ph396.preheader:                              ; preds = %.lr.ph._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  %_ZN5boost8charconv6detail15is_integer_charEc._ZN5boost8charconv6detail11is_hex_charEc = select i1 %.not337, ptr @_ZN5boost8charconv6detail11is_hex_charEc, ptr @_ZN5boost8charconv6detail15is_integer_charEc ; 4 uses
  %i.ad = select i1 %.not337, i32 16, i32 10      ; 3 uses
  %i.ae = tail call noundef zeroext i1 %_ZN5boost8charconv6detail15is_integer_charEc._ZN5boost8charconv6detail11is_hex_charEc(i8 noundef signext %.lcssa547) #13, !callees !25
  %i.af = load i8, ptr %.3391.lcssa, align 1, !tbaa !22 ; 2 uses
  br i1 %i.ae, label %bb.w, label %.critedge3.thread

bb.w:                                             ; preds = %.lr.ph396.preheader
  store i8 %i.af, ptr %i.b, align 16, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %.3391.lcssa, i64 1 ; 3 uses
  %.not338.peel = icmp eq ptr %i.ag, %1
  br i1 %.not338.peel, label %._crit_edge, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.w, %bb.x
  %.4395 = phi ptr [ %i.am, %bb.x ], [ %i.ag, %bb.w ] ; 5 uses
  %.0293393 = phi i64 [ %i.an, %bb.x ], [ 1, %bb.w ] ; 5 uses
  %i.ah = load i8, ptr %.4395, align 1, !tbaa !22
  %i.ai = tail call noundef zeroext i1 %_ZN5boost8charconv6detail15is_integer_charEc._ZN5boost8charconv6detail11is_hex_charEc(i8 noundef signext %i.ah) #13, !callees !25
  %i.aj = icmp samesign ult i64 %.0293393, 20
  %or.cond26 = select i1 %i.ai, i1 %i.aj, i1 false
end_hunk_0
