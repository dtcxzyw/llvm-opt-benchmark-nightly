Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7232
inline.NumDeleted: 1432
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail8charconv6detail10fast_float8long_mulILt62EEEbRNS4_8stackvecIXT_EEENS4_4spanImEE:bb.a
  %unroll_iter123 = and i64 %i.aw, 65534
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i37.us.new
  %.016.i38.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bq, %bb.l ] ; 3 uses
  %.01215.i39.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bo, %bb.l ]
  %niter124 = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %niter124.next.1, %bb.l ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !90
  %i.bb = zext i64 %i.ba to i128
  %i.bc = mul nuw i128 %i.bb, %i.ax
  %i.bd = zext i64 %.01215.i39.us to i128
  %i.be = add nuw i128 %i.bc, %i.bd               ; 2 uses
  %i.bf = lshr i128 %i.be, 64
  %i.bg = trunc i128 %i.be to i64
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !90
  %i.bk = zext i64 %i.bj to i128
  %i.bl = mul nuw i128 %i.bk, %i.ax
  %i.bm = add nuw i128 %i.bl, %i.bf               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64                     ; 2 uses
  %i.bo = trunc nuw i128 %i.bn to i64             ; 3 uses
  %i.bp = trunc i128 %i.bm to i64
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !90
  %i.bq = add nuw nsw i64 %.016.i38.us, 2         ; 2 uses
  %niter124.next.1 = add i64 %niter124, 2         ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %._crit_edge.i41.us.unr-lcssa, label %bb.l, !llvm.loop !74

._crit_edge.i41.us.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %._crit_edge.i41.us, label %.epil.preheader117

.epil.preheader117:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.lr.ph.i37.us
  %.016.i38.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bq, %._crit_edge.i41.us.unr-lcssa ]
  %.01215.i39.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bo, %._crit_edge.i41.us.unr-lcssa ]
  %lcmp.mod122 = trunc i16 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us.epil.init ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !90
  %i.bt = zext i64 %i.bs to i128
  %i.bu = mul nuw i128 %i.bt, %i.ax
  %i.bv = zext i64 %.01215.i39.us.epil.init to i128
  %i.bw = add nuw i128 %i.bu, %i.bv               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64                     ; 2 uses
  %i.by = trunc nuw i128 %i.bx to i64
  %i.bz = trunc i128 %i.bw to i64
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !90
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader117
  %.lcssa108 = phi i128 [ %i.bn, %._crit_edge.i41.us.unr-lcssa ], [ %i.bx, %.epil.preheader117 ]
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i41.us.unr-lcssa ], [ %i.by, %.epil.preheader117 ]
  %.not.i42.us = icmp eq i128 %.lcssa108, 0
  br i1 %.not.i42.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i41.us
  %i.ca = icmp ult i16 %i.av, 62
  br i1 %i.ca, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  store i64 %.lcssa, ptr %i.cb, align 8, !tbaa !90
  %i.cc = add nuw nsw i16 %i.av, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %bb.k
  %i.cd = phi i16 [ %i.cc, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %i.av, %._crit_edge.i41.us ], [ 0, %bb.k ] ; 2 uses
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
  br i1 %i.ck, label %bb.p, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp samesign ugt i64 %i.cj, %i.cf
  br i1 %i.cl, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %bb.p
  %i.cm = getelementptr [8 x i8], ptr %0, i64 %i.cf
  %i.cn = sub nuw nsw i64 %i.cj, %i.cf
  %i.co = shl nuw nsw i64 %i.cn, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.co, i1 false), !tbaa !90
  br label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %bb.p
  %storemerge.i.i.i.us = trunc nuw nsw i64 %i.cj to i16 ; 2 uses
  store i16 %storemerge.i.i.i.us, ptr %i.a, align 8, !tbaa !379
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %bb.n
  %i.cp = phi i16 [ %i.ar, %bb.n ], [ %storemerge.i.i.i.us, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; 6 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us
  %.not.i46.us = icmp eq i16 %i.cd, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02335.i.us = phi i64 [ %i.da, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02434.i.us = phi i1 [ %.031.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02335.i.us ; 2 uses
  %i.cq = load i64, ptr %gep.i.us, align 8, !tbaa !90
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02335.i.us
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !90
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
  store i64 %.0.i.us, ptr %gep.i.us, align 8, !tbaa !90
  %i.da = add nuw nsw i64 %.02335.i.us, 1         ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %i.da, %i.ce
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !1016

._crit_edge.i49.us:                               ; preds = %bb.s
  br i1 %.031.in.i.us, label %bb.t, label %.critedge.us

bb.t:                                             ; preds = %._crit_edge.i49.us
  %i.db = add i64 %.02769.us, %i.ce               ; 3 uses
  %i.dc = zext i16 %i.cp to i64                   ; 3 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %exitcond.not.i.i.us105.not = icmp ult i64 %i.db, %i.dc
  br i1 %exitcond.not.i.i.us105.not, label %.lr.ph107, label %.critedge.i.i.us

bb.u:                                             ; preds = %.lr.ph107
  %i.dd = add nuw i64 %.01421.i.i.us106, 1        ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.dd, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.critedge.i.i.us, label %.lr.ph107, !llvm.loop !1017

.lr.ph107:                                        ; preds = %bb.t, %bb.u
  %.01421.i.i.us106 = phi i64 [ %i.dd, %bb.u ], [ %i.db, %bb.t ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us106 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !90
  %i.dg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.df, i64 1) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  store i64 %i.di, ptr %i.de, align 8, !tbaa !90
  br i1 %i.dh, label %bb.u, label %.critedge.us, !llvm.loop !1017

.critedge.i.i.us:                                 ; preds = %bb.u, %bb.t
  %i.dj = icmp ult i16 %i.cp, 62
  br i1 %i.dj, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dc
  store i64 1, ptr %i.dk, align 8, !tbaa !90
  %i.dl = add nuw nsw i16 %i.cp, 1                ; 2 uses
  store i16 %i.dl, ptr %i.a, align 8, !tbaa !379
  br label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph107, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %bb.q, %.lr.ph.split.us
  %i.dm = phi i16 [ %i.ar, %.lr.ph.split.us ], [ %i.dl, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %i.cp, %._crit_edge.i49.us ], [ %i.cp, %bb.q ], [ %i.cp, %.lr.ph107 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.dn = add nuw i64 %.02769.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !1018

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %i.dq, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %.not29 = icmp eq i64 %i.dp, 0
  br i1 %.not29, label %.critedge, label %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.dq = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !1018

_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit: ; preds = %.lr.ph.split, %bb.m, %bb.o, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %.critedge32

.critedge34:                                      ; preds = %.critedge, %.critedge.us, %_ZN5boost4json6detail8charconv6detail10fast_float9small_mulILt62EEEbRNS4_8stackvecIXT_EEEm.exit, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EEC2ENS4_4spanImEE.exit
  %.promoted.i = phi i16 [ %i.dm, %.critedge.us ], [ %i.b, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EEC2ENS4_4spanImEE.exit ], [ %i.ao, %_ZN5boost4json6detail8charconv6detail10fast_float9small_mulILt62EEEbRNS4_8stackvecIXT_EEEm.exit ], [ %i.ao, %.critedge ] ; 2 uses
  %.not1.i = icmp eq i16 %.promoted.i, 0
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dr = getelementptr i8, ptr %0, i64 -8
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %5 = phi i16 [ %.promoted.i, %.lr.ph.i50 ], [ %7, %bb.w ] ; 2 uses
  %6 = zext i16 %5 to i64
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %6
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !90
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %7 = add i16 %5, -1                             ; 3 uses
  store i16 %7, ptr %i.a, align 8, !tbaa !379
  %.not.i51 = icmp eq i16 %7, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !1019

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit
  %.6 = phi i1 [ false, %bb.g ], [ false, %_ZN5boost4json6detail8charconv6detail10fast_float8stackvecILt62EE10try_extendENS4_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.6
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost4json6detail8charconv6detail6parserImlEENS2_19from_chars_result_tIcEEPKcS8_RbRT_RT0_NS2_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [19 x i8], align 16               ; 17 uses
  %i.b = alloca [6 x i8], align 1                 ; 15 uses
  %i.c = icmp ugt ptr %0, %1
  %.4228.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br i1 %i.c, label %bb.be, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !93
  switch i8 %i.d, label %bb.d [
    i8 45, label %bb.c
    i8 43, label %bb.be
  ]

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1, !tbaa !207
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.preheader447

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %2, align 1, !tbaa !207
  br label %.preheader447

.preheader447:                                    ; preds = %bb.d, %bb.c
  %.1.ph = phi ptr [ %0, %bb.d ], [ %i.e, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader447, %bb.e
  %.1 = phi ptr [ %i.j, %bb.e ], [ %.1.ph, %.preheader447 ] ; 6 uses
  %i.f = load i8, ptr %.1, align 1, !tbaa !93     ; 8 uses
  %i.g = icmp eq i8 %i.f, 48
  %i.h = icmp ne ptr %.1, %1                      ; 2 uses
  %i.i = and i1 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 9 uses
  br i1 %i.i, label %bb.e, label %bb.f, !llvm.loop !1021

bb.f:                                             ; preds = %bb.e
  %.not.not = icmp ne i32 %5, 4                   ; 10 uses
  %. = select i1 %.not.not, i32 101, i32 112      ; 2 uses
  %.248 = select i1 %.not.not, i32 69, i32 80
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.248.neg = select i1 %.not.not, i32 -69, i32 -80
  %i.k = sext i8 %i.f to i32                      ; 2 uses
  %i.l = icmp eq i32 %., %i.k
  %i.m = icmp eq i32 %.248.neg, %i.k
  %or.cond250 = or i1 %i.l, %i.m
  br i1 %or.cond250, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 0, ptr %3, align 8, !tbaa !90
  store i64 0, ptr %4, align 8, !tbaa !90
  br label %bb.be

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.a, i8 0, i64 19, i1 false)
  %i.n = select i1 %.not.not, i32 10, i32 16      ; 3 uses
  %i.o = add i8 %i.f, -48
  %i.p = icmp ult i8 %i.o, 10                     ; 2 uses
  br i1 %.not.not, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.i
  %i.q = and i8 %i.f, -33
  %i.r = add i8 %i.q, -65
  %i.s = icmp ult i8 %i.r, 6
  %i.t = or i1 %i.p, %i.s
  br i1 %i.t, label %call.1.us.peel, label %.critedge

call.1.us.peel:                                   ; preds = %.split.us
  store i8 %i.f, ptr %i.a, align 16, !tbaa !93
  %i.u = load i8, ptr %i.j, align 1, !tbaa !93    ; 4 uses
  %i.v = add i8 %i.u, -58
  %i.w = icmp ult i8 %i.v, -10
  %i.x = and i8 %i.u, -33
  %i.y = add i8 %i.x, -71
  %i.z = icmp ult i8 %i.y, -6
  %.not425 = and i1 %i.w, %i.z
  %.not = icmp eq ptr %i.j, %1
  %or.cond = select i1 %.not425, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %call.1.us

.lr.ph291:                                        ; preds = %call.1.us
  %i.aa = icmp ne ptr %i.ae, %1
  %i.ab = icmp samesign ult i64 %.0224.us288398, 18
  %or.cond18.us = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond18.us, label %call.1.us, label %.critedge, !llvm.loop !1022

call.1.us:                                        ; preds = %call.1.us.peel, %.lr.ph291
  %.0224.us288398 = phi i64 [ %i.af, %.lr.ph291 ], [ 1, %call.1.us.peel ] ; 3 uses
  %.2.us290397 = phi ptr [ %i.ae, %.lr.ph291 ], [ %i.j, %call.1.us.peel ]
  %i.ac = phi i8 [ %i.ag, %.lr.ph291 ], [ %i.u, %call.1.us.peel ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0224.us288398
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %.2.us290397, i64 1 ; 5 uses
  %i.af = add nuw nsw i64 %.0224.us288398, 1      ; 3 uses
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !93  ; 5 uses
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  %i.aj = and i8 %i.ag, -33
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 6
  %i.am = or i1 %i.ai, %i.al
  br i1 %i.am, label %.lr.ph291, label %call.1.us..critedge.loopexit386_crit_edge, !llvm.loop !1022

.split:                                           ; preds = %bb.i
  br i1 %i.p, label %call.0.peel, label %.critedge

call.0.peel:                                      ; preds = %.split
  store i8 %i.f, ptr %i.a, align 16, !tbaa !93
  %i.an = load i8, ptr %i.j, align 1, !tbaa !93   ; 3 uses
  %i.ao = add i8 %i.an, -58
  %i.ap = icmp ult i8 %i.ao, -10
  %.not419 = icmp eq ptr %i.j, %1
  %or.cond422 = select i1 %i.ap, i1 true, i1 %.not419
  br i1 %or.cond422, label %.critedge, label %call.0

.lr.ph:                                           ; preds = %call.0
  %i.aq = icmp ne ptr %i.au, %1
  %i.ar = icmp samesign ult i64 %.0224280405, 18
  %or.cond18 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond18, label %call.0, label %.critedge, !llvm.loop !1023

call.0:                                           ; preds = %call.0.peel, %.lr.ph
  %.0224280405 = phi i64 [ %i.av, %.lr.ph ], [ 1, %call.0.peel ] ; 3 uses
  %.2282404 = phi ptr [ %i.au, %.lr.ph ], [ %i.j, %call.0.peel ]
  %i.as = phi i8 [ %i.aw, %.lr.ph ], [ %i.an, %call.0.peel ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0224280405
  store i8 %i.as, ptr %i.at, align 1, !tbaa !93
  %i.au = getelementptr inbounds nuw i8, ptr %.2282404, i64 1 ; 5 uses
  %i.av = add nuw nsw i64 %.0224280405, 1         ; 3 uses
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !93  ; 4 uses
  %i.ax = add i8 %i.aw, -48
  %i.ay = icmp ult i8 %i.ax, 10
  br i1 %i.ay, label %.lr.ph, label %call.0..critedge.loopexit_crit_edge, !llvm.loop !1023

call.0..critedge.loopexit_crit_edge:              ; preds = %call.0
  br label %.critedge, !llvm.loop !1023

call.1.us..critedge.loopexit386_crit_edge:        ; preds = %call.1.us
  br label %.critedge, !llvm.loop !1022

.critedge:                                        ; preds = %.lr.ph291, %.lr.ph, %call.1.us..critedge.loopexit386_crit_edge, %call.0..critedge.loopexit_crit_edge, %call.0.peel, %call.1.us.peel, %.split, %.split.us
  %i.az = phi i8 [ %i.f, %.split ], [ %i.f, %.split.us ], [ %i.an, %call.0.peel ], [ %i.u, %call.1.us.peel ], [ %i.ag, %call.1.us..critedge.loopexit386_crit_edge ], [ %i.aw, %call.0..critedge.loopexit_crit_edge ], [ %i.aw, %.lr.ph ], [ %i.ag, %.lr.ph291 ] ; 2 uses
  %.us-phi = phi i64 [ 0, %.split ], [ 0, %.split.us ], [ 1, %call.0.peel ], [ 1, %call.1.us.peel ], [ %i.af, %call.1.us..critedge.loopexit386_crit_edge ], [ %i.av, %call.0..critedge.loopexit_crit_edge ], [ %i.av, %.lr.ph ], [ %i.af, %.lr.ph291 ] ; 6 uses
  %.us-phi278 = phi i1 [ true, %.split ], [ true, %.split.us ], [ false, %call.0.peel ], [ false, %call.1.us.peel ], [ false, %call.1.us..critedge.loopexit386_crit_edge ], [ false, %call.0..critedge.loopexit_crit_edge ], [ false, %.lr.ph ], [ false, %.lr.ph291 ]
  %.us-phi279 = phi ptr [ %.1, %.split ], [ %.1, %.split.us ], [ %i.j, %call.0.peel ], [ %i.j, %call.1.us.peel ], [ %i.ae, %call.1.us..critedge.loopexit386_crit_edge ], [ %i.au, %call.0..critedge.loopexit_crit_edge ], [ %i.au, %.lr.ph ], [ %i.ae, %.lr.ph291 ] ; 5 uses
  %i.ba = icmp eq ptr %.us-phi279, %1
  br i1 %i.ba, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.critedge
  %i.bb = icmp eq i32 %5, 1
  br i1 %i.bb, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %4, align 8, !tbaa !90
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.us-phi
  %i.bd = call { ptr, i32 } @_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.n) #46
  %i.be = extractvalue { ptr, i32 } %i.bd, 1      ; 3 uses
  switch i32 %i.be, label %bb.m [
    i32 22, label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread
    i32 34, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread

bb.m:                                             ; preds = %bb.k
  br label %_ZN5boost4json6detail8charconv6detail10from_charsImEENS2_19from_chars_result_tIcEEPKcS8_RT_i.exit.thread

bb.n:                                             ; preds = %.critedge
  %i.bf = icmp eq i8 %i.az, 46                    ; 5 uses
  br i1 %i.bf, label %bb.o, label %.critedge3

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.us-phi279, i64 1 ; 5 uses
  br i1 %.us-phi278, label %.preheader277, label %bb.p

.preheader277:                                    ; preds = %bb.o
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !93
  %i.bi = icmp eq i8 %i.bh, 48
  %i.bj = icmp ne ptr %i.bg, %1
  %i.bk = and i1 %i.bj, %i.bi
  br i1 %i.bk, label %.lr.ph300, label %._crit_edge

.lr.ph300:                                        ; preds = %.preheader277, %.lr.ph300
  %.3299 = phi ptr [ %i.bl, %.lr.ph300 ], [ %i.bg, %.preheader277 ]
  %.0217298 = phi i64 [ %i.bm, %.lr.ph300 ], [ 0, %.preheader277 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.3299, i64 1 ; 4 uses
end_hunk_0
