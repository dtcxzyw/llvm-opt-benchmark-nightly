inline.NumInlined: 586
inline.NumDeleted: 228
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %23, align 8, !tbaa !33
  %i.uz = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.cs unwind label %bb.cv     ; 0 uses

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ux, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.uw, align 8, !tbaa !119
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %23, align 8, !tbaa !33
  %i.va = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ct unwind label %bb.cv     ; 0 uses

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ux, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.uw, align 8, !tbaa !119
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %23, align 8, !tbaa !33
  %i.vb = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.cu unwind label %bb.cv     ; 0 uses

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  %i.vc = load ptr, ptr %7, align 8, !tbaa !158   ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 12
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !39
  %.not591 = icmp eq i32 %i.ve, 1
  br i1 %.not591, label %bb.cw, label %bb.cx

bb.cv:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %i.vf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %.body

bb.cw:                                            ; preds = %bb.cu
  %i.vg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.vh = load i8, ptr %i.vg, align 8, !tbaa !159, !range !48, !noundef !49
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vc, i64 44
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !39
  %.not592 = icmp eq i32 %i.vj, 0
  br i1 %.not592, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cu
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.0556 = phi i8 [ 0, %bb.cx ], [ %i.vh, %bb.cw ]
  %i.vk = load i32, ptr %i.sh, align 4, !tbaa !39 ; 2 uses
  %i.vl = icmp sgt i32 %i.vk, 0
  br i1 %i.vl, label %.lr.ph1649, label %._crit_edge1650

.lr.ph1649:                                       ; preds = %bb.cy
  %i.vm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.vn = trunc nuw i8 %.0556 to i1
  %i.vo = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.vp = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.vq = getelementptr inbounds nuw i8, ptr %18, i64 28
  %i.vr = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vc, i64 68
  %i.vt = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %bb.cz

bb.cz:                                            ; preds = %.lr.ph1649, %bb.dn
  %i.vu = phi i32 [ %i.vk, %.lr.ph1649 ], [ %i.xp, %bb.dn ] ; 2 uses
  %indvars.iv1961 = phi i64 [ 0, %.lr.ph1649 ], [ %indvars.iv.next1962, %bb.dn ] ; 3 uses
  %i.vv = load ptr, ptr %i.vm, align 8, !tbaa !42
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %indvars.iv1961
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !43 ; 6 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 60
  %i.vz = load i8, ptr %i.vy, align 4, !tbaa !125, !range !48, !noundef !49
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %bb.da, label %bb.dn

bb.da:                                            ; preds = %bb.cz
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vx, i64 63
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !160, !range !48, !noundef !49
  %i.wd = trunc nuw i8 %i.wc to i1
  %i.we = getelementptr inbounds nuw i8, ptr %i.vx, i64 62
  %i.wf = load i8, ptr %i.we, align 2, !range !48
  %i.wg = trunc nuw i8 %i.wf to i1
  %or.cond.i = select i1 %i.wd, i1 true, i1 %i.wg
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vx, i64 32
  %i.wi = load i64, ptr %i.wh, align 8            ; 2 uses
  %i.wj = icmp eq i64 %i.wi, 0
  %.not1087 = select i1 %or.cond.i, i1 true, i1 %i.wj
  br i1 %.not1087, label %bb.dn, label %bb.db

bb.db:                                            ; preds = %bb.da
  br i1 %i.vn, label %bb.dc, label %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit

bb.dc:                                            ; preds = %bb.db
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vx, i64 56
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !161 ; 2 uses
  %i.wm = and i32 %i.wl, 32768
  %.not.i = icmp eq i32 %i.wm, 0
  br i1 %.not.i, label %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.wn = and i32 %i.wl, 4784128
  %.not23.i = icmp ne i32 %i.wn, 0
  %i.wo = icmp ugt i64 %i.wi, 2047
  %or.cond.i689 = select i1 %.not23.i, i1 %i.wo, i1 false
  br i1 %or.cond.i689, label %bb.de, label %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  store i32 -1, ptr %i.vo, align 8, !tbaa !162
  store i64 0, ptr %i.vp, align 8
  %i.wp = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc unwind label %bb.dm    ; 2 uses

.noexc:                                           ; preds = %bb.de
  store ptr %i.wp, ptr %i.vr, align 8, !tbaa !165
  store i8 0, ptr %i.wp, align 1, !tbaa !16
  store i32 4, ptr %i.vq, align 4, !tbaa !166
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO7CInFileE, i64 16), ptr %18, align 8, !tbaa !33
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vx, i64 40
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !103
  %i.ws = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile4OpenEPKwb(ptr noundef nonnull align 8 dereferenceable(1084) %18, ptr noundef %i.wr, i1 noundef zeroext false)
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %.noexc
  br i1 %i.ws, label %bb.dg, label %.thread.sink.split.i

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.wt = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile4ReadEPvjRj(ptr noundef nonnull align 8 dereferenceable(1084) %18, ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.dh unwind label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.wt, label %.preheader.i690, label %.thread.sink.split.sink.split.i

.preheader.i690:                                  ; preds = %bb.dh
  %i.wu = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %.not2533.not.i = icmp eq i32 %i.wu, 0
  br i1 %.not2533.not.i, label %.thread.sink.split.sink.split.i, label %.lr.ph.preheader.i691

.lr.ph.preheader.i691:                            ; preds = %.preheader.i690
  %wide.trip.count.i692 = zext i32 %i.wu to i64
  br label %.lr.ph.i693

bb.di:                                            ; preds = %.lr.ph.i693
  %indvars.iv.next.i695 = add nuw nsw i64 %indvars.iv.i694, 1 ; 2 uses
  %exitcond.not.i696 = icmp eq i64 %indvars.iv.next.i695, %wide.trip.count.i692
  br i1 %exitcond.not.i696, label %.thread.sink.split.sink.split.i, label %.lr.ph.i693, !llvm.loop !167

bb.dj:                                            ; preds = %.noexc
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dg
  %i.ww = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.dl

.lr.ph.i693:                                      ; preds = %bb.di, %.lr.ph.preheader.i691
  %indvars.iv.i694 = phi i64 [ 0, %.lr.ph.preheader.i691 ], [ %indvars.iv.next.i695, %bb.di ] ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i694
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !16
  %i.wz = icmp eq i8 %i.wy, 0
  br i1 %i.wz, label %.thread.sink.split.sink.split.i, label %bb.di

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn.i = phi { ptr, i32 } [ %i.ww, %bb.dk ], [ %i.wv, %bb.dj ]
  call void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(1084) %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %.body

.thread.sink.split.sink.split.i:                  ; preds = %.lr.ph.i693, %bb.di, %.preheader.i690, %bb.dh
  %.7.ph.ph.i = phi i64 [ 0, %bb.dh ], [ 0, %.preheader.i690 ], [ 0, %bb.di ], [ 1, %.lr.ph.i693 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %.thread.sink.split.sink.split.i, %bb.df
  %.7.ph.i = phi i64 [ 0, %bb.df ], [ %.7.ph.ph.i, %.thread.sink.split.sink.split.i ]
  call void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(1084) %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit

bb.dm:                                            ; preds = %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit, %bb.de
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit: ; preds = %bb.dc, %bb.dd, %.thread.sink.split.i, %bb.db
  %.0557 = phi i64 [ 0, %bb.db ], [ 0, %bb.dd ], [ 0, %bb.dc ], [ %.7.ph.i, %.thread.sink.split.i ]
  %i.xb = load i8, ptr %i.vs, align 4, !tbaa !168, !range !48, !noundef !49
  %i.xc = shl nuw nsw i8 %i.xb, 1
  %i.xd = zext nneg i8 %i.xc to i64
  %45 = or i64 %.0557, %i.xd
  %46 = load ptr, ptr %i.vt, align 8, !tbaa !42
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %46, i64 %45
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !43 ; 3 uses
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.xf)
          to label %_ZN13CRecordVectorIjE3AddEj.exit unwind label %bb.dm

_ZN13CRecordVectorIjE3AddEj.exit:                 ; preds = %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !42
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 12 ; 3 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !39
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.xk
  %i.xm = trunc nuw nsw i64 %indvars.iv1961 to i32
  store i32 %i.xm, ptr %i.xl, align 4, !tbaa !4
  %i.xn = load i32, ptr %i.xi, align 4, !tbaa !39
  %i.xo = add nsw i32 %i.xn, 1
  store i32 %i.xo, ptr %i.xi, align 4, !tbaa !39
  %.pre2018 = load i32, ptr %i.sh, align 4, !tbaa !39
  br label %bb.dn

bb.dn:                                            ; preds = %_ZN13CRecordVectorIjE3AddEj.exit, %bb.cz, %bb.da
  %i.xp = phi i32 [ %.pre2018, %_ZN13CRecordVectorIjE3AddEj.exit ], [ %i.vu, %bb.cz ], [ %i.vu, %bb.da ] ; 2 uses
  %indvars.iv.next1962 = add nuw nsw i64 %indvars.iv1961, 1 ; 2 uses
  %i.xq = sext i32 %i.xp to i64
  %i.xr = icmp slt i64 %indvars.iv.next1962, %i.xq
  br i1 %i.xr, label %bb.cz, label %._crit_edge1650, !llvm.loop !172

._crit_edge1650:                                  ; preds = %bb.dn, %bb.cy
  br i1 %.3523, label %bb.do, label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.do:                                            ; preds = %._crit_edge1650
  %i.xs = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.dp unwind label %bb.dx     ; 10 uses

bb.dp:                                            ; preds = %bb.do
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8 ; 2 uses
  store i32 0, ptr %i.xt, align 4, !tbaa !173
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE, i64 16), ptr %i.xs, align 8, !tbaa !33
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xu, i8 0, i64 16, i1 false)
  %i.xv = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %.noexc700 unwind label %bb.dy ; 2 uses

.noexc700:                                        ; preds = %bb.dp
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xs, i64 28 ; 3 uses
  store ptr %i.xv, ptr %i.xu, align 8, !tbaa !103
  store i32 0, ptr %i.xv, align 4, !tbaa !12
  store i32 4, ptr %i.xw, align 4, !tbaa !174
  %i.xx = getelementptr inbounds nuw i8, ptr %21, i64 288 ; 2 uses
  store i32 1, ptr %i.xt, align 8, !tbaa !173
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !96 ; 3 uses
  %.not6.i = icmp eq ptr %i.xy, null
  br i1 %.not6.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %.noexc700
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !33
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %i.yb = load ptr, ptr %i.ya, align 8
  %i.yc = invoke noundef i32 %i.yb(ptr noundef nonnull align 8 dereferenceable(8) %i.xy)
          to label %bb.dr unwind label %bb.dx, !inline_history !175 ; 0 uses

bb.dr:                                            ; preds = %.noexc700, %bb.dq
  store ptr %i.xs, ptr %i.xx, align 8, !tbaa !96
  %i.yd = load ptr, ptr %7, align 8, !tbaa !158   ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 68
  %i.yf = load i8, ptr %i.ye, align 4, !tbaa !168, !range !48, !noundef !49
  %i.yg = trunc nuw i8 %i.yf to i1
  br i1 %i.yg, label %bb.ds, label %bb.dz

bb.ds:                                            ; preds = %bb.dr
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yd, i64 72 ; 2 uses
  %i.yi = icmp eq ptr %i.yh, %i.xu
  br i1 %i.yi, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xs, i64 24 ; 3 uses
  store i32 0, ptr %i.yj, align 8, !tbaa !8
  %i.yk = load ptr, ptr %i.xu, align 8, !tbaa !103 ; 3 uses
  store i32 0, ptr %i.yk, align 4, !tbaa !12
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yd, i64 80 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 8, !tbaa !8  ; 2 uses
  %i.yn = add nsw i32 %i.ym, 1                    ; 3 uses
  %i.yo = load i32, ptr %i.xw, align 4, !tbaa !174 ; 2 uses
  %i.yp = icmp eq i32 %i.yn, %i.yo
  br i1 %i.yp, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.yq = zext nneg i32 %i.yn to i64
  %i.yr = icmp slt i32 %i.ym, -1
  %i.ys = shl nuw nsw i64 %i.yq, 2
  %i.yt = select i1 %i.yr, i64 -1, i64 %i.ys
  %i.yu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yt) #18
          to label %.noexc703 unwind label %bb.dx ; 3 uses

.noexc703:                                        ; preds = %bb.du
  %i.yv = icmp sgt i32 %i.yo, 0
  br i1 %i.yv, label %._crit_edge.thread.i.i, label %bb.dv

._crit_edge.thread.i.i:                           ; preds = %.noexc703
  call void @_ZdaPv(ptr noundef nonnull %i.yk) #19
  %.pre.i702 = load i32, ptr %i.yj, align 8, !tbaa !8
  %i.yw = sext i32 %.pre.i702 to i64
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge.thread.i.i, %.noexc703
  %i.yx = phi i64 [ %i.yw, %._crit_edge.thread.i.i ], [ 0, %.noexc703 ]
  store ptr %i.yu, ptr %i.xu, align 8, !tbaa !103
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.yx
  store i32 0, ptr %i.yy, align 4, !tbaa !12
  store i32 %i.yn, ptr %i.xw, align 4, !tbaa !174
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.dv, %bb.dt
  %i.yz = phi ptr [ %i.yk, %bb.dt ], [ %i.yu, %bb.dv ]
  %i.za = load ptr, ptr %i.yh, align 8, !tbaa !103
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.za, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.zb, %bb.dw ] ; 2 uses
  %.0.i.i = phi ptr [ %i.yz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.zd, %bb.dw ] ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.zc = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.zc, ptr %.0.i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.zc, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.dw, !llvm.loop !176

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.dw
  %i.ze = load i32, ptr %i.yl, align 8, !tbaa !8
  store i32 %i.ze, ptr %i.yj, align 8, !tbaa !8
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.dx:                                            ; preds = %bb.du, %bb.dq, %bb.do
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dy:                                            ; preds = %bb.dp
  %i.zg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.xs, i64 noundef 32) #19
  br label %.body

bb.dz:                                            ; preds = %bb.dr
  %.not593 = icmp eq ptr %8, null
  br i1 %.not593, label %.loopexit1109, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  store ptr null, ptr %24, align 8, !tbaa !177
  %i.zh = load ptr, ptr %8, align 8, !tbaa !33
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 40
  %i.zj = load ptr, ptr %i.zi, align 8
  %i.zk = invoke noundef i32 %i.zj(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %24)
          to label %bb.eb unwind label %bb.ec     ; 2 uses

bb.eb:                                            ; preds = %bb.ea
  %.not594 = icmp eq i32 %i.zk, 0
  %i.zl = load ptr, ptr %24, align 8, !tbaa !177  ; 2 uses
  br i1 %.not594, label %bb.ed, label %.critedge

bb.ec:                                            ; preds = %bb.ea
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ed:                                            ; preds = %bb.eb
  %i.zn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEaSEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.xu, ptr noundef %i.zl)
          to label %bb.ee unwind label %bb.eg     ; 0 uses

bb.ee:                                            ; preds = %bb.ed
  %i.zo = load ptr, ptr %24, align 8, !tbaa !177
  invoke void @SysFreeString(ptr noundef %i.zo)
          to label %_ZN10CMyComBSTRD2Ev.exit unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zp = landingpad { ptr, i32 }
          catch ptr null
  %i.zq = extractvalue { ptr, i32 } %i.zp, 0
  call void @__clang_call_terminate(ptr %i.zq) #20
  unreachable

_ZN10CMyComBSTRD2Ev.exit:                         ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.eg:                                            ; preds = %bb.ed
  %i.zr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ec
  %.pn = phi { ptr, i32 } [ %i.zr, %bb.eg ], [ %i.zm, %bb.ec ]
  %i.zs = load ptr, ptr %24, align 8, !tbaa !177
  invoke void @SysFreeString(ptr noundef %i.zs)
          to label %_ZN10CMyComBSTRD2Ev.exit704 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.zt = landingpad { ptr, i32 }
          catch ptr null
  %i.zu = extractvalue { ptr, i32 } %i.zt, 0
end_hunk_0
