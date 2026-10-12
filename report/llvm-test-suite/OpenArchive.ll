Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/OpenArchive?download=true
inline.NumInlined: 383
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback:bb.a
  br i1 %i.xq, label %middle.block914, label %vector.body909, !llvm.loop !124

middle.block914:                                  ; preds = %vector.body909
  %cmp.n915 = icmp eq i64 %n.vec908, %wide.trip.count.i.i485
  br i1 %cmp.n915, label %._crit_edge.thread.i.i482, label %scalar.ph905.preheader

scalar.ph905.preheader:                           ; preds = %.lr.ph.i.i484, %middle.block914
  %indvars.iv.i.i486.ph = phi i64 [ 0, %.lr.ph.i.i484 ], [ %n.vec908, %middle.block914 ] ; 3 uses
  %xtraiter1027 = and i64 %wide.trip.count.i.i485, 3 ; 2 uses
  %lcmp.mod1028.not = icmp eq i64 %xtraiter1027, 0
  br i1 %lcmp.mod1028.not, label %scalar.ph905.prol.loopexit, label %scalar.ph905.prol

scalar.ph905.prol:                                ; preds = %scalar.ph905.preheader, %scalar.ph905.prol
  %indvars.iv.i.i486.prol = phi i64 [ %indvars.iv.next.i.i487.prol, %scalar.ph905.prol ], [ %indvars.iv.i.i486.ph, %scalar.ph905.preheader ] ; 3 uses
  %prol.iter1029 = phi i64 [ %prol.iter1029.next, %scalar.ph905.prol ], [ 0, %scalar.ph905.preheader ]
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i480, i64 %indvars.iv.i.i486.prol
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !28
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %indvars.iv.i.i486.prol
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !28
  %indvars.iv.next.i.i487.prol = add nuw nsw i64 %indvars.iv.i.i486.prol, 1 ; 2 uses
  %prol.iter1029.next = add i64 %prol.iter1029, 1 ; 2 uses
  %prol.iter1029.cmp.not = icmp eq i64 %prol.iter1029.next, %xtraiter1027
  br i1 %prol.iter1029.cmp.not, label %scalar.ph905.prol.loopexit, label %scalar.ph905.prol, !llvm.loop !125

scalar.ph905.prol.loopexit:                       ; preds = %scalar.ph905.prol, %scalar.ph905.preheader
  %indvars.iv.i.i486.unr = phi i64 [ %indvars.iv.i.i486.ph, %scalar.ph905.preheader ], [ %indvars.iv.next.i.i487.prol, %scalar.ph905.prol ]
  %i.xu = sub nsw i64 %indvars.iv.i.i486.ph, %wide.trip.count.i.i485
  %i.xv = icmp ugt i64 %i.xu, -4
  br i1 %i.xv, label %._crit_edge.thread.i.i482, label %scalar.ph905

._crit_edge.i.i481:                               ; preds = %.preheader.i.i479
  %i.xw = icmp eq ptr %.pre.i.i480, null
  br i1 %i.xw, label %bb.dv, label %._crit_edge.thread.i.i482

scalar.ph905:                                     ; preds = %scalar.ph905.prol.loopexit, %scalar.ph905
  %indvars.iv.i.i486 = phi i64 [ %indvars.iv.next.i.i487.3, %scalar.ph905 ], [ %indvars.iv.i.i486.unr, %scalar.ph905.prol.loopexit ] ; 6 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i480, i64 %indvars.iv.i.i486
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !28
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %indvars.iv.i.i486
  store i32 %i.xy, ptr %i.xz, align 4, !tbaa !28
  %indvars.iv.next.i.i487 = add nuw nsw i64 %indvars.iv.i.i486, 1 ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i480, i64 %indvars.iv.next.i.i487
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !28
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %indvars.iv.next.i.i487
  store i32 %i.yb, ptr %i.yc, align 4, !tbaa !28
  %indvars.iv.next.i.i487.1 = add nuw nsw i64 %indvars.iv.i.i486, 2 ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i480, i64 %indvars.iv.next.i.i487.1
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !28
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %indvars.iv.next.i.i487.1
  store i32 %i.ye, ptr %i.yf, align 4, !tbaa !28
  %indvars.iv.next.i.i487.2 = add nuw nsw i64 %indvars.iv.i.i486, 3 ; 2 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i480, i64 %indvars.iv.next.i.i487.2
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !28
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %indvars.iv.next.i.i487.2
  store i32 %i.yh, ptr %i.yi, align 4, !tbaa !28
  %indvars.iv.next.i.i487.3 = add nuw nsw i64 %indvars.iv.i.i486, 4 ; 2 uses
  %exitcond.not.i.i488.3 = icmp eq i64 %indvars.iv.next.i.i487.3, %wide.trip.count.i.i485
  br i1 %exitcond.not.i.i488.3, label %._crit_edge.thread.i.i482, label %scalar.ph905, !llvm.loop !126

._crit_edge.thread.i.i482:                        ; preds = %scalar.ph905.prol.loopexit, %scalar.ph905, %middle.block914, %._crit_edge.i.i481
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i480) #20
  %.pre.i483 = load i32, ptr %i.pp, align 8, !tbaa !25
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge.thread.i.i482, %._crit_edge.i.i481, %.noexc489
  %i.yj = phi i32 [ %.pre.i483, %._crit_edge.thread.i.i482 ], [ %.pre7.i474, %._crit_edge.i.i481 ], [ %.pre7.i474, %.noexc489 ]
  store ptr %i.xg, ptr %i.po, align 8, !tbaa !26
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.yk
  store i32 0, ptr %i.yl, align 4, !tbaa !28
  store i32 %i.wz, ptr %i.pr, align 4, !tbaa !29
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i475

_ZN11CStringBaseIwE11SetCapacityEi.exit.i475:     ; preds = %bb.dv, %bb.dt
  %i.ym = phi ptr [ %i.wx, %bb.dt ], [ %i.xg, %bb.dv ]
  %i.yn = load ptr, ptr %15, align 8, !tbaa !26   ; 3 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i475
  %.04.i.i476 = phi ptr [ %i.ym, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i475 ], [ %i.yq, %bb.dw ] ; 2 uses
  %.0.i.i477 = phi ptr [ %i.yn, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i475 ], [ %i.yo, %bb.dw ] ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.0.i.i477, i64 4
  %i.yp = load i32, ptr %.0.i.i477, align 4, !tbaa !28 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.04.i.i476, i64 4
  store i32 %i.yp, ptr %.04.i.i476, align 4, !tbaa !28
  %.not.i.i478 = icmp eq i32 %i.yp, 0
  br i1 %.not.i.i478, label %bb.dx, label %bb.dw, !llvm.loop !0

bb.dx:                                            ; preds = %bb.dw
  %i.yr = load i32, ptr %i.pw, align 8, !tbaa !25
  store i32 %i.yr, ptr %i.pp, align 8, !tbaa !25
  %i.ys = icmp eq ptr %i.yn, null
  br i1 %i.ys, label %_ZN11CStringBaseIwED2Ev.exit491, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @_ZdaPv(ptr noundef nonnull %i.yn) #20
  br label %_ZN11CStringBaseIwED2Ev.exit491

_ZN11CStringBaseIwED2Ev.exit491:                  ; preds = %bb.dx, %bb.dy
  %i.yt = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.yu = icmp eq ptr %i.yt, null
  br i1 %i.yu, label %_ZN11CStringBaseIwED2Ev.exit492, label %bb.dz

bb.dz:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit491
  call void @_ZdaPv(ptr noundef nonnull %i.yt) #20
  br label %_ZN11CStringBaseIwED2Ev.exit492

_ZN11CStringBaseIwED2Ev.exit492:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit491, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.yv = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.yw = icmp eq ptr %i.yv, null
  br i1 %i.yw, label %_ZN11CStringBaseIwED2Ev.exit493, label %bb.ea

bb.ea:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit492
  call void @_ZdaPv(ptr noundef nonnull %i.yv) #20
  br label %_ZN11CStringBaseIwED2Ev.exit493

_ZN11CStringBaseIwED2Ev.exit493:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit492, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.thread607

bb.eb:                                            ; preds = %bb.ds
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit496

bb.ec:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i440
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit495

bb.ed:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i458
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit494

bb.ee:                                            ; preds = %bb.du
  %i.za = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zb = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.zc = icmp eq ptr %i.zb, null
  br i1 %i.zc, label %_ZN11CStringBaseIwED2Ev.exit494, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZdaPv(ptr noundef nonnull %i.zb) #20
  br label %_ZN11CStringBaseIwED2Ev.exit494

_ZN11CStringBaseIwED2Ev.exit494:                  ; preds = %bb.ef, %bb.ee, %bb.ed
  %.pn306 = phi { ptr, i32 } [ %i.yz, %bb.ed ], [ %i.za, %bb.ee ], [ %i.za, %bb.ef ] ; 2 uses
  %i.zd = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.ze = icmp eq ptr %i.zd, null
  br i1 %i.ze, label %_ZN11CStringBaseIwED2Ev.exit495, label %bb.eg

bb.eg:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit494
  call void @_ZdaPv(ptr noundef nonnull %i.zd) #20
  br label %_ZN11CStringBaseIwED2Ev.exit495

_ZN11CStringBaseIwED2Ev.exit495:                  ; preds = %bb.eg, %_ZN11CStringBaseIwED2Ev.exit494, %bb.ec
  %.pn306.pn = phi { ptr, i32 } [ %i.yy, %bb.ec ], [ %.pn306, %_ZN11CStringBaseIwED2Ev.exit494 ], [ %.pn306, %bb.eg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.zf = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.zg = icmp eq ptr %i.zf, null
  br i1 %i.zg, label %_ZN11CStringBaseIwED2Ev.exit496, label %bb.eh

bb.eh:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit495
  call void @_ZdaPv(ptr noundef nonnull %i.zf) #20
  br label %_ZN11CStringBaseIwED2Ev.exit496

_ZN11CStringBaseIwED2Ev.exit496:                  ; preds = %bb.eh, %_ZN11CStringBaseIwED2Ev.exit495, %bb.eb
  %.pn306.pn.pn = phi { ptr, i32 } [ %i.yx, %bb.eb ], [ %.pn306.pn, %_ZN11CStringBaseIwED2Ev.exit495 ], [ %.pn306.pn, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.thread635

bb.ei:                                            ; preds = %bb.dr
  %i.zh = getelementptr inbounds nuw i8, ptr %i.un, i64 56 ; 2 uses
  %i.zi = icmp sgt i32 %i.up, 0
  br i1 %i.zi, label %.lr.ph.i497, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit502

.lr.ph.i497:                                      ; preds = %bb.ei, %bb.ej
  %indvars.iv.i498 = phi i64 [ %indvars.iv.next.i499, %bb.ej ], [ 0, %bb.ei ] ; 3 uses
  %i.zj = load ptr, ptr %i.zh, align 8, !tbaa !41
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %indvars.iv.i498
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !42
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !26
  %i.zn = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %.sroa.0553.0, ptr noundef %i.zm)
          to label %.noexc501 unwind label %bb.ek

.noexc501:                                        ; preds = %.lr.ph.i497
  %i.zo = icmp eq i32 %i.zn, 0
  br i1 %i.zo, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit502, label %bb.ej

bb.ej:                                            ; preds = %.noexc501
  %indvars.iv.next.i499 = add nuw nsw i64 %indvars.iv.i498, 1 ; 2 uses
  %i.zp = load i32, ptr %i.uo, align 4, !tbaa !40
  %i.zq = sext i32 %i.zp to i64
  %i.zr = icmp slt i64 %indvars.iv.next.i499, %i.zq
  br i1 %i.zr, label %.lr.ph.i497, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit502, !llvm.loop !95

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit502: ; preds = %.noexc501, %bb.ej, %bb.ei
  %spec.store.select = phi i64 [ 0, %bb.ei ], [ %indvars.iv.i498, %.noexc501 ], [ 0, %bb.ej ]
  %i.zs = load ptr, ptr %i.zh, align 8, !tbaa !41
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %spec.store.select
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  invoke void @_Z15GetDefaultName2RK11CStringBaseIwES2_S2_(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.zu, ptr noundef nonnull align 8 dereferenceable(16) %i.zv)
          to label %bb.el unwind label %bb.er

bb.ek:                                            ; preds = %.lr.ph.i497
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %.thread635

bb.el:                                            ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit502
  store i32 0, ptr %i.pp, align 8, !tbaa !25
  %i.zx = load ptr, ptr %i.po, align 8, !tbaa !26 ; 2 uses
  store i32 0, ptr %i.zx, align 4, !tbaa !28
  %i.zy = load i32, ptr %i.pq, align 8, !tbaa !25 ; 2 uses
  %i.zz = add nsw i32 %i.zy, 1                    ; 3 uses
  %i.aaa = load i32, ptr %i.pr, align 4, !tbaa !29
  %i.aab = icmp eq i32 %i.zz, %i.aaa
  br i1 %i.aab, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i504, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aac = zext nneg i32 %i.zz to i64
  %i.aad = icmp slt i32 %i.zy, -1
  %i.aae = shl nuw nsw i64 %i.aac, 2
  %i.aaf = select i1 %i.aad, i64 -1, i64 %i.aae
  %i.aag = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aaf) #19
          to label %.noexc518 unwind label %bb.es ; 10 uses

.noexc518:                                        ; preds = %bb.em
  %i.aah = ptrtoaddr ptr %i.aag to i64
  %i.aai = load i32, ptr %i.pr, align 4, !tbaa !29
  %i.aaj = icmp sgt i32 %i.aai, 0
  %.pre7.i503 = load i32, ptr %i.pp, align 8, !tbaa !25 ; 5 uses
  br i1 %i.aaj, label %.preheader.i.i508, label %bb.en

.preheader.i.i508:                                ; preds = %.noexc518
  %i.aak = icmp sgt i32 %.pre7.i503, 0
  %.pre.i.i509 = load ptr, ptr %i.po, align 8, !tbaa !26 ; 9 uses
  br i1 %i.aak, label %.lr.ph.i.i513, label %._crit_edge.i.i510

.lr.ph.i.i513:                                    ; preds = %.preheader.i.i508
  %.pre.i.i509948 = ptrtoaddr ptr %.pre.i.i509 to i64
  %wide.trip.count.i.i514 = zext nneg i32 %.pre7.i503 to i64 ; 5 uses
  %min.iters.check951 = icmp ult i32 %.pre7.i503, 8
  %i.aal = sub i64 %.pre.i.i509948, %i.aah
  %diff.check949 = icmp ugt i64 %i.aal, -32
  %or.cond985 = select i1 %min.iters.check951, i1 true, i1 %diff.check949
  br i1 %or.cond985, label %scalar.ph950.preheader, label %vector.ph952

vector.ph952:                                     ; preds = %.lr.ph.i.i513
  %n.vec953 = and i64 %wide.trip.count.i.i514, 2147483640 ; 3 uses
  br label %vector.body954

vector.body954:                                   ; preds = %vector.body954, %vector.ph952
  %index955 = phi i64 [ 0, %vector.ph952 ], [ %index.next958, %vector.body954 ] ; 3 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i509, i64 %index955 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %wide.load956 = load <4 x i32>, ptr %i.aam, align 4, !tbaa !28
  %wide.load957 = load <4 x i32>, ptr %i.aan, align 4, !tbaa !28
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %index955 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  store <4 x i32> %wide.load956, ptr %i.aao, align 4, !tbaa !28
  store <4 x i32> %wide.load957, ptr %i.aap, align 4, !tbaa !28
  %index.next958 = add nuw i64 %index955, 8       ; 2 uses
  %i.aaq = icmp eq i64 %index.next958, %n.vec953
  br i1 %i.aaq, label %middle.block959, label %vector.body954, !llvm.loop !127

middle.block959:                                  ; preds = %vector.body954
  %cmp.n960 = icmp eq i64 %n.vec953, %wide.trip.count.i.i514
  br i1 %cmp.n960, label %._crit_edge.thread.i.i511, label %scalar.ph950.preheader

scalar.ph950.preheader:                           ; preds = %.lr.ph.i.i513, %middle.block959
  %indvars.iv.i.i515.ph = phi i64 [ 0, %.lr.ph.i.i513 ], [ %n.vec953, %middle.block959 ] ; 3 uses
  %xtraiter1018 = and i64 %wide.trip.count.i.i514, 3 ; 2 uses
  %lcmp.mod1019.not = icmp eq i64 %xtraiter1018, 0
  br i1 %lcmp.mod1019.not, label %scalar.ph950.prol.loopexit, label %scalar.ph950.prol

scalar.ph950.prol:                                ; preds = %scalar.ph950.preheader, %scalar.ph950.prol
  %indvars.iv.i.i515.prol = phi i64 [ %indvars.iv.next.i.i516.prol, %scalar.ph950.prol ], [ %indvars.iv.i.i515.ph, %scalar.ph950.preheader ] ; 3 uses
  %prol.iter1020 = phi i64 [ %prol.iter1020.next, %scalar.ph950.prol ], [ 0, %scalar.ph950.preheader ]
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i509, i64 %indvars.iv.i.i515.prol
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !28
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv.i.i515.prol
  store i32 %i.aas, ptr %i.aat, align 4, !tbaa !28
  %indvars.iv.next.i.i516.prol = add nuw nsw i64 %indvars.iv.i.i515.prol, 1 ; 2 uses
  %prol.iter1020.next = add i64 %prol.iter1020, 1 ; 2 uses
  %prol.iter1020.cmp.not = icmp eq i64 %prol.iter1020.next, %xtraiter1018
  br i1 %prol.iter1020.cmp.not, label %scalar.ph950.prol.loopexit, label %scalar.ph950.prol, !llvm.loop !128

scalar.ph950.prol.loopexit:                       ; preds = %scalar.ph950.prol, %scalar.ph950.preheader
  %indvars.iv.i.i515.unr = phi i64 [ %indvars.iv.i.i515.ph, %scalar.ph950.preheader ], [ %indvars.iv.next.i.i516.prol, %scalar.ph950.prol ]
  %i.aau = sub nsw i64 %indvars.iv.i.i515.ph, %wide.trip.count.i.i514
  %i.aav = icmp ugt i64 %i.aau, -4
  br i1 %i.aav, label %._crit_edge.thread.i.i511, label %scalar.ph950

._crit_edge.i.i510:                               ; preds = %.preheader.i.i508
  %i.aaw = icmp eq ptr %.pre.i.i509, null
  br i1 %i.aaw, label %bb.en, label %._crit_edge.thread.i.i511

scalar.ph950:                                     ; preds = %scalar.ph950.prol.loopexit, %scalar.ph950
  %indvars.iv.i.i515 = phi i64 [ %indvars.iv.next.i.i516.3, %scalar.ph950 ], [ %indvars.iv.i.i515.unr, %scalar.ph950.prol.loopexit ] ; 6 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i509, i64 %indvars.iv.i.i515
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !28
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv.i.i515
  store i32 %i.aay, ptr %i.aaz, align 4, !tbaa !28
  %indvars.iv.next.i.i516 = add nuw nsw i64 %indvars.iv.i.i515, 1 ; 2 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i509, i64 %indvars.iv.next.i.i516
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !28
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv.next.i.i516
  store i32 %i.abb, ptr %i.abc, align 4, !tbaa !28
  %indvars.iv.next.i.i516.1 = add nuw nsw i64 %indvars.iv.i.i515, 2 ; 2 uses
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i509, i64 %indvars.iv.next.i.i516.1
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !28
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv.next.i.i516.1
  store i32 %i.abe, ptr %i.abf, align 4, !tbaa !28
  %indvars.iv.next.i.i516.2 = add nuw nsw i64 %indvars.iv.i.i515, 3 ; 2 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i509, i64 %indvars.iv.next.i.i516.2
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !28
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv.next.i.i516.2
  store i32 %i.abh, ptr %i.abi, align 4, !tbaa !28
  %indvars.iv.next.i.i516.3 = add nuw nsw i64 %indvars.iv.i.i515, 4 ; 2 uses
  %exitcond.not.i.i517.3 = icmp eq i64 %indvars.iv.next.i.i516.3, %wide.trip.count.i.i514
  br i1 %exitcond.not.i.i517.3, label %._crit_edge.thread.i.i511, label %scalar.ph950, !llvm.loop !129

._crit_edge.thread.i.i511:                        ; preds = %scalar.ph950.prol.loopexit, %scalar.ph950, %middle.block959, %._crit_edge.i.i510
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i509) #20
  %.pre.i512 = load i32, ptr %i.pp, align 8, !tbaa !25
  br label %bb.en

bb.en:                                            ; preds = %._crit_edge.thread.i.i511, %._crit_edge.i.i510, %.noexc518
  %i.abj = phi i32 [ %.pre.i512, %._crit_edge.thread.i.i511 ], [ %.pre7.i503, %._crit_edge.i.i510 ], [ %.pre7.i503, %.noexc518 ]
  store ptr %i.aag, ptr %i.po, align 8, !tbaa !26
  %i.abk = sext i32 %i.abj to i64
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.aag, i64 %i.abk
  store i32 0, ptr %i.abl, align 4, !tbaa !28
  store i32 %i.zz, ptr %i.pr, align 4, !tbaa !29
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i504

_ZN11CStringBaseIwE11SetCapacityEi.exit.i504:     ; preds = %bb.en, %bb.el
  %i.abm = phi ptr [ %i.zx, %bb.el ], [ %i.aag, %bb.en ]
  %i.abn = load ptr, ptr %18, align 8, !tbaa !26  ; 3 uses
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i504
  %.04.i.i505 = phi ptr [ %i.abm, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i504 ], [ %i.abq, %bb.eo ] ; 2 uses
  %.0.i.i506 = phi ptr [ %i.abn, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i504 ], [ %i.abo, %bb.eo ] ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.0.i.i506, i64 4
  %i.abp = load i32, ptr %.0.i.i506, align 4, !tbaa !28 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.04.i.i505, i64 4
  store i32 %i.abp, ptr %.04.i.i505, align 4, !tbaa !28
  %.not.i.i507 = icmp eq i32 %i.abp, 0
  br i1 %.not.i.i507, label %bb.ep, label %bb.eo, !llvm.loop !0

bb.ep:                                            ; preds = %bb.eo
  %i.abr = load i32, ptr %i.pq, align 8, !tbaa !25
  store i32 %i.abr, ptr %i.pp, align 8, !tbaa !25
  %i.abs = icmp eq ptr %i.abn, null
  br i1 %i.abs, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @_ZdaPv(ptr noundef nonnull %i.abn) #20
  br label %bb.eu

bb.er:                                            ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit502
  %i.abt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit521

bb.es:                                            ; preds = %bb.em
  %i.abu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abv = load ptr, ptr %18, align 8, !tbaa !26  ; 2 uses
  %i.abw = icmp eq ptr %i.abv, null
  br i1 %i.abw, label %_ZN11CStringBaseIwED2Ev.exit521, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @_ZdaPv(ptr noundef nonnull %i.abv) #20
  br label %_ZN11CStringBaseIwED2Ev.exit521

_ZN11CStringBaseIwED2Ev.exit521:                  ; preds = %bb.et, %bb.es, %bb.er
  %.pn303 = phi { ptr, i32 } [ %i.abt, %bb.er ], [ %i.abu, %bb.es ], [ %i.abu, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %.thread635

bb.eu:                                            ; preds = %bb.eq, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %.thread607

.thread607.fold.split:                            ; preds = %bb.df
  br label %.thread607

.thread607:                                       ; preds = %bb.df, %.thread607.fold.split, %bb.eu, %_ZN11CStringBaseIwED2Ev.exit493, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit415
  %.19612 = phi i32 [ 0, %bb.eu ], [ 0, %_ZN11CStringBaseIwED2Ev.exit493 ], [ %.11706, %bb.df ], [ -2147467263, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit415 ], [ %.1, %.thread607.fold.split ] ; 2 uses
  %.16201610 = phi i1 [ false, %bb.eu ], [ false, %_ZN11CStringBaseIwED2Ev.exit493 ], [ true, %bb.df ], [ false, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit415 ], [ false, %.thread607.fold.split ]
  %i.abx = load ptr, ptr %i.ql, align 8, !tbaa !17
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
end_hunk_0
