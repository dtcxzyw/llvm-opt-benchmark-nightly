inline.NumInlined: 461
inline.NumDeleted: 136
begin_hunk_0_@_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2:bb.a
_ZN11CStringBaseIwED2Ev.exit.i.i:                 ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br i1 %i.wf, label %bb.fs, label %bb.fj

bb.fj:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i.i
  %i.wi = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 1417161, ptr %i.wi, align 16, !tbaa !4
  invoke void @__cxa_throw(ptr nonnull %i.wi, ptr nonnull @_ZTIi, ptr null) #24
          to label %bb.ld unwind label %bb.fr

bb.fk:                                            ; preds = %bb.fb
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit329.i.i

bb.fl:                                            ; preds = %bb.fc
  %i.wk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.vs, i64 noundef 160) #21
  br label %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit329.i.i

bb.fm:                                            ; preds = %bb.fd
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit329.i.i

bb.fn:                                            ; preds = %bb.fe
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit256.i.i

bb.fo:                                            ; preds = %bb.ff
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit251.i.i

bb.fp:                                            ; preds = %bb.fg
  %i.wo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wp = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.wq = icmp eq ptr %i.wp, null
  br i1 %i.wq, label %_ZN11CStringBaseIwED2Ev.exit251.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @_ZdaPv(ptr noundef nonnull %i.wp) #21
  br label %_ZN11CStringBaseIwED2Ev.exit251.i.i

_ZN11CStringBaseIwED2Ev.exit251.i.i:              ; preds = %bb.fq, %bb.fp, %bb.fo
  %.pn.i.i = phi { ptr, i32 } [ %i.wn, %bb.fo ], [ %i.wo, %bb.fp ], [ %i.wo, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.fz

bb.fr:                                            ; preds = %bb.fj
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fs:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ws = load i32, ptr %i.b, align 4, !tbaa !4
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0, i32 noundef %i.ws)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit.i.i unwind label %bb.fw

_ZNK11CStringBaseIwE4LeftEi.exit.i.i:             ; preds = %bb.fs
  %i.wt = load ptr, ptr %11, align 8, !tbaa !34
  %i.wu = invoke noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw(ptr noundef %i.wt)
          to label %bb.ft unwind label %bb.fx     ; 0 uses

bb.ft:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit.i.i
  %i.wv = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.ww = icmp eq ptr %i.wv, null
  br i1 %i.ww, label %_ZN11CStringBaseIwED2Ev.exit253.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @_ZdaPv(ptr noundef nonnull %i.wv) #21
  br label %_ZN11CStringBaseIwED2Ev.exit253.i.i

_ZN11CStringBaseIwED2Ev.exit253.i.i:              ; preds = %bb.fu, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.wx = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.wy = icmp eq ptr %i.wx, null
  br i1 %i.wy, label %.thread.i.i, label %bb.fv

bb.fv:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit253.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.wx) #21
  br label %.thread.i.i

bb.fw:                                            ; preds = %bb.fs
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit255.i.i

bb.fx:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit.i.i
  %i.xa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xb = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.xc = icmp eq ptr %i.xb, null
  br i1 %i.xc, label %_ZN11CStringBaseIwED2Ev.exit255.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @_ZdaPv(ptr noundef nonnull %i.xb) #21
  br label %_ZN11CStringBaseIwED2Ev.exit255.i.i

_ZN11CStringBaseIwED2Ev.exit255.i.i:              ; preds = %bb.fy, %bb.fx, %bb.fw
  %.pn194.i.i = phi { ptr, i32 } [ %i.wz, %bb.fw ], [ %i.xa, %bb.fx ], [ %i.xa, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.fz

bb.fz:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit255.i.i, %bb.fr, %_ZN11CStringBaseIwED2Ev.exit251.i.i
  %.pn196.i.i = phi { ptr, i32 } [ %i.wr, %bb.fr ], [ %.pn194.i.i, %_ZN11CStringBaseIwED2Ev.exit255.i.i ], [ %.pn.i.i, %_ZN11CStringBaseIwED2Ev.exit251.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.xd = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.xe = icmp eq ptr %i.xd, null
  br i1 %i.xe, label %_ZN11CStringBaseIwED2Ev.exit256.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_ZdaPv(ptr noundef nonnull %i.xd) #21
  br label %_ZN11CStringBaseIwED2Ev.exit256.i.i

_ZN11CStringBaseIwED2Ev.exit256.i.i:              ; preds = %bb.ga, %bb.fz, %bb.fn
  %.pn196.pn.i.i = phi { ptr, i32 } [ %i.wm, %bb.fn ], [ %.pn196.i.i, %bb.fz ], [ %.pn196.i.i, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit327.i.i

bb.gb:                                            ; preds = %_ZN9CMyComPtrI22IArchiveUpdateCallbackEC2EPS0_.exit.i.i
  %i.xf = load i32, ptr %i.j, align 4, !tbaa !8
  %i.xg = icmp eq i32 %i.xf, 0
  br i1 %i.xg, label %bb.gc, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit324.i.i

.thread.i.i:                                      ; preds = %bb.fv, %_ZN11CStringBaseIwED2Ev.exit253.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.xh = load i32, ptr %i.j, align 4, !tbaa !8
  %i.xi = icmp eq i32 %i.xh, 0
  br i1 %i.xi, label %.thread353.i.i, label %.thread358.i.i

bb.gc:                                            ; preds = %bb.gb
  %i.xj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %bb.gd unwind label %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread388.i.i ; 4 uses

bb.gd:                                            ; preds = %bb.gc
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i32 0, ptr %i.xk, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV17CStdOutFileStream, i64 16), ptr %i.xj, align 8, !tbaa !48
  %i.xl = invoke noundef i32 %i.re(ptr noundef nonnull align 8 dereferenceable(8) %i.xj)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit.i.i unwind label %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread388.i.i, !inline_history !177 ; 0 uses

.thread353.i.i:                                   ; preds = %.thread.i.i
  %i.xm = invoke noalias noundef nonnull dereferenceable(1112) ptr @_Znwm(i64 noundef 1112) #20
          to label %bb.ge unwind label %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread388.i.i ; 14 uses

bb.ge:                                            ; preds = %.thread353.i.i
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  store i32 0, ptr %i.xn, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV14COutFileStream, i64 16), ptr %i.xm, align 8, !tbaa !48
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO9CFileBaseE, i64 16), ptr %i.xo, align 8, !tbaa !48
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  store i32 -1, ptr %i.xp, align 8, !tbaa !50
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xq, i8 0, i64 16, i1 false)
  %i.xr = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20
          to label %bb.gf unwind label %bb.gg     ; 2 uses

bb.gf:                                            ; preds = %bb.ge
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 44
  store ptr %i.xr, ptr %i.xq, align 8, !tbaa !54
  store i8 0, ptr %i.xr, align 1, !tbaa !55
  store i32 4, ptr %i.xs, align 4, !tbaa !56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO8COutFileE, i64 16), ptr %i.xo, align 8, !tbaa !48
  %i.xt = invoke noundef i32 %i.qt(ptr noundef nonnull align 8 dereferenceable(8) %i.xm)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit264.i.i unwind label %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread388.i.i, !inline_history !177 ; 0 uses

_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit264.i.i: ; preds = %bb.gf
  %i.xu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #20
          to label %_ZN11CStringBaseIwEC2Ev.exit266.i.i unwind label %bb.gh ; 2 uses

_ZN11CStringBaseIwEC2Ev.exit266.i.i:              ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit264.i.i
  store i32 0, ptr %i.xu, align 4, !tbaa !35
  %i.xv = getelementptr inbounds nuw i8, ptr %i.ro, i64 96 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.ro, i64 120 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.ro, i64 128 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ro, i64 132 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xm, i64 1104
  %.pre.i.i = load i8, ptr %i.xv, align 8, !tbaa !140, !range !84
  %i.ya = trunc nuw i8 %.pre.i.i to i1
  br label %bb.gi

bb.gg:                                            ; preds = %bb.ge
  %i.yb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.xm, i64 noundef 1112) #21
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit327.i.i

bb.gh:                                            ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit264.i.i
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread.i.i

bb.gi:                                            ; preds = %bb.ho, %_ZN11CStringBaseIwEC2Ev.exit266.i.i
  %i.yd = phi i32 [ 4, %_ZN11CStringBaseIwEC2Ev.exit266.i.i ], [ %31, %bb.ho ] ; 6 uses
  %i.ye = phi ptr [ %i.xu, %_ZN11CStringBaseIwEC2Ev.exit266.i.i ], [ %32, %bb.ho ] ; 9 uses
  %i.yf = phi i1 [ %i.ya, %_ZN11CStringBaseIwEC2Ev.exit266.i.i ], [ true, %bb.ho ]
  %.0178394.i.i = phi i32 [ 0, %_ZN11CStringBaseIwEC2Ev.exit266.i.i ], [ %i.abn, %bb.ho ] ; 3 uses
  br i1 %i.yf, label %bb.gj, label %bb.ha

bb.gj:                                            ; preds = %bb.gi
  %.not205.i.i = icmp eq i32 %.0178394.i.i, 0
  br i1 %.not205.i.i, label %bb.gq, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  invoke void @_Z21ConvertUInt32ToStringjPw(i32 noundef %.0178394.i.i, ptr noundef nonnull %i.c)
          to label %bb.gl unwind label %bb.gp

bb.gl:                                            ; preds = %bb.gk
  store i32 0, ptr %i.xx, align 8, !tbaa !43
  %i.yg = load ptr, ptr %i.xw, align 8, !tbaa !34 ; 3 uses
  store i32 0, ptr %i.yg, align 4, !tbaa !35
  %wcslen.i.i.i.i = call i64 @wcslen(ptr nonnull %i.c)
  %i.yh = trunc i64 %wcslen.i.i.i.i to i32        ; 3 uses
  %i.yi = add nsw i32 %i.yh, 1                    ; 3 uses
  %i.yj = load i32, ptr %i.xy, align 4, !tbaa !37 ; 2 uses
  %i.yk = icmp eq i32 %i.yi, %i.yj
  br i1 %i.yk, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382.preheader, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.yl = zext nneg i32 %i.yi to i64
  %i.ym = icmp slt i32 %i.yh, -1
  %i.yn = shl nuw nsw i64 %i.yl, 2
  %i.yo = select i1 %i.ym, i64 -1, i64 %i.yn
  %i.yp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yo) #20
          to label %.noexc268.i.i unwind label %bb.gp ; 3 uses

.noexc268.i.i:                                    ; preds = %bb.gm
  %i.yq = icmp sgt i32 %i.yj, 0
  br i1 %i.yq, label %._crit_edge.thread.i.i.i.i, label %bb.gn

._crit_edge.thread.i.i.i.i:                       ; preds = %.noexc268.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.yg) #21
  %.pre.i.i.i = load i32, ptr %i.xx, align 8, !tbaa !43
  %i.yr = sext i32 %.pre.i.i.i to i64
  br label %bb.gn

bb.gn:                                            ; preds = %._crit_edge.thread.i.i.i.i, %.noexc268.i.i
  %i.ys = phi i64 [ %i.yr, %._crit_edge.thread.i.i.i.i ], [ 0, %.noexc268.i.i ]
  store ptr %i.yp, ptr %i.xw, align 8, !tbaa !34
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.ys
  store i32 0, ptr %i.yt, align 4, !tbaa !35
  store i32 %i.yi, ptr %i.xy, align 4, !tbaa !37
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382.preheader: ; preds = %bb.gn, %bb.gl
  %.0.i.i.i.i384.ph = phi ptr [ %i.yg, %bb.gl ], [ %i.yp, %bb.gn ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382
  %.04.i.i.i.i383 = phi ptr [ %i.yu, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382 ], [ %i.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382.preheader ] ; 2 uses
  %.0.i.i.i.i384 = phi ptr [ %i.yw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382 ], [ %.0.i.i.i.i384.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382.preheader ] ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i383, i64 4
  %i.yv = load i32, ptr %.04.i.i.i.i383, align 4, !tbaa !35 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i384, i64 4
  store i32 %i.yv, ptr %.0.i.i.i.i384, align 4, !tbaa !35
  %.not.i.i267.i.i = icmp eq i32 %i.yv, 0
  br i1 %.not.i.i267.i.i, label %bb.go, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382, !llvm.loop !38

bb.go:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382
  store i32 %i.yh, ptr %i.xx, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gm, %bb.gk
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.loopexit.split-lp.i.body.i

bb.gq:                                            ; preds = %bb.go, %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNK12CArchivePath11GetTempPathEv(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %12, ptr noundef nonnull align 8 dereferenceable(120) %i.sl)
          to label %bb.gr unwind label %bb.gx

bb.gr:                                            ; preds = %bb.gq
  store i32 0, ptr %i.ye, align 4, !tbaa !35
  %i.yy = load i32, ptr %i.qv, align 8, !tbaa !43 ; 2 uses
  %i.yz = add nsw i32 %i.yy, 1                    ; 3 uses
  %i.za = icmp eq i32 %i.yz, %i.yd
  br i1 %i.za, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269.i.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.zb = zext i32 %i.yz to i64
  %i.zc = icmp slt i32 %i.yy, -1
  %i.zd = shl nuw nsw i64 %i.zb, 2
  %i.ze = select i1 %i.zc, i64 -1, i64 %i.zd
  %i.zf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ze) #20
          to label %.noexc275.i.i unwind label %bb.gy ; 2 uses

.noexc275.i.i:                                    ; preds = %bb.gs
  %i.zg = icmp sgt i32 %i.yd, 0
  br i1 %i.zg, label %._crit_edge.thread.i.i273.i.i, label %bb.gt

._crit_edge.thread.i.i273.i.i:                    ; preds = %.noexc275.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.ye) #21
  br label %bb.gt

bb.gt:                                            ; preds = %._crit_edge.thread.i.i273.i.i, %.noexc275.i.i
  store i32 0, ptr %i.zf, align 4, !tbaa !35
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i269.i.i: ; preds = %bb.gt, %bb.gr
  %i.zh = phi i32 [ %i.yd, %bb.gr ], [ %i.yz, %bb.gt ]
  %i.zi = phi ptr [ %i.ye, %bb.gr ], [ %i.zf, %bb.gt ] ; 2 uses
  %i.zj = load ptr, ptr %12, align 8, !tbaa !34   ; 3 uses
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gu, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269.i.i
  %.04.i.i270.i.i = phi ptr [ %i.zj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269.i.i ], [ %i.zk, %bb.gu ] ; 2 uses
  %.0.i.i271.i.i = phi ptr [ %i.zi, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269.i.i ], [ %i.zm, %bb.gu ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.04.i.i270.i.i, i64 4
  %i.zl = load i32, ptr %.04.i.i270.i.i, align 4, !tbaa !35 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.0.i.i271.i.i, i64 4
  store i32 %i.zl, ptr %.0.i.i271.i.i, align 4, !tbaa !35
  %.not.i.i272.i.i = icmp eq i32 %i.zl, 0
  br i1 %.not.i.i272.i.i, label %bb.gv, label %bb.gu, !llvm.loop !38

bb.gv:                                            ; preds = %bb.gu
  %i.zn = load i32, ptr %i.qv, align 8, !tbaa !43
  %i.zo = icmp eq ptr %i.zj, null
  br i1 %i.zo, label %_ZN11CStringBaseIwED2Ev.exit276.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_ZdaPv(ptr noundef nonnull %i.zj) #21
  br label %_ZN11CStringBaseIwED2Ev.exit276.i.i

_ZN11CStringBaseIwED2Ev.exit276.i.i:              ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.hk

bb.gx:                                            ; preds = %bb.gq
  %i.zp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit277.i.i

bb.gy:                                            ; preds = %bb.gs
  %i.zq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zr = load ptr, ptr %12, align 8, !tbaa !34   ; 2 uses
  %i.zs = icmp eq ptr %i.zr, null
  br i1 %i.zs, label %_ZN11CStringBaseIwED2Ev.exit277.i.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_ZdaPv(ptr noundef nonnull %i.zr) #21
  br label %_ZN11CStringBaseIwED2Ev.exit277.i.i

_ZN11CStringBaseIwED2Ev.exit277.i.i:              ; preds = %bb.gz, %bb.gy, %bb.gx
  %.pn206.i.i = phi { ptr, i32 } [ %i.zp, %bb.gx ], [ %i.zq, %bb.gy ], [ %i.zq, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.loopexit.split-lp.i.body.i

bb.ha:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNK12CArchivePath12GetFinalPathEv(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %13, ptr noundef nonnull align 8 dereferenceable(120) %i.sl)
          to label %bb.hb unwind label %bb.hh

bb.hb:                                            ; preds = %bb.ha
  store i32 0, ptr %i.ye, align 4, !tbaa !35
  %i.zt = load i32, ptr %i.qu, align 8, !tbaa !43 ; 2 uses
  %i.zu = add nsw i32 %i.zt, 1                    ; 3 uses
  %i.zv = icmp eq i32 %i.zu, %i.yd
  br i1 %i.zv, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i278.i.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.zw = zext i32 %i.zu to i64
  %i.zx = icmp slt i32 %i.zt, -1
  %i.zy = shl nuw nsw i64 %i.zw, 2
  %i.zz = select i1 %i.zx, i64 -1, i64 %i.zy
  %i.aaa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zz) #20
          to label %.noexc284.i.i unwind label %bb.hi ; 2 uses

.noexc284.i.i:                                    ; preds = %bb.hc
  %i.aab = icmp sgt i32 %i.yd, 0
  br i1 %i.aab, label %._crit_edge.thread.i.i282.i.i, label %bb.hd

._crit_edge.thread.i.i282.i.i:                    ; preds = %.noexc284.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.ye) #21
  br label %bb.hd

bb.hd:                                            ; preds = %._crit_edge.thread.i.i282.i.i, %.noexc284.i.i
  store i32 0, ptr %i.aaa, align 4, !tbaa !35
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i278.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i278.i.i: ; preds = %bb.hd, %bb.hb
  %i.aac = phi i32 [ %i.yd, %bb.hb ], [ %i.zu, %bb.hd ]
  %i.aad = phi ptr [ %i.ye, %bb.hb ], [ %i.aaa, %bb.hd ] ; 2 uses
  %i.aae = load ptr, ptr %13, align 8, !tbaa !34  ; 3 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.he, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i278.i.i
  %.04.i.i279.i.i = phi ptr [ %i.aae, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i278.i.i ], [ %i.aaf, %bb.he ] ; 2 uses
  %.0.i.i280.i.i = phi ptr [ %i.aad, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i278.i.i ], [ %i.aah, %bb.he ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.04.i.i279.i.i, i64 4
  %i.aag = load i32, ptr %.04.i.i279.i.i, align 4, !tbaa !35 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.0.i.i280.i.i, i64 4
  store i32 %i.aag, ptr %.0.i.i280.i.i, align 4, !tbaa !35
  %.not.i.i281.i.i = icmp eq i32 %i.aag, 0
  br i1 %.not.i.i281.i.i, label %bb.hf, label %bb.he, !llvm.loop !38

bb.hf:                                            ; preds = %bb.he
  %i.aai = load i32, ptr %i.qu, align 8, !tbaa !43
  %i.aaj = icmp eq ptr %i.aae, null
  br i1 %i.aaj, label %_ZN11CStringBaseIwED2Ev.exit286.i.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @_ZdaPv(ptr noundef nonnull %i.aae) #21
  br label %_ZN11CStringBaseIwED2Ev.exit286.i.i

_ZN11CStringBaseIwED2Ev.exit286.i.i:              ; preds = %bb.hg, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.hk

bb.hh:                                            ; preds = %bb.ha
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit287.i.i

bb.hi:                                            ; preds = %bb.hc
  %i.aal = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aam = load ptr, ptr %13, align 8, !tbaa !34  ; 2 uses
  %i.aan = icmp eq ptr %i.aam, null
  br i1 %i.aan, label %_ZN11CStringBaseIwED2Ev.exit287.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @_ZdaPv(ptr noundef nonnull %i.aam) #21
  br label %_ZN11CStringBaseIwED2Ev.exit287.i.i

_ZN11CStringBaseIwED2Ev.exit287.i.i:              ; preds = %bb.hj, %bb.hi, %bb.hh
  %.pn203.i.i = phi { ptr, i32 } [ %i.aak, %bb.hh ], [ %i.aal, %bb.hi ], [ %i.aal, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.loopexit.split-lp.i.body.i

bb.hk:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit286.i.i, %_ZN11CStringBaseIwED2Ev.exit276.i.i
  %i.aao = phi i32 [ %i.zn, %_ZN11CStringBaseIwED2Ev.exit276.i.i ], [ %i.aai, %_ZN11CStringBaseIwED2Ev.exit286.i.i ] ; 6 uses
  %31 = phi i32 [ %i.zh, %_ZN11CStringBaseIwED2Ev.exit276.i.i ], [ %i.aac, %_ZN11CStringBaseIwED2Ev.exit286.i.i ]
  %32 = phi ptr [ %i.zi, %_ZN11CStringBaseIwED2Ev.exit276.i.i ], [ %i.aad, %_ZN11CStringBaseIwED2Ev.exit286.i.i ] ; 10 uses
  store i64 0, ptr %i.xz, align 8, !tbaa !59
  %i.aap = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO8COutFile6CreateEPKwb(ptr noundef nonnull align 8 dereferenceable(1084) %i.xo, ptr noundef nonnull %32, i1 noundef zeroext false)
          to label %_ZN14COutFileStream6CreateEPKwb.exit.i.i unwind label %.loopexit.i.i

_ZN14COutFileStream6CreateEPKwb.exit.i.i:         ; preds = %bb.hk
  br i1 %i.aap, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %_ZN14COutFileStream6CreateEPKwb.exit.i.i
  %i.aaq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %.noexc128.i unwind label %.loopexit.split-lp.i.i ; 6 uses

.noexc128.i:                                      ; preds = %bb.hl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aaq, i8 0, i64 16, i1 false)
  %i.aar = add nsw i32 %i.aao, 1                  ; 3 uses
  %i.aas = icmp ne i32 %i.aar, 0
  call void @llvm.assume(i1 %i.aas)
  %i.aat = zext nneg i32 %i.aar to i64
  %i.aau = icmp slt i32 %i.aao, -1
  %i.aav = shl nuw nsw i64 %i.aat, 2
  %i.aaw = select i1 %i.aau, i64 -1, i64 %i.aav
  %i.aax = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aaw) #20
          to label %.noexc.i.i unwind label %bb.hn ; 3 uses

.noexc.i.i:                                       ; preds = %.noexc128.i
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaq, i64 12
  store ptr %i.aax, ptr %i.aaq, align 8, !tbaa !34
  store i32 0, ptr %i.aax, align 4, !tbaa !35
  store i32 %i.aar, ptr %i.aay, align 4, !tbaa !37
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i124.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i124.i: ; preds = %.noexc.i.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i124.i
  %.04.i.i.i125.i = phi ptr [ %i.aaz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i124.i ], [ %32, %.noexc.i.i ] ; 2 uses
  %.0.i.i.i126.i = phi ptr [ %i.abb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i124.i ], [ %i.aax, %.noexc.i.i ] ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.04.i.i.i125.i, i64 4
  %i.aba = load i32, ptr %.04.i.i.i125.i, align 4, !tbaa !35 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.0.i.i.i126.i, i64 4
  store i32 %i.aba, ptr %.0.i.i.i126.i, align 4, !tbaa !35
  %.not.i.i.i127.i = icmp eq i32 %i.aba, 0
  br i1 %.not.i.i.i127.i, label %bb.hm, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i124.i, !llvm.loop !38

bb.hm:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i124.i
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  store i32 %i.aao, ptr %i.abc, align 8, !tbaa !43
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %_ZN11CStringBaseIwED2Ev.exit289.i.thread.i unwind label %.loopexit.split-lp.i.i

bb.hn:                                            ; preds = %.noexc128.i
  %i.abd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aaq, i64 noundef 16) #21
  br label %.loopexit.split-lp.i.body.i

_ZN11CStringBaseIwED2Ev.exit289.i.thread.i:       ; preds = %bb.hm
  %i.abe = load ptr, ptr %i.rc, align 8, !tbaa !12
  %i.abf = load i32, ptr %i.rd, align 4, !tbaa !8 ; 2 uses
  %i.abg = sext i32 %i.abf to i64
  %i.abh = getelementptr inbounds [8 x i8], ptr %i.abe, i64 %i.abg
  store ptr %i.aaq, ptr %i.abh, align 8, !tbaa !13
  %i.abi = add nsw i32 %i.abf, 1
  store i32 %i.abi, ptr %i.rd, align 4, !tbaa !8
  call void @_ZdaPv(ptr noundef nonnull %32) #21
  br label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit.i.i

.loopexit.i.i:                                    ; preds = %bb.hk
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.body.i

.loopexit.split-lp.i.i:                           ; preds = %bb.hm, %bb.hl
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.body.i

bb.ho:                                            ; preds = %_ZN14COutFileStream6CreateEPKwb.exit.i.i
  %i.abj = tail call ptr @__errno_location() #22
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !4 ; 2 uses
  %.not208.i.i = icmp eq i32 %i.abk, 17
  %i.abl = load i8, ptr %i.xv, align 8, !range !84
  %i.abm = trunc nuw i8 %i.abl to i1
  %or.cond.i.i = select i1 %.not208.i.i, i1 %i.abm, i1 false
  %i.abn = add nuw nsw i32 %.0178394.i.i, 1       ; 2 uses
  %exitcond398.not.i.i = icmp ne i32 %i.abn, 65536
  %or.cond440.not.i.i = select i1 %or.cond.i.i, i1 %exitcond398.not.i.i, i1 false
  br i1 %or.cond440.not.i.i, label %bb.gi, label %bb.hp, !llvm.loop !178

bb.hp:                                            ; preds = %bb.ho
  store i32 %i.abk, ptr %3, align 8, !tbaa !112
  store i32 0, ptr %i.qx, align 8, !tbaa !43
  %i.abo = load ptr, ptr %i.qw, align 8, !tbaa !34 ; 3 uses
  store i32 0, ptr %i.abo, align 4, !tbaa !35
  %i.abp = add nsw i32 %i.aao, 1                  ; 3 uses
  %i.abq = load i32, ptr %i.qy, align 4, !tbaa !37 ; 2 uses
  %i.abr = icmp eq i32 %i.abp, %i.abq
  br i1 %i.abr, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i.preheader, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.abs = zext nneg i32 %i.abp to i64
  %i.abt = icmp slt i32 %i.aao, -1
  %i.abu = shl nuw nsw i64 %i.abs, 2
  %i.abv = select i1 %i.abt, i64 -1, i64 %i.abu
  %i.abw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abv) #20
          to label %.noexc122.i unwind label %bb.hu ; 3 uses

.noexc122.i:                                      ; preds = %bb.hq
  %i.abx = icmp sgt i32 %i.abq, 0
  br i1 %i.abx, label %._crit_edge.thread.i.i120.i, label %bb.hr

._crit_edge.thread.i.i120.i:                      ; preds = %.noexc122.i
  call void @_ZdaPv(ptr noundef nonnull %i.abo) #21
  %.pre.i121.i = load i32, ptr %i.qx, align 8, !tbaa !43
  %i.aby = sext i32 %.pre.i121.i to i64
  br label %bb.hr

bb.hr:                                            ; preds = %._crit_edge.thread.i.i120.i, %.noexc122.i
  %i.abz = phi i64 [ %i.aby, %._crit_edge.thread.i.i120.i ], [ 0, %.noexc122.i ]
  store ptr %i.abw, ptr %i.qw, align 8, !tbaa !34
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abw, i64 %i.abz
  store i32 0, ptr %i.aca, align 4, !tbaa !35
  store i32 %i.abp, ptr %i.qy, align 4, !tbaa !37
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i.preheader: ; preds = %bb.hr, %bb.hp
  %.0.i.i117.i.ph = phi ptr [ %i.abo, %bb.hp ], [ %i.abw, %bb.hr ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i:   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i
  %.04.i.i116.i = phi ptr [ %i.acb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i ], [ %32, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i.preheader ] ; 2 uses
  %.0.i.i117.i = phi ptr [ %i.acd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i ], [ %.0.i.i117.i.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i.preheader ] ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.04.i.i116.i, i64 4
  %i.acc = load i32, ptr %.04.i.i116.i, align 4, !tbaa !35 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.0.i.i117.i, i64 4
  store i32 %i.acc, ptr %.0.i.i117.i, align 4, !tbaa !35
  %.not.i.i118.i = icmp eq i32 %i.acc, 0
  br i1 %.not.i.i118.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i119.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i, !llvm.loop !38

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i119.i:       ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i115.i
  store i32 %i.aao, ptr %i.qx, align 8, !tbaa !43
  store i32 0, ptr %i.ra, align 8, !tbaa !43
  %i.ace = load ptr, ptr %i.qz, align 8, !tbaa !34 ; 3 uses
  store i32 0, ptr %i.ace, align 4, !tbaa !35
  %i.acf = load i32, ptr %i.rb, align 4, !tbaa !37 ; 2 uses
  %i.acg = icmp eq i32 %i.acf, 23
  br i1 %i.acg, label %_ZN11CStringBaseIwED2Ev.exit289.i.i, label %bb.hs

bb.hs:                                            ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i119.i
  %i.ach = invoke noalias noundef nonnull dereferenceable(92) ptr @_Znam(i64 noundef 92) #20
          to label %.noexc113.i unwind label %bb.hu ; 3 uses

.noexc113.i:                                      ; preds = %bb.hs
  %i.aci = icmp sgt i32 %i.acf, 0
  br i1 %i.aci, label %._crit_edge.thread.i.i111.i, label %bb.ht

._crit_edge.thread.i.i111.i:                      ; preds = %.noexc113.i
  call void @_ZdaPv(ptr noundef nonnull %i.ace) #21
  %.pre.i112.i = load i32, ptr %i.ra, align 8, !tbaa !43
  %i.acj = sext i32 %.pre.i112.i to i64
  br label %bb.ht

bb.ht:                                            ; preds = %._crit_edge.thread.i.i111.i, %.noexc113.i
  %i.ack = phi i64 [ %i.acj, %._crit_edge.thread.i.i111.i ], [ 0, %.noexc113.i ]
  store ptr %i.ach, ptr %i.qz, align 8, !tbaa !34
  %i.acl = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.ack
  store i32 0, ptr %i.acl, align 4, !tbaa !35
  store i32 23, ptr %i.rb, align 4, !tbaa !37
  br label %_ZN11CStringBaseIwED2Ev.exit289.i.i

bb.hu:                                            ; preds = %bb.hs, %bb.hq
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.body.i

_ZN11CStringBaseIwED2Ev.exit289.i.i:              ; preds = %bb.ht, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i119.i
  %i.acn = phi ptr [ %i.ace, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i119.i ], [ %i.ach, %bb.ht ] ; 8 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  store <4 x i32> <i32 55, i32 45, i32 90, i32 105>, ptr %i.acn, align 4, !tbaa !35
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 32
  store <4 x i32> <i32 112, i32 32, i32 99, i32 97>, ptr %i.aco, align 4, !tbaa !35
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 48
  store <4 x i32> <i32 110, i32 110, i32 111, i32 116>, ptr %i.acp, align 4, !tbaa !35
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acn, i64 64
  store <4 x i32> <i32 32, i32 111, i32 112, i32 101>, ptr %i.acq, align 4, !tbaa !35
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acn, i64 80
  store <4 x i32> <i32 110, i32 32, i32 102, i32 105>, ptr %i.acr, align 4, !tbaa !35
  %i.act = getelementptr inbounds nuw i8, ptr %i.acn, i64 84
  store i32 108, ptr %i.acs, align 4, !tbaa !35
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acn, i64 88
  store i32 101, ptr %i.act, align 4, !tbaa !35
  store i32 0, ptr %i.acu, align 4, !tbaa !35
  store i32 22, ptr %i.ra, align 8, !tbaa !43
  call void @_ZdaPv(ptr noundef nonnull %32) #21
  br label %bb.ks

.loopexit.split-lp.i.body.i:                      ; preds = %bb.hu, %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.hn, %_ZN11CStringBaseIwED2Ev.exit287.i.i, %_ZN11CStringBaseIwED2Ev.exit277.i.i, %bb.gp
  %i.acv = phi ptr [ %32, %.loopexit.i.i ], [ %32, %.loopexit.split-lp.i.i ], [ %32, %bb.hn ], [ %32, %bb.hu ], [ %i.ye, %_ZN11CStringBaseIwED2Ev.exit277.i.i ], [ %i.ye, %bb.gp ], [ %i.ye, %_ZN11CStringBaseIwED2Ev.exit287.i.i ]
  %.pn211.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %i.abd, %bb.hn ], [ %i.acm, %bb.hu ], [ %.pn206.i.i, %_ZN11CStringBaseIwED2Ev.exit277.i.i ], [ %i.yx, %bb.gp ], [ %.pn203.i.i, %_ZN11CStringBaseIwED2Ev.exit287.i.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.acv) #21
  br label %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread.i.i

.thread358.i.i:                                   ; preds = %.thread.i.i
  %i.acw = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #20
          to label %bb.hv unwind label %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread388.i.i ; 22 uses

bb.hv:                                            ; preds = %.thread358.i.i
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8 ; 2 uses
  store i32 0, ptr %i.acx, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV18COutMultiVolStream, i64 16), ptr %i.acw, align 8, !tbaa !48
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acw, i64 40
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acw, i64 48
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acw, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acz, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ada, align 8, !tbaa !114
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE, i64 16), ptr %i.acy, align 8, !tbaa !48
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acw, i64 72 ; 5 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acw, i64 80
  %i.add = getelementptr inbounds nuw i8, ptr %i.acw, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adc, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.add, align 8, !tbaa !114
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %i.adb, align 8, !tbaa !48
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acw, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ade, i8 0, i64 16, i1 false)
  %i.adf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #20
          to label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit295.i.i unwind label %.body103.i ; 2 uses

.body103.i:                                       ; preds = %bb.hv
  %i.adg = landingpad { ptr, i32 }
          cleanup
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acw, i64 40
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.adb) #19
  call void @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.adh) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.acw, i64 noundef 128) #21
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit327.i.i

_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit295.i.i: ; preds = %bb.hv
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acw, i64 116 ; 3 uses
  store ptr %i.adf, ptr %i.ade, align 8, !tbaa !34
  store i32 0, ptr %i.adf, align 4, !tbaa !35
  store i32 4, ptr %i.adi, align 4, !tbaa !37
  store i32 1, ptr %i.acx, align 8, !tbaa !47
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.adb)
          to label %.noexc100.i unwind label %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.i.loopexit.split-lp.i

.noexc100.i:                                      ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit295.i.i
  %i.adj = load i32, ptr %i.j, align 4, !tbaa !8  ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acw, i64 84 ; 3 uses
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !8
  %i.adm = add nsw i32 %i.adl, %i.adj
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.adb, i32 noundef %i.adm)
          to label %.noexc101.i unwind label %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.i.loopexit.split-lp.i

.noexc101.i:                                      ; preds = %.noexc100.i
  %i.adn = icmp sgt i32 %i.adj, 0
  br i1 %i.adn, label %.lr.ph.i.i.i, label %_ZN13CRecordVectorIyEaSERKS0_.exit.i

.lr.ph.i.i.i:                                     ; preds = %.noexc101.i
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acw, i64 88
  %wide.trip.count.i.i.i = zext nneg i32 %i.adj to i64
  br label %bb.hw

bb.hw:                                            ; preds = %.noexc102.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.noexc102.i ] ; 2 uses
  %i.adp = load ptr, ptr %i.qr, align 8, !tbaa !12
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.adp, i64 %indvars.iv.i.i.i
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.adb)
          to label %.noexc102.i unwind label %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.i.loopexit.i

.noexc102.i:                                      ; preds = %bb.hw
  %i.ads = load ptr, ptr %i.ado, align 8, !tbaa !12
  %i.adt = load i32, ptr %i.adk, align 4, !tbaa !8 ; 2 uses
  %i.adu = sext i32 %i.adt to i64
  %i.adv = getelementptr inbounds [8 x i8], ptr %i.ads, i64 %i.adu
  store i64 %i.adr, ptr %i.adv, align 8, !tbaa !64
  %i.adw = add nsw i32 %i.adt, 1
  store i32 %i.adw, ptr %i.adk, align 4, !tbaa !8
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN13CRecordVectorIyEaSERKS0_.exit.i, label %bb.hw, !llvm.loop !179

_ZN13CRecordVectorIyEaSERKS0_.exit.i:             ; preds = %.noexc102.i, %.noexc101.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZNK12CArchivePath12GetFinalPathEv(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %14, ptr noundef nonnull align 8 dereferenceable(120) %i.sl)
          to label %bb.hx unwind label %bb.il

bb.hx:                                            ; preds = %_ZN13CRecordVectorIyEaSERKS0_.exit.i
  %i.adx = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %.noexc99.i unwind label %bb.im ; 4 uses

.noexc99.i:                                       ; preds = %bb.hx
  store i64 46, ptr %i.adx, align 4, !tbaa !35
  %i.ady = load i32, ptr %i.qs, align 8, !tbaa !43, !noalias !180 ; 12 uses
  %i.adz = add nsw i32 %i.ady, 1                  ; 5 uses
  %i.aea = icmp eq i32 %i.adz, 0
  br i1 %i.aea, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87.i, label %bb.hy

bb.hy:                                            ; preds = %.noexc99.i
  %i.aeb = zext nneg i32 %i.adz to i64
  %i.aec = icmp slt i32 %i.ady, -1
  %i.aed = shl nuw nsw i64 %i.aeb, 2
  %i.aee = select i1 %i.aec, i64 -1, i64 %i.aed
  %i.aef = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aee) #20
          to label %.noexc92.i unwind label %bb.in ; 2 uses

.noexc92.i:                                       ; preds = %bb.hy
  store i32 0, ptr %i.aef, align 4, !tbaa !35, !noalias !180
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87.i:  ; preds = %.noexc92.i, %.noexc99.i
  %.sroa.0143.0.i = phi ptr [ null, %.noexc99.i ], [ %i.aef, %.noexc92.i ] ; 7 uses
  %i.aeg = load ptr, ptr %14, align 8, !tbaa !34, !noalias !180
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87.i
  %.04.i.i.i88.i = phi ptr [ %i.aeg, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87.i ], [ %i.aeh, %bb.hz ] ; 2 uses
  %.0.i.i.i89.i = phi ptr [ %.sroa.0143.0.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87.i ], [ %i.aej, %bb.hz ] ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.04.i.i.i88.i, i64 4
  %i.aei = load i32, ptr %.04.i.i.i88.i, align 4, !tbaa !35, !noalias !180 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %.0.i.i.i89.i, i64 4
  store i32 %i.aei, ptr %.0.i.i.i89.i, align 4, !tbaa !35, !noalias !180
  %.not.i.i.i90.i = icmp eq i32 %i.aei, 0
  br i1 %.not.i.i.i90.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i, label %bb.hz, !llvm.loop !38

_ZN11CStringBaseIwEC2ERKS0_.exit.i.i:             ; preds = %bb.hz
  %i.aek = icmp sgt i32 %i.ady, 63
  %i.ael = lshr i32 %i.adz, 1
  %i.aem = icmp sgt i32 %i.ady, 7
  %..i.i.i = select i1 %i.aem, i32 16, i32 4
  %i.aen = call i32 @llvm.umax.i32(i32 %i.ael, i32 1)
  %.1.i.i.i = select i1 %i.aek, i32 %i.aen, i32 %..i.i.i
  %i.aeo = add nsw i32 %.1.i.i.i, %i.adz          ; 3 uses
  %i.aep = icmp eq i32 %i.aeo, %i.ady
  br i1 %i.aep, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge.i, label %bb.ia

_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge.i: ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
  %.pre.i381 = sext i32 %i.ady to i64
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i

bb.ia:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
  %i.aeq = add nsw i32 %i.aeo, 1
  %i.aer = zext nneg i32 %i.aeq to i64
  %i.aes = icmp slt i32 %i.aeo, -1
  %i.aet = shl nuw nsw i64 %i.aer, 2
  %i.aeu = select i1 %i.aes, i64 -1, i64 %i.aet
  %i.aev = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aeu) #20
          to label %.noexc138.i unwind label %bb.id ; 3 uses

.noexc138.i:                                      ; preds = %bb.ia
  %i.aew = icmp sgt i32 %i.ady, -1
  br i1 %i.aew, label %.preheader.i.i.i.i, label %bb.ib

.preheader.i.i.i.i:                               ; preds = %.noexc138.i
  %.not159.i = icmp eq i32 %i.ady, 0
  br i1 %.not159.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ady to i64
  %i.aex = shl nuw nsw i64 %wide.trip.count.i.i.i.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aev, ptr align 4 %.sroa.0143.0.i, i64 %i.aex, i1 false), !tbaa !35
  br label %._crit_edge.thread.i.i.i136.i

._crit_edge.i.i.i.i:                              ; preds = %.preheader.i.i.i.i
  %i.aey = icmp eq ptr %.sroa.0143.0.i, null
  br i1 %i.aey, label %bb.ib, label %._crit_edge.thread.i.i.i136.i

._crit_edge.thread.i.i.i136.i:                    ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0143.0.i) #21
  br label %bb.ib

bb.ib:                                            ; preds = %._crit_edge.thread.i.i.i136.i, %._crit_edge.i.i.i.i, %.noexc138.i
  %i.aez = sext i32 %i.ady to i64                 ; 2 uses
  %i.afa = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %i.aez
  store i32 0, ptr %i.afa, align 4, !tbaa !35
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i:       ; preds = %bb.ib, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i381, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge.i ], [ %i.aez, %bb.ib ]
  %.sroa.0143.1.i = phi ptr [ %.sroa.0143.0.i, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge.i ], [ %i.aev, %bb.ib ] ; 6 uses
  %i.afb = getelementptr inbounds [4 x i8], ptr %.sroa.0143.1.i, i64 %.pre-phi.i
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ic, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i
  %.04.i.i133.i = phi ptr [ %i.adx, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i ], [ %i.afc, %bb.ic ] ; 2 uses
  %.0.i4.i.i = phi ptr [ %i.afb, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i ], [ %i.afe, %bb.ic ] ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %.04.i.i133.i, i64 4
  %i.afd = load i32, ptr %.04.i.i133.i, align 4, !tbaa !35 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.0.i4.i.i, i64 4
  store i32 %i.afd, ptr %.0.i4.i.i, align 4, !tbaa !35
  %.not.i5.i.i = icmp eq i32 %i.afd, 0
  br i1 %.not.i5.i.i, label %bb.if, label %bb.ic, !llvm.loop !38

bb.id:                                            ; preds = %bb.ia
  %i.aff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afg = icmp eq ptr %.sroa.0143.0.i, null
  br i1 %i.afg, label %_ZN11CStringBaseIwED2Ev.exit299.i.i, label %bb.ie
end_hunk_0
