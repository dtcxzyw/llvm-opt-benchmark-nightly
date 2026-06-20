inline.NumInlined: 317
inline.NumDeleted: 84
begin_hunk_0_@_Z5Main2iPPKc:bb.a

bb.ft:                                            ; preds = %bb.fs
  call void @_ZdaPv(ptr noundef nonnull %i.wn) #18
  br label %_ZN11CStringBaseIwED2Ev.exit426

_ZN11CStringBaseIwED2Ev.exit426:                  ; preds = %bb.ft, %bb.fs, %bb.dx
  %.pn287.pn = phi { ptr, i32 } [ %i.tu, %bb.dx ], [ %.pn287, %bb.fs ], [ %.pn287, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.fu

bb.fu:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit426, %.loopexit.split-lp, %.loopexit
  %.pn287.pn.pn = phi { ptr, i32 } [ %.pn287.pn, %_ZN11CStringBaseIwED2Ev.exit426 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZN15CExtractOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #17
  %.pre556.pre = load ptr, ptr %i.pu, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20COpenCallbackConsole, i64 16), ptr %7, align 8, !tbaa !12
  %i.wp = icmp eq ptr %.pre556.pre, null
  br i1 %i.wp, label %_ZN20COpenCallbackConsoleD2Ev.exit428, label %bb.fv

.sink.split:                                      ; preds = %.thread632, %.thread635
  %.pn287.pn.pn.pn.pn634.ph = phi { ptr, i32 } [ %i.tt, %.thread635 ], [ %i.ts, %.thread632 ]
  %.ph = phi ptr [ %i.ql, %.thread635 ], [ %i.pv, %.thread632 ]
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20COpenCallbackConsole, i64 16), ptr %7, align 8, !tbaa !12
  br label %bb.fv

bb.fv:                                            ; preds = %.sink.split, %bb.fu
  %.pn287.pn.pn.pn.pn634 = phi { ptr, i32 } [ %.pn287.pn.pn, %bb.fu ], [ %.pn287.pn.pn.pn.pn634.ph, %.sink.split ]
  %i.wq = phi ptr [ %.pre556.pre, %bb.fu ], [ %.ph, %.sink.split ]
  call void @_ZdaPv(ptr noundef nonnull %i.wq) #18
  br label %_ZN20COpenCallbackConsoleD2Ev.exit428

_ZN20COpenCallbackConsoleD2Ev.exit428:            ; preds = %bb.fv, %bb.fu, %bb.dw
  %.pn287.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tr, %bb.dw ], [ %.pn287.pn.pn, %bb.fu ], [ %.pn287.pn.pn.pn.pn634, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.fw

bb.fw:                                            ; preds = %bb.dv, %_ZN20COpenCallbackConsoleD2Ev.exit428
  %.pn287.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn.pn.pn, %_ZN20COpenCallbackConsoleD2Ev.exit428 ], [ %i.tq, %bb.dv ]
  %i.wr = load ptr, ptr %i.oj, align 8, !tbaa !12
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8
  %i.wu = invoke noundef i32 %i.wt(ptr noundef nonnull align 8 dereferenceable(8) %i.oj)
          to label %_ZN9CMyComPtrI29IFolderArchiveExtractCallbackED2Ev.exit430 unwind label %bb.fx ; 0 uses

bb.fx:                                            ; preds = %bb.fw
  %i.wv = landingpad { ptr, i32 }
          catch ptr null
  %i.ww = extractvalue { ptr, i32 } %i.wv, 0
  call void @__clang_call_terminate(ptr %i.ww) #21
  unreachable

bb.fy:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !126
  %i.wx = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !102, !range !36, !noundef !37
  %i.wz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !15
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !16
  %i.xc = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.xd = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.xe = trunc nuw i8 %i.wy to i1
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xg = load i8, ptr %i.aa, align 1, !tbaa !42, !range !36, !noundef !37
  %i.xh = trunc nuw i8 %i.xg to i1
  %i.xi = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.xj = load i8, ptr %i.xi, align 8, !tbaa !127, !range !36, !noundef !37
  %i.xk = trunc nuw i8 %i.xj to i1
  %i.xl = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.xm = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.xn = invoke noundef i32 @_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry(ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %i.xe, ptr noundef nonnull align 8 dereferenceable(32) %i.xd, ptr noundef nonnull align 8 dereferenceable(32) %i.xc, ptr noundef nonnull align 8 dereferenceable(120) %i.xf, i1 noundef zeroext %i.xh, i1 noundef zeroext %i.xk, ptr noundef nonnull align 1 dereferenceable(1) %i.xl, ptr noundef nonnull align 8 dereferenceable(16) %i.xm, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.fz unwind label %bb.gd     ; 2 uses

bb.fz:                                            ; preds = %bb.fy
  %i.xo = load i64, ptr %i.b, align 8, !tbaa !126
  %.not278 = icmp eq i64 %i.xo, 0
  br i1 %.not278, label %bb.ge, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.xp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.gb unwind label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.xq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.xp, ptr noundef nonnull @.str.16)
          to label %bb.gc unwind label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.xr = load i64, ptr %i.b, align 8, !tbaa !126
  %i.xs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEy(ptr noundef nonnull align 8 dereferenceable(16) %i.xq, i64 noundef %i.xr)
          to label %bb.gg unwind label %bb.gd     ; 0 uses

bb.gd:                                            ; preds = %bb.gf, %bb.gc, %bb.gb, %bb.ga, %bb.fy
  %i.xt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZN9CMyComPtrI29IFolderArchiveExtractCallbackED2Ev.exit430

bb.ge:                                            ; preds = %bb.fz
  %.not279 = icmp eq i32 %i.xn, 0
  br i1 %.not279, label %.thread, label %bb.gf

.thread:                                          ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.lk

bb.gf:                                            ; preds = %bb.ge
  %i.xu = call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 %i.xn, ptr %i.xu, align 4, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.xu, ptr nonnull @_ZTI16CSystemException, ptr null) #20
          to label %bb.lt unwind label %bb.gd

bb.gg:                                            ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.lk

bb.gh:                                            ; preds = %bb.cr
  %i.xv = invoke noundef zeroext i1 @_ZNK15CArchiveCommand17IsFromUpdateGroupEv(ptr noundef nonnull align 4 dereferenceable(4) %i.an)
          to label %bb.gi unwind label %bb.aj

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.xv, label %bb.gj, label %bb.lf

bb.gj:                                            ; preds = %bb.gi
  %i.xw = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %3, i64 424 ; 2 uses
  %i.xy = load i8, ptr %i.xx, align 8, !tbaa !128, !range !36, !noundef !37
  %i.xz = trunc nuw i8 %i.xy to i1
  %i.ya = getelementptr inbounds nuw i8, ptr %3, i64 440 ; 4 uses
  %i.yb = load i32, ptr %i.ya, align 8
  %i.yc = icmp eq i32 %i.yb, 0
  %or.cond498 = select i1 %i.xz, i1 %i.yc, i1 false
  br i1 %or.cond498, label %bb.gk, label %bb.go

bb.gk:                                            ; preds = %bb.gj
  %i.yd = getelementptr inbounds nuw i8, ptr %3, i64 432 ; 2 uses
  store i32 0, ptr %i.ya, align 8, !tbaa !55
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !17 ; 3 uses
  store i32 0, ptr %i.ye, align 4, !tbaa !58
  %i.yf = getelementptr inbounds nuw i8, ptr %3, i64 444 ; 2 uses
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !66 ; 2 uses
  %i.yh = icmp eq i32 %i.yg, 10
  br i1 %i.yh, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i648, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.yi = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znam(i64 noundef 40) #19
          to label %.noexc654 unwind label %bb.gn ; 3 uses

.noexc654:                                        ; preds = %bb.gl
  %i.yj = icmp sgt i32 %i.yg, 0
  br i1 %i.yj, label %._crit_edge.thread.i.i652, label %bb.gm

._crit_edge.thread.i.i652:                        ; preds = %.noexc654
  call void @_ZdaPv(ptr noundef nonnull %i.ye) #18
  %.pre.i653 = load i32, ptr %i.ya, align 8, !tbaa !55
  %i.yk = sext i32 %.pre.i653 to i64
  br label %bb.gm

bb.gm:                                            ; preds = %._crit_edge.thread.i.i652, %.noexc654
  %i.yl = phi i64 [ %i.yk, %._crit_edge.thread.i.i652 ], [ 0, %.noexc654 ]
  store ptr %i.yi, ptr %i.yd, align 8, !tbaa !17
  %i.ym = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.yl
  store i32 0, ptr %i.ym, align 4, !tbaa !58
  store i32 10, ptr %i.yf, align 4, !tbaa !66
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i648

_ZN11CStringBaseIwE11SetCapacityEi.exit.i648:     ; preds = %bb.gm, %bb.gk
  %i.yn = phi ptr [ %i.ye, %bb.gk ], [ %i.yi, %bb.gm ] ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  store <4 x i32> <i32 55, i32 122, i32 67, i32 111>, ptr %i.yn, align 4, !tbaa !58
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 32
  store <4 x i32> <i32 110, i32 46, i32 115, i32 102>, ptr %i.yo, align 4, !tbaa !58
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 36
  store i32 120, ptr %i.yp, align 4, !tbaa !58
  store i32 0, ptr %i.yq, align 4, !tbaa !58
  store i32 9, ptr %i.ya, align 8, !tbaa !55
  br label %bb.go

bb.gn:                                            ; preds = %bb.gl
  %i.yr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI29IFolderArchiveExtractCallbackED2Ev.exit430

bb.go:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i648, %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20COpenCallbackConsole, i64 16), ptr %11, align 8, !tbaa !12
  %i.ys = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.ys, align 1, !tbaa !97
  %i.yt = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  %i.yu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.gp unwind label %bb.hf     ; 5 uses

bb.gp:                                            ; preds = %bb.go
  %i.yv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.yw = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 2 uses
  store ptr %i.yu, ptr %i.yt, align 8, !tbaa !17
  store i32 4, ptr %i.yw, align 4, !tbaa !66
  %i.yx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %g_StdErr.g_StdOut, ptr %i.yx, align 8, !tbaa !100
  %i.yy = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.yz = load i8, ptr %i.yy, align 8, !tbaa !95, !range !36, !noundef !37
  %i.za = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.zb = load i32, ptr %i.za, align 8            ; 3 uses
  %.not632 = icmp eq i32 %i.zb, 0
  %19 = select i1 %.not632, i8 0, i8 %i.yz        ; 2 uses
  store i8 %19, ptr %i.yv, align 8, !tbaa !101
  %i.zc = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  store i32 0, ptr %i.zd, align 8, !tbaa !55
  store i32 0, ptr %i.yu, align 4, !tbaa !58
  %i.ze = add nsw i32 %i.zb, 1                    ; 3 uses
  %i.zf = icmp eq i32 %i.ze, 4
  br i1 %i.zf, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i433, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.zg = zext nneg i32 %i.ze to i64
  %i.zh = icmp slt i32 %i.zb, -1
  %i.zi = shl nuw nsw i64 %i.zg, 2
  %i.zj = select i1 %i.zh, i64 -1, i64 %i.zi
  %i.zk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zj) #19
          to label %bb.gr unwind label %.thread638 ; 3 uses

bb.gr:                                            ; preds = %bb.gq
  call void @_ZdaPv(ptr noundef nonnull %i.yu) #18
  %.pre.i438 = load i32, ptr %i.zd, align 8, !tbaa !55
  %i.zl = sext i32 %.pre.i438 to i64
  store ptr %i.zk, ptr %i.yt, align 8, !tbaa !17
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %i.zl
  store i32 0, ptr %i.zm, align 4, !tbaa !58
  store i32 %i.ze, ptr %i.yw, align 4, !tbaa !66
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i433

_ZN11CStringBaseIwE11SetCapacityEi.exit.i433:     ; preds = %bb.gr, %bb.gp
  %i.zn = phi ptr [ %i.yu, %bb.gp ], [ %i.zk, %bb.gr ] ; 2 uses
  %i.zo = load ptr, ptr %i.zc, align 8, !tbaa !17 ; 2 uses
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gs, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i433
  %.04.i.i434 = phi ptr [ %i.zo, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i433 ], [ %i.zp, %bb.gs ] ; 2 uses
  %.0.i.i435 = phi ptr [ %i.zn, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i433 ], [ %i.zr, %bb.gs ] ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.04.i.i434, i64 4
  %i.zq = load i32, ptr %.04.i.i434, align 4, !tbaa !58 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.0.i.i435, i64 4
  store i32 %i.zq, ptr %.0.i.i435, align 4, !tbaa !58
  %.not.i.i436 = icmp eq i32 %i.zq, 0
  br i1 %.not.i.i436, label %bb.gt, label %bb.gs, !llvm.loop !67

bb.gt:                                            ; preds = %bb.gs
  %i.zs = load i32, ptr %i.za, align 8, !tbaa !55 ; 4 uses
  store i32 %i.zs, ptr %i.zd, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV22CUpdateCallbackConsole, i64 16), ptr %12, align 8, !tbaa !12
  %i.zt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 65536, ptr %i.zt, align 8, !tbaa !129
  %i.zu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.zv = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zu, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.zv, align 8, !tbaa !131
  %i.zw = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 0, ptr %i.zw, align 8, !tbaa !132
  %i.zx = getelementptr inbounds nuw i8, ptr %12, i64 58
  store i8 0, ptr %i.zx, align 2, !tbaa !133
  %i.zy = getelementptr inbounds nuw i8, ptr %12, i64 73 ; 2 uses
  store i8 0, ptr %i.zy, align 1, !tbaa !138
  %i.zz = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.aaa = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.gu unwind label %.thread641 ; 4 uses

bb.gu:                                            ; preds = %bb.gt
  %i.aab = getelementptr inbounds nuw i8, ptr %12, i64 74
  %i.aac = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.aad = getelementptr inbounds nuw i8, ptr %12, i64 92 ; 2 uses
  store ptr %i.aaa, ptr %i.zz, align 8, !tbaa !17
  store i32 4, ptr %i.aad, align 4, !tbaa !66
  %i.aae = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.aaf = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.aah = getelementptr inbounds nuw i8, ptr %12, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aag, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.aah, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %i.aaf, align 8, !tbaa !12
  %i.aai = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.aak = getelementptr inbounds nuw i8, ptr %12, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aaj, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.aak, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %i.aai, align 8, !tbaa !12
  %i.aal = getelementptr inbounds nuw i8, ptr %12, i64 168
  %i.aam = getelementptr inbounds nuw i8, ptr %12, i64 176
  %i.aan = getelementptr inbounds nuw i8, ptr %12, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aam, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.aan, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %i.aal, align 8, !tbaa !12
  %i.aao = getelementptr inbounds nuw i8, ptr %12, i64 200
  %i.aap = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.aaq = getelementptr inbounds nuw i8, ptr %12, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aap, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.aaq, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %i.aao, align 8, !tbaa !12
  %i.aar = getelementptr inbounds nuw i8, ptr %3, i64 560
  %i.aas = load i8, ptr %i.aar, align 8, !tbaa !139, !range !36, !noundef !37
  store i8 %i.aas, ptr %i.aac, align 8, !tbaa !140
  store i8 %19, ptr %i.aab, align 2, !tbaa !141
  %i.aat = load i8, ptr %i.yy, align 8, !tbaa !95, !range !36, !noundef !37
  %i.aau = trunc nuw i8 %i.aat to i1
  %i.aav = icmp eq i32 %i.zs, 0
  %narrow495 = select i1 %i.aau, i1 %i.aav, i1 false
  %i.aaw = zext i1 %narrow495 to i8
  store i8 %i.aaw, ptr %i.aae, align 8, !tbaa !142
  %i.aax = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 3 uses
  store i32 0, ptr %i.aax, align 8, !tbaa !55
  store i32 0, ptr %i.aaa, align 4, !tbaa !58
  %i.aay = add nsw i32 %i.zs, 1                   ; 3 uses
  %i.aaz = icmp eq i32 %i.aay, 4
  br i1 %i.aaz, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442.preheader, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.aba = zext nneg i32 %i.aay to i64
  %i.abb = icmp slt i32 %i.zs, -1
  %i.abc = shl nuw nsw i64 %i.aba, 2
  %i.abd = select i1 %i.abb, i64 -1, i64 %i.abc
  %i.abe = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abd) #19
          to label %bb.gw unwind label %bb.hg     ; 3 uses

bb.gw:                                            ; preds = %bb.gv
  call void @_ZdaPv(ptr noundef nonnull %i.aaa) #18
  %.pre.pre = load ptr, ptr %i.zc, align 8, !tbaa !17
  %.pre.i447 = load i32, ptr %i.aax, align 8, !tbaa !55
  %i.abf = sext i32 %.pre.i447 to i64
  store ptr %i.abe, ptr %i.zz, align 8, !tbaa !17
  %i.abg = getelementptr inbounds [4 x i8], ptr %i.abe, i64 %i.abf
  store i32 0, ptr %i.abg, align 4, !tbaa !58
  store i32 %i.aay, ptr %i.aad, align 4, !tbaa !66
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i442.preheader: ; preds = %bb.gw, %bb.gu
  %.04.i.i443.ph = phi ptr [ %.pre.pre, %bb.gw ], [ %i.zo, %bb.gu ]
  %.0.i.i444.ph = phi ptr [ %i.abe, %bb.gw ], [ %i.aaa, %bb.gu ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442

_ZN11CStringBaseIwE11SetCapacityEi.exit.i442:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442
  %.04.i.i443 = phi ptr [ %i.abh, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442 ], [ %.04.i.i443.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442.preheader ] ; 2 uses
  %.0.i.i444 = phi ptr [ %i.abj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442 ], [ %.0.i.i444.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442.preheader ] ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.04.i.i443, i64 4
  %i.abi = load i32, ptr %.04.i.i443, align 4, !tbaa !58 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.0.i.i444, i64 4
  store i32 %i.abi, ptr %.0.i.i444, align 4, !tbaa !58
  %.not.i.i445 = icmp eq i32 %i.abi, 0
  br i1 %.not.i.i445, label %bb.gx, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442, !llvm.loop !67

bb.gx:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i442
  %i.abk = load i32, ptr %i.za, align 8, !tbaa !55
  store i32 %i.abk, ptr %i.aax, align 8, !tbaa !55
  %i.abl = getelementptr inbounds nuw i8, ptr %3, i64 472 ; 3 uses
  %i.abm = load i8, ptr %i.abl, align 8, !tbaa !143, !range !36, !noundef !37
  store i8 %i.abm, ptr %i.zy, align 1, !tbaa !138
  %i.abn = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i8 0, ptr %i.abn, align 8, !tbaa !144
  %i.abo = getelementptr inbounds nuw i8, ptr %12, i64 57
  store i8 0, ptr %i.abo, align 1, !tbaa !145
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aaf)
          to label %.noexc450 unwind label %bb.hg

.noexc450:                                        ; preds = %bb.gx
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aai)
          to label %bb.gy unwind label %bb.hg

bb.gy:                                            ; preds = %.noexc450
  %i.abp = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %g_StdErr.g_StdOut, ptr %i.abp, align 8, !tbaa !146
  %i.abq = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %g_StdErr.g_StdOut, ptr %i.abq, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store i32 0, ptr %13, align 8, !tbaa !148
  %i.abr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store i64 17179869184, ptr %i.abs, align 8
  %i.abt = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc453 unwind label %bb.hh ; 3 uses

.noexc453:                                        ; preds = %bb.gy
  store ptr %i.abt, ptr %i.abr, align 8, !tbaa !17
  store i32 0, ptr %i.abt, align 4, !tbaa !58
  %i.abu = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abu, i8 0, i64 16, i1 false)
  %i.abv = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.gz unwind label %.thread.i.i ; 3 uses

bb.gz:                                            ; preds = %.noexc453
  %i.abw = getelementptr inbounds nuw i8, ptr %13, i64 36
  store ptr %i.abv, ptr %i.abu, align 8, !tbaa !17
  store i32 0, ptr %i.abv, align 4, !tbaa !58
  store i32 4, ptr %i.abw, align 4, !tbaa !66
  %i.abx = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abx, i8 0, i64 16, i1 false)
  %i.aby = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.hc unwind label %bb.ha     ; 2 uses

.thread.i.i:                                      ; preds = %.noexc453
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.aca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdaPv(ptr noundef nonnull %i.abv) #18
  %.pre.i.i452 = load ptr, ptr %i.abr, align 8, !tbaa !17 ; 2 uses
  %i.acb = icmp eq ptr %.pre.i.i452, null
  br i1 %i.acb, label %.body, label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %.thread.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.abz, %.thread.i.i ], [ %i.aca, %bb.ha ]
  %i.acc = phi ptr [ %i.abt, %.thread.i.i ], [ %.pre.i.i452, %bb.ha ]
  call void @_ZdaPv(ptr noundef nonnull %i.acc) #18
  br label %.body

bb.hc:                                            ; preds = %bb.gz
  %i.acd = getelementptr inbounds nuw i8, ptr %13, i64 52
  store ptr %i.aby, ptr %i.abx, align 8, !tbaa !17
  store i32 0, ptr %i.aby, align 4, !tbaa !58
  store i32 4, ptr %i.acd, align 4, !tbaa !66
  %i.ace = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.acf = invoke noundef zeroext i1 @_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(320) %i.xw, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ace)
          to label %bb.hd unwind label %bb.hi

bb.hd:                                            ; preds = %bb.hc
  br i1 %i.acf, label %bb.hj, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.acg = call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr @.str.37, ptr %i.acg, align 16, !tbaa !47
  invoke void @__cxa_throw(ptr nonnull %i.acg, ptr nonnull @_ZTIPKc, ptr null) #20
          to label %bb.lt unwind label %bb.hi

bb.hf:                                            ; preds = %bb.go
  %i.ach = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20COpenCallbackConsoleD2Ev.exit478

.thread638:                                       ; preds = %bb.gq
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split646

.thread641:                                       ; preds = %bb.gt
  %i.acj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.sink.split646

bb.hg:                                            ; preds = %.noexc450, %bb.gx, %bb.gv
  %i.ack = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.hh:                                            ; preds = %bb.gy
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hi:                                            ; preds = %bb.he, %bb.hc
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.hj:                                            ; preds = %bb.hd
  %i.acn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aco = invoke noundef i32 @_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2(ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.acn, ptr noundef nonnull align 8 dereferenceable(320) %i.xw, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull %11, ptr noundef nonnull %12)
          to label %bb.hk unwind label %bb.hl     ; 2 uses

bb.hk:                                            ; preds = %bb.hj
  %i.acp = load i8, ptr %i.xx, align 8, !tbaa !128, !range !36, !noundef !37
  %i.acq = trunc nuw i8 %i.acp to i1
  br i1 %i.acq, label %.preheader499, label %.loopexit500

.preheader499:                                    ; preds = %bb.hk
  %i.acr = getelementptr inbounds nuw i8, ptr %3, i64 276 ; 2 uses
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !14 ; 2 uses
  %i.act = icmp sgt i32 %i.acs, 0
  br i1 %i.act, label %.lr.ph521, label %.loopexit500

.lr.ph521:                                        ; preds = %.preheader499
  %i.acu = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.acv = load i8, ptr %i.abl, align 8, !tbaa !143, !range !36, !noundef !37
  %i.acw = trunc nuw i8 %i.acv to i1
  br i1 %i.acw, label %.loopexit500, label %.lr.ph521.split

bb.hl:                                            ; preds = %bb.hj
  %i.acx = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

.lr.ph521.split:                                  ; preds = %.lr.ph521, %bb.ht
  %i.acy = phi i32 [ %i.adl, %bb.ht ], [ %i.acs, %.lr.ph521 ]
  %indvars.iv535 = phi i64 [ %indvars.iv.next536, %bb.ht ], [ 0, %.lr.ph521 ] ; 2 uses
  %i.acz = load i8, ptr %i.abl, align 8, !tbaa !143, !range !36, !noundef !37
  %i.ada = trunc nuw i8 %i.acz to i1
  br i1 %i.ada, label %bb.ht, label %bb.hm

bb.hm:                                            ; preds = %.lr.ph521.split
  %i.adb = load ptr, ptr %i.acu, align 8, !tbaa !15
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv535
end_hunk_0
