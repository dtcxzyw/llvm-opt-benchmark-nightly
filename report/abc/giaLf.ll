Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaLf?download=true
inline.NumInlined: 854
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 29
begin_hunk_0_@Lf_ObjMergeOrder:bb.a
Gia_ObjSiblObj.exit:                              ; preds = %bb.aa
  %i.hr = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 208
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !92, !nonnull !209, !noundef !209
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.i
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !57 ; 2 uses
  %.not6.i = icmp ne i32 %i.hv, 0
  call void @llvm.assume(i1 %.not6.i)
  %i.hw = getelementptr i8, ptr %i.hr, i64 32
  %.val.i437 = load ptr, ptr %i.hw, align 8, !tbaa !54
  %i.hx = sext i32 %i.hv to i64
  %i.hy = getelementptr inbounds [12 x i8], ptr %.val.i437, i64 %i.hx
  %.val412 = load i64, ptr %i.j, align 4
  %.val411 = load i64, ptr %i.hy, align 4
  %i.hz = xor i64 %.val411, %.val412
  %i.ia = lshr i64 %i.hz, 63
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %.val.i438 = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.ic = sext i32 %i.cn to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %.val.i438, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !57
  %i.if = icmp eq i32 %i.ie, -1
  br i1 %i.if, label %Lf_ManPrepareSet.exit444.thread, label %bb.ab

Lf_ManPrepareSet.exit444.thread:                  ; preds = %Gia_ObjSiblObj.exit
  %i.ig = load i32, ptr getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 180), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 176), align 16, !tbaa !83
  %i.ih = and i32 %i.ig, 4194303
  %i.ii = or disjoint i32 %i.ih, 16777216
  store i32 %i.ii, ptr getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 180), align 4
  store i32 %i.cn, ptr getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 184), align 8, !tbaa !57
  %i.ij = and i32 %i.cn, 63
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = shl nuw i64 1, %i.ik
  store i64 %i.il, ptr getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 160), align 16, !tbaa !89
  br label %.lr.ph670

bb.ab:                                            ; preds = %Gia_ObjSiblObj.exit
  %i.im = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !90 ; 3 uses
  %i.ip = call fastcc ptr @Lf_ManFetchSet(ptr noundef nonnull %0, i32 noundef %i.cn) ; 2 uses
  %i.iq = icmp sgt i32 %i.io, 0
  br i1 %i.iq, label %.lr.ph.i440, label %.loopexit639

.lr.ph.i440:                                      ; preds = %bb.ab, %bb.ac
  %.021.i441 = phi i32 [ %i.ix, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %.01820.i442 = phi ptr [ %i.iw, %bb.ac ], [ %i.ip, %bb.ab ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.01820.i442, i64 20
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = icmp ugt i32 %i.is, -16777217
  br i1 %i.it, label %Lf_ManPrepareSet.exit444, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i440
  %i.iu = load i32, ptr %i.af, align 8, !tbaa !91
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %.01820.i442, i64 %i.iv
  %i.ix = add nuw nsw i32 %.021.i441, 1           ; 2 uses
  %exitcond.not.i443 = icmp eq i32 %i.ix, %i.io
  br i1 %exitcond.not.i443, label %Lf_ManPrepareSet.exit444, label %.lr.ph.i440, !llvm.loop !169

Lf_ManPrepareSet.exit444:                         ; preds = %.lr.ph.i440, %bb.ac
  %.1.i439 = phi i32 [ %i.io, %bb.ac ], [ %.021.i441, %.lr.ph.i440 ] ; 2 uses
  %i.iy = icmp sgt i32 %.1.i439, 0
  br i1 %i.iy, label %.lr.ph670, label %.loopexit639

.lr.ph670:                                        ; preds = %Lf_ManPrepareSet.exit444.thread, %Lf_ManPrepareSet.exit444
  %.1.i439875 = phi i32 [ 1, %Lf_ManPrepareSet.exit444.thread ], [ %.1.i439, %Lf_ManPrepareSet.exit444 ]
  %.0587874 = phi ptr [ getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 160), %Lf_ManPrepareSet.exit444.thread ], [ %i.ip, %Lf_ManPrepareSet.exit444 ]
  %i.iz = sext i32 %i.ag to i64                   ; 2 uses
  %i.ja = shl nsw i64 %i.iz, 3
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph670, %bb.ah
  %.2320669 = phi i32 [ %.1319, %.lr.ph670 ], [ %.3321, %bb.ah ] ; 3 uses
  %.0325668 = phi i32 [ 0, %.lr.ph670 ], [ %i.jn, %bb.ah ]
  %.0337667 = phi ptr [ %.0587874, %.lr.ph670 ], [ %i.jm, %bb.ah ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0337667, i64 24
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !57
  %i.jd = icmp eq i32 %i.jc, %i.cn
  br i1 %i.jd, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.je = sext i32 %.2320669 to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !94 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jg, ptr nonnull readonly align 8 %.0337667, i64 %i.ja, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !83 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, -1
  br i1 %i.jj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jk = xor i32 %i.ji, %i.ib
  store i32 %i.jk, ptr %i.jh, align 8, !tbaa !83
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call fastcc void @Lf_CutParams(ptr noundef %0, ptr noundef nonnull %i.jg, i32 noundef %.1336, float noundef %i.s)
  %i.jl = call fastcc i32 @Lf_SetAddCut(ptr noundef %i.f, i32 noundef %.2320669, i32 noundef %i.ae)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %.3321 = phi i32 [ %.2320669, %bb.ad ], [ %i.jl, %bb.ag ] ; 2 uses
  %i.jm = getelementptr inbounds [8 x i8], ptr %.0337667, i64 %i.iz
  %i.jn = add nuw nsw i32 %.0325668, 1            ; 2 uses
  %exitcond784.not = icmp eq i32 %i.jn, %.1.i439875
  br i1 %exitcond784.not, label %.loopexit639, label %bb.ad, !llvm.loop !173

.loopexit639:                                     ; preds = %bb.ah, %bb.ab, %Lf_ManPrepareSet.exit444, %bb.aa
  %.4322 = phi i32 [ %.1319, %bb.aa ], [ %.1319, %Lf_ManPrepareSet.exit444 ], [ %.1319, %bb.ab ], [ %.3321, %bb.ah ] ; 5 uses
  %i.jo = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 40
  %.val414 = load ptr, ptr %i.jp, align 8, !tbaa !81 ; 3 uses
  %.not.i445 = icmp eq ptr %.val414, null
  br i1 %.not.i445, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjIsMuxId.exit

Gia_ObjIsMuxId.exit:                              ; preds = %.loopexit639
  %i.jq = getelementptr inbounds [4 x i8], ptr %.val414, i64 %i.i
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !57 ; 2 uses
  %.not605 = icmp eq i32 %i.jr, 0
  br i1 %.not605, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjFaninId2.exit

Gia_ObjFaninId2.exit:                             ; preds = %Gia_ObjIsMuxId.exit
  %i.js = getelementptr i8, ptr %i.jo, i64 32
  %.val.i447 = load ptr, ptr %i.js, align 8, !tbaa !54
  %i.jt = ptrtoint ptr %i.j to i64
  %i.ju = ptrtoint ptr %.val.i447 to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = sdiv exact i64 %i.jv, 12
  %i.jx = shl i64 %i.jw, 32
  %i.jy = ashr exact i64 %i.jx, 30
  %i.jz = getelementptr inbounds i8, ptr %.val414, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !57
  %i.kb = and i32 %i.ka, 1                        ; 2 uses
  %i.kc = ashr i32 %i.jr, 1                       ; 4 uses
  %.val.i449 = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %.val.i449, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !57
  %i.kg = icmp eq i32 %i.kf, -1
  br i1 %i.kg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %Gia_ObjFaninId2.exit
  %i.kh = load i32, ptr getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 180), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 176), align 16, !tbaa !83
  %i.ki = and i32 %i.kh, 4194303
  %i.kj = or disjoint i32 %i.ki, 16777216
  store i32 %i.kj, ptr getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 180), align 4
  store i32 %i.kc, ptr getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 184), align 8, !tbaa !57
  %i.kk = and i32 %i.kc, 63
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = shl nuw i64 1, %i.kl
  store i64 %i.km, ptr getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 160), align 16, !tbaa !89
  br label %Lf_ManPrepareSet.exit455

bb.aj:                                            ; preds = %Gia_ObjFaninId2.exit
  %i.kn = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !90 ; 3 uses
  %i.kq = call fastcc ptr @Lf_ManFetchSet(ptr noundef nonnull %0, i32 noundef %i.kc) ; 3 uses
  %i.kr = icmp sgt i32 %i.kp, 0
  br i1 %i.kr, label %.lr.ph.i451, label %Lf_ManPrepareSet.exit455

.lr.ph.i451:                                      ; preds = %bb.aj, %bb.ak
  %.021.i452 = phi i32 [ %i.ky, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %.01820.i453 = phi ptr [ %i.kx, %bb.ak ], [ %i.kq, %bb.aj ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.01820.i453, i64 20
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = icmp ugt i32 %i.kt, -16777217
  br i1 %i.ku, label %Lf_ManPrepareSet.exit455.loopexit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i451
  %i.kv = load i32, ptr %i.af, align 8, !tbaa !91
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %.01820.i453, i64 %i.kw
  %i.ky = add nuw nsw i32 %.021.i452, 1           ; 2 uses
  %exitcond.not.i454 = icmp eq i32 %i.ky, %i.kp
  br i1 %exitcond.not.i454, label %Lf_ManPrepareSet.exit455.loopexit, label %.lr.ph.i451, !llvm.loop !169

Lf_ManPrepareSet.exit455.loopexit:                ; preds = %bb.ak, %.lr.ph.i451
  %.1.i450.ph = phi i32 [ %.021.i452, %.lr.ph.i451 ], [ %i.kp, %bb.ak ]
  %i.kz = freeze i32 %.1.i450.ph
  br label %Lf_ManPrepareSet.exit455

Lf_ManPrepareSet.exit455:                         ; preds = %Lf_ManPrepareSet.exit455.loopexit, %bb.ai, %bb.aj
  %.1588 = phi ptr [ getelementptr inbounds nuw (i8, ptr @Lf_ManPrepareSet.CutTemp, i64 160), %bb.ai ], [ %i.kq, %bb.aj ], [ %i.kq, %Lf_ManPrepareSet.exit455.loopexit ]
  %.1.i450 = phi i32 [ 1, %bb.ai ], [ 0, %bb.aj ], [ %i.kz, %Lf_ManPrepareSet.exit455.loopexit ] ; 3 uses
  %i.la = mul nuw nsw i32 %.1.i424, %.1.i
  %i.lb = mul nuw nsw i32 %i.la, %.1.i450
  %i.lc = uitofp nneg i32 %i.lb to double
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !98
  %i.lf = fadd double %i.le, %i.lc
  store double %i.lf, ptr %i.ld, align 8, !tbaa !98
  %i.lg = icmp sgt i32 %.1.i, 0
  br i1 %i.lg, label %.lr.ph692, label %.loopexit618

.lr.ph692:                                        ; preds = %Lf_ManPrepareSet.exit455
  %i.lh = icmp sgt i32 %.1.i424, 0
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.lj = zext nneg i32 %i.ac to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ll = getelementptr i8, ptr %0, i64 64
  %i.lm = icmp slt i32 %i.ac, 7
  %i.ln = add nsw i32 %i.ac, -6
  %i.lo = shl nuw i32 1, %i.ln
  %i.lp = select i1 %i.lm, i32 1, i32 %i.lo
  %i.lq = sext i32 %i.ag to i64                   ; 3 uses
  %2 = icmp sgt i32 %.1.i450, 0
  %or.cond933 = and i1 %i.lh, %2
  br i1 %or.cond933, label %.lr.ph692.split.us, label %._crit_edge693

.lr.ph692.split.us:                               ; preds = %.lr.ph692, %..loopexit638_crit_edge.us
  %.0691.us = phi ptr [ %.5.us.us, %..loopexit638_crit_edge.us ], [ null, %.lr.ph692 ] ; 2 uses
  %.5323690.us = phi i32 [ %.10.us.us, %..loopexit638_crit_edge.us ], [ %.4322, %.lr.ph692 ] ; 2 uses
  %.1331689.us = phi i32 [ %i.rv, %..loopexit638_crit_edge.us ], [ 0, %.lr.ph692 ]
  %.1343686.us = phi ptr [ %i.ru, %..loopexit638_crit_edge.us ], [ %.0590, %.lr.ph692 ] ; 6 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.1343686.us, i64 20 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4
  %i.lt = lshr i32 %i.ls, 24
  %.not383.us = icmp sgt i32 %i.lt, %i.ac
  br i1 %.not383.us, label %..loopexit638_crit_edge.us, label %.preheader637.us

.preheader637.us:                                 ; preds = %.lr.ph692.split.us
  %i.lu = getelementptr inbounds nuw i8, ptr %.1343686.us, i64 24
  br label %.lr.ph682.split.us.us

.lr.ph682.split.us.us:                            ; preds = %.preheader637.us, %..loopexit636_crit_edge.us.us
  %.1681.us.us = phi ptr [ %.4.us.us, %..loopexit636_crit_edge.us.us ], [ %.0691.us, %.preheader637.us ] ; 2 uses
  %.6680.us.us = phi i32 [ %.9.us.us, %..loopexit636_crit_edge.us.us ], [ %.5323690.us, %.preheader637.us ] ; 2 uses
  %.0327679.us.us = phi i32 [ %i.rt, %..loopexit636_crit_edge.us.us ], [ 0, %.preheader637.us ]
  %.0339678.us.us = phi ptr [ %i.rs, %..loopexit636_crit_edge.us.us ], [ %.0589, %.preheader637.us ] ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.0339678.us.us, i64 20 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4
  %i.lx = lshr i32 %i.lw, 24
  %.not384.us.us = icmp sgt i32 %i.lx, %i.ac
  br i1 %.not384.us.us, label %..loopexit636_crit_edge.us.us, label %.preheader635.us.us

.preheader635.us.us:                              ; preds = %.lr.ph682.split.us.us
  %i.ly = getelementptr inbounds nuw i8, ptr %.0339678.us.us, i64 24
  br label %bb.al

bb.al:                                            ; preds = %Lf_CutMergeOrderMux.exit.thread.us.us, %.preheader635.us.us
  %.2674.us.us = phi ptr [ %.1681.us.us, %.preheader635.us.us ], [ %.3.us.us, %Lf_CutMergeOrderMux.exit.thread.us.us ]
  %.7673.us.us = phi i32 [ %.6680.us.us, %.preheader635.us.us ], [ %.8.us.us, %Lf_CutMergeOrderMux.exit.thread.us.us ] ; 12 uses
  %.1326672.us.us = phi i32 [ 0, %.preheader635.us.us ], [ %i.rr, %Lf_CutMergeOrderMux.exit.thread.us.us ]
  %.1338671.us.us = phi ptr [ %.1588, %.preheader635.us.us ], [ %i.rq, %Lf_CutMergeOrderMux.exit.thread.us.us ] ; 14 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.1338671.us.us, i64 20 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = lshr i32 %i.ma, 24
  %.not385.us.us = icmp sgt i32 %i.mb, %i.ac
  br i1 %.not385.us.us, label %Lf_CutMergeOrderMux.exit.thread.us.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mc = load i64, ptr %.1343686.us, align 8, !tbaa !89
  %i.md = load i64, ptr %.0339678.us.us, align 8, !tbaa !89
  %i.me = or i64 %i.md, %i.mc
  %i.mf = load i64, ptr %.1338671.us.us, align 8, !tbaa !89
  %i.mg = or i64 %i.me, %i.mf
  %i.mh = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.mg)
  %i.mi = trunc nuw nsw i64 %i.mh to i32
  %i.mj = icmp samesign ult i32 %i.ac, %i.mi
  br i1 %i.mj, label %Lf_CutMergeOrderMux.exit.thread.us.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mk = load double, ptr %i.li, align 8, !tbaa !98
  %i.ml = fadd double %i.mk, 1.000000e+00
  store double %i.ml, ptr %i.li, align 8, !tbaa !98
  %i.mm = sext i32 %.7673.us.us to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.mm
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !94 ; 7 uses
  %i.mp = load i32, ptr %i.lr, align 4
  %i.mq = lshr i32 %i.mp, 24
  %i.mr = load i32, ptr %i.lv, align 4
  %i.ms = lshr i32 %i.mr, 24
  %i.mt = load i32, ptr %i.lz, align 4
  %i.mu = lshr i32 %i.mt, 24
  %i.mv = getelementptr inbounds nuw i8, ptr %.1338671.us.us, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 24 ; 5 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aw, %bb.an
  %indvars.iv.i456.us.us = phi i64 [ %indvars.iv.next.i457.us.us, %bb.aw ], [ 0, %bb.an ] ; 4 uses
  %.048.i.us.us = phi i32 [ %spec.select.i458.us.us, %bb.aw ], [ 0, %bb.an ] ; 3 uses
  %.046.i.us.us = phi i32 [ %.147.i.us.us, %bb.aw ], [ 0, %bb.an ] ; 3 uses
  %.045.i.us.us = phi i32 [ %.1.i460.us.us, %bb.aw ], [ 0, %bb.an ] ; 3 uses
  %i.mx = icmp eq i32 %.048.i.us.us, %i.mq
  br i1 %i.mx, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.my = zext nneg i32 %.048.i.us.us to i64
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !57
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.nb = phi i32 [ %i.na, %bb.ap ], [ 1000000000, %bb.ao ] ; 2 uses
  %i.nc = icmp eq i32 %.046.i.us.us, %i.ms
  br i1 %i.nc, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nd = zext nneg i32 %.046.i.us.us to i64
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !57
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ng = phi i32 [ %i.nf, %bb.ar ], [ 1000000000, %bb.aq ] ; 2 uses
  %i.nh = icmp eq i32 %.045.i.us.us, %i.mu
  br i1 %i.nh, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ni = zext nneg i32 %.045.i.us.us to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !57
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.nl = phi i32 [ %i.nk, %bb.at ], [ 1000000000, %bb.as ] ; 2 uses
  %i.nm = call noundef i32 @llvm.smin.i32(i32 %i.nb, i32 %i.ng) ; 2 uses
  %i.nn = call noundef i32 @llvm.smin.i32(i32 %i.nm, i32 %i.nl) ; 4 uses
  %i.no = icmp eq i32 %i.nn, 1000000000
  br i1 %i.no, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.np = icmp eq i64 %indvars.iv.i456.us.us, %i.lj
  br i1 %i.np, label %Lf_CutMergeOrderMux.exit.thread.us.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %indvars.iv.next.i457.us.us = add nuw nsw i64 %indvars.iv.i456.us.us, 1
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.i456.us.us
  store i32 %i.nn, ptr %i.nq, align 4, !tbaa !57
  %i.nr = icmp eq i32 %i.nb, %i.nn
  %i.ns = zext i1 %i.nr to i32
  %spec.select.i458.us.us = add nuw nsw i32 %.048.i.us.us, %i.ns
  %i.nt = icmp eq i32 %i.ng, %i.nn
  %i.nu = zext i1 %i.nt to i32
  %.147.i.us.us = add nuw nsw i32 %.046.i.us.us, %i.nu
  %.not.i459.us.us = icmp sle i32 %i.nl, %i.nm
  %i.nv = zext i1 %.not.i459.us.us to i32
  %.1.i460.us.us = add nuw nsw i32 %.045.i.us.us, %i.nv
  br label %bb.ao

bb.ax:                                            ; preds = %bb.au
  %i.nw = trunc nuw nsw i64 %indvars.iv.i456.us.us to i32
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mo, i64 20 ; 4 uses
  %i.ny = load i32, ptr %i.nx, align 4
  %i.nz = shl i32 %i.nw, 24
  %i.oa = and i32 %i.ny, 8388607
  %i.ob = or disjoint i32 %i.oa, %i.nz
  %.fr31.i.us.us = freeze i32 %i.ob               ; 2 uses
  %i.oc = getelementptr i8, ptr %i.mo, i64 16     ; 2 uses
  store i32 -1, ptr %i.oc, align 8, !tbaa !83
  store i32 %.fr31.i.us.us, ptr %i.nx, align 4
  %i.od = load i64, ptr %.1343686.us, align 8, !tbaa !89
  %i.oe = load i64, ptr %.0339678.us.us, align 8, !tbaa !89
  %i.of = or i64 %i.oe, %i.od
  %i.og = load i64, ptr %.1338671.us.us, align 8, !tbaa !89
  %i.oh = or i64 %i.of, %i.og                     ; 3 uses
  store i64 %i.oh, ptr %i.mo, align 8, !tbaa !89
  %i.oi = icmp sgt i32 %.7673.us.us, 0
  br i1 %i.oi, label %.lr.ph.i461.us.us, label %Lf_SetLastCutIsContained.exit.us.us

.lr.ph.i461.us.us:                                ; preds = %bb.ax
  %i.oj = zext nneg i32 %.7673.us.us to i64       ; 2 uses
  %i.ok = lshr i32 %.fr31.i.us.us, 24             ; 4 uses
  %wide.trip.count.i.i.us.us = zext nneg i32 %i.ok to i64 ; 2 uses
  %.not49.i.i.us.us = icmp eq i32 %i.ok, 0
  br i1 %.not49.i.i.us.us, label %.lr.ph.split.us.i.us.us, label %.lr.ph.split.i.us.us

.lr.ph.split.i.us.us:                             ; preds = %.lr.ph.i461.us.us, %Lf_SetCutIsContainedOrder.exit.thread.i.us.us
  %indvars.iv.i462.us.us = phi i64 [ %indvars.iv.next.i464.us.us, %Lf_SetCutIsContainedOrder.exit.thread.i.us.us ], [ 0, %.lr.ph.i461.us.us ] ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i462.us.us
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !94 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 20
  %i.oo = load i32, ptr %i.on, align 4
  %i.op = lshr i32 %i.oo, 24                      ; 4 uses
  %.not.i463.us.us = icmp samesign ugt i32 %i.op, %i.ok
  br i1 %.not.i463.us.us, label %Lf_SetCutIsContainedOrder.exit.thread.i.us.us, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.split.i.us.us
  %i.oq = load i64, ptr %i.om, align 8, !tbaa !89 ; 2 uses
  %i.or = and i64 %i.oh, %i.oq
  %i.os = icmp eq i64 %i.or, %i.oq
  br i1 %i.os, label %bb.az, label %Lf_SetCutIsContainedOrder.exit.thread.i.us.us

bb.az:                                            ; preds = %bb.ay
  %i.ot = icmp eq i32 %i.ok, %i.op
  br i1 %i.ot, label %.preheader.i.i.us.us, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ou = icmp eq i32 %i.op, 0
  br i1 %i.ou, label %Lf_CutMergeOrderMux.exit.thread.us.us, label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %bb.ba
  %i.ov = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.be, %.lr.ph.i.i.us.us
  %indvars.iv.i.i.us.us = phi i64 [ 0, %.lr.ph.i.i.us.us ], [ %indvars.iv.next.i.i.us.us, %bb.be ] ; 2 uses
  %.038.i.i.us.us = phi i32 [ 0, %.lr.ph.i.i.us.us ], [ %.1.i.i.us.us, %bb.be ] ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.i.i.us.us
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !57 ; 2 uses
  %i.oy = sext i32 %.038.i.i.us.us to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.ov, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !57 ; 2 uses
  %i.pb = icmp sgt i32 %i.ox, %i.pa
  br i1 %i.pb, label %Lf_SetCutIsContainedOrder.exit.thread.i.us.us, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pc = icmp eq i32 %i.ox, %i.pa
  br i1 %i.pc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.pd = add nsw i32 %.038.i.i.us.us, 1          ; 2 uses
  %i.pe = icmp eq i32 %i.pd, %i.op
  br i1 %i.pe, label %Lf_CutMergeOrderMux.exit.thread.us.us, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.1.i.i.us.us = phi i32 [ %i.pd, %bb.bd ], [ %.038.i.i.us.us, %bb.bc ]
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us, 1 ; 2 uses
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, %wide.trip.count.i.i.us.us
  br i1 %exitcond.not.i.i.us.us, label %Lf_SetCutIsContainedOrder.exit.thread.i.us.us, label %bb.bb, !llvm.loop !3

.preheader.i.i.us.us:                             ; preds = %bb.az
  %i.pf = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %.preheader.i.i.us.us
  %indvars.iv53.i.i.us.us = phi i64 [ 0, %.preheader.i.i.us.us ], [ %indvars.iv.next54.i.i.us.us, %bb.bg ] ; 3 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv53.i.i.us.us
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !57
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %indvars.iv53.i.i.us.us
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !57
  %.not.i.i.us.us = icmp eq i32 %i.ph, %i.pj
  br i1 %.not.i.i.us.us, label %bb.bg, label %Lf_SetCutIsContainedOrder.exit.thread.i.us.us

bb.bg:                                            ; preds = %bb.bf
  %indvars.iv.next54.i.i.us.us = add nuw nsw i64 %indvars.iv53.i.i.us.us, 1 ; 2 uses
  %exitcond57.not.i.i.us.us = icmp eq i64 %indvars.iv.next54.i.i.us.us, %wide.trip.count.i.i.us.us
  br i1 %exitcond57.not.i.i.us.us, label %Lf_CutMergeOrderMux.exit.thread.us.us, label %bb.bf, !llvm.loop !174

Lf_SetCutIsContainedOrder.exit.thread.i.us.us:    ; preds = %bb.bb, %bb.be, %bb.bf, %bb.ay, %.lr.ph.split.i.us.us
  %indvars.iv.next.i464.us.us = add nuw nsw i64 %indvars.iv.i462.us.us, 1 ; 2 uses
  %exitcond.not.i465.us.us = icmp eq i64 %indvars.iv.next.i464.us.us, %i.oj
  br i1 %exitcond.not.i465.us.us, label %Lf_SetLastCutIsContained.exit.us.us, label %.lr.ph.split.i.us.us, !llvm.loop !175

.lr.ph.split.us.i.us.us:                          ; preds = %.lr.ph.i461.us.us, %Lf_SetCutIsContainedOrder.exit.thread.us.i.us.us
  %indvars.iv39.i.us.us = phi i64 [ %indvars.iv.next40.i.us.us, %Lf_SetCutIsContainedOrder.exit.thread.us.i.us.us ], [ 0, %.lr.ph.i461.us.us ] ; 2 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv39.i.us.us
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !94 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 20
  %i.pn = load i32, ptr %i.pm, align 4
  %.not.us.not.i.us.us = icmp ult i32 %i.pn, 16777216
  br i1 %.not.us.not.i.us.us, label %bb.bh, label %Lf_SetCutIsContainedOrder.exit.thread.us.i.us.us

bb.bh:                                            ; preds = %.lr.ph.split.us.i.us.us
  %i.po = load i64, ptr %i.pl, align 8, !tbaa !89 ; 2 uses
  %i.pp = and i64 %i.oh, %i.po
  %i.pq = icmp eq i64 %i.pp, %i.po
  br i1 %i.pq, label %Lf_CutMergeOrderMux.exit.thread.us.us, label %Lf_SetCutIsContainedOrder.exit.thread.us.i.us.us

Lf_SetCutIsContainedOrder.exit.thread.us.i.us.us: ; preds = %bb.bh, %.lr.ph.split.us.i.us.us
  %indvars.iv.next40.i.us.us = add nuw nsw i64 %indvars.iv39.i.us.us, 1 ; 2 uses
  %exitcond43.not.i.us.us = icmp eq i64 %indvars.iv.next40.i.us.us, %i.oj
  br i1 %exitcond43.not.i.us.us, label %Lf_SetLastCutIsContained.exit.us.us, label %.lr.ph.split.us.i.us.us, !llvm.loop !175

Lf_SetLastCutIsContained.exit.us.us:              ; preds = %Lf_SetCutIsContainedOrder.exit.thread.i.us.us, %Lf_SetCutIsContainedOrder.exit.thread.us.i.us.us, %bb.ax
  %i.pr = load double, ptr %i.lk, align 8, !tbaa !98
  %i.ps = fadd double %i.pr, 1.000000e+00
  store double %i.ps, ptr %i.lk, align 8, !tbaa !98
  %i.pt = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 88
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !82
  %.not388.us.us = icmp eq i32 %i.pv, 0
  br i1 %.not388.us.us, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %Lf_SetLastCutIsContained.exit.us.us
  %i.pw = call fastcc i32 @Lf_CutComputeTruthMux(ptr noundef nonnull %0, ptr noundef nonnull %.1343686.us, ptr noundef nonnull %.0339678.us.us, ptr noundef nonnull %.1338671.us.us, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.kb, ptr noundef nonnull %i.mo)
  %.not389.us.us = icmp eq i32 %i.pw, 0
  br i1 %.not389.us.us, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.px = load i32, ptr %i.nx, align 4            ; 2 uses
  %i.py = lshr i32 %i.px, 24                      ; 2 uses
  %.not.i466.us.us = icmp eq i32 %i.py, 0
  br i1 %.not.i466.us.us, label %Lf_CutGetSign.exit.us.us, label %.lr.ph.i467.us.us

.lr.ph.i467.us.us:                                ; preds = %bb.bj
  %wide.trip.count.i468.us.us = zext nneg i32 %i.py to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.px, 67108864
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i467.us.us
  %n.vec = and i64 %wide.trip.count.i468.us.us, 252 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qh, %vector.body ]
  %vec.phi980 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qi, %vector.body ]
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %wide.load = load <2 x i32>, ptr %i.pz, align 4, !tbaa !57
  %wide.load981 = load <2 x i32>, ptr %i.qa, align 4, !tbaa !57
  %i.qb = and <2 x i32> %wide.load, splat (i32 63)
  %i.qc = and <2 x i32> %wide.load981, splat (i32 63)
  %i.qd = zext nneg <2 x i32> %i.qb to <2 x i64>
  %i.qe = zext nneg <2 x i32> %i.qc to <2 x i64>
  %i.qf = shl nuw <2 x i64> splat (i64 1), %i.qd
  %i.qg = shl nuw <2 x i64> splat (i64 1), %i.qe
  %i.qh = or <2 x i64> %i.qf, %vec.phi            ; 2 uses
  %i.qi = or <2 x i64> %i.qg, %vec.phi980         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qj = icmp eq i64 %index.next, %n.vec
  br i1 %i.qj, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.qi, %i.qh
  %i.qk = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i468.us.us
  br i1 %cmp.n, label %Lf_CutGetSign.exit.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i467.us.us, %middle.block
  %indvars.iv.i469.us.us.ph = phi i64 [ 0, %.lr.ph.i467.us.us ], [ %n.vec, %middle.block ]
  %.067.i.us.us.ph = phi i64 [ 0, %.lr.ph.i467.us.us ], [ %i.qk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i469.us.us = phi i64 [ %indvars.iv.next.i470.us.us, %scalar.ph ], [ %indvars.iv.i469.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.067.i.us.us = phi i64 [ %i.qq, %scalar.ph ], [ %.067.i.us.us.ph, %scalar.ph.preheader ]
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.i469.us.us
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !57
  %i.qn = and i32 %i.qm, 63
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = shl nuw i64 1, %i.qo
  %i.qq = or i64 %i.qp, %.067.i.us.us             ; 2 uses
  %indvars.iv.next.i470.us.us = add nuw nsw i64 %indvars.iv.i469.us.us, 1 ; 2 uses
  %exitcond.not.i471.us.us = icmp eq i64 %indvars.iv.next.i470.us.us, %wide.trip.count.i468.us.us
  br i1 %exitcond.not.i471.us.us, label %Lf_CutGetSign.exit.us.us, label %scalar.ph, !llvm.loop !177

Lf_CutGetSign.exit.us.us:                         ; preds = %scalar.ph, %middle.block, %bb.bj
  %.06.lcssa.i.us.us = phi i64 [ 0, %bb.bj ], [ %i.qk, %middle.block ], [ %i.qq, %scalar.ph ]
  store i64 %.06.lcssa.i.us.us, ptr %i.mo, align 8, !tbaa !89
  br label %bb.bk

bb.bk:                                            ; preds = %Lf_CutGetSign.exit.us.us, %bb.bi, %Lf_SetLastCutIsContained.exit.us.us
  %i.qr = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 156
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !99 ; 3 uses
  %.not390.us.us = icmp eq i32 %i.qt, 0
  br i1 %.not390.us.us, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qu = load i32, ptr %i.nx, align 4
  %i.qv = lshr i32 %i.qu, 24
  %i.qw = icmp eq i32 %i.qt, %i.qv
  br i1 %i.qw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %.val417.us.us = load ptr, ptr %i.ll, align 8, !tbaa !100 ; 4 uses
  %.val418.us.us = load i32, ptr %i.oc, align 8, !tbaa !83
  %i.qx = ashr i32 %.val418.us.us, 1              ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.val417.us.us, i64 24
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !103
  %i.ra = getelementptr inbounds nuw i8, ptr %.val417.us.us, i64 8
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !104
  %i.rc = ashr i32 %i.qx, %i.rb
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %i.qz, i64 %i.rd
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !106
  %i.rg = load i32, ptr %.val417.us.us, align 8, !tbaa !107
  %i.rh = getelementptr inbounds nuw i8, ptr %.val417.us.us, i64 12
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !108
  %i.rj = and i32 %i.ri, %i.qx
  %i.rk = mul nsw i32 %i.rj, %i.rg
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.rf, i64 %i.rl
  %i.rn = call fastcc i32 @Lf_ManFindCofVar(ptr noundef %i.rm, i32 noundef %i.lp, i32 noundef %i.qt)
  %i.ro = icmp eq i32 %i.rn, -1
  br i1 %i.ro, label %Lf_CutMergeOrderMux.exit.thread.us.us, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  call fastcc void @Lf_CutParams(ptr noundef nonnull %0, ptr noundef nonnull %i.mo, i32 noundef %.1336, float noundef %i.s)
  %i.rp = call fastcc i32 @Lf_SetAddCut(ptr noundef %i.f, i32 noundef %.7673.us.us, i32 noundef %i.ae)
  br label %Lf_CutMergeOrderMux.exit.thread.us.us

Lf_CutMergeOrderMux.exit.thread.us.us:            ; preds = %bb.av, %bb.ba, %bb.bh, %bb.bd, %bb.bg, %bb.bn, %bb.bm, %bb.am, %bb.al
  %.8.us.us = phi i32 [ %.7673.us.us, %bb.am ], [ %.7673.us.us, %bb.bd ], [ %.7673.us.us, %bb.bm ], [ %i.rp, %bb.bn ], [ %.7673.us.us, %bb.al ], [ %.7673.us.us, %bb.ba ], [ %.7673.us.us, %bb.bh ], [ %.7673.us.us, %bb.bg ], [ %.7673.us.us, %bb.av ] ; 2 uses
  %.3.us.us = phi ptr [ %.1338671.us.us, %bb.am ], [ %.1338671.us.us, %bb.bd ], [ %.1338671.us.us, %bb.bm ], [ %.1338671.us.us, %bb.bn ], [ %.2674.us.us, %bb.al ], [ %.1338671.us.us, %bb.ba ], [ %.1338671.us.us, %bb.bh ], [ %.1338671.us.us, %bb.bg ], [ %.1338671.us.us, %bb.av ] ; 2 uses
  %i.rq = getelementptr inbounds [8 x i8], ptr %.1338671.us.us, i64 %i.lq
  %i.rr = add nuw nsw i32 %.1326672.us.us, 1      ; 2 uses
  %exitcond785.not = icmp eq i32 %i.rr, %.1.i450
  br i1 %exitcond785.not, label %..loopexit636_crit_edge.us.us, label %bb.al, !llvm.loop !178

..loopexit636_crit_edge.us.us:                    ; preds = %Lf_CutMergeOrderMux.exit.thread.us.us, %.lr.ph682.split.us.us
  %.9.us.us = phi i32 [ %.6680.us.us, %.lr.ph682.split.us.us ], [ %.8.us.us, %Lf_CutMergeOrderMux.exit.thread.us.us ] ; 2 uses
  %.4.us.us = phi ptr [ %.1681.us.us, %.lr.ph682.split.us.us ], [ %.3.us.us, %Lf_CutMergeOrderMux.exit.thread.us.us ] ; 2 uses
  %i.rs = getelementptr inbounds [8 x i8], ptr %.0339678.us.us, i64 %i.lq
  %i.rt = add nuw nsw i32 %.0327679.us.us, 1      ; 2 uses
  %exitcond786.not = icmp eq i32 %i.rt, %.1.i424
  br i1 %exitcond786.not, label %..loopexit638_crit_edge.us, label %.lr.ph682.split.us.us, !llvm.loop !179

..loopexit638_crit_edge.us:                       ; preds = %..loopexit636_crit_edge.us.us, %.lr.ph692.split.us
  %.10.us.us = phi i32 [ %.5323690.us, %.lr.ph692.split.us ], [ %.9.us.us, %..loopexit636_crit_edge.us.us ] ; 2 uses
  %.5.us.us = phi ptr [ %.0691.us, %.lr.ph692.split.us ], [ %.4.us.us, %..loopexit636_crit_edge.us.us ] ; 2 uses
  %i.ru = getelementptr inbounds [8 x i8], ptr %.1343686.us, i64 %i.lq
  %i.rv = add nuw nsw i32 %.1331689.us, 1         ; 2 uses
  %exitcond787.not = icmp eq i32 %i.rv, %.1.i
  br i1 %exitcond787.not, label %._crit_edge693, label %.lr.ph692.split.us, !llvm.loop !180

._crit_edge693:                                   ; preds = %..loopexit638_crit_edge.us, %.lr.ph692
  %.5323.lcssa = phi i32 [ %.4322, %.lr.ph692 ], [ %.10.us.us, %..loopexit638_crit_edge.us ] ; 2 uses
  %.0.lcssa = phi ptr [ null, %.lr.ph692 ], [ %.5.us.us, %..loopexit638_crit_edge.us ] ; 4 uses
  %i.rw = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 132
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !76
  %.not372.not = icmp eq i32 %i.ry, 0
  br i1 %.not372.not, label %.loopexit618, label %.lr.ph713

.lr.ph713:                                        ; preds = %._crit_edge693
  %i.rz = icmp slt i32 %.1.i424, 1
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 20
  %i.sc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.se = sext i32 %i.ag to i64                   ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph713, %.loopexit626
  %.11712 = phi i32 [ %.5323.lcssa, %.lr.ph713 ], [ %.14, %.loopexit626 ] ; 2 uses
  %.2332711 = phi i32 [ 0, %.lr.ph713 ], [ %i.xa, %.loopexit626 ]
  %.2344710 = phi ptr [ %.0590, %.lr.ph713 ], [ %i.wz, %.loopexit626 ] ; 5 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.2344710, i64 20 ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4
  %i.sh = lshr i32 %i.sg, 24
  %.not377 = icmp sgt i32 %i.sh, %i.ac
  %brmerge = or i1 %.not377, %i.rz
  br i1 %brmerge, label %.loopexit626, label %.lr.ph708

.lr.ph708:                                        ; preds = %bb.bo
  %i.si = getelementptr inbounds nuw i8, ptr %.2344710, i64 24
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph708, %Lf_CutMergeOrderMux.exit482.thread
  %.12707 = phi i32 [ %.11712, %.lr.ph708 ], [ %.13, %Lf_CutMergeOrderMux.exit482.thread ] ; 10 uses
  %.1328706 = phi i32 [ 0, %.lr.ph708 ], [ %i.wy, %Lf_CutMergeOrderMux.exit482.thread ]
  %.1340705 = phi ptr [ %.0589, %.lr.ph708 ], [ %i.wx, %Lf_CutMergeOrderMux.exit482.thread ] ; 5 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.1340705, i64 20 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4
  %i.sl = lshr i32 %i.sk, 24
  %.not378 = icmp sgt i32 %i.sl, %i.ac
  br i1 %.not378, label %Lf_CutMergeOrderMux.exit482.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sm = load double, ptr %i.sa, align 8, !tbaa !98
  %i.sn = fadd double %i.sm, 1.000000e+00
  store double %i.sn, ptr %i.sa, align 8, !tbaa !98
  %i.so = sext i32 %.12707 to i64
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.so
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !94 ; 7 uses
  %i.sr = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !77
  %i.st = load i32, ptr %i.sf, align 4
  %i.su = lshr i32 %i.st, 24
  %i.sv = load i32, ptr %i.sj, align 4
  %i.sw = lshr i32 %i.sv, 24
  %i.sx = getelementptr inbounds nuw i8, ptr %.1340705, i64 24
  %i.sy = load i32, ptr %i.sb, align 4
  %i.sz = lshr i32 %i.sy, 24
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sq, i64 24 ; 5 uses
  %i.tb = zext i32 %i.ss to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.bz, %bb.bq
  %indvars.iv.i472 = phi i64 [ %indvars.iv.next.i476, %bb.bz ], [ 0, %bb.bq ] ; 4 uses
  %.048.i473 = phi i32 [ %spec.select.i477, %bb.bz ], [ 0, %bb.bq ] ; 3 uses
  %.046.i474 = phi i32 [ %.147.i478, %bb.bz ], [ 0, %bb.bq ] ; 3 uses
  %.045.i475 = phi i32 [ %.1.i480, %bb.bz ], [ 0, %bb.bq ] ; 3 uses
  %i.tc = icmp eq i32 %.048.i473, %i.su
  br i1 %i.tc, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.td = zext nneg i32 %.048.i473 to i64
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !57
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.tg = phi i32 [ %i.tf, %bb.bs ], [ 1000000000, %bb.br ] ; 2 uses
  %i.th = icmp eq i32 %.046.i474, %i.sw
  br i1 %i.th, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ti = zext nneg i32 %.046.i474 to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !57
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.tl = phi i32 [ %i.tk, %bb.bu ], [ 1000000000, %bb.bt ] ; 2 uses
  %i.tm = icmp eq i32 %.045.i475, %i.sz
  br i1 %i.tm, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tn = zext nneg i32 %.045.i475 to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !57
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.tq = phi i32 [ %i.tp, %bb.bw ], [ 1000000000, %bb.bv ] ; 2 uses
  %i.tr = call noundef i32 @llvm.smin.i32(i32 %i.tg, i32 %i.tl) ; 2 uses
  %i.ts = call noundef i32 @llvm.smin.i32(i32 %i.tr, i32 %i.tq) ; 4 uses
  %i.tt = icmp eq i32 %i.ts, 1000000000
  br i1 %i.tt, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tu = icmp eq i64 %indvars.iv.i472, %i.tb
  br i1 %i.tu, label %Lf_CutMergeOrderMux.exit482.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %indvars.iv.next.i476 = add nuw nsw i64 %indvars.iv.i472, 1
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %indvars.iv.i472
  store i32 %i.ts, ptr %i.tv, align 4, !tbaa !57
  %i.tw = icmp eq i32 %i.tg, %i.ts
  %i.tx = zext i1 %i.tw to i32
  %spec.select.i477 = add nuw nsw i32 %.048.i473, %i.tx
  %i.ty = icmp eq i32 %i.tl, %i.ts
  %i.tz = zext i1 %i.ty to i32
  %.147.i478 = add nuw nsw i32 %.046.i474, %i.tz
  %.not.i479 = icmp sle i32 %i.tq, %i.tr
  %i.ua = zext i1 %.not.i479 to i32
  %.1.i480 = add nuw nsw i32 %.045.i475, %i.ua
  br label %bb.br

bb.ca:                                            ; preds = %bb.bx
  %i.ub = trunc nuw nsw i64 %indvars.iv.i472 to i32
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sq, i64 20 ; 3 uses
  %i.ud = load i32, ptr %i.uc, align 4
  %i.ue = shl i32 %i.ub, 24
  %i.uf = and i32 %i.ud, 8388607
  %i.ug = or disjoint i32 %i.uf, %i.ue
  %.fr31.i485 = freeze i32 %i.ug                  ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  store i32 -1, ptr %i.uh, align 8, !tbaa !83
  store i32 %.fr31.i485, ptr %i.uc, align 4
  %i.ui = load i64, ptr %.2344710, align 8, !tbaa !89
  %i.uj = load i64, ptr %.1340705, align 8, !tbaa !89
  %i.uk = or i64 %i.uj, %i.ui
  %i.ul = load i64, ptr %.0.lcssa, align 8, !tbaa !89
  %i.um = or i64 %i.uk, %i.ul                     ; 3 uses
  store i64 %i.um, ptr %i.sq, align 8, !tbaa !89
  %i.un = icmp sgt i32 %.12707, 0
  br i1 %i.un, label %.lr.ph.i484, label %Lf_SetLastCutIsContained.exit511

.lr.ph.i484:                                      ; preds = %bb.ca
  %i.uo = zext nneg i32 %.12707 to i64            ; 2 uses
  %i.up = lshr i32 %.fr31.i485, 24                ; 4 uses
  %wide.trip.count.i.i486 = zext nneg i32 %i.up to i64 ; 2 uses
  %.not49.i.i487 = icmp eq i32 %i.up, 0
  br i1 %.not49.i.i487, label %.lr.ph.split.us.i505, label %.lr.ph.split.i488

.lr.ph.split.us.i505:                             ; preds = %.lr.ph.i484, %Lf_SetCutIsContainedOrder.exit.thread.us.i508
  %indvars.iv39.i506 = phi i64 [ %indvars.iv.next40.i509, %Lf_SetCutIsContainedOrder.exit.thread.us.i508 ], [ 0, %.lr.ph.i484 ] ; 2 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv39.i506
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !94 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 20
  %i.ut = load i32, ptr %i.us, align 4
  %.not.us.not.i507 = icmp ult i32 %i.ut, 16777216
  br i1 %.not.us.not.i507, label %bb.cb, label %Lf_SetCutIsContainedOrder.exit.thread.us.i508

bb.cb:                                            ; preds = %.lr.ph.split.us.i505
  %i.uu = load i64, ptr %i.ur, align 8, !tbaa !89 ; 2 uses
  %i.uv = and i64 %i.um, %i.uu
  %i.uw = icmp eq i64 %i.uv, %i.uu
  br i1 %i.uw, label %Lf_CutMergeOrderMux.exit482.thread, label %Lf_SetCutIsContainedOrder.exit.thread.us.i508

Lf_SetCutIsContainedOrder.exit.thread.us.i508:    ; preds = %bb.cb, %.lr.ph.split.us.i505
  %indvars.iv.next40.i509 = add nuw nsw i64 %indvars.iv39.i506, 1 ; 2 uses
  %exitcond43.not.i510 = icmp eq i64 %indvars.iv.next40.i509, %i.uo
  br i1 %exitcond43.not.i510, label %Lf_SetLastCutIsContained.exit511, label %.lr.ph.split.us.i505, !llvm.loop !175

.lr.ph.split.i488:                                ; preds = %.lr.ph.i484, %Lf_SetCutIsContainedOrder.exit.thread.i491
  %indvars.iv.i489 = phi i64 [ %indvars.iv.next.i492, %Lf_SetCutIsContainedOrder.exit.thread.i491 ], [ 0, %.lr.ph.i484 ] ; 2 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i489
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !94 ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 20
  %i.va = load i32, ptr %i.uz, align 4
  %i.vb = lshr i32 %i.va, 24                      ; 4 uses
  %.not.i490 = icmp samesign ugt i32 %i.vb, %i.up
  br i1 %.not.i490, label %Lf_SetCutIsContainedOrder.exit.thread.i491, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.split.i488
  %i.vc = load i64, ptr %i.uy, align 8, !tbaa !89 ; 2 uses
  %i.vd = and i64 %i.um, %i.vc
  %i.ve = icmp eq i64 %i.vd, %i.vc
  br i1 %i.ve, label %bb.cd, label %Lf_SetCutIsContainedOrder.exit.thread.i491

bb.cd:                                            ; preds = %bb.cc
  %i.vf = icmp eq i32 %i.up, %i.vb
  br i1 %i.vf, label %.preheader.i.i500, label %bb.cg

.preheader.i.i500:                                ; preds = %bb.cd
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cf
  %indvars.iv.next54.i.i503 = add nuw nsw i64 %indvars.iv53.i.i501, 1 ; 2 uses
  %exitcond57.not.i.i504 = icmp eq i64 %indvars.iv.next54.i.i503, %wide.trip.count.i.i486
  br i1 %exitcond57.not.i.i504, label %Lf_CutMergeOrderMux.exit482.thread, label %bb.cf, !llvm.loop !174

bb.cf:                                            ; preds = %bb.ce, %.preheader.i.i500
  %indvars.iv53.i.i501 = phi i64 [ 0, %.preheader.i.i500 ], [ %indvars.iv.next54.i.i503, %bb.ce ] ; 3 uses
end_hunk_0
