Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/recvol?download=true
inline.NumInlined: 131
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN11RecVolumes37RestoreEP11CommandDataPKwb:bb.a
  br label %.loopexit522.thread

bb.dd:                                            ; preds = %bb.da, %bb.cz, %bb.db, %bb.cy, %bb.cx
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br label %.loopexit.split-lp518.loopexit.split-lp

.loopexit522.thread:                              ; preds = %bb.cn, %bb.cq, %.loopexit522.thread869, %bb.dc
  %.1253488 = phi i1 [ false, %bb.dc ], [ true, %.loopexit522.thread869 ], [ true, %bb.cq ], [ true, %bb.cn ]
  %i.ja = load ptr, ptr %i.ic, align 8, !tbaa !20
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.jc = load ptr, ptr %i.jb, align 8
  invoke void %i.jc(ptr noundef nonnull align 8 dereferenceable(57108) %i.ic, i64 noundef 0, i32 noundef 0)
          to label %bb.de unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %.loopexit522.thread
  br i1 %.1253488, label %bb.dn, label %.thread489

.thread489:                                       ; preds = %bb.ci, %bb.de
  %i.jd = invoke noundef zeroext i1 @_ZN4File6CreateEPKwj(ptr noundef nonnull align 8 dereferenceable(8256) %i.ic, ptr noundef nonnull %i.c, i32 noundef 18)
          to label %bb.df unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %.thread489
  br i1 %i.jd, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %12, align 8, !tbaa !83
  %i.je = getelementptr inbounds nuw i8, ptr %12, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.je, align 8, !tbaa !83
  %i.jf = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %12, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jf, i8 0, i64 40, i1 false)
  store i32 52, ptr %i.jg, align 8, !tbaa !86
  %i.jh = getelementptr inbounds nuw i8, ptr %12, i64 100
  store i32 1, ptr %i.jh, align 4, !tbaa !102
  store i32 %.0462.ph, ptr %i.jf, align 8, !tbaa !101
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %12)
          to label %bb.dh unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %11, align 8, !tbaa !83
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.ji, align 8, !tbaa !83
  %i.jj = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.jk = getelementptr inbounds nuw i8, ptr %11, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jj, i8 0, i64 40, i1 false)
  store i32 53, ptr %i.jk, align 8, !tbaa !86
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %11)
          to label %bb.di unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  invoke void @_ZN12ErrorHandler14CreateErrorMsgEPKw(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull %i.c)
          to label %.critedge423 unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.df
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 1, ptr %i.jl, align 1, !tbaa !103
  %i.jm = add nsw i32 %.0460651, 1
  %i.jn = icmp eq i64 %indvars.iv, %i.ib
  br i1 %i.jn, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, i64 noundef 2048)
          to label %bb.dl unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hm, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hn, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.ho, align 8, !tbaa !83
  store ptr @.str.6, ptr %i.hp, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hq, i8 0, i64 40, i1 false)
  store i32 123, ptr %i.hr, align 8, !tbaa !86
  store i32 1, ptr %i.hs, align 8, !tbaa !87
  store ptr %i.c, ptr %10, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %10)
          to label %bb.dm unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.ht, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hu, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hv, align 8, !tbaa !83
  store ptr @.str.6, ptr %i.hw, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hx, i8 0, i64 40, i1 false)
  store i32 151, ptr %i.hy, align 8, !tbaa !86
  store i32 1, ptr %i.hz, align 8, !tbaa !87
  store ptr %i.c, ptr %9, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %9)
          to label %_Z5uiMsgIJRA2048_wEEv14UIMESSAGE_CODEDpOT_.exit435 unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z5uiMsgIJRA2048_wEEv14UIMESSAGE_CODEDpOT_.exit435: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.dn

bb.dn:                                            ; preds = %_Z5uiMsgIJRA2048_wEEv14UIMESSAGE_CODEDpOT_.exit435, %bb.de
  %.1461 = phi i32 [ %.0460651, %bb.de ], [ %i.jm, %_Z5uiMsgIJRA2048_wEEv14UIMESSAGE_CODEDpOT_.exit435 ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store ptr %i.ic, ptr %i.jo, align 8, !tbaa !18
  invoke void @_Z14NextVolumeNamePwjb(ptr noundef nonnull %i.c, i32 noundef 2048, i1 noundef zeroext %i.ia)
          to label %bb.do unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %bb.dn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge424, label %bb.cf, !llvm.loop !155

.critedge424:                                     ; preds = %bb.do, %bb.ce
  %.0460.lcssa = phi i32 [ 0, %bb.ce ], [ %.1461, %bb.do ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %8, align 8, !tbaa !83
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.jp, align 8, !tbaa !83
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jq, i8 0, i64 40, i1 false)
  store i32 122, ptr %i.jr, align 8, !tbaa !86
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 100
  store i32 1, ptr %i.js, align 4, !tbaa !102
  store i32 %.0460.lcssa, ptr %i.jq, align 8, !tbaa !101
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %8)
          to label %bb.dp unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dp:                                            ; preds = %.critedge424
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.jt = icmp eq i32 %.0460.lcssa, 0
  br i1 %i.jt, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %7, align 8, !tbaa !83
  %i.ju = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.ju, align 8, !tbaa !83
  %i.jv = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jv, i8 0, i64 40, i1 false)
  store i32 51, ptr %i.jw, align 8, !tbaa !86
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %7)
          to label %_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit437 unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit437:       ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.critedge423

bb.dr:                                            ; preds = %bb.dp
  %i.jx = icmp sgt i32 %.0460.lcssa, %.0462.ph
  br i1 %i.jx, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %6, align 8, !tbaa !83
  %i.jy = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.jy, align 8, !tbaa !83
  %i.jz = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jz, i8 0, i64 40, i1 false)
  store i32 52, ptr %i.ka, align 8, !tbaa !86
  %i.kb = getelementptr inbounds nuw i8, ptr %6, i64 100
  store i32 1, ptr %i.kb, align 4, !tbaa !102
  store i32 %.0462.ph, ptr %i.jz, align 8, !tbaa !101
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %6)
          to label %bb.dt unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %5, align 8, !tbaa !83
  %i.kc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.kc, align 8, !tbaa !83
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kd, i8 0, i64 40, i1 false)
  store i32 54, ptr %i.ke, align 8, !tbaa !86
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %5)
          to label %_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit439 unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit439:       ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.critedge423

bb.du:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %4, align 8, !tbaa !83
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.kf, align 8, !tbaa !83
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kg, i8 0, i64 40, i1 false)
  store i32 124, ptr %i.kh, align 8, !tbaa !86
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %4)
          to label %bb.dv unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ki = add nuw nsw i32 %.0267.ph, %.0269.ph    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.kj = icmp sgt i32 %i.ki, 0                   ; 2 uses
  br i1 %i.kj, label %.lr.ph657.preheader, label %._crit_edge

.lr.ph657.preheader:                              ; preds = %bb.dv
  %i.kk = icmp eq i32 %i.ki, 1
  br i1 %i.kk, label %.lr.ph657.epil.preheader, label %.lr.ph657.preheader.new

.lr.ph657.preheader.new:                          ; preds = %.lr.ph657.preheader
  %31 = and i32 %i.ki, 2147483646
  %unroll_iter = zext nneg i32 %31 to i64
  br label %.lr.ph657

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ec
  %lcmp.mod.not = trunc i32 %i.ki to i1
  br i1 %lcmp.mod.not, label %.lr.ph657.epil.preheader, label %._crit_edge

.lr.ph657.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph657.preheader
  %indvars.iv806.epil.init = phi i64 [ 0, %.lr.ph657.preheader ], [ %indvars.iv.next807.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0250655.epil.init = phi i32 [ 0, %.lr.ph657.preheader ], [ %.1251.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1193 = trunc i32 %i.ki to i1
  call void @llvm.assume(i1 %lcmp.mod1193)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv806.epil.init
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !103, !range !81, !noundef !82
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph657.epil.preheader
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv806.epil.init
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !18
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.dx, label %._crit_edge

bb.dx:                                            ; preds = %bb.dw, %.lr.ph657.epil.preheader
  %i.kr = add nsw i32 %.0250655.epil.init, 1
  %i.ks = sext i32 %.0250655.epil.init to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ks
  %i.ku = trunc nuw nsw i64 %indvars.iv806.epil.init to i32
  store i32 %i.ku, ptr %i.kt, align 4, !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.dx, %bb.dw, %bb.dv
  %.0250.lcssa = phi i32 [ 0, %bb.dv ], [ %.1251.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.kr, %bb.dx ], [ %.0250655.epil.init, %bb.dw ] ; 2 uses
  %i.kv = udiv i32 67108864, %i.ki                ; 2 uses
  %i.kw = zext nneg i32 %i.kv to i64              ; 7 uses
  %i.kx = invoke noalias noundef nonnull dereferenceable(11336) ptr @_Znam(i64 noundef 11336) #15
          to label %_ZN8RSEncode4InitEi.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

.lr.ph657:                                        ; preds = %bb.ec, %.lr.ph657.preheader.new
  %indvars.iv806 = phi i64 [ 0, %.lr.ph657.preheader.new ], [ %indvars.iv.next807.1, %bb.ec ] ; 5 uses
  %.0250655 = phi i32 [ 0, %.lr.ph657.preheader.new ], [ %.1251.1, %bb.ec ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph657.preheader.new ], [ %niter.next.1, %bb.ec ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv806
  %i.kz = load i8, ptr %i.ky, align 2, !tbaa !103, !range !81, !noundef !82
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph657
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv806
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !18
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.dz, label %.lr.ph657.1

bb.dz:                                            ; preds = %bb.dy, %.lr.ph657
  %i.le = add nsw i32 %.0250655, 1
  %i.lf = sext i32 %.0250655 to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.lf
  %i.lh = trunc nuw nsw i64 %indvars.iv806 to i32
  store i32 %i.lh, ptr %i.lg, align 4, !tbaa !101
  br label %.lr.ph657.1

.lr.ph657.1:                                      ; preds = %bb.dy, %bb.dz
  %.1251 = phi i32 [ %i.le, %bb.dz ], [ %.0250655, %bb.dy ] ; 3 uses
  %indvars.iv.next807 = or disjoint i64 %indvars.iv806, 1 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next807
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !103, !range !81, !noundef !82
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph657.1
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next807
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !18
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea, %.lr.ph657.1
  %i.lo = add nsw i32 %.1251, 1
  %i.lp = sext i32 %.1251 to i64
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.lp
  %i.lr = trunc nuw nsw i64 %indvars.iv.next807 to i32
  store i32 %i.lr, ptr %i.lq, align 4, !tbaa !101
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.1251.1 = phi i32 [ %i.lo, %bb.eb ], [ %.1251, %bb.ea ] ; 3 uses
  %indvars.iv.next807.1 = add nuw nsw i64 %indvars.iv806, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph657, !llvm.loop !156

.preheader510:                                    ; preds = %_ZN8RSEncode4InitEi.exit.preheader
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 57428
  %wide.trip.count814 = zext nneg i32 %i.ki to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kx, i64 11280 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kx, i64 11296
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kx, i64 11300 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kx, i64 11304 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kx, i64 11312 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kx, i64 11320 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kx, i64 11328 ; 3 uses
  %wide.trip.count832 = zext nneg i32 %.0269.ph to i64
  br label %.loopexit503

_ZN8RSEncode4InitEi.exit.preheader:               ; preds = %._crit_edge
  invoke void @_ZN7RSCoder4InitEi(ptr noundef nonnull align 8 dereferenceable(11332) %i.kx, i32 noundef %.0267.ph)
          to label %.preheader510 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit503:                                     ; preds = %.loopexit503.backedge, %.preheader510
  %.0247 = phi i64 [ 0, %.preheader510 ], [ %i.nb, %.loopexit503.backedge ] ; 3 uses
  %.0244 = phi i32 [ -1, %.preheader510 ], [ %.1245, %.loopexit503.backedge ] ; 2 uses
  invoke void @_Z4Waitv()
          to label %.preheader507 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader507:                                    ; preds = %.loopexit503
  br i1 %i.kj, label %.lr.ph661, label %.thread871

.thread871:                                       ; preds = %.preheader507
  call void @_ZdaPv(ptr noundef nonnull %i.kx) #16
  br label %._crit_edge674

._crit_edge662:                                   ; preds = %bb.ej
  %i.mb = icmp eq i32 %.2242, 0
  br i1 %i.mb, label %.lr.ph673, label %bb.ek

.lr.ph661:                                        ; preds = %.preheader507, %bb.ej
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %bb.ej ], [ 0, %.preheader507 ] ; 5 uses
  %.0240659 = phi i32 [ %.2242, %bb.ej ], [ 0, %.preheader507 ] ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv811
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !103, !range !81, !noundef !82
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph661
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv811
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !18 ; 3 uses
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed, %.lr.ph661
  %i.mi = mul nuw nsw i64 %indvars.iv811, %i.kw
  %i.mj = load ptr, ptr %i.ls, align 8, !tbaa !16
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mi
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mk, i8 0, i64 %i.kw, i1 false)
  br label %bb.ej

bb.ef:                                            ; preds = %bb.ed
  %i.ml = mul nuw nsw i64 %indvars.iv811, %i.kw   ; 2 uses
  %i.mm = load ptr, ptr %i.ls, align 8, !tbaa !16
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.ml
  %i.mo = load ptr, ptr %i.mg, align 8, !tbaa !20
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = invoke noundef i32 %i.mq(ptr noundef nonnull align 8 dereferenceable(8256) %i.mg, ptr noundef nonnull %i.mn, i64 noundef %i.kw)
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.eg:                                            ; preds = %bb.ef
  %.not381 = icmp eq i32 %i.kv, %i.mr
  br i1 %.not381, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ms = sext i32 %i.mr to i64                   ; 2 uses
  %i.mt = load ptr, ptr %i.ls, align 8, !tbaa !16
  %i.mu = getelementptr i8, ptr %i.mt, i64 %i.ml
  %i.mv = getelementptr i8, ptr %i.mu, i64 %i.ms
  %i.mw = sub nsw i64 %i.kw, %i.ms
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mv, i8 0, i64 %i.mw, i1 false)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %spec.select425 = call i32 @llvm.smax.i32(i32 %i.mr, i32 %.0240659)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ee, %bb.ei
  %.2242 = phi i32 [ %.0240659, %bb.ee ], [ %spec.select425, %bb.ei ] ; 4 uses
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %exitcond815.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count814
  br i1 %exitcond815.not, label %._crit_edge662, label %.lr.ph661, !llvm.loop !157

bb.ek:                                            ; preds = %._crit_edge662
  %i.mx = invoke noundef i32 @_Z9ToPercentll(i64 noundef %.0247, i64 noundef %.0274.ph.ph)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.el:                                            ; preds = %bb.ek
  %i.my = load i8, ptr %i.lt, align 4, !tbaa !104, !range !81, !noundef !82
  %i.mz = trunc nuw i8 %i.my to i1
  %.not365 = icmp eq i32 %i.mx, %.0244
  %or.cond426 = select i1 %i.mz, i1 true, i1 %.not365
  br i1 %or.cond426, label %.lr.ph667, label %bb.em

bb.em:                                            ; preds = %bb.el
  invoke void @_Z17uiProcessProgressPKcll(ptr noundef nonnull @.str.5, i64 noundef %.0247, i64 noundef %.0274.ph.ph)
          to label %.lr.ph667 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader502:                                    ; preds = %._crit_edge19.i
  br i1 %.not364650, label %.lr.ph669, label %.loopexit503.backedge

.loopexit503.backedge:                            ; preds = %bb.ep, %.preheader502
  br label %.loopexit503

.lr.ph667:                                        ; preds = %bb.el, %bb.em
  %.1245 = phi i32 [ %.0244, %bb.el ], [ %i.mx, %bb.em ]
  %i.na = zext nneg i32 %.2242 to i64             ; 2 uses
  %i.nb = add nuw nsw i64 %.0247, %i.na
  %i.nc = load ptr, ptr %i.ls, align 8, !tbaa !16
  store ptr %i.nc, ptr %i.lu, align 8, !tbaa !29
end_hunk_0
begin_hunk_1_@_ZN11RecVolumes57RestoreEP11CommandDataPKwb:bb.a

bb.bt:                                            ; preds = %bb.bs
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !20
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = invoke noundef zeroext i1 %i.ig(ptr noundef nonnull align 8 dereferenceable(8256) %i.ia)
          to label %bb.bu unwind label %.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.ii, i64 noundef 2048)
          to label %bb.bv unwind label %bb.cc

bb.bv:                                            ; preds = %bb.bu
  invoke void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.3, i64 noundef 2048)
          to label %bb.bw unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.gr, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.gs, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.gt, align 8, !tbaa !83
  store ptr @.str.6, ptr %i.gu, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gv, i8 0, i64 40, i1 false)
  store i32 117, ptr %i.gw, align 8, !tbaa !86
  store i32 1, ptr %i.gx, align 8, !tbaa !87
  store ptr %i.ii, ptr %8, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %8)
          to label %bb.bx unwind label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.gz, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.ha, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hb, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hc, i8 0, i64 40, i1 false)
  store i32 119, ptr %i.hd, align 8, !tbaa !86
  store ptr %i.ii, ptr %7, align 8, !tbaa !83
  store i32 2, ptr %i.he, align 8, !tbaa !87
  store ptr %i.e, ptr %i.gy, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %7)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ij = invoke noundef zeroext i1 @_Z10RenameFilePKwS0_(ptr noundef nonnull %i.ii, ptr noundef nonnull %i.e)
          to label %bb.bz unwind label %bb.cc     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  %i.ik = load ptr, ptr %i.hx, align 8, !tbaa !124 ; 3 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !20
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(8256) %i.ik) #14
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr null, ptr %i.hx, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %.pre487 = load ptr, ptr %i.hx, align 8, !tbaa !124
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx, %bb.bw, %bb.by, %bb.bv, %bb.bu
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %.loopexit.split-lp353

bb.cd:                                            ; preds = %bb.cb, %bb.bs
  %i.iq = phi ptr [ %.pre487, %bb.cb ], [ %i.ia, %bb.bs ]
  %i.ir = icmp eq ptr %i.iq, null                 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.hx, i64 8216
  %i.it = zext i1 %i.ir to i8
  store i8 %i.it, ptr %i.is, align 8, !tbaa !199
  br i1 %i.ir, label %bb.ce, label %bb.cs

bb.ce:                                            ; preds = %bb.cd
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 5 uses
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.iu, ptr noundef nonnull %i.b, i64 noundef 2048)
          to label %bb.cf unwind label %.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hf, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hg, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hh, align 8, !tbaa !83
  store ptr @.str.6, ptr %i.hi, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hj, i8 0, i64 40, i1 false)
  store i32 118, ptr %i.hk, align 8, !tbaa !86
  store i32 1, ptr %i.hl, align 8, !tbaa !87
  store ptr %i.iu, ptr %6, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %6)
          to label %bb.cg unwind label %.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hm, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hn, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.ho, align 8, !tbaa !83
  store ptr @.str.6, ptr %i.hp, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hq, i8 0, i64 40, i1 false)
  store i32 151, ptr %i.hr, align 8, !tbaa !86
  store i32 1, ptr %i.hs, align 8, !tbaa !87
  store ptr %i.iu, ptr %5, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %5)
          to label %bb.ch unwind label %.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.iv = invoke noalias noundef nonnull dereferenceable(8256) ptr @_Znwm(i64 noundef 8256) #15
          to label %bb.ci unwind label %.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 5 uses

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN4FileC1Ev(ptr noundef nonnull align 8 dereferenceable(8256) %i.iv)
          to label %bb.cj unwind label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.iw = invoke noundef zeroext i1 @_Z10FileCreateP11CommandDataP4FilePwmPblP7RarTimeb(ptr noundef %1, ptr noundef nonnull %i.iv, ptr noundef nonnull %i.iu, i64 noundef 2048, ptr noundef nonnull %i.f, i64 noundef 9223372034707292159, ptr noundef null, i1 noundef zeroext false)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.iw, label %bb.cq, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ix = load i8, ptr %i.f, align 1, !tbaa !103, !range !81, !noundef !82
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN12ErrorHandler14CreateErrorMsgEPKw(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull %i.iu)
          to label %._crit_edge488 unwind label %bb.co

._crit_edge488:                                   ; preds = %bb.cm
  %.pre489 = load i8, ptr %i.f, align 1, !tbaa !103, !range !81
  %i.iz = trunc nuw i8 %.pre489 to i1
  %i.ja = select i1 %i.iz, i32 255, i32 9
  br label %bb.cp

bb.cn:                                            ; preds = %bb.ci
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.iv) #16
  br label %.loopexit.split-lp353

bb.co:                                            ; preds = %bb.cq, %bb.cp, %bb.cm, %bb.cj
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.loopexit.split-lp353

bb.cp:                                            ; preds = %._crit_edge488, %bb.cl
  %i.jd = phi i32 [ %i.ja, %._crit_edge488 ], [ 255, %bb.cl ]
  invoke void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef %i.jd)
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp, %bb.ck
  %i.je = load i64, ptr %i.hy, align 8, !tbaa !138
  invoke void @_ZN4File8PreallocEl(ptr noundef nonnull align 8 dereferenceable(8256) %i.iv, i64 noundef %i.je)
          to label %bb.cr unwind label %bb.co

bb.cr:                                            ; preds = %bb.cq
  store ptr %i.iv, ptr %i.hx, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cd
  invoke void @_Z14NextVolumeNamePwjb(ptr noundef nonnull %i.b, i32 noundef 2048, i1 noundef zeroext false)
          to label %bb.ct unwind label %.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %i.jf = load i32, ptr %i.gp, align 8, !tbaa !125
  %i.jg = zext i32 %i.jf to i64
  %i.jh = icmp samesign ult i64 %indvars.iv.next472, %i.jg
  br i1 %i.jh, label %bb.bs, label %._crit_edge410, !llvm.loop !188

bb.cu:                                            ; preds = %._crit_edge410
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  store ptr %i.hv, ptr %i.ji, align 8, !tbaa !127
  %i.jj = load i32, ptr %i.du, align 8, !tbaa !136 ; 2 uses
  %.not432 = icmp eq i32 %i.jj, 0
  br i1 %.not432, label %._crit_edge415, label %.lr.ph414

.lr.ph414:                                        ; preds = %bb.cu
  %i.jk = load ptr, ptr %0, align 8, !tbaa !119
  %i.jl = load i32, ptr %i.gp, align 8, !tbaa !125
  %i.jm = zext i32 %i.jl to i64
  %wide.trip.count = zext i32 %i.jj to i64
  br label %bb.cv

._crit_edge415:                                   ; preds = %bb.cz, %bb.cu
  %i.jn = load i32, ptr %i.dt, align 8, !tbaa !200
  %i.jo = udiv i32 67108864, %i.jn                ; 2 uses
  %22 = zext nneg i32 %i.jo to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.jq = and i32 %i.jo, 1
  %spec.select279.a = zext nneg i32 %i.jq to i64
  %spec.select278 = sub nsw i64 %22, %spec.select279.a
  store i64 %spec.select278, ptr %i.jp, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  invoke void @_ZN9RSCoder16C1Ev(ptr noundef nonnull align 8 dereferenceable(64) %21)
          to label %bb.da unwind label %bb.de

.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %.lr.ph, %bb.cg, %bb.cf, %bb.ch, %bb.cs, %bb.ce, %bb.bt, %bb.ay, %._crit_edge410, %bb.at, %bb.au, %bb.ac, %bb.aq, %bb.av, %._crit_edge, %bb.bn, %bb.bp, %bb.bq, %bb.br, %bb.ae, %bb.n, %bb.j, %bb.l, %bb.v, %bb.y, %bb.ad, %bb.g, %.thread, %bb.f, %bb.am, %.noexc, %bb.ak, %bb.ao, %bb.u, %bb.q, %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp353

bb.cv:                                            ; preds = %.lr.ph414, %bb.cz
  %indvars.iv474 = phi i64 [ 0, %.lr.ph414 ], [ %indvars.iv.next475, %bb.cz ] ; 4 uses
  %i.jr = getelementptr inbounds nuw [8224 x i8], ptr %i.jk, i64 %indvars.iv474 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !124
  %.not253 = icmp eq ptr %i.js, null
  br i1 %.not253, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8216
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !199, !range !81, !noundef !82
  %i.jv = xor i8 %i.ju, 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.jw = phi i8 [ 0, %bb.cv ], [ %i.jv, %bb.cw ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hv, i64 %indvars.iv474
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !103
  %i.jy = icmp samesign uge i64 %indvars.iv474, %i.jm
  %i.jz = trunc nuw i8 %i.jw to i1
  %or.cond341 = select i1 %i.jy, i1 true, i1 %i.jz
  br i1 %or.cond341, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ka = load i32, ptr %i.dt, align 8, !tbaa !200
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.dt, align 8, !tbaa !200
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %exitcond477.not = icmp eq i64 %indvars.iv.next475, %wide.trip.count
  br i1 %exitcond477.not, label %._crit_edge415, label %bb.cv, !llvm.loop !189

bb.da:                                            ; preds = %._crit_edge415
  %i.kc = load i32, ptr %i.gp, align 8, !tbaa !125
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !126
  %i.kf = load ptr, ptr %i.ji, align 8, !tbaa !127
  %i.kg = invoke noundef zeroext i1 @_ZN9RSCoder164InitEjjPb(ptr noundef nonnull align 8 dereferenceable(64) %21, i32 noundef %i.kc, i32 noundef %i.ke, ptr noundef %i.kf)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.db:                                            ; preds = %bb.da
  br i1 %i.kg, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %4, align 8, !tbaa !83
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.kh, align 8, !tbaa !83
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.kj = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ki, i8 0, i64 40, i1 false)
  store i32 55, ptr %i.kj, align 8, !tbaa !86
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %4)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.kk = load ptr, ptr %i.ji, align 8, !tbaa !127 ; 2 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.dz, label %.sink.split

bb.de:                                            ; preds = %._crit_edge415
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.df:                                            ; preds = %bb.db
  %i.kn = load i64, ptr %i.jp, align 8, !tbaa !133
  %i.ko = add i64 %i.kn, 1
  %i.kp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ko) #15
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.dg:                                            ; preds = %bb.df
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !121
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 57428
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dw, %bb.dg
  %.0177 = phi i64 [ 0, %bb.dg ], [ %i.na, %bb.dw ] ; 4 uses
  %.0174 = phi i32 [ -1, %bb.dg ], [ %.1175, %bb.dw ] ; 2 uses
  invoke void @_Z4Waitv()
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %bb.dh
  %i.kt = load i32, ptr %i.gp, align 8, !tbaa !125 ; 2 uses
  %.not433 = icmp eq i32 %i.kt, 0
  br i1 %.not433, label %.preheader, label %.lr.ph420

.lr.ph420:                                        ; preds = %bb.di
  %i.ku = sub i64 %.0180.lcssa, %.0177
  br label %bb.dj

._crit_edge421:                                   ; preds = %bb.dp
  %.not.a = icmp eq i32 %spec.select280, 0
  br i1 %.not.a, label %.preheader, label %.preheader343

.preheader343:                                    ; preds = %._crit_edge421
  %.not434 = icmp eq i32 %i.lx, 0
  br i1 %.not434, label %._crit_edge426, label %.lr.ph425

.lr.ph425:                                        ; preds = %.preheader343
  %i.kv = zext nneg i32 %spec.select280 to i64
  br label %bb.dq

bb.dj:                                            ; preds = %.lr.ph420, %bb.dp
  %indvars.iv478 = phi i64 [ 0, %.lr.ph420 ], [ %indvars.iv.next479, %bb.dp ] ; 4 uses
  %.0168418 = phi i32 [ %i.kt, %.lr.ph420 ], [ %.2, %bb.dp ] ; 2 uses
  %.0171416 = phi i32 [ 0, %.lr.ph420 ], [ %spec.select280, %bb.dp ]
  %i.kw = load ptr, ptr %i.ji, align 8, !tbaa !127 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %indvars.iv478
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !103, !range !81, !noundef !82
  %i.kz = trunc nuw i8 %i.ky to i1
  %i.la = trunc nuw i64 %indvars.iv478 to i32
  br i1 %i.kz, label %._crit_edge493, label %.preheader342

.preheader342:                                    ; preds = %bb.dj, %.preheader342
  %.1169 = phi i32 [ %i.lf, %.preheader342 ], [ %.0168418, %bb.dj ] ; 2 uses
  %i.lb = zext i32 %.1169 to i64                  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !103, !range !81, !noundef !82
  %i.le = trunc nuw i8 %i.ld to i1
  %i.lf = add i32 %.1169, 1                       ; 2 uses
  br i1 %i.le, label %._crit_edge493, label %.preheader342, !llvm.loop !190

._crit_edge493:                                   ; preds = %.preheader342, %bb.dj
  %.pre-phi = phi i64 [ %indvars.iv478, %bb.dj ], [ %i.lb, %.preheader342 ]
  %.2 = phi i32 [ %.0168418, %bb.dj ], [ %i.lf, %.preheader342 ]
  %i.lg = load ptr, ptr %0, align 8, !tbaa !119
  %i.lh = getelementptr inbounds nuw [8224 x i8], ptr %i.lg, i64 %.pre-phi ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !124 ; 3 uses
  %.not245.a = icmp eq ptr %i.li, null
  br i1 %.not245.a, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %._crit_edge493
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8216
  %i.lk = load i8, ptr %i.lj, align 8, !tbaa !199, !range !81, !noundef !82
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.lm = load i64, ptr %i.jp, align 8, !tbaa !133
  %i.ln = load ptr, ptr %i.li, align 8, !tbaa !20
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = invoke noundef i32 %i.lp(ptr noundef nonnull align 8 dereferenceable(8256) %i.li, ptr noundef nonnull %i.kp, i64 noundef %i.lm)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %._crit_edge493
  %.0166 = phi i32 [ 0, %bb.dk ], [ 0, %._crit_edge493 ], [ %i.lq, %bb.dl ] ; 2 uses
  %i.lr = sext i32 %.0166 to i64                  ; 3 uses
  %i.ls = load i64, ptr %i.jp, align 8, !tbaa !133 ; 3 uses
  %.not246 = icmp eq i64 %i.ls, %i.lr
  br i1 %.not246, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lt = getelementptr inbounds i8, ptr %i.kp, i64 %i.lr
  %i.lu = sub i64 %i.ls, %i.lr
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lt, i8 0, i64 %i.lu, i1 false)
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.lv = call i64 @llvm.umin.i64(i64 %i.ls, i64 %i.ku)
  %i.lw = trunc i64 %i.lv to i32
  invoke void @_ZN11RecVolumes59ProcessRSEP11CommandDatajPKhjb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr poison, i32 noundef %i.la, ptr noundef nonnull %i.kp, i32 noundef %i.lw, i1 noundef zeroext false)
          to label %bb.dp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dp:                                            ; preds = %bb.do
  %spec.select280 = call i32 @llvm.smax.i32(i32 %.0166, i32 %.0171416) ; 4 uses
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1 ; 2 uses
  %i.lx = load i32, ptr %i.gp, align 8, !tbaa !125 ; 3 uses
  %i.ly = zext i32 %i.lx to i64
  %i.lz = icmp samesign ult i64 %indvars.iv.next479, %i.ly
  br i1 %i.lz, label %bb.dj, label %._crit_edge421, !llvm.loop !191

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.do, %bb.dl, %bb.dr, %bb.dx, %bb.dh, %._crit_edge426, %bb.dv, %bb.dc, %bb.da, %bb.df
  %lpad.loopexit.split-lp594 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9RSCoder16D1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #14
  br label %bb.ea

._crit_edge426:                                   ; preds = %bb.dt, %.preheader343
  %i.ma = invoke noundef i32 @_Z9ToPercentll(i64 noundef %.0177, i64 noundef %.0210.ph)
          to label %bb.du unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dq:                                            ; preds = %.lr.ph425, %bb.dt
  %i.mb = phi i32 [ %i.lx, %.lr.ph425 ], [ %i.mu, %bb.dt ]
  %indvars.iv481 = phi i64 [ 0, %.lr.ph425 ], [ %indvars.iv.next482, %bb.dt ] ; 3 uses
  %.0164424 = phi i32 [ 0, %.lr.ph425 ], [ %.1, %bb.dt ] ; 3 uses
end_hunk_1
