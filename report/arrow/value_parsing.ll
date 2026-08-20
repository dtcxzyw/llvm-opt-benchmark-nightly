inline.NumInlined: 865
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  %.9.lcssa = phi ptr [ %.9.lcssa.ph, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not8.i67316 = icmp eq ptr %.9.lcssa, %i.f
  br i1 %.not8.i67316, label %._crit_edge350, label %.lr.ph319.preheader

.lr.ph319.preheader:                              ; preds = %._crit_edge
  %i.m = add i64 %i.e, %i.c
  %i.n = sub i64 %i.m, %.9.lcssa440.pre-phi
  %scevgep = getelementptr i8, ptr %.9.lcssa, i64 %i.n
  br label %.lr.ph319

.lr.ph319:                                        ; preds = %.lr.ph319.preheader, %bb.c
  %.10317 = phi ptr [ %i.p, %bb.c ], [ %.9.lcssa, %.lr.ph319.preheader ] ; 3 uses
  %i.o = load i8, ptr %.10317, align 1, !tbaa !29
  %.not9.i68 = icmp eq i8 %i.o, 48
  br i1 %.not9.i68, label %bb.c, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71

bb.c:                                             ; preds = %.lr.ph319
  %i.p = getelementptr inbounds nuw i8, ptr %.10317, i64 1 ; 2 uses
  %.not8.i67 = icmp eq ptr %i.p, %i.f
  br i1 %.not8.i67, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71, label %.lr.ph319, !llvm.loop !89

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71: ; preds = %.lr.ph319, %bb.c
  %.10.lcssa = phi ptr [ %scevgep, %bb.c ], [ %.10317, %.lr.ph319 ] ; 2 uses
  %.not348 = icmp eq ptr %.10.lcssa, %i.f
  br i1 %.not348, label %._crit_edge350, label %.preheader294.lr.ph

.preheader294.lr.ph:                              ; preds = %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  %.promoted = load i16, ptr %i.q, align 8, !tbaa !90
  br label %.preheader294

.preheader294:                                    ; preds = %.preheader294.lr.ph, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129
  %i.r = phi i16 [ %.promoted, %.preheader294.lr.ph ], [ %i.ii, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129 ] ; 13 uses
  %.0349 = phi ptr [ %.10.lcssa, %.preheader294.lr.ph ], [ %.2.lcssa, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129 ] ; 5 uses
  %i.s = ptrtoint ptr %.0349 to i64
  %i.t = sub i64 %i.g, %i.s
  %i.u = icmp sgt i64 %i.t, 7
  %.pre.pre = load i64, ptr %3, align 8, !tbaa !72 ; 4 uses
  %i.v = sub i64 %2, %.pre.pre
  %i.w = icmp ugt i64 %i.v, 7
  %or.cond695 = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond695, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader294
  %.0.copyload.i.i82 = load i64, ptr %.0349, align 1
  %i.x = add i64 %.0.copyload.i.i82, -3472328296227680304 ; 2 uses
  %i.y = mul i64 %i.x, 10
  %i.z = lshr i64 %i.x, 8
  %i.aa = add i64 %i.y, %i.z                      ; 2 uses
  %i.ab = and i64 %i.aa, 1095216660735
  %i.ac = mul i64 %i.ab, 4294967296000100
  %i.ad = lshr i64 %i.aa, 16
  %i.ae = and i64 %i.ad, 1095216660735
  %i.af = mul i64 %i.ae, 42949672960001
  %i.ag = add i64 %i.af, %i.ac
  %i.ah = lshr i64 %i.ag, 32                      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0349, i64 8 ; 3 uses
  %i.aj = add i64 %.pre.pre, 8                    ; 3 uses
  store i64 %i.aj, ptr %3, align 8, !tbaa !72
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.g, %i.ak
  %i.am = icmp sgt i64 %i.al, 7
  %i.an = sub i64 %2, %i.aj
  %i.ao = icmp ugt i64 %i.an, 7
  %or.cond691 = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond691, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ap = mul nuw nsw i64 %i.ah, 100000000
  %.0.copyload.i.i82.1 = load i64, ptr %i.ai, align 1
  %i.aq = add i64 %.0.copyload.i.i82.1, -3472328296227680304 ; 2 uses
  %i.ar = mul i64 %i.aq, 10
  %i.as = lshr i64 %i.aq, 8
  %i.at = add i64 %i.ar, %i.as                    ; 2 uses
  %i.au = and i64 %i.at, 1095216660735
  %i.av = mul i64 %i.au, 4294967296000100
  %i.aw = lshr i64 %i.at, 16
  %i.ax = and i64 %i.aw, 1095216660735
  %i.ay = mul i64 %i.ax, 42949672960001
  %i.az = add i64 %i.ay, %i.av
  %i.ba = lshr i64 %i.az, 32
  %i.bb = add nuw nsw i64 %i.ba, %i.ap
  %i.bc = getelementptr inbounds nuw i8, ptr %.0349, i64 16
  %i.bd = add i64 %.pre.pre, 16                   ; 2 uses
  store i64 %i.bd, ptr %3, align 8, !tbaa !72
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %.preheader294
  %.pre = phi i64 [ %.pre.pre, %.preheader294 ], [ %i.aj, %bb.d ], [ %i.bd, %bb.e ] ; 3 uses
  %.1263.lcssa = phi i64 [ 0, %.preheader294 ], [ 8, %bb.d ], [ 16, %bb.e ] ; 2 uses
  %.1256.lcssa = phi i64 [ 0, %.preheader294 ], [ %i.ah, %bb.d ], [ %i.bb, %bb.e ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0349, %.preheader294 ], [ %i.ai, %bb.d ], [ %i.bc, %bb.e ] ; 3 uses
  %.not64334 = icmp eq ptr %.1.lcssa, %i.f
  br i1 %.not64334, label %.critedge2, label %.lr.ph339

.lr.ph339:                                        ; preds = %.critedge
  %umax = tail call i64 @llvm.umax.i64(i64 %.pre, i64 %2) ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph339, %bb.g
  %i.be = phi i64 [ %.pre, %.lr.ph339 ], [ %i.bm, %bb.g ] ; 2 uses
  %.2338 = phi ptr [ %.1.lcssa, %.lr.ph339 ], [ %i.bk, %bb.g ] ; 3 uses
  %.2257337 = phi i64 [ %.1256.lcssa, %.lr.ph339 ], [ %i.bj, %bb.g ] ; 2 uses
  %.2264336 = phi i64 [ %.1263.lcssa, %.lr.ph339 ], [ %i.bl, %bb.g ] ; 3 uses
  %exitcond.not = icmp eq i64 %i.be, %umax
  br i1 %exitcond.not, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = mul i64 %.2257337, 10
  %i.bg = load i8, ptr %.2338, align 1, !tbaa !29
  %i.bh = sext i8 %i.bg to i64
  %i.bi = add i64 %i.bf, -48
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.2338, i64 1 ; 3 uses
  %i.bl = add nuw nsw i64 %.2264336, 1            ; 2 uses
  %i.bm = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bm, ptr %3, align 8, !tbaa !72
  %i.bn = icmp ugt i64 %.2264336, 17
  %.not64 = icmp eq ptr %i.bk, %i.f
  %or.cond = select i1 %i.bn, i1 true, i1 %.not64
  br i1 %or.cond, label %.critedge2, label %bb.f, !llvm.loop !92

.critedge2:                                       ; preds = %bb.f, %bb.g, %.critedge
  %i.bo = phi i64 [ %.pre, %.critedge ], [ %i.bm, %bb.g ], [ %umax, %bb.f ]
  %.2264.lcssa = phi i64 [ %.1263.lcssa, %.critedge ], [ %i.bl, %bb.g ], [ %.2264336, %bb.f ] ; 2 uses
  %.2257.lcssa = phi i64 [ %.1256.lcssa, %.critedge ], [ %i.bj, %bb.g ], [ %.2257337, %bb.f ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.critedge ], [ %i.bk, %bb.g ], [ %.2338, %bb.f ] ; 5 uses
  %i.bp = icmp eq i64 %i.bo, %2
  %i.bq = zext i16 %i.r to i64                    ; 6 uses
  %.not19.i.i = icmp eq i16 %i.r, 0               ; 2 uses
  br i1 %i.bp, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_floatL20powers_of_ten_uint64E, i64 %.2264.lcssa
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !72
  %i.bt = zext i64 %i.bs to i128                  ; 3 uses
  %xtraiter615 = and i64 %i.bq, 1
  %i.bu = icmp eq i16 %i.r, 1
  br i1 %i.bu, label %.epil.preheader614, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter620 = and i64 %i.bq, 65534
  br label %bb.i

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.i
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  br i1 %lcmp.mod616.not, label %._crit_edge.i.i, label %.epil.preheader614

.epil.preheader614:                               ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cw, %._crit_edge.i.i.unr-lcssa ]
  %.01215.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cu, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod619 = trunc i16 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod619)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i.epil.init ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !72
  %i.bx = zext i64 %i.bw to i128
  %i.by = mul nuw i128 %i.bx, %i.bt
  %i.bz = zext i64 %.01215.i.i.epil.init to i128
  %i.ca = add nuw i128 %i.by, %i.bz               ; 2 uses
  %i.cb = lshr i128 %i.ca, 64                     ; 2 uses
  %i.cc = trunc nuw i128 %i.cb to i64
  %i.cd = trunc i128 %i.ca to i64
  store i64 %i.cd, ptr %i.bv, align 8, !tbaa !72
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader614
  %.lcssa599 = phi i128 [ %i.ct, %._crit_edge.i.i.unr-lcssa ], [ %i.cb, %.epil.preheader614 ]
  %.lcssa598 = phi i64 [ %i.cu, %._crit_edge.i.i.unr-lcssa ], [ %i.cc, %.epil.preheader614 ]
  %.not.i.i84 = icmp ne i128 %.lcssa599, 0
  %i.ce = icmp ult i16 %i.r, 62
  %or.cond279 = and i1 %i.ce, %.not.i.i84
  br i1 %or.cond279, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.new
  %.016.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cw, %bb.i ] ; 3 uses
  %.01215.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cu, %bb.i ]
  %niter621 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter621.next.1, %bb.i ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !72
  %i.ch = zext i64 %i.cg to i128
  %i.ci = mul nuw i128 %i.ch, %i.bt
  %i.cj = zext i64 %.01215.i.i to i128
  %i.ck = add nuw i128 %i.ci, %i.cj               ; 2 uses
  %i.cl = lshr i128 %i.ck, 64
  %i.cm = trunc i128 %i.ck to i64
  store i64 %i.cm, ptr %i.cf, align 8, !tbaa !72
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !72
  %i.cq = zext i64 %i.cp to i128
  %i.cr = mul nuw i128 %i.cq, %i.bt
  %i.cs = add nuw i128 %i.cr, %i.cl               ; 2 uses
  %i.ct = lshr i128 %i.cs, 64                     ; 2 uses
  %i.cu = trunc nuw i128 %i.ct to i64             ; 3 uses
  %i.cv = trunc i128 %i.cs to i64
  store i64 %i.cv, ptr %i.co, align 8, !tbaa !72
  %i.cw = add nuw nsw i64 %.016.i.i, 2            ; 2 uses
  %niter621.next.1 = add nuw i64 %niter621, 2     ; 2 uses
  %niter621.ncmp.1 = icmp eq i64 %niter621.next.1, %unroll_iter620
  br i1 %niter621.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.i, !llvm.loop !93

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i: ; preds = %._crit_edge.i.i
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq
  store i64 %.lcssa598, ptr %i.cx, align 8, !tbaa !72
  %i.cy = add nuw nsw i16 %i.r, 1                 ; 2 uses
  store i16 %i.cy, ptr %i.q, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit: ; preds = %._crit_edge.i.i, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i
  %i.cz = phi i16 [ %i.cy, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i ], [ %i.r, %._crit_edge.i.i ] ; 8 uses
  %.not20.i.i = icmp eq i64 %.2257.lcssa, 0
  br i1 %.not20.i.i, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit, label %.lr.ph.i.i86

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit.thread: ; preds = %bb.h
  %.not20.i.i489 = icmp eq i64 %.2257.lcssa, 0
  br i1 %.not20.i.i489, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i88

.lr.ph.i.i86:                                     ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit
  %i.da = zext i16 %i.cz to i64                   ; 2 uses
  %i.db = load i64, ptr %0, align 8, !tbaa !72
  %i.dc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.db, i64 %.2257.lcssa) ; 2 uses
  %i.dd = extractvalue { i64, i1 } %i.dc, 1
  %i.de = extractvalue { i64, i1 } %i.dc, 0
  store i64 %i.de, ptr %0, align 8, !tbaa !72
  br i1 %i.dd, label %.peel.next.i.preheader, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit

.peel.next.i.preheader:                           ; preds = %.lr.ph.i.i86
  %exitcond.not.i.i87559 = icmp eq i16 %i.cz, 1
  br i1 %exitcond.not.i.i87559, label %.critedge.i.i, label %.lr.ph561

.peel.next.i:                                     ; preds = %.lr.ph561
  %i.df = add nuw nsw i64 %.01421.i.i560, 1       ; 2 uses
  %exitcond.not.i.i87 = icmp eq i64 %i.df, %i.da
  br i1 %exitcond.not.i.i87, label %.critedge.i.i, label %.lr.ph561, !llvm.loop !94

.lr.ph561:                                        ; preds = %.peel.next.i.preheader, %.peel.next.i
  %.01421.i.i560 = phi i64 [ %i.df, %.peel.next.i ], [ 1, %.peel.next.i.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i560 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !72
  %i.di = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dh, i64 1) ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 1
  %i.dk = extractvalue { i64, i1 } %i.di, 0
  store i64 %i.dk, ptr %i.dg, align 8, !tbaa !72
  br i1 %i.dj, label %.peel.next.i, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit, !llvm.loop !94

.critedge.i.i:                                    ; preds = %.peel.next.i, %.peel.next.i.preheader
  %i.dl = icmp ult i16 %i.cz, 62
  br i1 %i.dl, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i88, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i88: ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit.thread, %.critedge.i.i
  %i.dm = phi i64 [ %i.da, %.critedge.i.i ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit.thread ]
  %i.dn = phi i16 [ %i.cz, %.critedge.i.i ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit.thread ]
  %.022.i.lcssa7.i = phi i64 [ 1, %.critedge.i.i ], [ %.2257.lcssa, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit.thread ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dm
  store i64 %.022.i.lcssa7.i, ptr %i.do, align 8, !tbaa !72
  %i.dp = add nuw nsw i16 %i.dn, 1                ; 2 uses
  store i16 %i.dp, ptr %i.q, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit

_ZN14arrow_vendored10fast_float6bigint3addEm.exit: ; preds = %.lr.ph561, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit.thread, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit, %.lr.ph.i.i86, %.critedge.i.i, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i88
  %.pr = phi i16 [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit.thread ], [ %i.cz, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit ], [ %i.cz, %.lr.ph.i.i86 ], [ %i.cz, %.critedge.i.i ], [ %i.dp, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i88 ], [ %i.cz, %.lr.ph561 ] ; 7 uses
  %i.dq = ptrtoint ptr %.2.lcssa to i64
  %i.dr = sub i64 %i.g, %i.dq
  %i.ds = icmp sgt i64 %i.dr, 7
  br i1 %i.ds, label %.lr.ph352, label %.preheader292

.preheader292:                                    ; preds = %bb.j, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit
  %.09.i74.lcssa = phi ptr [ %.2.lcssa, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit ], [ %i.dt, %bb.j ] ; 2 uses
  %.not.i76354 = icmp eq ptr %.09.i74.lcssa, %i.f
  br i1 %.not.i76354, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81.thread, label %.lr.ph356

.lr.ph352:                                        ; preds = %_ZN14arrow_vendored10fast_float6bigint3addEm.exit, %bb.j
  %.09.i74351 = phi ptr [ %i.dt, %bb.j ], [ %.2.lcssa, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit ] ; 2 uses
  %.0.copyload.i79 = load i64, ptr %.09.i74351, align 1
  %.not11.i80 = icmp eq i64 %.0.copyload.i79, 3472328296227680304
  br i1 %.not11.i80, label %bb.j, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81

bb.j:                                             ; preds = %.lr.ph352
  %i.dt = getelementptr inbounds nuw i8, ptr %.09.i74351, i64 8 ; 3 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.g, %i.du
  %i.dw = icmp sgt i64 %i.dv, 7
  br i1 %i.dw, label %.lr.ph352, label %.preheader292, !llvm.loop !96

.lr.ph356:                                        ; preds = %.preheader292, %.lr.ph356
  %.1.i75355 = phi ptr [ %i.dy, %.lr.ph356 ], [ %.09.i74.lcssa, %.preheader292 ] ; 2 uses
  %i.dx = load i8, ptr %.1.i75355, align 1, !tbaa !29
  %.not10.i77.not = icmp ne i8 %i.dx, 48          ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1.i75355, i64 1 ; 2 uses
  %.not.i76 = icmp eq ptr %i.dy, %i.f
  %or.cond574 = select i1 %.not10.i77.not, i1 true, i1 %.not.i76
  br i1 %or.cond574, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81, label %.lr.ph356, !llvm.loop !97

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81: ; preds = %.lr.ph352, %.lr.ph356
  %.0.i78 = phi i1 [ %.not10.i77.not, %.lr.ph356 ], [ true, %.lr.ph352 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !98 ; 2 uses
  %.not65 = icmp eq ptr %i.ea, null
  br i1 %.not65, label %bb.n, label %bb.k

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81.thread: ; preds = %.preheader292
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !98 ; 2 uses
  %.not65492 = icmp eq ptr %i.ec, null
  br i1 %.not65492, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81.thread, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81
  %i.ed = phi ptr [ %i.ec, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81.thread ], [ %i.ea, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81 ] ; 3 uses
  %.0.i78494 = phi i1 [ false, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81.thread ], [ %.0.i78, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81 ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !72 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sroa.2.0.copyload ; 3 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = icmp sgt i64 %.sroa.2.0.copyload, 7
  br i1 %i.eg, label %.lr.ph362, label %.preheader290

.preheader290:                                    ; preds = %bb.l, %bb.k
  %.09.i.i.lcssa = phi ptr [ %i.ed, %bb.k ], [ %i.eh, %bb.l ] ; 2 uses
  %.not.i.i364 = icmp eq ptr %.09.i.i.lcssa, %i.ee
  br i1 %.not.i.i364, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit, label %.lr.ph366

.lr.ph362:                                        ; preds = %bb.k, %bb.l
  %.09.i.i360 = phi ptr [ %i.eh, %bb.l ], [ %i.ed, %bb.k ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.09.i.i360, align 1
  %.not11.i.i = icmp eq i64 %.0.copyload.i.i, 3472328296227680304
  br i1 %.not11.i.i, label %bb.l, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread

bb.l:                                             ; preds = %.lr.ph362
  %i.eh = getelementptr inbounds nuw i8, ptr %.09.i.i360, i64 8 ; 3 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ef, %i.ei
  %i.ek = icmp sgt i64 %i.ej, 7
  br i1 %i.ek, label %.lr.ph362, label %.preheader290, !llvm.loop !96

bb.m:                                             ; preds = %.lr.ph366
  %i.el = getelementptr inbounds nuw i8, ptr %.1.i.i365, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.el, %i.ee
  br i1 %.not.i.i, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit, label %.lr.ph366, !llvm.loop !97

.lr.ph366:                                        ; preds = %.preheader290, %bb.m
  %.1.i.i365 = phi ptr [ %i.el, %bb.m ], [ %.09.i.i.lcssa, %.preheader290 ] ; 2 uses
  %i.em = load i8, ptr %.1.i.i365, align 1, !tbaa !29
  %.not10.i.i = icmp eq i8 %i.em, 48
  br i1 %.not10.i.i, label %bb.m, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit: ; preds = %bb.m, %.preheader290
  br i1 %.0.i78494, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit

bb.n:                                             ; preds = %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81
  br i1 %.0.i78, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread: ; preds = %.lr.ph362, %.lr.ph366, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit, %bb.n
  %i.en = zext i16 %.pr to i64                    ; 4 uses
  %.not19.i.i89 = icmp eq i16 %.pr, 0
  br i1 %.not19.i.i89, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i106, label %.lr.ph.i.i90.preheader

.lr.ph.i.i90.preheader:                           ; preds = %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread
  %xtraiter622 = and i64 %i.en, 1
  %i.eo = icmp eq i16 %.pr, 1
  br i1 %i.eo, label %.lr.ph.i.i90.epil.preheader, label %.lr.ph.i.i90.preheader.new

.lr.ph.i.i90.preheader.new:                       ; preds = %.lr.ph.i.i90.preheader
  %unroll_iter627 = and i64 %i.en, 65534
  br label %.lr.ph.i.i90

._crit_edge.i.i94.unr-lcssa:                      ; preds = %.lr.ph.i.i90
  %lcmp.mod623.not = icmp eq i64 %xtraiter622, 0
  br i1 %lcmp.mod623.not, label %._crit_edge.i.i94, label %.lr.ph.i.i90.epil.preheader

.lr.ph.i.i90.epil.preheader:                      ; preds = %._crit_edge.i.i94.unr-lcssa, %.lr.ph.i.i90.preheader
  %.016.i.i91.epil.init = phi i64 [ 0, %.lr.ph.i.i90.preheader ], [ %i.fq, %._crit_edge.i.i94.unr-lcssa ]
  %.01215.i.i92.epil.init = phi i64 [ 0, %.lr.ph.i.i90.preheader ], [ %i.fo, %._crit_edge.i.i94.unr-lcssa ]
  %lcmp.mod626 = trunc i16 %.pr to i1
  tail call void @llvm.assume(i1 %lcmp.mod626)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i91.epil.init ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !72
  %i.er = zext i64 %i.eq to i128
  %i.es = mul nuw nsw i128 %i.er, 10
  %i.et = zext nneg i64 %.01215.i.i92.epil.init to i128
  %i.eu = add nuw nsw i128 %i.es, %i.et           ; 2 uses
  %i.ev = lshr i128 %i.eu, 64                     ; 2 uses
  %i.ew = trunc nuw nsw i128 %i.ev to i64
  %i.ex = trunc i128 %i.eu to i64
  store i64 %i.ex, ptr %i.ep, align 8, !tbaa !72
  br label %._crit_edge.i.i94

._crit_edge.i.i94:                                ; preds = %._crit_edge.i.i94.unr-lcssa, %.lr.ph.i.i90.epil.preheader
  %.lcssa593 = phi i128 [ %i.fn, %._crit_edge.i.i94.unr-lcssa ], [ %i.ev, %.lr.ph.i.i90.epil.preheader ]
  %.lcssa592 = phi i64 [ %i.fo, %._crit_edge.i.i94.unr-lcssa ], [ %i.ew, %.lr.ph.i.i90.epil.preheader ]
  %.not.i.i95 = icmp ne i128 %.lcssa593, 0
  %i.ey = icmp ult i16 %.pr, 62
  %or.cond280 = and i1 %i.ey, %.not.i.i95
  br i1 %or.cond280, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98.thread270, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98

.lr.ph.i.i90:                                     ; preds = %.lr.ph.i.i90, %.lr.ph.i.i90.preheader.new
  %.016.i.i91 = phi i64 [ 0, %.lr.ph.i.i90.preheader.new ], [ %i.fq, %.lr.ph.i.i90 ] ; 3 uses
  %.01215.i.i92 = phi i64 [ 0, %.lr.ph.i.i90.preheader.new ], [ %i.fo, %.lr.ph.i.i90 ]
  %niter628 = phi i64 [ 0, %.lr.ph.i.i90.preheader.new ], [ %niter628.next.1, %.lr.ph.i.i90 ]
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i91 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !72
  %i.fb = zext i64 %i.fa to i128
  %i.fc = mul nuw nsw i128 %i.fb, 10
  %i.fd = zext nneg i64 %.01215.i.i92 to i128
  %i.fe = add nuw nsw i128 %i.fc, %i.fd           ; 2 uses
  %i.ff = lshr i128 %i.fe, 64
  %i.fg = trunc i128 %i.fe to i64
  store i64 %i.fg, ptr %i.ez, align 8, !tbaa !72
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i91
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !72
  %i.fk = zext i64 %i.fj to i128
  %i.fl = mul nuw nsw i128 %i.fk, 10
  %i.fm = add nuw nsw i128 %i.fl, %i.ff           ; 2 uses
  %i.fn = lshr i128 %i.fm, 64                     ; 2 uses
  %i.fo = trunc nuw nsw i128 %i.fn to i64         ; 3 uses
  %i.fp = trunc i128 %i.fm to i64
  store i64 %i.fp, ptr %i.fi, align 8, !tbaa !72
  %i.fq = add nuw nsw i64 %.016.i.i91, 2          ; 2 uses
  %niter628.next.1 = add nuw i64 %niter628, 2     ; 2 uses
  %niter628.ncmp.1 = icmp eq i64 %niter628.next.1, %unroll_iter627
  br i1 %niter628.ncmp.1, label %._crit_edge.i.i94.unr-lcssa, label %.lr.ph.i.i90, !llvm.loop !93

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98.thread270: ; preds = %._crit_edge.i.i94
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.en
  store i64 %.lcssa592, ptr %i.fr, align 8, !tbaa !72
  %i.fs = add nuw nsw i16 %.pr, 1                 ; 3 uses
  store i16 %i.fs, ptr %i.q, align 8, !tbaa !90
  %.pre453 = zext nneg i16 %i.fs to i64
  br label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98: ; preds = %._crit_edge.i.i94, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98.thread270
  %.pre-phi454 = phi i64 [ %.pre453, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98.thread270 ], [ %i.en, %._crit_edge.i.i94 ] ; 3 uses
  %i.ft = phi i16 [ %i.fs, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98.thread270 ], [ %.pr, %._crit_edge.i.i94 ] ; 2 uses
  %i.fu = load i64, ptr %0, align 8, !tbaa !72
  %i.fv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fu, i64 1) ; 2 uses
  %i.fw = extractvalue { i64, i1 } %i.fv, 1
  %i.fx = extractvalue { i64, i1 } %i.fv, 0
  store i64 %i.fx, ptr %0, align 8, !tbaa !72
  br i1 %i.fw, label %.peel.next.i102.preheader, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split

.peel.next.i102.preheader:                        ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98
  %exitcond.not.i.i104562 = icmp eq i64 %.pre-phi454, 1
  br i1 %exitcond.not.i.i104562, label %.critedge.i.i105, label %.lr.ph564

.peel.next.i102:                                  ; preds = %.lr.ph564
  %i.fy = add nuw nsw i64 %.01421.i.i103563, 1    ; 2 uses
  %exitcond.not.i.i104 = icmp eq i64 %i.fy, %.pre-phi454
  br i1 %exitcond.not.i.i104, label %.critedge.i.i105, label %.lr.ph564, !llvm.loop !94

.lr.ph564:                                        ; preds = %.peel.next.i102.preheader, %.peel.next.i102
  %.01421.i.i103563 = phi i64 [ %i.fy, %.peel.next.i102 ], [ 1, %.peel.next.i102.preheader ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i103563 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !72
  %i.gb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ga, i64 1) ; 2 uses
  %i.gc = extractvalue { i64, i1 } %i.gb, 1
  %i.gd = extractvalue { i64, i1 } %i.gb, 0
  store i64 %i.gd, ptr %i.fz, align 8, !tbaa !72
  br i1 %i.gc, label %.peel.next.i102, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split, !llvm.loop !94

.critedge.i.i105:                                 ; preds = %.peel.next.i102, %.peel.next.i102.preheader
  %i.ge = icmp ult i16 %i.ft, 62
  br i1 %i.ge, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i106, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i106: ; preds = %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread, %.critedge.i.i105
  %i.gf = phi i64 [ 0, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread ], [ %.pre-phi454, %.critedge.i.i105 ]
  %i.gg = phi i16 [ 0, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread ], [ %i.ft, %.critedge.i.i105 ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gf
  store i64 1, ptr %i.gh, align 8, !tbaa !72
  %i.gi = add nuw nsw i16 %i.gg, 1
  store i16 %i.gi, ptr %i.q, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split

bb.o:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread, label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %bb.o
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_floatL20powers_of_ten_uint64E, i64 %.2264.lcssa
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !72
  %i.gl = zext i64 %i.gk to i128                  ; 3 uses
  %xtraiter = and i64 %i.bq, 1
  %i.gm = icmp eq i16 %i.r, 1
  br i1 %i.gm, label %.epil.preheader, label %.lr.ph.i.i110.new

.lr.ph.i.i110.new:                                ; preds = %.lr.ph.i.i110
  %unroll_iter = and i64 %i.bq, 65534
  br label %bb.p

._crit_edge.i.i114.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i114, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i114.unr-lcssa, %.lr.ph.i.i110
  %.016.i.i111.epil.init = phi i64 [ 0, %.lr.ph.i.i110 ], [ %i.ho, %._crit_edge.i.i114.unr-lcssa ]
  %.01215.i.i112.epil.init = phi i64 [ 0, %.lr.ph.i.i110 ], [ %i.hm, %._crit_edge.i.i114.unr-lcssa ]
  %lcmp.mod613 = trunc i16 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod613)
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i111.epil.init ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !72
  %i.gp = zext i64 %i.go to i128
  %i.gq = mul nuw i128 %i.gp, %i.gl
  %i.gr = zext i64 %.01215.i.i112.epil.init to i128
  %i.gs = add nuw i128 %i.gq, %i.gr               ; 2 uses
  %i.gt = lshr i128 %i.gs, 64                     ; 2 uses
  %i.gu = trunc nuw i128 %i.gt to i64
  %i.gv = trunc i128 %i.gs to i64
  store i64 %i.gv, ptr %i.gn, align 8, !tbaa !72
  br label %._crit_edge.i.i114

._crit_edge.i.i114:                               ; preds = %._crit_edge.i.i114.unr-lcssa, %.epil.preheader
  %.lcssa602 = phi i128 [ %i.hl, %._crit_edge.i.i114.unr-lcssa ], [ %i.gt, %.epil.preheader ]
  %.lcssa601 = phi i64 [ %i.hm, %._crit_edge.i.i114.unr-lcssa ], [ %i.gu, %.epil.preheader ]
  %.not.i.i115 = icmp ne i128 %.lcssa602, 0
  %i.gw = icmp ult i16 %i.r, 62
  %or.cond281 = and i1 %i.gw, %.not.i.i115
  br i1 %or.cond281, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i110.new
  %.016.i.i111 = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %i.ho, %bb.p ] ; 3 uses
  %.01215.i.i112 = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %i.hm, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %niter.next.1, %bb.p ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i111 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !72
  %i.gz = zext i64 %i.gy to i128
  %i.ha = mul nuw i128 %i.gz, %i.gl
  %i.hb = zext i64 %.01215.i.i112 to i128
  %i.hc = add nuw i128 %i.ha, %i.hb               ; 2 uses
  %i.hd = lshr i128 %i.hc, 64
  %i.he = trunc i128 %i.hc to i64
  store i64 %i.he, ptr %i.gx, align 8, !tbaa !72
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i111
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !72
  %i.hi = zext i64 %i.hh to i128
  %i.hj = mul nuw i128 %i.hi, %i.gl
  %i.hk = add nuw i128 %i.hj, %i.hd               ; 2 uses
  %i.hl = lshr i128 %i.hk, 64                     ; 2 uses
  %i.hm = trunc nuw i128 %i.hl to i64             ; 3 uses
  %i.hn = trunc i128 %i.hk to i64
  store i64 %i.hn, ptr %i.hg, align 8, !tbaa !72
  %i.ho = add nuw nsw i64 %.016.i.i111, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i114.unr-lcssa, label %bb.p, !llvm.loop !93

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117: ; preds = %._crit_edge.i.i114
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq
  store i64 %.lcssa601, ptr %i.hp, align 8, !tbaa !72
  %i.hq = add nuw nsw i16 %i.r, 1                 ; 2 uses
  store i16 %i.hq, ptr %i.q, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118: ; preds = %._crit_edge.i.i114, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117
  %i.hr = phi i16 [ %i.hq, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117 ], [ %i.r, %._crit_edge.i.i114 ] ; 8 uses
  %.not20.i.i119 = icmp eq i64 %.2257.lcssa, 0
  br i1 %.not20.i.i119, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129, label %.lr.ph.i.i120

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread: ; preds = %bb.o
  %.not20.i.i119496 = icmp eq i64 %.2257.lcssa, 0
  br i1 %.not20.i.i119496, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127

.lr.ph.i.i120:                                    ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118
  %i.hs = zext i16 %i.hr to i64                   ; 2 uses
  %i.ht = load i64, ptr %0, align 8, !tbaa !72
  %i.hu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ht, i64 %.2257.lcssa) ; 2 uses
  %i.hv = extractvalue { i64, i1 } %i.hu, 1
  %i.hw = extractvalue { i64, i1 } %i.hu, 0
  store i64 %i.hw, ptr %0, align 8, !tbaa !72
  br i1 %i.hv, label %.peel.next.i123.preheader, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129

.peel.next.i123.preheader:                        ; preds = %.lr.ph.i.i120
  %exitcond.not.i.i125556 = icmp eq i16 %i.hr, 1
  br i1 %exitcond.not.i.i125556, label %.critedge.i.i126, label %.lr.ph558

.peel.next.i123:                                  ; preds = %.lr.ph558
  %i.hx = add nuw nsw i64 %.01421.i.i124557, 1    ; 2 uses
  %exitcond.not.i.i125 = icmp eq i64 %i.hx, %i.hs
  br i1 %exitcond.not.i.i125, label %.critedge.i.i126, label %.lr.ph558, !llvm.loop !94

.lr.ph558:                                        ; preds = %.peel.next.i123.preheader, %.peel.next.i123
  %.01421.i.i124557 = phi i64 [ %i.hx, %.peel.next.i123 ], [ 1, %.peel.next.i123.preheader ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i124557 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !72
  %i.ia = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hz, i64 1) ; 2 uses
  %i.ib = extractvalue { i64, i1 } %i.ia, 1
  %i.ic = extractvalue { i64, i1 } %i.ia, 0
  store i64 %i.ic, ptr %i.hy, align 8, !tbaa !72
  br i1 %i.ib, label %.peel.next.i123, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129, !llvm.loop !94

.critedge.i.i126:                                 ; preds = %.peel.next.i123, %.peel.next.i123.preheader
  %i.id = icmp ult i16 %i.hr, 62
  br i1 %i.id, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127: ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread, %.critedge.i.i126
  %i.ie = phi i64 [ %i.hs, %.critedge.i.i126 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread ]
  %i.if = phi i16 [ %i.hr, %.critedge.i.i126 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread ]
  %.022.i.lcssa7.i128 = phi i64 [ 1, %.critedge.i.i126 ], [ %.2257.lcssa, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread ]
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ie
  store i64 %.022.i.lcssa7.i128, ptr %i.ig, align 8, !tbaa !72
  %i.ih = add nuw nsw i16 %i.if, 1                ; 2 uses
  store i16 %i.ih, ptr %i.q, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129

_ZN14arrow_vendored10fast_float6bigint3addEm.exit129: ; preds = %.lr.ph558, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118, %.lr.ph.i.i120, %.critedge.i.i126, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127
  %i.ii = phi i16 [ %i.ih, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127 ], [ %i.r, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread ], [ %i.hr, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118 ], [ %i.hr, %.lr.ph.i.i120 ], [ %i.hr, %.critedge.i.i126 ], [ %i.hr, %.lr.ph558 ]
  %.not = icmp eq ptr %.2.lcssa, %i.f
  br i1 %.not, label %._crit_edge350, label %.preheader294, !llvm.loop !99

._crit_edge350:                                   ; preds = %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129, %._crit_edge, %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !98 ; 6 uses
  %i.il = ptrtoaddr ptr %i.ik to i64              ; 2 uses
  %.not59 = icmp eq ptr %i.ik, null
  br i1 %.not59, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge350
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.in = load i64, ptr %i.im, align 8, !tbaa !87 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.in ; 10 uses
  %i.ip = load i64, ptr %3, align 8, !tbaa !72
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %.preheader289, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit

.preheader289:                                    ; preds = %bb.q
  %i.ir = ptrtoint ptr %i.io to i64
  %i.is = icmp sgt i64 %i.in, 7
  br i1 %i.is, label %.lr.ph368, label %._crit_edge369

.lr.ph368:                                        ; preds = %.preheader289, %bb.r
  %.7367 = phi ptr [ %i.it, %bb.r ], [ %i.ik, %.preheader289 ] ; 3 uses
  %.0.copyload.i = load i64, ptr %.7367, align 1
  %.not.i = icmp eq i64 %.0.copyload.i, 3472328296227680304
  br i1 %.not.i, label %bb.r, label %._crit_edge369.loopexit

bb.r:                                             ; preds = %.lr.ph368
  %i.it = getelementptr inbounds nuw i8, ptr %.7367, i64 8 ; 3 uses
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = sub i64 %i.ir, %i.iu
  %i.iw = icmp sgt i64 %i.iv, 7
  br i1 %i.iw, label %.lr.ph368, label %._crit_edge369.loopexit, !llvm.loop !88

._crit_edge369.loopexit:                          ; preds = %.lr.ph368, %bb.r
  %.7.lcssa.ph = phi ptr [ %i.it, %bb.r ], [ %.7367, %.lr.ph368 ] ; 2 uses
  %.pre451 = ptrtoaddr ptr %.7.lcssa.ph to i64
  br label %._crit_edge369

._crit_edge369:                                   ; preds = %._crit_edge369.loopexit, %.preheader289
  %.7.lcssa441.pre-phi = phi i64 [ %.pre451, %._crit_edge369.loopexit ], [ %i.il, %.preheader289 ]
  %.7.lcssa = phi ptr [ %.7.lcssa.ph, %._crit_edge369.loopexit ], [ %i.ik, %.preheader289 ] ; 3 uses
  %.not8.i373 = icmp eq ptr %.7.lcssa, %i.io
  br i1 %.not8.i373, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.lr.ph376.preheader

.lr.ph376.preheader:                              ; preds = %._crit_edge369
  %i.ix = add i64 %i.in, %i.il
  %i.iy = sub i64 %i.ix, %.7.lcssa441.pre-phi
  %scevgep442 = getelementptr i8, ptr %.7.lcssa, i64 %i.iy
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %.lr.ph376.preheader, %bb.s
  %.8374 = phi ptr [ %i.ja, %bb.s ], [ %.7.lcssa, %.lr.ph376.preheader ] ; 3 uses
  %i.iz = load i8, ptr %.8374, align 1, !tbaa !29
  %.not9.i = icmp eq i8 %i.iz, 48
  br i1 %.not9.i, label %bb.s, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit

bb.s:                                             ; preds = %.lr.ph376
  %i.ja = getelementptr inbounds nuw i8, ptr %.8374, i64 1 ; 2 uses
  %.not8.i = icmp eq ptr %i.ja, %i.io
  br i1 %.not8.i, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit, label %.lr.ph376, !llvm.loop !89

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit: ; preds = %bb.s, %.lr.ph376, %bb.q
  %.3 = phi ptr [ %i.ik, %bb.q ], [ %.8374, %.lr.ph376 ], [ %scevgep442, %bb.s ] ; 2 uses
  %.not60408 = icmp eq ptr %.3, %i.io
  br i1 %.not60408, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.preheader287.lr.ph

.preheader287.lr.ph:                              ; preds = %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit
  %i.jb = ptrtoint ptr %i.io to i64               ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  %.promoted689 = load i16, ptr %i.jc, align 8, !tbaa !90
  br label %.preheader287

.preheader287:                                    ; preds = %.preheader287.lr.ph, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191
  %i.jd = phi i16 [ %.promoted689, %.preheader287.lr.ph ], [ %i.rg, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191 ] ; 13 uses
  %.4409 = phi ptr [ %.3, %.preheader287.lr.ph ], [ %.6.lcssa, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191 ] ; 5 uses
  %i.je = ptrtoint ptr %.4409 to i64
  %i.jf = sub i64 %i.jb, %i.je
  %i.jg = icmp sgt i64 %i.jf, 7
  %.pre445.pre = load i64, ptr %3, align 8, !tbaa !72 ; 4 uses
  %i.jh = sub i64 %2, %.pre445.pre
  %i.ji = icmp ugt i64 %i.jh, 7
  %or.cond697 = select i1 %i.jg, i1 %i.ji, i1 false
  br i1 %or.cond697, label %bb.t, label %.critedge4

bb.t:                                             ; preds = %.preheader287
  %.0.copyload.i.i83 = load i64, ptr %.4409, align 1
  %i.jj = add i64 %.0.copyload.i.i83, -3472328296227680304 ; 2 uses
  %i.jk = mul i64 %i.jj, 10
  %i.jl = lshr i64 %i.jj, 8
  %i.jm = add i64 %i.jk, %i.jl                    ; 2 uses
  %i.jn = and i64 %i.jm, 1095216660735
  %i.jo = mul i64 %i.jn, 4294967296000100
  %i.jp = lshr i64 %i.jm, 16
  %i.jq = and i64 %i.jp, 1095216660735
  %i.jr = mul i64 %i.jq, 42949672960001
  %i.js = add i64 %i.jr, %i.jo
  %i.jt = lshr i64 %i.js, 32                      ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.4409, i64 8 ; 3 uses
  %i.jv = add i64 %.pre445.pre, 8                 ; 3 uses
  store i64 %i.jv, ptr %3, align 8, !tbaa !72
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jb, %i.jw
  %i.jy = icmp sgt i64 %i.jx, 7
  %i.jz = sub i64 %2, %i.jv
  %i.ka = icmp ugt i64 %i.jz, 7
  %or.cond693 = select i1 %i.jy, i1 %i.ka, i1 false
  br i1 %or.cond693, label %bb.u, label %.critedge4

bb.u:                                             ; preds = %bb.t
  %i.kb = mul nuw nsw i64 %i.jt, 100000000
  %.0.copyload.i.i83.1 = load i64, ptr %i.ju, align 1
  %i.kc = add i64 %.0.copyload.i.i83.1, -3472328296227680304 ; 2 uses
  %i.kd = mul i64 %i.kc, 10
  %i.ke = lshr i64 %i.kc, 8
  %i.kf = add i64 %i.kd, %i.ke                    ; 2 uses
  %i.kg = and i64 %i.kf, 1095216660735
  %i.kh = mul i64 %i.kg, 4294967296000100
  %i.ki = lshr i64 %i.kf, 16
  %i.kj = and i64 %i.ki, 1095216660735
  %i.kk = mul i64 %i.kj, 42949672960001
  %i.kl = add i64 %i.kk, %i.kh
  %i.km = lshr i64 %i.kl, 32
  %i.kn = add nuw nsw i64 %i.km, %i.kb
  %i.ko = getelementptr inbounds nuw i8, ptr %.4409, i64 16
  %i.kp = add i64 %.pre445.pre, 16                ; 2 uses
  store i64 %i.kp, ptr %3, align 8, !tbaa !72
  br label %.critedge4

.critedge4:                                       ; preds = %bb.t, %bb.u, %.preheader287
  %.pre445 = phi i64 [ %.pre445.pre, %.preheader287 ], [ %i.jv, %bb.t ], [ %i.kp, %bb.u ] ; 3 uses
  %.4266.lcssa = phi i64 [ 0, %.preheader287 ], [ 8, %bb.t ], [ 16, %bb.u ] ; 2 uses
  %.4259.lcssa = phi i64 [ 0, %.preheader287 ], [ %i.jt, %bb.t ], [ %i.kn, %bb.u ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4409, %.preheader287 ], [ %i.ju, %bb.t ], [ %i.ko, %bb.u ] ; 3 uses
  %.not62394 = icmp eq ptr %.5.lcssa, %i.io
  br i1 %.not62394, label %.critedge6, label %.lr.ph399

.lr.ph399:                                        ; preds = %.critedge4
  %umax443 = tail call i64 @llvm.umax.i64(i64 %.pre445, i64 %2) ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph399, %bb.w
  %i.kq = phi i64 [ %.pre445, %.lr.ph399 ], [ %i.ky, %bb.w ] ; 2 uses
  %.6398 = phi ptr [ %.5.lcssa, %.lr.ph399 ], [ %i.kw, %bb.w ] ; 3 uses
  %.5260397 = phi i64 [ %.4259.lcssa, %.lr.ph399 ], [ %i.kv, %bb.w ] ; 2 uses
  %.5267396 = phi i64 [ %.4266.lcssa, %.lr.ph399 ], [ %i.kx, %bb.w ] ; 3 uses
  %exitcond444.not = icmp eq i64 %i.kq, %umax443
  br i1 %exitcond444.not, label %.critedge6, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kr = mul i64 %.5260397, 10
  %i.ks = load i8, ptr %.6398, align 1, !tbaa !29
  %i.kt = sext i8 %i.ks to i64
  %i.ku = add i64 %i.kr, -48
  %i.kv = add i64 %i.ku, %i.kt                    ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.6398, i64 1 ; 3 uses
  %i.kx = add nuw nsw i64 %.5267396, 1            ; 2 uses
  %i.ky = add i64 %i.kq, 1                        ; 3 uses
  store i64 %i.ky, ptr %3, align 8, !tbaa !72
  %i.kz = icmp ugt i64 %.5267396, 17
  %.not62 = icmp eq ptr %i.kw, %i.io
  %or.cond66 = select i1 %i.kz, i1 true, i1 %.not62
  br i1 %or.cond66, label %.critedge6, label %bb.v, !llvm.loop !100

.critedge6:                                       ; preds = %bb.v, %bb.w, %.critedge4
  %i.la = phi i64 [ %.pre445, %.critedge4 ], [ %i.ky, %bb.w ], [ %umax443, %bb.v ]
  %.5267.lcssa = phi i64 [ %.4266.lcssa, %.critedge4 ], [ %i.kx, %bb.w ], [ %.5267396, %bb.v ] ; 2 uses
  %.5260.lcssa = phi i64 [ %.4259.lcssa, %.critedge4 ], [ %i.kv, %bb.w ], [ %.5260397, %bb.v ] ; 8 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.critedge4 ], [ %i.kw, %bb.w ], [ %.6398, %bb.v ] ; 5 uses
  %i.lb = icmp eq i64 %i.la, %2
  %i.lc = zext i16 %i.jd to i64                   ; 6 uses
  %.not19.i.i130 = icmp eq i16 %i.jd, 0           ; 2 uses
  br i1 %i.lb, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %.critedge6
  br i1 %.not19.i.i130, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139.thread, label %.lr.ph.i.i131

.lr.ph.i.i131:                                    ; preds = %bb.x
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_floatL20powers_of_ten_uint64E, i64 %.5267.lcssa
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !72
  %i.lf = zext i64 %i.le to i128                  ; 3 uses
  %xtraiter638 = and i64 %i.lc, 1
  %i.lg = icmp eq i16 %i.jd, 1
  br i1 %i.lg, label %.epil.preheader637, label %.lr.ph.i.i131.new

.lr.ph.i.i131.new:                                ; preds = %.lr.ph.i.i131
  %unroll_iter643 = and i64 %i.lc, 65534
  br label %bb.y

._crit_edge.i.i135.unr-lcssa:                     ; preds = %bb.y
  %lcmp.mod639.not = icmp eq i64 %xtraiter638, 0
  br i1 %lcmp.mod639.not, label %._crit_edge.i.i135, label %.epil.preheader637

.epil.preheader637:                               ; preds = %._crit_edge.i.i135.unr-lcssa, %.lr.ph.i.i131
  %.016.i.i132.epil.init = phi i64 [ 0, %.lr.ph.i.i131 ], [ %i.mi, %._crit_edge.i.i135.unr-lcssa ]
  %.01215.i.i133.epil.init = phi i64 [ 0, %.lr.ph.i.i131 ], [ %i.mg, %._crit_edge.i.i135.unr-lcssa ]
  %lcmp.mod642 = trunc i16 %i.jd to i1
  tail call void @llvm.assume(i1 %lcmp.mod642)
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i132.epil.init ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !72
  %i.lj = zext i64 %i.li to i128
  %i.lk = mul nuw i128 %i.lj, %i.lf
  %i.ll = zext i64 %.01215.i.i133.epil.init to i128
  %i.lm = add nuw i128 %i.lk, %i.ll               ; 2 uses
  %i.ln = lshr i128 %i.lm, 64                     ; 2 uses
  %i.lo = trunc nuw i128 %i.ln to i64
  %i.lp = trunc i128 %i.lm to i64
  store i64 %i.lp, ptr %i.lh, align 8, !tbaa !72
  br label %._crit_edge.i.i135

._crit_edge.i.i135:                               ; preds = %._crit_edge.i.i135.unr-lcssa, %.epil.preheader637
  %.lcssa579 = phi i128 [ %i.mf, %._crit_edge.i.i135.unr-lcssa ], [ %i.ln, %.epil.preheader637 ]
  %.lcssa578 = phi i64 [ %i.mg, %._crit_edge.i.i135.unr-lcssa ], [ %i.lo, %.epil.preheader637 ]
  %.not.i.i136 = icmp ne i128 %.lcssa579, 0
  %i.lq = icmp ult i16 %i.jd, 62
  %or.cond283 = and i1 %i.lq, %.not.i.i136
  br i1 %or.cond283, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i138, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i131.new
  %.016.i.i132 = phi i64 [ 0, %.lr.ph.i.i131.new ], [ %i.mi, %bb.y ] ; 3 uses
  %.01215.i.i133 = phi i64 [ 0, %.lr.ph.i.i131.new ], [ %i.mg, %bb.y ]
  %niter644 = phi i64 [ 0, %.lr.ph.i.i131.new ], [ %niter644.next.1, %bb.y ]
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i132 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !72
  %i.lt = zext i64 %i.ls to i128
  %i.lu = mul nuw i128 %i.lt, %i.lf
  %i.lv = zext i64 %.01215.i.i133 to i128
  %i.lw = add nuw i128 %i.lu, %i.lv               ; 2 uses
  %i.lx = lshr i128 %i.lw, 64
  %i.ly = trunc i128 %i.lw to i64
  store i64 %i.ly, ptr %i.lr, align 8, !tbaa !72
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i132
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !72
  %i.mc = zext i64 %i.mb to i128
  %i.md = mul nuw i128 %i.mc, %i.lf
  %i.me = add nuw i128 %i.md, %i.lx               ; 2 uses
  %i.mf = lshr i128 %i.me, 64                     ; 2 uses
  %i.mg = trunc nuw i128 %i.mf to i64             ; 3 uses
  %i.mh = trunc i128 %i.me to i64
  store i64 %i.mh, ptr %i.ma, align 8, !tbaa !72
  %i.mi = add nuw nsw i64 %.016.i.i132, 2         ; 2 uses
  %niter644.next.1 = add nuw i64 %niter644, 2     ; 2 uses
  %niter644.ncmp.1 = icmp eq i64 %niter644.next.1, %unroll_iter643
  br i1 %niter644.ncmp.1, label %._crit_edge.i.i135.unr-lcssa, label %bb.y, !llvm.loop !93

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i138: ; preds = %._crit_edge.i.i135
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lc
  store i64 %.lcssa578, ptr %i.mj, align 8, !tbaa !72
  %i.mk = add nuw nsw i16 %i.jd, 1                ; 2 uses
  store i16 %i.mk, ptr %i.jc, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139: ; preds = %._crit_edge.i.i135, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i138
  %i.ml = phi i16 [ %i.mk, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i138 ], [ %i.jd, %._crit_edge.i.i135 ] ; 8 uses
  %.not20.i.i140 = icmp eq i64 %.5260.lcssa, 0
  br i1 %.not20.i.i140, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit150, label %.lr.ph.i.i141

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139.thread: ; preds = %bb.x
  %.not20.i.i140500 = icmp eq i64 %.5260.lcssa, 0
  br i1 %.not20.i.i140500, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit150, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i148

.lr.ph.i.i141:                                    ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139
  %i.mm = zext i16 %i.ml to i64                   ; 2 uses
  %i.mn = load i64, ptr %0, align 8, !tbaa !72
  %i.mo = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.mn, i64 %.5260.lcssa) ; 2 uses
  %i.mp = extractvalue { i64, i1 } %i.mo, 1
  %i.mq = extractvalue { i64, i1 } %i.mo, 0
  store i64 %i.mq, ptr %0, align 8, !tbaa !72
  br i1 %i.mp, label %.peel.next.i144.preheader, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit150

.peel.next.i144.preheader:                        ; preds = %.lr.ph.i.i141
  %exitcond.not.i.i146568 = icmp eq i16 %i.ml, 1
  br i1 %exitcond.not.i.i146568, label %.critedge.i.i147, label %.lr.ph570

.peel.next.i144:                                  ; preds = %.lr.ph570
  %i.mr = add nuw nsw i64 %.01421.i.i145569, 1    ; 2 uses
  %exitcond.not.i.i146 = icmp eq i64 %i.mr, %i.mm
  br i1 %exitcond.not.i.i146, label %.critedge.i.i147, label %.lr.ph570, !llvm.loop !94

.lr.ph570:                                        ; preds = %.peel.next.i144.preheader, %.peel.next.i144
  %.01421.i.i145569 = phi i64 [ %i.mr, %.peel.next.i144 ], [ 1, %.peel.next.i144.preheader ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i145569 ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !72
  %i.mu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.mt, i64 1) ; 2 uses
  %i.mv = extractvalue { i64, i1 } %i.mu, 1
  %i.mw = extractvalue { i64, i1 } %i.mu, 0
  store i64 %i.mw, ptr %i.ms, align 8, !tbaa !72
  br i1 %i.mv, label %.peel.next.i144, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit150, !llvm.loop !94

.critedge.i.i147:                                 ; preds = %.peel.next.i144, %.peel.next.i144.preheader
  %i.mx = icmp ult i16 %i.ml, 62
  br i1 %i.mx, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i148, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit150

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i148: ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139.thread, %.critedge.i.i147
  %i.my = phi i64 [ %i.mm, %.critedge.i.i147 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139.thread ]
  %i.mz = phi i16 [ %i.ml, %.critedge.i.i147 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139.thread ]
  %.022.i.lcssa7.i149 = phi i64 [ 1, %.critedge.i.i147 ], [ %.5260.lcssa, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139.thread ]
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.my
  store i64 %.022.i.lcssa7.i149, ptr %i.na, align 8, !tbaa !72
  %i.nb = add nuw nsw i16 %i.mz, 1                ; 2 uses
  store i16 %i.nb, ptr %i.jc, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit150

_ZN14arrow_vendored10fast_float6bigint3addEm.exit150: ; preds = %.lr.ph570, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139.thread, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139, %.lr.ph.i.i141, %.critedge.i.i147, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i148
  %.pr273 = phi i16 [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139.thread ], [ %i.ml, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139 ], [ %i.ml, %.lr.ph.i.i141 ], [ %i.ml, %.critedge.i.i147 ], [ %i.nb, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i148 ], [ %i.ml, %.lr.ph570 ] ; 7 uses
  %i.nc = ptrtoint ptr %.6.lcssa to i64
  %i.nd = sub i64 %i.jb, %i.nc
  %i.ne = icmp sgt i64 %i.nd, 7
  br i1 %i.ne, label %.lr.ph411, label %.preheader

.preheader:                                       ; preds = %bb.z, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit150
  %.09.i.lcssa = phi ptr [ %.6.lcssa, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit150 ], [ %i.nf, %bb.z ] ; 2 uses
  %.not.i72413 = icmp eq ptr %.09.i.lcssa, %i.io
  br i1 %.not.i72413, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.lr.ph415

.lr.ph411:                                        ; preds = %_ZN14arrow_vendored10fast_float6bigint3addEm.exit150, %bb.z
  %.09.i410 = phi ptr [ %i.nf, %bb.z ], [ %.6.lcssa, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit150 ] ; 2 uses
  %.0.copyload.i73 = load i64, ptr %.09.i410, align 1
  %.not11.i = icmp eq i64 %.0.copyload.i73, 3472328296227680304
  br i1 %.not11.i, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.lr.ph411
  %i.nf = getelementptr inbounds nuw i8, ptr %.09.i410, i64 8 ; 3 uses
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = sub i64 %i.jb, %i.ng
  %i.ni = icmp sgt i64 %i.nh, 7
  br i1 %i.ni, label %.lr.ph411, label %.preheader, !llvm.loop !96

bb.aa:                                            ; preds = %.lr.ph415
  %i.nj = getelementptr inbounds nuw i8, ptr %.1.i414, i64 1 ; 2 uses
  %.not.i72 = icmp eq ptr %i.nj, %i.io
  br i1 %.not.i72, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.lr.ph415, !llvm.loop !97

.lr.ph415:                                        ; preds = %.preheader, %bb.aa
  %.1.i414 = phi ptr [ %i.nj, %bb.aa ], [ %.09.i.lcssa, %.preheader ] ; 2 uses
  %i.nk = load i8, ptr %.1.i414, align 1, !tbaa !29
  %.not10.i = icmp eq i8 %i.nk, 48
  br i1 %.not10.i, label %bb.aa, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph411, %.lr.ph415
  %i.nl = zext i16 %.pr273 to i64                 ; 4 uses
  %.not19.i.i151 = icmp eq i16 %.pr273, 0
  br i1 %.not19.i.i151, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i168, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %.loopexit
  %xtraiter645 = and i64 %i.nl, 1
  %i.nm = icmp eq i16 %.pr273, 1
  br i1 %i.nm, label %.lr.ph.i.i152.epil.preheader, label %.lr.ph.i.i152.preheader.new

.lr.ph.i.i152.preheader.new:                      ; preds = %.lr.ph.i.i152.preheader
  %unroll_iter650 = and i64 %i.nl, 65534
  br label %.lr.ph.i.i152

._crit_edge.i.i156.unr-lcssa:                     ; preds = %.lr.ph.i.i152
  %lcmp.mod646.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod646.not, label %._crit_edge.i.i156, label %.lr.ph.i.i152.epil.preheader

.lr.ph.i.i152.epil.preheader:                     ; preds = %._crit_edge.i.i156.unr-lcssa, %.lr.ph.i.i152.preheader
  %.016.i.i153.epil.init = phi i64 [ 0, %.lr.ph.i.i152.preheader ], [ %i.oo, %._crit_edge.i.i156.unr-lcssa ]
  %.01215.i.i154.epil.init = phi i64 [ 0, %.lr.ph.i.i152.preheader ], [ %i.om, %._crit_edge.i.i156.unr-lcssa ]
  %lcmp.mod649 = trunc i16 %.pr273 to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i153.epil.init ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !72
  %i.np = zext i64 %i.no to i128
  %i.nq = mul nuw nsw i128 %i.np, 10
  %i.nr = zext nneg i64 %.01215.i.i154.epil.init to i128
  %i.ns = add nuw nsw i128 %i.nq, %i.nr           ; 2 uses
  %i.nt = lshr i128 %i.ns, 64                     ; 2 uses
  %i.nu = trunc nuw nsw i128 %i.nt to i64
  %i.nv = trunc i128 %i.ns to i64
  store i64 %i.nv, ptr %i.nn, align 8, !tbaa !72
  br label %._crit_edge.i.i156

._crit_edge.i.i156:                               ; preds = %._crit_edge.i.i156.unr-lcssa, %.lr.ph.i.i152.epil.preheader
  %.lcssa575 = phi i128 [ %i.ol, %._crit_edge.i.i156.unr-lcssa ], [ %i.nt, %.lr.ph.i.i152.epil.preheader ]
  %.lcssa = phi i64 [ %i.om, %._crit_edge.i.i156.unr-lcssa ], [ %i.nu, %.lr.ph.i.i152.epil.preheader ]
  %.not.i.i157 = icmp ne i128 %.lcssa575, 0
  %i.nw = icmp ult i16 %.pr273, 62
  %or.cond284 = and i1 %i.nw, %.not.i.i157
  br i1 %or.cond284, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160.thread275, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152, %.lr.ph.i.i152.preheader.new
  %.016.i.i153 = phi i64 [ 0, %.lr.ph.i.i152.preheader.new ], [ %i.oo, %.lr.ph.i.i152 ] ; 3 uses
  %.01215.i.i154 = phi i64 [ 0, %.lr.ph.i.i152.preheader.new ], [ %i.om, %.lr.ph.i.i152 ]
  %niter651 = phi i64 [ 0, %.lr.ph.i.i152.preheader.new ], [ %niter651.next.1, %.lr.ph.i.i152 ]
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i153 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !72
  %i.nz = zext i64 %i.ny to i128
  %i.oa = mul nuw nsw i128 %i.nz, 10
  %i.ob = zext nneg i64 %.01215.i.i154 to i128
  %i.oc = add nuw nsw i128 %i.oa, %i.ob           ; 2 uses
  %i.od = lshr i128 %i.oc, 64
  %i.oe = trunc i128 %i.oc to i64
  store i64 %i.oe, ptr %i.nx, align 8, !tbaa !72
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i153
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !72
  %i.oi = zext i64 %i.oh to i128
  %i.oj = mul nuw nsw i128 %i.oi, 10
  %i.ok = add nuw nsw i128 %i.oj, %i.od           ; 2 uses
  %i.ol = lshr i128 %i.ok, 64                     ; 2 uses
  %i.om = trunc nuw nsw i128 %i.ol to i64         ; 3 uses
  %i.on = trunc i128 %i.ok to i64
  store i64 %i.on, ptr %i.og, align 8, !tbaa !72
  %i.oo = add nuw nsw i64 %.016.i.i153, 2         ; 2 uses
  %niter651.next.1 = add nuw i64 %niter651, 2     ; 2 uses
  %niter651.ncmp.1 = icmp eq i64 %niter651.next.1, %unroll_iter650
  br i1 %niter651.ncmp.1, label %._crit_edge.i.i156.unr-lcssa, label %.lr.ph.i.i152, !llvm.loop !93

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160.thread275: ; preds = %._crit_edge.i.i156
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.nl
  store i64 %.lcssa, ptr %i.op, align 8, !tbaa !72
  %i.oq = add nuw nsw i16 %.pr273, 1              ; 3 uses
  store i16 %i.oq, ptr %i.jc, align 8, !tbaa !90
  %.pre452 = zext nneg i16 %i.oq to i64
  br label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160: ; preds = %._crit_edge.i.i156, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160.thread275
  %.pre-phi = phi i64 [ %.pre452, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160.thread275 ], [ %i.nl, %._crit_edge.i.i156 ] ; 3 uses
  %i.or = phi i16 [ %i.oq, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160.thread275 ], [ %.pr273, %._crit_edge.i.i156 ] ; 2 uses
  %i.os = load i64, ptr %0, align 8, !tbaa !72
  %i.ot = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.os, i64 1) ; 2 uses
  %i.ou = extractvalue { i64, i1 } %i.ot, 1
  %i.ov = extractvalue { i64, i1 } %i.ot, 0
  store i64 %i.ov, ptr %0, align 8, !tbaa !72
  br i1 %i.ou, label %.peel.next.i164.preheader, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split

.peel.next.i164.preheader:                        ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160
  %exitcond.not.i.i166571 = icmp eq i64 %.pre-phi, 1
  br i1 %exitcond.not.i.i166571, label %.critedge.i.i167, label %.lr.ph573

.peel.next.i164:                                  ; preds = %.lr.ph573
  %i.ow = add nuw nsw i64 %.01421.i.i165572, 1    ; 2 uses
  %exitcond.not.i.i166 = icmp eq i64 %i.ow, %.pre-phi
  br i1 %exitcond.not.i.i166, label %.critedge.i.i167, label %.lr.ph573, !llvm.loop !94

.lr.ph573:                                        ; preds = %.peel.next.i164.preheader, %.peel.next.i164
  %.01421.i.i165572 = phi i64 [ %i.ow, %.peel.next.i164 ], [ 1, %.peel.next.i164.preheader ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i165572 ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !72
  %i.oz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oy, i64 1) ; 2 uses
  %i.pa = extractvalue { i64, i1 } %i.oz, 1
  %i.pb = extractvalue { i64, i1 } %i.oz, 0
  store i64 %i.pb, ptr %i.ox, align 8, !tbaa !72
  br i1 %i.pa, label %.peel.next.i164, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split, !llvm.loop !94

.critedge.i.i167:                                 ; preds = %.peel.next.i164, %.peel.next.i164.preheader
  %i.pc = icmp ult i16 %i.or, 62
  br i1 %i.pc, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i168, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i168: ; preds = %.loopexit, %.critedge.i.i167
  %i.pd = phi i64 [ 0, %.loopexit ], [ %.pre-phi, %.critedge.i.i167 ]
  %i.pe = phi i16 [ 0, %.loopexit ], [ %i.or, %.critedge.i.i167 ]
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.pd
  store i64 1, ptr %i.pf, align 8, !tbaa !72
  %i.pg = add nuw nsw i16 %i.pe, 1
  store i16 %i.pg, ptr %i.jc, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split

bb.ab:                                            ; preds = %.critedge6
  br i1 %.not19.i.i130, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread, label %.lr.ph.i.i172

.lr.ph.i.i172:                                    ; preds = %bb.ab
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_floatL20powers_of_ten_uint64E, i64 %.5267.lcssa
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !72
  %i.pj = zext i64 %i.pi to i128                  ; 3 uses
  %xtraiter630 = and i64 %i.lc, 1
  %i.pk = icmp eq i16 %i.jd, 1
  br i1 %i.pk, label %.epil.preheader629, label %.lr.ph.i.i172.new

.lr.ph.i.i172.new:                                ; preds = %.lr.ph.i.i172
  %unroll_iter635 = and i64 %i.lc, 65534
  br label %bb.ac

._crit_edge.i.i176.unr-lcssa:                     ; preds = %bb.ac
  %lcmp.mod631.not = icmp eq i64 %xtraiter630, 0
  br i1 %lcmp.mod631.not, label %._crit_edge.i.i176, label %.epil.preheader629

.epil.preheader629:                               ; preds = %._crit_edge.i.i176.unr-lcssa, %.lr.ph.i.i172
  %.016.i.i173.epil.init = phi i64 [ 0, %.lr.ph.i.i172 ], [ %i.qm, %._crit_edge.i.i176.unr-lcssa ]
  %.01215.i.i174.epil.init = phi i64 [ 0, %.lr.ph.i.i172 ], [ %i.qk, %._crit_edge.i.i176.unr-lcssa ]
  %lcmp.mod634 = trunc i16 %i.jd to i1
  tail call void @llvm.assume(i1 %lcmp.mod634)
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i173.epil.init ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !72
  %i.pn = zext i64 %i.pm to i128
  %i.po = mul nuw i128 %i.pn, %i.pj
  %i.pp = zext i64 %.01215.i.i174.epil.init to i128
  %i.pq = add nuw i128 %i.po, %i.pp               ; 2 uses
  %i.pr = lshr i128 %i.pq, 64                     ; 2 uses
  %i.ps = trunc nuw i128 %i.pr to i64
  %i.pt = trunc i128 %i.pq to i64
  store i64 %i.pt, ptr %i.pl, align 8, !tbaa !72
  br label %._crit_edge.i.i176

._crit_edge.i.i176:                               ; preds = %._crit_edge.i.i176.unr-lcssa, %.epil.preheader629
  %.lcssa582 = phi i128 [ %i.qj, %._crit_edge.i.i176.unr-lcssa ], [ %i.pr, %.epil.preheader629 ]
  %.lcssa581 = phi i64 [ %i.qk, %._crit_edge.i.i176.unr-lcssa ], [ %i.ps, %.epil.preheader629 ]
  %.not.i.i177 = icmp ne i128 %.lcssa582, 0
  %i.pu = icmp ult i16 %i.jd, 62
  %or.cond285 = and i1 %i.pu, %.not.i.i177
  br i1 %or.cond285, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i179, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i172.new
  %.016.i.i173 = phi i64 [ 0, %.lr.ph.i.i172.new ], [ %i.qm, %bb.ac ] ; 3 uses
  %.01215.i.i174 = phi i64 [ 0, %.lr.ph.i.i172.new ], [ %i.qk, %bb.ac ]
  %niter636 = phi i64 [ 0, %.lr.ph.i.i172.new ], [ %niter636.next.1, %bb.ac ]
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i173 ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !72
  %i.px = zext i64 %i.pw to i128
  %i.py = mul nuw i128 %i.px, %i.pj
  %i.pz = zext i64 %.01215.i.i174 to i128
  %i.qa = add nuw i128 %i.py, %i.pz               ; 2 uses
  %i.qb = lshr i128 %i.qa, 64
  %i.qc = trunc i128 %i.qa to i64
  store i64 %i.qc, ptr %i.pv, align 8, !tbaa !72
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i173
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !72
  %i.qg = zext i64 %i.qf to i128
  %i.qh = mul nuw i128 %i.qg, %i.pj
  %i.qi = add nuw i128 %i.qh, %i.qb               ; 2 uses
  %i.qj = lshr i128 %i.qi, 64                     ; 2 uses
  %i.qk = trunc nuw i128 %i.qj to i64             ; 3 uses
  %i.ql = trunc i128 %i.qi to i64
  store i64 %i.ql, ptr %i.qe, align 8, !tbaa !72
  %i.qm = add nuw nsw i64 %.016.i.i173, 2         ; 2 uses
  %niter636.next.1 = add nuw i64 %niter636, 2     ; 2 uses
  %niter636.ncmp.1 = icmp eq i64 %niter636.next.1, %unroll_iter635
  br i1 %niter636.ncmp.1, label %._crit_edge.i.i176.unr-lcssa, label %bb.ac, !llvm.loop !93

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i179: ; preds = %._crit_edge.i.i176
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lc
  store i64 %.lcssa581, ptr %i.qn, align 8, !tbaa !72
  %i.qo = add nuw nsw i16 %i.jd, 1                ; 2 uses
  store i16 %i.qo, ptr %i.jc, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180: ; preds = %._crit_edge.i.i176, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i179
  %i.qp = phi i16 [ %i.qo, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i179 ], [ %i.jd, %._crit_edge.i.i176 ] ; 8 uses
  %.not20.i.i181 = icmp eq i64 %.5260.lcssa, 0
  br i1 %.not20.i.i181, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191, label %.lr.ph.i.i182

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread: ; preds = %bb.ab
  %.not20.i.i181502 = icmp eq i64 %.5260.lcssa, 0
  br i1 %.not20.i.i181502, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i189

.lr.ph.i.i182:                                    ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180
  %i.qq = zext i16 %i.qp to i64                   ; 2 uses
  %i.qr = load i64, ptr %0, align 8, !tbaa !72
  %i.qs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.qr, i64 %.5260.lcssa) ; 2 uses
  %i.qt = extractvalue { i64, i1 } %i.qs, 1
  %i.qu = extractvalue { i64, i1 } %i.qs, 0
  store i64 %i.qu, ptr %0, align 8, !tbaa !72
  br i1 %i.qt, label %.peel.next.i185.preheader, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191

.peel.next.i185.preheader:                        ; preds = %.lr.ph.i.i182
  %exitcond.not.i.i187565 = icmp eq i16 %i.qp, 1
  br i1 %exitcond.not.i.i187565, label %.critedge.i.i188, label %.lr.ph567

.peel.next.i185:                                  ; preds = %.lr.ph567
  %i.qv = add nuw nsw i64 %.01421.i.i186566, 1    ; 2 uses
  %exitcond.not.i.i187 = icmp eq i64 %i.qv, %i.qq
  br i1 %exitcond.not.i.i187, label %.critedge.i.i188, label %.lr.ph567, !llvm.loop !94

.lr.ph567:                                        ; preds = %.peel.next.i185.preheader, %.peel.next.i185
  %.01421.i.i186566 = phi i64 [ %i.qv, %.peel.next.i185 ], [ 1, %.peel.next.i185.preheader ] ; 2 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i186566 ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !72
  %i.qy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.qx, i64 1) ; 2 uses
  %i.qz = extractvalue { i64, i1 } %i.qy, 1
  %i.ra = extractvalue { i64, i1 } %i.qy, 0
  store i64 %i.ra, ptr %i.qw, align 8, !tbaa !72
  br i1 %i.qz, label %.peel.next.i185, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191, !llvm.loop !94

.critedge.i.i188:                                 ; preds = %.peel.next.i185, %.peel.next.i185.preheader
  %i.rb = icmp ult i16 %i.qp, 62
  br i1 %i.rb, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i189, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i189: ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread, %.critedge.i.i188
  %i.rc = phi i64 [ %i.qq, %.critedge.i.i188 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread ]
  %i.rd = phi i16 [ %i.qp, %.critedge.i.i188 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread ]
  %.022.i.lcssa7.i190 = phi i64 [ 1, %.critedge.i.i188 ], [ %.5260.lcssa, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread ]
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.rc
  store i64 %.022.i.lcssa7.i190, ptr %i.re, align 8, !tbaa !72
  %i.rf = add nuw nsw i16 %i.rd, 1                ; 2 uses
  store i16 %i.rf, ptr %i.jc, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191

_ZN14arrow_vendored10fast_float6bigint3addEm.exit191: ; preds = %.lr.ph567, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180, %.lr.ph.i.i182, %.critedge.i.i188, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i189
  %i.rg = phi i16 [ %i.rf, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i189 ], [ %i.jd, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180.thread ], [ %i.qp, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit180 ], [ %i.qp, %.lr.ph.i.i182 ], [ %i.qp, %.critedge.i.i188 ], [ %i.qp, %.lr.ph567 ]
  %.not60 = icmp eq ptr %.6.lcssa, %i.io
  br i1 %.not60, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.preheader287, !llvm.loop !101

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split: ; preds = %.lr.ph564, %.lr.ph573, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i168, %.critedge.i.i167, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit160, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i106, %.critedge.i.i105, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98
  %i.rh = load i64, ptr %3, align 8, !tbaa !72
  %i.ri = add i64 %i.rh, 1
  store i64 %i.ri, ptr %3, align 8, !tbaa !72
  br label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit

_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit: ; preds = %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191, %bb.aa, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split, %._crit_edge369, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit81.thread, %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit, %.preheader, %._crit_edge350, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN14arrow_vendored10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) #19
  br i1 %i.a, label %bb.b, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = and i64 %i.b, 63                         ; 4 uses
  %i.d = lshr i64 %i.b, 6                         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 64, %i.c                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !90   ; 5 uses
  %i.h = zext i16 %i.g to i64                     ; 4 uses
  %.not25.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not25.i.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %min.iters.check = icmp ult i16 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 65532                    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat47 = shufflevector <2 x i64> %broadcast.splatinsert46, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph ], [ %wide.load48, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !72 ; 3 uses
  %wide.load48 = load <2 x i64>, ptr %i.j, align 8, !tbaa !72 ; 4 uses
  %i.k = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.l = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load48, <2 x i32> <i32 1, i32 2>
  %i.m = shl <2 x i64> %wide.load, %broadcast.splat
  %i.n = shl <2 x i64> %wide.load48, %broadcast.splat
  %i.o = lshr <2 x i64> %i.k, %broadcast.splat47
  %i.p = lshr <2 x i64> %i.l, %broadcast.splat47
  %i.q = or disjoint <2 x i64> %i.m, %i.o
  %i.r = or disjoint <2 x i64> %i.n, %i.p
  store <2 x i64> %i.q, ptr %i.i, align 8, !tbaa !72
  store <2 x i64> %i.r, ptr %i.j, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load48, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader49

.lr.ph.i.i.i.i.preheader49:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.01622.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.01721.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.lcssa45 = phi i64 [ %vector.recur.extract, %middle.block ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.t = lshr i64 %.lcssa45, %i.e                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.d

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader49, %.lr.ph.i.i.i.i
  %.01622.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.01622.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader49 ] ; 2 uses
  %.01721.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %.01721.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader49 ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01622.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !72   ; 3 uses
  %i.w = shl i64 %i.v, %i.c
  %i.x = lshr i64 %.01721.i.i.i.i, %i.e
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.u, align 8, !tbaa !72
  %i.z = add nuw nsw i64 %.01622.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = icmp ult i16 %i.g, 62
  br i1 %i.aa, label %bb.e, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !72
  %i.ac = add nuw nsw i16 %i.g, 1
  store i16 %i.ac, ptr %i.f, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i

_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c, %bb.b
  %.not9.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not9.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit, label %bb.f

bb.f:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !90 ; 3 uses
  %i.af = zext i16 %i.ae to i64                   ; 3 uses
  %i.ag = add nuw nsw i64 %i.d, %i.af
  %i.ah = icmp samesign ult i64 %i.ag, 63
  %i.ai = icmp ne i16 %i.ae, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.not.i.i.i.i, label %bb.g, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.g:                                             ; preds = %bb.f
  %.idx12.i.i.i.i = shl nuw nsw i64 %i.d, 3       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx12.i.i.i.i ; 2 uses
  %i.ak = icmp ugt i16 %i.ae, 1
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !106

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 dereferenceable(504) %0, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.af
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load i64, ptr %0, align 8, !tbaa !72
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored10fast_float19negative_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintES2_i:bb.a
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8
  %i.dc = load i64, ptr %0, align 8, !tbaa !72
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !72
  br label %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i47

_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i47: ; preds = %bb.y, %bb.x
  %i.dd = phi i16 [ %.pre.i.i49, %bb.x ], [ 1, %bb.y ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %0, i8 0, i64 %.idx12.i.i.i46, i1 false), !tbaa !72
  %i.de = trunc nuw i64 %i.bs to i16
  %i.df = add i16 %i.dd, %i.de
  store i16 %i.df, ptr %i.cs, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint4pow2Ej.exit

_ZN14arrow_vendored10fast_float6bigint4pow2Ej.exit: ; preds = %bb.v, %bb.m, %bb.t, %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i47, %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i42, %bb.k, %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i, %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i, %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.dh = load i16, ptr %i.dg, align 8, !tbaa !90 ; 4 uses
  %i.di = load i16, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.dj = icmp ugt i16 %i.dh, %i.di
  br i1 %i.dj, label %_ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint4pow2Ej.exit
  %i.dk = icmp ult i16 %i.dh, %i.di
  br i1 %i.dk, label %_ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.z
  %.not.i51124 = icmp eq i16 %i.dh, 0
  br i1 %.not.i51124, label %_ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.dl = zext i16 %i.dh to i64
  br label %bb.aa

.preheader.i:                                     ; preds = %bb.aa
  %.not.i51 = icmp eq i64 %i.dm, 0
  br i1 %.not.i51, label %_ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit, label %bb.aa, !llvm.loop !112

bb.aa:                                            ; preds = %.lr.ph, %.preheader.i
  %.014.i126 = phi i64 [ %i.dl, %.lr.ph ], [ %i.dm, %.preheader.i ]
  %.015.i125 = phi i32 [ undef, %.lr.ph ], [ %.116.i, %.preheader.i ]
  %i.dm = add nsw i64 %.014.i126, -1              ; 4 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !72 ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dm
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !72 ; 3 uses
  %.not21.i = icmp ugt i64 %i.do, %i.dq
  %.not22.i = icmp ult i64 %i.do, %i.dq
  %..015.i = select i1 %.not22.i, i32 -1, i32 %.015.i125
  %.116.i = select i1 %.not21.i, i32 1, i32 %..015.i ; 2 uses
  %cond.i = icmp eq i64 %i.do, %i.dq
  br i1 %cond.i, label %.preheader.i, label %._ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit.loopexit_crit_edge, !llvm.loop !112

._ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit.loopexit_crit_edge: ; preds = %bb.aa
  br label %_ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit, !llvm.loop !112

_ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit: ; preds = %.preheader.i, %.preheader.preheader.i, %._ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit.loopexit_crit_edge, %_ZN14arrow_vendored10fast_float6bigint4pow2Ej.exit, %bb.z
  %.3.i = phi i32 [ -1, %bb.z ], [ 1, %_ZN14arrow_vendored10fast_float6bigint4pow2Ej.exit ], [ 0, %.preheader.preheader.i ], [ %.116.i, %._ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit.loopexit_crit_edge ], [ 0, %.preheader.i ] ; 4 uses
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit
  %i.dr = sub i32 1, %2                           ; 2 uses
  %.sroa.speculated88 = call i32 @llvm.smin.i32(i32 %i.dr, i32 64)
  %i.ds = icmp sgt i32 %i.dr, 63
  %i.dt = zext nneg i32 %.sroa.speculated88 to i64
  %i.du = lshr i64 %1, %i.dt
  %storemerge.i53 = select i1 %i.ds, i64 0, i64 %i.du ; 2 uses
  %i.dv = trunc i64 %storemerge.i53 to i1
  %i.dw = icmp sgt i32 %.3.i, 0
  %i.dx = icmp sgt i32 %.3.i, -1
  %..i.i = and i1 %i.dx, %i.dv
  %.0.i.i54 = or i1 %i.dw, %..i.i
  %i.dy = zext i1 %.0.i.i54 to i64
  %i.dz = add i64 %storemerge.i53, %i.dy          ; 2 uses
  %i.ea = icmp ugt i64 %i.dz, 8388607
  %i.eb = zext i1 %i.ea to i32
  br label %_ZN14arrow_vendored10fast_float5roundIfZNS0_19negative_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintES3_iEUlRS3_iE0_EEvS6_T0_.exit

bb.ac:                                            ; preds = %_ZNK14arrow_vendored10fast_float6bigint7compareERKS1_.exit
  %i.ec = lshr i64 %1, 40                         ; 2 uses
  %i.ed = trunc i64 %i.ec to i1
  %i.ee = icmp sgt i32 %.3.i, 0
  %i.ef = icmp sgt i32 %.3.i, -1
  %..i.i56 = and i1 %i.ef, %i.ed
  %.0.i.i57 = or i1 %i.ee, %..i.i56
  %i.eg = zext i1 %.0.i.i57 to i64
  %i.eh = add nuw nsw i64 %i.ec, %i.eg            ; 2 uses
  %.not14.i28 = icmp samesign ult i64 %i.eh, 16777216 ; 2 uses
  %spec.select98.v = select i1 %.not14.i28, i32 40, i32 41
  %spec.select98 = add nsw i32 %spec.select98.v, %2 ; 2 uses
  %i.ei = and i64 %i.eh, 25165823
  %.not15.i29 = icmp samesign ult i32 %spec.select98, 255
  %i.ej = call i32 @llvm.umin.i32(i32 %spec.select98, i32 255)
  %i.ek = select i1 %.not15.i29, i1 %.not14.i28, i1 false
  %spec.select101 = select i1 %i.ek, i64 %i.ei, i64 0
  br label %_ZN14arrow_vendored10fast_float5roundIfZNS0_19negative_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintES3_iEUlRS3_iE0_EEvS6_T0_.exit

_ZN14arrow_vendored10fast_float5roundIfZNS0_19negative_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintES3_iEUlRS3_iE0_EEvS6_T0_.exit: ; preds = %bb.ac, %bb.ab
  %.sroa.12.1 = phi i32 [ %i.ej, %bb.ac ], [ %i.eb, %bb.ab ]
  %.sroa.069.1 = phi i64 [ %spec.select101, %bb.ac ], [ %i.dz, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.069.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.12.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN14arrow_vendored10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i32 %1, 134
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  %.011.lcssa = phi i32 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 3 uses
  %i.b = icmp samesign ugt i32 %.011.lcssa, 26
  br i1 %i.b, label %.lr.ph34, label %._crit_edge

.lr.ph34:                                         ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.promoted = load i16, ptr %i.c, align 8, !tbaa !90
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01132 = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.d = tail call noundef zeroext i1 @_ZN14arrow_vendored10fast_float8long_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE(ptr noundef nonnull align 8 dereferenceable(498) %0, ptr nonnull @_ZN14arrow_vendored10fast_float11pow5_tablesIvE16large_power_of_5E, i64 5) #19
  br i1 %i.d, label %bb.b, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i32 %.01132, -135                    ; 3 uses
  %i.f = icmp ugt i32 %i.e, 134
  br i1 %i.f, label %.lr.ph, label %.preheader, !llvm.loop !113

bb.c:                                             ; preds = %.lr.ph34, %bb.e
  %i.g = phi i16 [ %.promoted, %.lr.ph34 ], [ %i.an, %bb.e ] ; 7 uses
  %.11233 = phi i32 [ %.011.lcssa, %.lr.ph34 ], [ %i.ao, %bb.e ]
  %i.h = zext i16 %i.g to i64                     ; 3 uses
  %.not19.i = icmp eq i16 %i.g, 0
  br i1 %.not19.i, label %bb.e, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i16 %i.g, 1
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, 65534
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aj, %._crit_edge.i.unr-lcssa ]
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ah, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod71 = trunc i16 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.epil.init ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !72
  %i.l = zext i64 %i.k to i128
  %i.m = mul nuw nsw i128 %i.l, 7450580596923828125
  %i.n = zext nneg i64 %.01215.i.epil.init to i128
  %i.o = add nuw nsw i128 %i.m, %i.n              ; 2 uses
  %i.p = lshr i128 %i.o, 64                       ; 2 uses
  %i.q = trunc nuw nsw i128 %i.p to i64
  %i.r = trunc i128 %i.o to i64
  store i64 %i.r, ptr %i.j, align 8, !tbaa !72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa65 = phi i128 [ %i.ag, %._crit_edge.i.unr-lcssa ], [ %i.p, %.lr.ph.i.epil.preheader ]
  %.lcssa64 = phi i64 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.q, %.lr.ph.i.epil.preheader ]
  %.not.i = icmp eq i128 %.lcssa65, 0
  br i1 %.not.i, label %bb.e, label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aj, %.lr.ph.i ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ah, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 7450580596923828125
  %i.w = zext nneg i64 %.01215.i to i128
  %i.x = add nuw nsw i128 %i.v, %i.w              ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = trunc i128 %i.x to i64
  store i64 %i.z, ptr %i.s, align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !72
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw nsw i128 %i.ad, 7450580596923828125
  %i.af = add nuw nsw i128 %i.ae, %i.y            ; 2 uses
  %i.ag = lshr i128 %i.af, 64                     ; 2 uses
  %i.ah = trunc nuw nsw i128 %i.ag to i64         ; 3 uses
  %i.ai = trunc i128 %i.af to i64
  store i64 %i.ai, ptr %i.ab, align 8, !tbaa !72
  %i.aj = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !93

bb.d:                                             ; preds = %._crit_edge.i
  %i.ak = icmp ult i16 %i.g, 62
  br i1 %i.ak, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %.lcssa64, ptr %i.al, align 8, !tbaa !72
  %i.am = add nuw nsw i16 %i.g, 1                 ; 2 uses
  store i16 %i.am, ptr %i.c, align 8, !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, %._crit_edge.i, %bb.c
  %i.an = phi i16 [ %i.am, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i ], [ %i.g, %._crit_edge.i ], [ 0, %bb.c ]
  %i.ao = add nsw i32 %.11233, -27                ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 26
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.112.lcssa = phi i32 [ %.011.lcssa, %.preheader ], [ %i.ao, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.112.lcssa, 0
  br i1 %.not, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !90 ; 6 uses
  %i.as = zext i16 %i.ar to i64                   ; 3 uses
  %.not19.i13 = icmp eq i16 %i.ar, 0
  br i1 %.not19.i13, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.f
  %i.at = zext nneg i32 %.112.lcssa to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_float11pow5_tablesIvE16small_power_of_5E, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !72
  %i.aw = zext i64 %i.av to i128                  ; 3 uses
  %xtraiter72 = and i64 %i.as, 1
  %i.ax = icmp eq i16 %i.ar, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter77 = and i64 %i.as, 65534
  br label %bb.g

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i14
  %.016.i15.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.by, %._crit_edge.i18.unr-lcssa ]
  %.01215.i16.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.bw, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod76 = trunc i16 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i15.epil.init ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !72
  %i.ba = zext i64 %i.az to i128
  %i.bb = mul nuw i128 %i.ba, %i.aw
  %i.bc = zext i64 %.01215.i16.epil.init to i128
  %i.bd = add nuw i128 %i.bb, %i.bc               ; 2 uses
  %i.be = lshr i128 %i.bd, 64                     ; 2 uses
  %i.bf = trunc nuw i128 %i.be to i64
  %i.bg = trunc i128 %i.bd to i64
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !72
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %.lcssa63 = phi i128 [ %i.bv, %._crit_edge.i18.unr-lcssa ], [ %i.be, %.epil.preheader ]
  %.lcssa = phi i64 [ %i.bw, %._crit_edge.i18.unr-lcssa ], [ %i.bf, %.epil.preheader ]
  %.not.i19 = icmp eq i128 %.lcssa63, 0
  br i1 %.not.i19, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %.016.i15 = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.by, %bb.g ] ; 3 uses
  %.01215.i16 = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.bw, %bb.g ]
  %niter78 = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter78.next.1, %bb.g ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i15 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !72
  %i.bj = zext i64 %i.bi to i128
  %i.bk = mul nuw i128 %i.bj, %i.aw
  %i.bl = zext i64 %.01215.i16 to i128
  %i.bm = add nuw i128 %i.bk, %i.bl               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = trunc i128 %i.bm to i64
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !72
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !72
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.aw
  %i.bu = add nuw i128 %i.bt, %i.bn               ; 2 uses
  %i.bv = lshr i128 %i.bu, 64                     ; 2 uses
  %i.bw = trunc nuw i128 %i.bv to i64             ; 3 uses
  %i.bx = trunc i128 %i.bu to i64
  store i64 %i.bx, ptr %i.bq, align 8, !tbaa !72
  %i.by = add nuw nsw i64 %.016.i15, 2            ; 2 uses
  %niter78.next.1 = add nuw i64 %niter78, 2       ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.g, !llvm.loop !93

bb.h:                                             ; preds = %._crit_edge.i18
  %i.bz = icmp ult i16 %i.ar, 62
  br i1 %i.bz, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21, label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21: ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as
  store i64 %.lcssa, ptr %i.ca, align 8, !tbaa !72
  %i.cb = add nuw nsw i16 %i.ar, 1
  store i16 %i.cb, ptr %i.aq, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float9large_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE.exit: ; preds = %.lr.ph, %bb.d, %bb.f, %._crit_edge.i18, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21, %._crit_edge, %bb.h
  %.1 = phi i1 [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.h ], [ true, %._crit_edge ], [ true, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i21 ], [ true, %._crit_edge.i18 ], [ false, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN14arrow_vendored10fast_float8long_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE(ptr noundef nonnull align 8 dereferenceable(498) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::fast_float::stackvec", align 8 ; 9 uses
  %4 = alloca %"struct.arrow_vendored::fast_float::stackvec", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 5 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !90   ; 12 uses
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.496..496..496..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 496
  store i16 0, ptr %.496..496..496..sroa_idx, align 8, !tbaa !90
  %.not.i.i = icmp ult i16 %i.b, 63
  br i1 %.not.i.i, label %bb.b, label %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit

bb.b:                                             ; preds = %bb.a
  switch i16 %i.b, label %bb.c [
    i16 0, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i
    i16 1, label %bb.d
  ], !prof !115

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.c, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(498) %3, ptr nonnull align 8 %0, i64 %.idx.i.i.i.i.i, i1 false)
  %.496..496..496..sroa_idx125.a = getelementptr inbounds nuw i8, ptr %3, i64 496
  %.496..496..496..pre.i.i.i = load i16, ptr %.496..496..496..sroa_idx125.a, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %0, align 8, !tbaa !72
  store i64 %i.d, ptr %3, align 8, !tbaa !72
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i

_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = phi i16 [ %i.b, %bb.b ], [ 0, %bb.d ], [ %.496..496..496..pre.i.i.i, %bb.c ]
  %i.f = add i16 %i.e, %i.b
  %i.g = freeze i16 %i.f                          ; 2 uses
  %.496..496..496..sroa_idx126 = getelementptr inbounds nuw i8, ptr %3, i64 496
  store i16 %i.g, ptr %.496..496..496..sroa_idx126, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit: ; preds = %bb.a, %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i
  %.496..496. = phi i16 [ 0, %bb.a ], [ %i.g, %_ZN14arrow_vendored10fast_float8stackvecILt62EE16extend_uncheckedENS0_4spanImEE.exit.i.i ] ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.critedge34, label %bb.e

bb.e:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit
  %.not19.i = icmp eq i16 %i.b, 0
  br i1 %.not19.i, label %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.h = load i64, ptr %1, align 8, !tbaa !72
  %i.i = zext i64 %i.h to i128                    ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.j = icmp eq i16 %i.b, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.c, 65534
  br label %bb.f

._crit_edge.i.unr-lcssa:                          ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ]
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod116 = trunc i16 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.epil.init ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = zext i64 %i.l to i128
  %i.n = mul nuw i128 %i.m, %i.i
  %i.o = zext i64 %.01215.i.epil.init to i128
  %i.p = add nuw i128 %i.n, %i.o                  ; 2 uses
  %i.q = lshr i128 %i.p, 64                       ; 2 uses
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = trunc i128 %i.p to i64
  store i64 %i.s, ptr %i.k, align 8, !tbaa !72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa113 = phi i128 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.q, %.epil.preheader ]
  %.lcssa112 = phi i64 [ %i.ai, %._crit_edge.i.unr-lcssa ], [ %i.r, %.epil.preheader ]
  %.not.i = icmp eq i128 %.lcssa113, 0
  br i1 %.not.i, label %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ak, %bb.f ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ai, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw i128 %i.v, %i.i
  %i.x = zext i64 %.01215.i to i128
  %i.y = add nuw i128 %i.w, %i.x                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = trunc i128 %i.y to i64
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !72
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !72
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, %i.i
  %i.ag = add nuw i128 %i.af, %i.z                ; 2 uses
  %i.ah = lshr i128 %i.ag, 64                     ; 2 uses
  %i.ai = trunc nuw i128 %i.ah to i64             ; 3 uses
  %i.aj = trunc i128 %i.ag to i64
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !72
  %i.ak = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.f, !llvm.loop !93

bb.g:                                             ; preds = %._crit_edge.i
  %i.al = icmp ult i16 %i.b, 62
  br i1 %i.al, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %.critedge32

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  store i64 %.lcssa112, ptr %i.am, align 8, !tbaa !72
  %i.an = add nuw nsw i16 %i.b, 1                 ; 2 uses
  store i16 %i.an, ptr %i.a, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit

_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit: ; preds = %bb.e, %._crit_edge.i, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i
  %i.ao = phi i16 [ 0, %bb.e ], [ %i.b, %._crit_edge.i ], [ %i.an, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i ] ; 3 uses
  %.not30.not68.not = icmp eq i64 %2, 1
  br i1 %.not30.not68.not, label %.critedge34, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 2 uses
  %.not.i35 = icmp ult i16 %.496..496., 63
  %.0..0..0. = load i64, ptr %3, align 8
  %i.aq = shl nuw nsw i16 %.496..496., 3
  %.idx.i.i.i.i = zext nneg i16 %i.aq to i64
  br i1 %.not.i35, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.us
  %i.ar = phi i16 [ %i.dm, %.critedge.us ], [ %i.ao, %.lr.ph ] ; 3 uses
  %.02769.us = phi i64 [ %i.dn, %.critedge.us ], [ 1, %.lr.ph ] ; 7 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769.us
  %i.at = load i64, ptr %i.as, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.not29.us = icmp eq i64 %i.at, 0
  br i1 %.not29.us, label %.critedge.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  store i16 0, ptr %i.ap, align 8, !tbaa !90
  switch i16 %.496..496., label %bb.j [
    i16 0, label %bb.k
    i16 1, label %bb.i
  ], !prof !115

bb.i:                                             ; preds = %bb.h
  store i64 %.0..0..0., ptr %4, align 8, !tbaa !72
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %3, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.us = load i16, ptr %i.ap, align 8, !tbaa !90
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.au = phi i16 [ %.496..496., %bb.h ], [ 0, %bb.i ], [ %.pre.i.i.us, %bb.j ]
  %i.av = add i16 %i.au, %.496..496.              ; 7 uses
  %i.aw = zext i16 %i.av to i64                   ; 3 uses
  %.not19.i36.us = icmp eq i16 %i.av, 0
  br i1 %.not19.i36.us, label %bb.n, label %.lr.ph.i37.us

.lr.ph.i37.us:                                    ; preds = %bb.k
  %i.ax = zext i64 %i.at to i128                  ; 3 uses
  %xtraiter118 = and i64 %i.aw, 1
  %i.ay = icmp eq i16 %i.av, 1
  br i1 %i.ay, label %.epil.preheader117, label %.lr.ph.i37.us.new

.lr.ph.i37.us.new:                                ; preds = %.lr.ph.i37.us
  %unroll_iter123 = and i64 %i.aw, 65534
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i37.us.new
  %.016.i38.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bq, %bb.l ] ; 3 uses
  %.01215.i39.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %i.bo, %bb.l ]
  %niter124 = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %niter124.next.1, %bb.l ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !72
  %i.bb = zext i64 %i.ba to i128
  %i.bc = mul nuw i128 %i.bb, %i.ax
  %i.bd = zext i64 %.01215.i39.us to i128
  %i.be = add nuw i128 %i.bc, %i.bd               ; 2 uses
  %i.bf = lshr i128 %i.be, 64
  %i.bg = trunc i128 %i.be to i64
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !72
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !72
  %i.bk = zext i64 %i.bj to i128
  %i.bl = mul nuw i128 %i.bk, %i.ax
  %i.bm = add nuw i128 %i.bl, %i.bf               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64                     ; 2 uses
  %i.bo = trunc nuw i128 %i.bn to i64             ; 3 uses
  %i.bp = trunc i128 %i.bm to i64
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !72
  %i.bq = add nuw nsw i64 %.016.i38.us, 2         ; 2 uses
  %niter124.next.1 = add nuw i64 %niter124, 2     ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %._crit_edge.i41.us.unr-lcssa, label %bb.l, !llvm.loop !93

._crit_edge.i41.us.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %._crit_edge.i41.us, label %.epil.preheader117

.epil.preheader117:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.lr.ph.i37.us
  %.016.i38.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bq, %._crit_edge.i41.us.unr-lcssa ]
  %.01215.i39.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %i.bo, %._crit_edge.i41.us.unr-lcssa ]
  %lcmp.mod122 = trunc i16 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us.epil.init ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !72
  %i.bt = zext i64 %i.bs to i128
  %i.bu = mul nuw i128 %i.bt, %i.ax
  %i.bv = zext i64 %.01215.i39.us.epil.init to i128
  %i.bw = add nuw i128 %i.bu, %i.bv               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64                     ; 2 uses
  %i.by = trunc nuw i128 %i.bx to i64
  %i.bz = trunc i128 %i.bw to i64
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !72
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader117
  %.lcssa108 = phi i128 [ %i.bn, %._crit_edge.i41.us.unr-lcssa ], [ %i.bx, %.epil.preheader117 ]
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i41.us.unr-lcssa ], [ %i.by, %.epil.preheader117 ]
  %.not.i42.us = icmp eq i128 %.lcssa108, 0
  br i1 %.not.i42.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i41.us
  %i.ca = icmp ult i16 %i.av, 62
  br i1 %i.ca, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  store i64 %.lcssa, ptr %i.cb, align 8, !tbaa !72
  %i.cc = add nuw nsw i16 %i.av, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %bb.k
  %i.cd = phi i16 [ %i.cc, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %i.av, %._crit_edge.i41.us ], [ 0, %bb.k ] ; 2 uses
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
  br i1 %i.ck, label %bb.p, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp samesign ugt i64 %i.cj, %i.cf
  br i1 %i.cl, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %bb.p
  %i.cm = getelementptr [8 x i8], ptr %0, i64 %i.cf
  %i.cn = sub nuw nsw i64 %i.cj, %i.cf
  %i.co = shl nuw nsw i64 %i.cn, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.co, i1 false), !tbaa !72
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %bb.p
  %storemerge.i.i.i.us = trunc nuw nsw i64 %i.cj to i16 ; 2 uses
  store i16 %storemerge.i.i.i.us, ptr %i.a, align 8, !tbaa !90
  br label %bb.q

bb.q:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %bb.n
  %i.cp = phi i16 [ %i.ar, %bb.n ], [ %storemerge.i.i.i.us, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; 6 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us
  %.not.i46.us = icmp eq i16 %i.cd, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02335.i.us = phi i64 [ %i.da, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02434.i.us = phi i1 [ %.031.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02335.i.us ; 2 uses
  %i.cq = load i64, ptr %gep.i.us, align 8, !tbaa !72
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02335.i.us
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !72
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
  store i64 %.0.i.us, ptr %gep.i.us, align 8, !tbaa !72
  %i.da = add nuw nsw i64 %.02335.i.us, 1         ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %i.da, %i.ce
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !116

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
  br i1 %exitcond.not.i.i.us, label %.critedge.i.i.us, label %.lr.ph107, !llvm.loop !117

.lr.ph107:                                        ; preds = %bb.t, %bb.u
  %.01421.i.i.us106 = phi i64 [ %i.dd, %bb.u ], [ %i.db, %bb.t ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us106 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !72
  %i.dg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.df, i64 1) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  store i64 %i.di, ptr %i.de, align 8, !tbaa !72
  br i1 %i.dh, label %bb.u, label %.critedge.us, !llvm.loop !117

.critedge.i.i.us:                                 ; preds = %bb.u, %bb.t
  %i.dj = icmp ult i16 %i.cp, 62
  br i1 %i.dj, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dc
  store i64 1, ptr %i.dk, align 8, !tbaa !72
  %i.dl = add nuw nsw i16 %i.cp, 1                ; 2 uses
  store i16 %i.dl, ptr %i.a, align 8, !tbaa !90
  br label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph107, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %bb.q, %.lr.ph.split.us
  %i.dm = phi i16 [ %i.ar, %.lr.ph.split.us ], [ %i.dl, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %i.cp, %._crit_edge.i49.us ], [ %i.cp, %bb.q ], [ %i.cp, %.lr.ph107 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dn = add nuw i64 %.02769.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !118

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %i.dq, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.not29 = icmp eq i64 %i.dp, 0
  br i1 %.not29, label %.critedge, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dq = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !118

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit: ; preds = %.lr.ph.split, %bb.m, %bb.o, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.critedge32

.critedge34:                                      ; preds = %.critedge, %.critedge.us, %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit
  %.promoted.i = phi i16 [ %i.dm, %.critedge.us ], [ %i.b, %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit ], [ %i.ao, %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit ], [ %i.ao, %.critedge ] ; 2 uses
  %.not1.i = icmp eq i16 %.promoted.i, 0
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dr = getelementptr i8, ptr %0, i64 -8
  %5 = zext i16 %.promoted.i to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %indvars.iv.i = phi i64 [ %5, %.lr.ph.i50 ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %indvars.iv.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !72
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i16 ; 2 uses
  store i16 %indvars.i, ptr %i.a, align 8, !tbaa !90
  %.not.i51 = icmp eq i16 %indvars.i, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !119

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit
  %.6 = phi i1 [ false, %bb.g ], [ false, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %5 = alloca %"struct.arrow_vendored::fast_float::parsed_number_string_t", align 8 ; 14 uses
  %i.b = or i64 %3, 128
  %i.c = and i64 %3, 256
  %.not = icmp eq i64 %i.c, 0
  %.not33254 = icmp eq ptr %0, %1
  %or.cond369 = or i1 %.not, %.not33254
  br i1 %or.cond369, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = sub i64 %i.a, %i.d
  %scevgep = getelementptr i8, ptr %0, i64 %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0255 = phi ptr [ %i.k, %bb.b ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.f = load i8, ptr %.0255, align 1, !tbaa !29
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN14arrow_vendored10fast_float9space_lutIvE5valueE, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !49, !range !50, !noundef !51
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.0255, i64 1 ; 2 uses
  %.not33 = icmp eq ptr %i.k, %1
  br i1 %.not33, label %.critedge, label %.lr.ph, !llvm.loop !120

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.0255, %.lr.ph ], [ %scevgep, %bb.b ] ; 9 uses
  %i.l = icmp eq ptr %.1, %1
  br i1 %i.l, label %bb.az, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.m = and i64 %3, 32
  %.not34 = icmp eq i64 %i.m, 0
  %.sroa.2.8.extract.trunc.i36 = trunc i64 %4 to i8 ; 5 uses
  %i.n = load i8, ptr %.1, align 1, !tbaa !29, !noalias !51 ; 3 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 2 uses
  %i.p = zext i1 %i.o to i8
  br i1 %.not34, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %.lr.ph262.preheader

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit66, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.q, align 1, !tbaa !29, !noalias !121 ; 2 uses
  %i.t = add i8 %i.s, -48
  %i.u = icmp ult i8 %i.t, 10
  br i1 %i.u, label %.lr.ph262.preheader, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit66

.lr.ph262.preheader:                              ; preds = %bb.f, %bb.d
  %i.v = phi i8 [ %i.s, %bb.f ], [ %i.n, %bb.d ]
  %.0191 = phi ptr [ %i.q, %bb.f ], [ %.1, %bb.d ] ; 10 uses
  %.0191385 = ptrtoaddr ptr %.0191 to i64
  %i.w = sub i64 %i.a, %.0191385
  %scevgep386 = getelementptr i8, ptr %.0191, i64 %i.w
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.g
  %.0183260 = phi i64 [ %i.ad, %bb.g ], [ 0, %.lr.ph262.preheader ] ; 2 uses
  %.1192259 = phi ptr [ %i.ae, %bb.g ], [ %.0191, %.lr.ph262.preheader ] ; 3 uses
  %i.x = load i8, ptr %.1192259, align 1, !tbaa !29, !noalias !121 ; 2 uses
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10                     ; 2 uses
  br i1 %i.z, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.lr.ph262
  %i.aa = mul i64 %.0183260, 10
  %i.ab = zext nneg i8 %i.x to i64
  %i.ac = add i64 %i.aa, -48
  %i.ad = add i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1192259, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph262, !llvm.loop !56

.critedge.i:                                      ; preds = %bb.g, %.lr.ph262
  %.1192.lcssa.ph = phi ptr [ %scevgep386, %bb.g ], [ %.1192259, %.lr.ph262 ] ; 7 uses
  %.0183.lcssa.ph = phi i64 [ %i.ad, %bb.g ], [ %.0183260, %.lr.ph262 ] ; 4 uses
  %i.af = ptrtoint ptr %.1192.lcssa.ph to i64     ; 2 uses
  %i.ag = ptrtoint ptr %.0191 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 8 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit66, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i8 %i.v, 48
  %i.ak = icmp sgt i64 %i.ah, 1
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit66, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.z, label %.thread211, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i8, ptr %.1192.lcssa.ph, align 1, !tbaa !29, !noalias !121
  %i.am = icmp eq i8 %i.al, %.sroa.2.8.extract.trunc.i36
  br i1 %i.am, label %bb.k, label %.thread211

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.1192.lcssa.ph, i64 1 ; 4 uses
  %i.ao = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp sgt i64 %i.aq, 7
  br i1 %i.ar, label %.lr.ph272, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit70

.lr.ph272:                                        ; preds = %bb.k, %.noexc69
  %.7190271 = phi i64 [ %i.bh, %.noexc69 ], [ %.0183.lcssa.ph, %bb.k ] ; 2 uses
  %.11202270 = phi ptr [ %i.bi, %.noexc69 ], [ %i.an, %bb.k ] ; 3 uses
  %.0.copyload.i73 = load i64, ptr %.11202270, align 1, !noalias !121 ; 2 uses
  %i.as = add i64 %.0.copyload.i73, 5063812098665367110
  %i.at = add i64 %.0.copyload.i73, -3472328296227680304 ; 3 uses
  %i.au = or i64 %i.as, %i.at
  %i.av = and i64 %i.au, -9187201950435737472
  %.not.i71 = icmp eq i64 %i.av, 0
  br i1 %.not.i71, label %.noexc69, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit70

.noexc69:                                         ; preds = %.lr.ph272
  %i.aw = mul i64 %.7190271, 100000000
  %i.ax = mul i64 %i.at, 10
  %i.ay = lshr i64 %i.at, 8
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = and i64 %i.az, 1095216660735
  %i.bb = mul i64 %i.ba, 4294967296000100
  %i.bc = lshr i64 %i.az, 16
  %i.bd = and i64 %i.bc, 1095216660735
  %i.be = mul i64 %i.bd, 42949672960001
  %i.bf = add i64 %i.be, %i.bb
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = add i64 %i.bg, %i.aw                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.11202270, i64 8 ; 3 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.ao, %i.bj
  %i.bl = icmp sgt i64 %i.bk, 7
  br i1 %i.bl, label %.lr.ph272, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit70, !llvm.loop !57

_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit70: ; preds = %.lr.ph272, %.noexc69, %bb.k
  %.11202.lcssa = phi ptr [ %i.an, %bb.k ], [ %i.bi, %.noexc69 ], [ %.11202270, %.lr.ph272 ] ; 5 uses
  %.7190.lcssa = phi i64 [ %.0183.lcssa.ph, %bb.k ], [ %i.bh, %.noexc69 ], [ %.7190271, %.lr.ph272 ] ; 2 uses
  %.not105.i277 = icmp eq ptr %.11202.lcssa, %1
  br i1 %.not105.i277, label %._crit_edge, label %.lr.ph280.preheader

.lr.ph280.preheader:                              ; preds = %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit70
  %.11202.lcssa387 = ptrtoaddr ptr %.11202.lcssa to i64
  %i.bm = sub i64 %i.a, %.11202.lcssa387
  %scevgep388 = getelementptr i8, ptr %.11202.lcssa, i64 %i.bm
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %bb.l
  %.6189279 = phi i64 [ %i.bt, %bb.l ], [ %.7190.lcssa, %.lr.ph280.preheader ] ; 2 uses
  %.10201278 = phi ptr [ %i.bq, %bb.l ], [ %.11202.lcssa, %.lr.ph280.preheader ] ; 3 uses
  %i.bn = load i8, ptr %.10201278, align 1, !tbaa !29, !noalias !121
  %i.bo = add i8 %i.bn, -48                       ; 2 uses
  %i.bp = icmp ult i8 %i.bo, 10
  br i1 %i.bp, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %.lr.ph280
  %i.bq = getelementptr inbounds nuw i8, ptr %.10201278, i64 1 ; 2 uses
  %i.br = mul i64 %.6189279, 10
  %i.bs = zext nneg i8 %i.bo to i64
  %i.bt = add i64 %i.br, %i.bs                    ; 2 uses
  %.not105.i = icmp eq ptr %i.bq, %1
  br i1 %.not105.i, label %._crit_edge, label %.lr.ph280, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph280, %bb.l, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit70
  %.10201.lcssa = phi ptr [ %.11202.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit70 ], [ %scevgep388, %bb.l ], [ %.10201278, %.lr.ph280 ] ; 2 uses
  %.6189.lcssa = phi i64 [ %.7190.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit70 ], [ %i.bt, %bb.l ], [ %.6189279, %.lr.ph280 ]
  %i.bu = ptrtoint ptr %.10201.lcssa to i64       ; 2 uses
  %i.bv = sub i64 %i.ap, %i.bu                    ; 3 uses
  %i.bw = sub i64 %i.bu, %i.ap
  %i.bx = sub nsw i64 %i.ah, %i.bv
  %i.by = icmp eq i64 %i.bv, 0
  br i1 %i.by, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit66, label %.thread211

.thread211:                                       ; preds = %bb.i, %bb.j, %._crit_edge
  %.073.i224 = phi i64 [ %i.bv, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.079.i223 = phi i64 [ %i.bx, %._crit_edge ], [ %i.ah, %bb.j ], [ %i.ah, %bb.i ] ; 2 uses
  %.1184222 = phi i64 [ %.6189.lcssa, %._crit_edge ], [ %.0183.lcssa.ph, %bb.j ], [ %.0183.lcssa.ph, %bb.i ] ; 2 uses
end_hunk_1
