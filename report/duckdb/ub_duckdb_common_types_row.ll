inline.NumInlined: 10729
inline.NumDeleted: 3679
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 254
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN6duckdb19TupleDataCollection42CollectionWithinCollectionComputeHeapSizesERNS_6VectorERKS1_RNS_21TupleDataVectorFormatERKNS_15SelectionVectorEmRKNS_19UnifiedVectorFormatE:bb.a
  br label %.body

bb.ah:                                            ; preds = %.noexc
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i8 0, i64 16, i1 false), !noalias !1060
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 32864
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 32888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jg, i8 0, i64 24, i1 false), !noalias !1060
  store i64 2048, ptr %i.jh, align 8, !tbaa !916, !noalias !1060
  %i.ji = load ptr, ptr %i.jb, align 8, !tbaa !1059 ; 3 uses
  store ptr %i.jd, ptr %i.jb, align 8, !tbaa !1059
  %.not.i.i.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16CombinedListDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16CombinedListDataEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16CombinedListDataEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ah
  call void @_ZN6duckdb16CombinedListDataD2Ev(ptr noundef nonnull align 8 dead_on_return(32896) dereferenceable(32896) %i.ji) #31
  call void @_ZdlPv(ptr noundef nonnull %i.ji) #30
  br label %_ZNSt10unique_ptrIN6duckdb16CombinedListDataESt14default_deleteIS1_EED2Ev.exit

bb.ai:                                            ; preds = %bb.ac, %bb.ab
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.ad
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %bb.af
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb16CombinedListDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ah, %_ZNKSt14default_deleteIN6duckdb16CombinedListDataEEclEPS1_.exit.i.i.i.i.i, %bb.ae
  %i.jm = invoke noundef nonnull align 8 dereferenceable(32896) ptr @_ZNK6duckdb10unique_ptrINS_16CombinedListDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jb)
          to label %bb.al unwind label %bb.ao     ; 13 uses

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16CombinedListDataESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.iy)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.am

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.al
  %.not271 = icmp eq i64 %i.iy, 0
  br i1 %.not271, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.lr.ph257

.lr.ph257:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.jo = load ptr, ptr %8, align 8, !tbaa !84
  %i.jp = shl nuw i64 %i.iy, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jo, i8 0, i64 %i.jp, i1 false), !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge

bb.am:                                            ; preds = %bb.al
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.jn) #31
  br label %.body194

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %.lr.ph257, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 96 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 32864 ; 4 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !894 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i, label %bb.an, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit

bb.an:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 32888
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !916
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.js, i64 noundef %i.jv)
          to label %._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge unwind label %bb.ap

._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge: ; preds = %bb.an
  %.pre.i196.pre = load ptr, ptr %i.js, align 8, !tbaa !894
  br label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit: ; preds = %._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %.pre.i196 = phi ptr [ %.pre.i196.pre, %._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge ], [ %i.jt, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.pre.i196, i8 -1, i64 256, i1 false)
  br i1 %.not270, label %._crit_edge269, label %.lr.ph268

.lr.ph268:                                        ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit
  %i.jw = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %.not.i198 = icmp eq ptr %i.jw, null
  %i.jx = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %.not.i200 = icmp eq ptr %i.jx, null
  %i.jy = load ptr, ptr %i.af, align 8, !tbaa !894 ; 2 uses
  %.not.i202 = icmp eq ptr %i.jy, null
  %.not.i205 = icmp eq ptr %.fr, null             ; 2 uses
  br label %bb.aq

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16CombinedListDataESt14default_deleteIS1_EED2Ev.exit
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge269:                                   ; preds = %bb.ay, %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit
  %i.ka = load i8, ptr %i.eq, align 1, !tbaa !698
  %i.kb = icmp eq i8 %i.ka, 23
  br i1 %i.kb, label %bb.az, label %bb.ba

bb.ap:                                            ; preds = %bb.an
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.aq:                                            ; preds = %.lr.ph268, %bb.ay
  %.0145267 = phi i64 [ 0, %.lr.ph268 ], [ %.1146, %bb.ay ] ; 4 uses
  %.0147266 = phi i64 [ 0, %.lr.ph268 ], [ %i.oe, %bb.ay ] ; 4 uses
  br i1 %.not.i198, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit199, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.0147266
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !3
  %i.kf = zext i32 %i.ke to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit199

_ZNK6duckdb15SelectionVector9get_indexEm.exit199: ; preds = %bb.ar, %bb.aq
  %i.kg = phi i64 [ %i.kf, %bb.ar ], [ %.0147266, %bb.aq ] ; 5 uses
  br i1 %.not.i200, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit201, label %bb.as

bb.as:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit199
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3
  %i.kj = zext i32 %i.ki to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit201

_ZNK6duckdb15SelectionVector9get_indexEm.exit201: ; preds = %bb.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit199
  %i.kk = phi i64 [ %i.kj, %bb.as ], [ %i.kg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit199 ] ; 3 uses
  br i1 %.not.i202, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit204.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit204

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit204: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit201
  %i.kl = lshr i64 %i.kk, 6
  %i.km = and i64 %i.kk, 63
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.kl
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !92
  %i.kp = shl nuw i64 1, %i.km
  %i.kq = and i64 %i.ko, %i.kp
  %.not230 = icmp eq i64 %i.kq, 0
  br i1 %.not230, label %bb.at, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit204.thread

bb.at:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit204
  %i.kr = lshr i64 %i.kg, 6
  %i.ks = and i64 %i.kg, 63
  %i.kt = shl nuw i64 1, %i.ks
  %i.ku = xor i64 %i.kt, -1
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i196, i64 %i.kr ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !92
  %i.kx = and i64 %i.kw, %i.ku
  store i64 %i.kx, ptr %i.kv, align 8, !tbaa !92
  br label %bb.ay

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit204.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit201, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit204
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.kk ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 3 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.0147266 ; 3 uses
  %i.lb = load i64, ptr %i.kz, align 8, !tbaa !92
  %i.lc = add i64 %i.lb, 7
  %i.ld = lshr i64 %i.lc, 3
  %i.le = load i64, ptr %i.la, align 8, !tbaa !92
  %i.lf = add i64 %i.ld, %i.le                    ; 2 uses
  store i64 %i.lf, ptr %i.la, align 8, !tbaa !92
  %i.lg = load i64, ptr %i.kz, align 8, !tbaa !92
  %i.lh = shl i64 %i.lg, 3
  %i.li = add i64 %i.lh, %i.lf
  store i64 %i.li, ptr %i.la, align 8, !tbaa !92
  %i.lj = load i64, ptr %i.kz, align 8, !tbaa !92 ; 4 uses
  %.not273 = icmp eq i64 %i.lj, 0
  br i1 %.not273, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit204.thread
  %i.lk = load i64, ptr %i.ky, align 8, !tbaa !92 ; 3 uses
  %i.ll = load ptr, ptr %i.bm, align 8, !tbaa !894 ; 2 uses
  %.not.i207 = icmp eq ptr %i.ll, null
  %i.lm = load ptr, ptr %8, align 8
  %i.ln = getelementptr [4 x i8], ptr %i.lm, i64 %.0145267 ; 3 uses
  br i1 %.not.i207, label %.lr.ph261.split.us, label %.lr.ph261.split

.lr.ph261.split.us:                               ; preds = %.lr.ph261
  br i1 %.not.i205, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.preheader: ; preds = %.lr.ph261.split.us
  %i.lo = getelementptr [4 x i8], ptr %.fr, i64 %i.lk
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us.preheader: ; preds = %.lr.ph261.split.us
  %i.lp = getelementptr [16 x i8], ptr %i.bl, i64 %i.lk
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us.preheader, %bb.au
  %.0148260.us.us = phi i64 [ %i.lx, %bb.au ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us.preheader ] ; 2 uses
  %.0149259.us.us = phi i64 [ %.3152.us.us, %bb.au ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us.preheader ] ; 3 uses
  %i.lq = getelementptr [16 x i8], ptr %i.lp, i64 %.0148260.us.us ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !92 ; 6 uses
  %.not.us.us = icmp eq i64 %i.ls, 0
  br i1 %.not.us.us, label %bb.au, label %.preheader.us.us

.loopexit392:                                     ; preds = %scalar.ph350, %middle.block358
  %9 = add i64 %i.ls, %.0149259.us.us
  br label %bb.au

scalar.ph350:                                     ; preds = %scalar.ph350.preheader, %scalar.ph350
  %.0142258.us.us = phi i64 [ %i.lw, %scalar.ph350 ], [ %.0142258.us.us.ph, %scalar.ph350.preheader ] ; 3 uses
  %i.lt = add i64 %i.ly, %.0142258.us.us
  %i.lu = trunc i64 %i.lt to i32
  %i.lv = getelementptr [4 x i8], ptr %i.lz, i64 %.0142258.us.us
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !3
  %i.lw = add nuw i64 %.0142258.us.us, 1          ; 2 uses
  %exitcond289.not = icmp eq i64 %i.lw, %i.ls
  br i1 %exitcond289.not, label %.loopexit392, label %scalar.ph350, !llvm.loop !1063

bb.au:                                            ; preds = %.loopexit392, %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us
  %.3152.us.us = phi i64 [ %.0149259.us.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us ], [ %9, %.loopexit392 ] ; 2 uses
  %i.lx = add nuw i64 %.0148260.us.us, 1          ; 2 uses
  %exitcond290.not = icmp eq i64 %i.lx, %i.lj
  br i1 %exitcond290.not, label %._crit_edge262, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us, !llvm.loop !1064

.preheader.us.us:                                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.us
  %i.ly = load i64, ptr %i.lq, align 8, !tbaa !92 ; 2 uses
  %i.lz = getelementptr [4 x i8], ptr %i.ln, i64 %.0149259.us.us ; 2 uses
  %min.iters.check351 = icmp ult i64 %i.ls, 8
  br i1 %min.iters.check351, label %scalar.ph350.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %.preheader.us.us
  %n.vec354 = and i64 %i.ls, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ly, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op428 = add <4 x i64> splat (i64 4), %broadcast.splat
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph352
  %index356 = phi i64 [ 0, %vector.ph352 ], [ %index.next357, %vector.body355 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph352 ], [ %vec.ind.next, %vector.body355 ] ; 3 uses
  %i.ma = add <4 x i64> %broadcast.splat, %vec.ind
  %.reass429 = add <4 x i64> %vec.ind, %invariant.op428
  %i.mb = trunc <4 x i64> %i.ma to <4 x i32>
  %i.mc = trunc <4 x i64> %.reass429 to <4 x i32>
  %i.md = getelementptr [4 x i8], ptr %i.lz, i64 %index356 ; 2 uses
  %i.me = getelementptr i8, ptr %i.md, i64 16
  store <4 x i32> %i.mb, ptr %i.md, align 4, !tbaa !3
  store <4 x i32> %i.mc, ptr %i.me, align 4, !tbaa !3
  %index.next357 = add nuw i64 %index356, 8       ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.mf = icmp eq i64 %index.next357, %n.vec354
  br i1 %i.mf, label %middle.block358, label %vector.body355, !llvm.loop !1065

middle.block358:                                  ; preds = %vector.body355
  %cmp.n = icmp eq i64 %i.ls, %n.vec354
  br i1 %cmp.n, label %.loopexit392, label %scalar.ph350.preheader

scalar.ph350.preheader:                           ; preds = %.preheader.us.us, %middle.block358
  %.0142258.us.us.ph = phi i64 [ 0, %.preheader.us.us ], [ %n.vec354, %middle.block358 ]
  br label %scalar.ph350

_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.preheader, %bb.av
  %.0148260.us = phi i64 [ %i.mq, %bb.av ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.preheader ] ; 2 uses
  %.0149259.us = phi i64 [ %.3152.us, %bb.av ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us.preheader ] ; 3 uses
  %i.mg = getelementptr [4 x i8], ptr %i.lo, i64 %.0148260.us
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !3
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.mi ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !92 ; 6 uses
  %.not.us = icmp eq i64 %i.ml, 0
  br i1 %.not.us, label %bb.av, label %.preheader.us

.loopexit393:                                     ; preds = %scalar.ph360, %middle.block373
  %10 = add i64 %i.ml, %.0149259.us
  br label %bb.av

scalar.ph360:                                     ; preds = %scalar.ph360.preheader, %scalar.ph360
  %.0142258.us = phi i64 [ %i.mp, %scalar.ph360 ], [ %.0142258.us.ph, %scalar.ph360.preheader ] ; 3 uses
  %i.mm = add i64 %i.mr, %.0142258.us
  %i.mn = trunc i64 %i.mm to i32
  %i.mo = getelementptr [4 x i8], ptr %i.ms, i64 %.0142258.us
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !3
  %i.mp = add nuw i64 %.0142258.us, 1             ; 2 uses
  %exitcond287.not = icmp eq i64 %i.mp, %i.ml
  br i1 %exitcond287.not, label %.loopexit393, label %scalar.ph360, !llvm.loop !1066

bb.av:                                            ; preds = %.loopexit393, %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us
  %.3152.us = phi i64 [ %.0149259.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us ], [ %10, %.loopexit393 ] ; 2 uses
  %i.mq = add nuw i64 %.0148260.us, 1             ; 2 uses
  %exitcond288.not = icmp eq i64 %i.mq, %i.lj
  br i1 %exitcond288.not, label %._crit_edge262, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us, !llvm.loop !1064

.preheader.us:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit206.us
  %i.mr = load i64, ptr %i.mj, align 8, !tbaa !92 ; 2 uses
  %i.ms = getelementptr [4 x i8], ptr %i.ln, i64 %.0149259.us ; 2 uses
  %min.iters.check361 = icmp ult i64 %i.ml, 8
  br i1 %min.iters.check361, label %scalar.ph360.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %.preheader.us
  %n.vec364 = and i64 %i.ml, -8                   ; 3 uses
  %broadcast.splatinsert365 = insertelement <4 x i64> poison, i64 %i.mr, i64 0
  %broadcast.splat366 = shufflevector <4 x i64> %broadcast.splatinsert365, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op426 = add <4 x i64> splat (i64 4), %broadcast.splat366
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph362
  %index368 = phi i64 [ 0, %vector.ph362 ], [ %index.next371, %vector.body367 ] ; 2 uses
  %vec.ind369 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph362 ], [ %vec.ind.next372, %vector.body367 ] ; 3 uses
  %i.mt = add <4 x i64> %broadcast.splat366, %vec.ind369
  %.reass427 = add <4 x i64> %vec.ind369, %invariant.op426
  %i.mu = trunc <4 x i64> %i.mt to <4 x i32>
  %i.mv = trunc <4 x i64> %.reass427 to <4 x i32>
  %i.mw = getelementptr [4 x i8], ptr %i.ms, i64 %index368 ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 16
  store <4 x i32> %i.mu, ptr %i.mw, align 4, !tbaa !3
  store <4 x i32> %i.mv, ptr %i.mx, align 4, !tbaa !3
  %index.next371 = add nuw i64 %index368, 8       ; 2 uses
  %vec.ind.next372 = add nuw <4 x i64> %vec.ind369, splat (i64 8)
  %i.my = icmp eq i64 %index.next371, %n.vec364
  br i1 %i.my, label %middle.block373, label %vector.body367, !llvm.loop !1067

middle.block373:                                  ; preds = %vector.body367
  %cmp.n374 = icmp eq i64 %i.ml, %n.vec364
  br i1 %cmp.n374, label %.loopexit393, label %scalar.ph360.preheader

scalar.ph360.preheader:                           ; preds = %.preheader.us, %middle.block373
  %.0142258.us.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec364, %middle.block373 ]
  br label %scalar.ph360

._crit_edge262:                                   ; preds = %bb.ax, %bb.av, %bb.au, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit204.thread
  %.0149.lcssa = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit204.thread ], [ %.3152.us, %bb.av ], [ %.3152.us.us, %bb.au ], [ %.3152, %bb.ax ] ; 2 uses
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.kg ; 2 uses
  store i64 %.0145267, ptr %i.mz, align 8, !tbaa !270
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i64 %.0149.lcssa, ptr %i.na, align 8, !tbaa !306
  %i.nb = add i64 %.0149.lcssa, %.0145267
  br label %bb.ay

.lr.ph261.split:                                  ; preds = %.lr.ph261, %bb.ax
  %.0148260 = phi i64 [ %i.od, %bb.ax ], [ 0, %.lr.ph261 ] ; 2 uses
  %.0149259 = phi i64 [ %.3152, %bb.ax ], [ 0, %.lr.ph261 ] ; 4 uses
  %i.nc = add i64 %i.lk, %.0148260                ; 2 uses
  br i1 %.not.i205, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit206, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph261.split
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !3
  %i.nf = zext i32 %i.ne to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit206

_ZNK6duckdb15SelectionVector9get_indexEm.exit206: ; preds = %bb.aw, %.lr.ph261.split
  %i.ng = phi i64 [ %i.nf, %bb.aw ], [ %i.nc, %.lr.ph261.split ] ; 3 uses
  %i.nh = lshr i64 %i.ng, 6
  %i.ni = and i64 %i.ng, 63
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.nh
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !92
  %i.nl = shl nuw i64 1, %i.ni
  %i.nm = and i64 %i.nk, %i.nl
  %.not231 = icmp eq i64 %i.nm, 0
  br i1 %.not231, label %bb.ax, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit209.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit209.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit206
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.ng ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load i64, ptr %i.no, align 8, !tbaa !92 ; 6 uses
  %.not = icmp eq i64 %i.np, 0
  br i1 %.not, label %bb.ax, label %.preheader

.preheader:                                       ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit209.thread
  %i.nq = load i64, ptr %i.nn, align 8, !tbaa !92 ; 2 uses
  %i.nr = getelementptr [4 x i8], ptr %i.ln, i64 %.0149259 ; 2 uses
  %min.iters.check377 = icmp ult i64 %i.np, 8
  br i1 %min.iters.check377, label %scalar.ph376.preheader, label %vector.ph378

vector.ph378:                                     ; preds = %.preheader
  %n.vec380 = and i64 %i.np, -8                   ; 3 uses
  %broadcast.splatinsert381 = insertelement <4 x i64> poison, i64 %i.nq, i64 0
  %broadcast.splat382 = shufflevector <4 x i64> %broadcast.splatinsert381, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat382
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph378
  %index384 = phi i64 [ 0, %vector.ph378 ], [ %index.next387, %vector.body383 ] ; 2 uses
  %vec.ind385 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph378 ], [ %vec.ind.next388, %vector.body383 ] ; 3 uses
  %i.ns = add <4 x i64> %broadcast.splat382, %vec.ind385
  %.reass = add <4 x i64> %vec.ind385, %invariant.op
  %i.nt = trunc <4 x i64> %i.ns to <4 x i32>
  %i.nu = trunc <4 x i64> %.reass to <4 x i32>
  %i.nv = getelementptr [4 x i8], ptr %i.nr, i64 %index384 ; 2 uses
  %i.nw = getelementptr i8, ptr %i.nv, i64 16
  store <4 x i32> %i.nt, ptr %i.nv, align 4, !tbaa !3
  store <4 x i32> %i.nu, ptr %i.nw, align 4, !tbaa !3
  %index.next387 = add nuw i64 %index384, 8       ; 2 uses
  %vec.ind.next388 = add nuw <4 x i64> %vec.ind385, splat (i64 8)
  %i.nx = icmp eq i64 %index.next387, %n.vec380
  br i1 %i.nx, label %middle.block389, label %vector.body383, !llvm.loop !1068

middle.block389:                                  ; preds = %vector.body383
  %cmp.n390 = icmp eq i64 %i.np, %n.vec380
  br i1 %cmp.n390, label %.loopexit394, label %scalar.ph376.preheader

scalar.ph376.preheader:                           ; preds = %.preheader, %middle.block389
  %.0142258.ph = phi i64 [ 0, %.preheader ], [ %n.vec380, %middle.block389 ]
  br label %scalar.ph376

.loopexit394:                                     ; preds = %scalar.ph376, %middle.block389
  %i.ny = add i64 %i.np, %.0149259
  br label %bb.ax

scalar.ph376:                                     ; preds = %scalar.ph376.preheader, %scalar.ph376
  %.0142258 = phi i64 [ %i.oc, %scalar.ph376 ], [ %.0142258.ph, %scalar.ph376.preheader ] ; 3 uses
  %i.nz = add i64 %i.nq, %.0142258
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = getelementptr [4 x i8], ptr %i.nr, i64 %.0142258
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !3
  %i.oc = add nuw i64 %.0142258, 1                ; 2 uses
  %exitcond285.not = icmp eq i64 %i.oc, %i.np
  br i1 %exitcond285.not, label %.loopexit394, label %scalar.ph376, !llvm.loop !1069

bb.ax:                                            ; preds = %.loopexit394, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit209.thread, %_ZNK6duckdb15SelectionVector9get_indexEm.exit206
  %.3152 = phi i64 [ %.0149259, %_ZNK6duckdb15SelectionVector9get_indexEm.exit206 ], [ %i.ny, %.loopexit394 ], [ %.0149259, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit209.thread ] ; 2 uses
  %i.od = add nuw i64 %.0148260, 1                ; 2 uses
  %exitcond286.not = icmp eq i64 %i.od, %i.lj
  br i1 %exitcond286.not, label %._crit_edge262, label %.lr.ph261.split, !llvm.loop !1064

bb.ay:                                            ; preds = %bb.at, %._crit_edge262
  %.1146 = phi i64 [ %i.nb, %._crit_edge262 ], [ %.0145267, %bb.at ]
  %i.oe = add nuw i64 %.0147266, 1                ; 2 uses
  %exitcond291.not = icmp eq i64 %i.oe, %4
  br i1 %exitcond291.not, label %._crit_edge269, label %bb.aq, !llvm.loop !1070

bb.az:                                            ; preds = %._crit_edge269
  %i.of = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.bb unwind label %bb.cg

bb.ba:                                            ; preds = %._crit_edge269
  %i.og = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.bb unwind label %bb.cg

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.oh = phi ptr [ %i.of, %bb.az ], [ %i.og, %bb.ba ] ; 2 uses
  invoke fastcc void @_ZN6duckdbL19ApplySliceRecursiveERKNS_6VectorERNS_21TupleDataVectorFormatERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.oh, ptr noundef nonnull align 8 dereferenceable(152) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.iy)
          to label %bb.bc unwind label %bb.cg

bb.bc:                                            ; preds = %bb.bb
  %i.oi = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.bd unwind label %bb.ch

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.oi, ptr %i.jm, align 8, !tbaa !693
  %i.oj = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.jr, ptr %i.oj, align 8, !tbaa !690
  %i.ok = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.ol = load ptr, ptr %i.js, align 8, !tbaa !894
  store ptr %i.ol, ptr %i.ok, align 8, !tbaa !894
  %i.om = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.on = getelementptr inbounds nuw i8, ptr %i.jm, i64 32872
  %i.oo = getelementptr inbounds nuw i8, ptr %i.jm, i64 32880
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !45 ; 2 uses
  %i.oq = load <2 x ptr>, ptr %i.on, align 8, !tbaa !49
  %.not.i.i.i.i.i.i210 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i.i.i210, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 3 uses
  %i.os = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i211 = icmp eq i8 %i.os, 0
  br i1 %.not.i.i.i.i.i.i.i211, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ot = load i32, ptr %i.or, align 4, !tbaa !3
  %i.ou = add nsw i32 %i.ot, 1
  store i32 %i.ou, ptr %i.or, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.bg:                                            ; preds = %bb.be
  %i.ov = atomicrmw volatile add ptr %i.or, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.bd
  %i.ow = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !45 ; 8 uses
  store <2 x ptr> %i.oq, ptr %i.om, align 8, !tbaa !49
  %.not.i.i.i.i.i212 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i.i.i.i212, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.bh

end_hunk_0
