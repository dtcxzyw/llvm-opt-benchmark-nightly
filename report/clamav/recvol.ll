Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/recvol?download=true
inline.NumInlined: 131
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN11RecVolumes37RestoreEP11CommandDataPKwb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br label %.loopexit.split-lp503

.loopexit507.thread:                              ; preds = %bb.da, %bb.dd, %.loopexit507.thread869, %bb.dq
  %.1253488 = phi i1 [ false, %bb.dq ], [ true, %.loopexit507.thread869 ], [ true, %bb.dd ], [ true, %bb.da ]
  %i.jm = load ptr, ptr %i.in, align 8, !tbaa !20
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.jo = load ptr, ptr %i.jn, align 8
  invoke void %i.jo(ptr noundef nonnull align 8 dereferenceable(57108) %i.in, i64 noundef 0, i32 noundef 0)
          to label %bb.ds unwind label %.loopexit.split-lp503.loopexit

bb.ds:                                            ; preds = %.loopexit507.thread
  br i1 %.1253488, label %bb.eb, label %.thread489

.thread489:                                       ; preds = %bb.cv, %bb.ds
  %i.jp = invoke noundef zeroext i1 @_ZN4File6CreateEPKwj(ptr noundef nonnull align 8 dereferenceable(8256) %i.in, ptr noundef nonnull %i.c, i32 noundef 18)
          to label %bb.dt unwind label %.loopexit.split-lp503.loopexit

bb.dt:                                            ; preds = %.thread489
  br i1 %i.jp, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %12, align 8, !tbaa !83
  %i.jq = getelementptr inbounds nuw i8, ptr %12, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.jq, align 8, !tbaa !83
  %i.jr = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %12, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jr, i8 0, i64 40, i1 false)
  store i32 52, ptr %i.js, align 8, !tbaa !86
  %i.jt = getelementptr inbounds nuw i8, ptr %12, i64 100
  store i32 1, ptr %i.jt, align 4, !tbaa !102
  store i32 %.0462.ph, ptr %i.jr, align 8, !tbaa !101
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %12)
          to label %bb.dv unwind label %.loopexit.split-lp503.loopexit.split-lp

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %11, align 8, !tbaa !83
  %i.ju = getelementptr inbounds nuw i8, ptr %11, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.ju, align 8, !tbaa !83
  %i.jv = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.jw = getelementptr inbounds nuw i8, ptr %11, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jv, i8 0, i64 40, i1 false)
  store i32 53, ptr %i.jw, align 8, !tbaa !86
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %11)
          to label %bb.dw unwind label %.loopexit.split-lp503.loopexit.split-lp

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  invoke void @_ZN12ErrorHandler14CreateErrorMsgEPKw(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull %i.c)
          to label %.critedge423 unwind label %.loopexit.split-lp503.loopexit.split-lp

bb.dx:                                            ; preds = %bb.dt
  %i.jx = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 1, ptr %i.jx, align 1, !tbaa !103
  %i.jy = add nsw i32 %.0460655, 1
  %i.jz = icmp eq i64 %indvars.iv, %i.im
  br i1 %i.jz, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, i64 noundef 2048)
          to label %bb.dz unwind label %.loopexit.split-lp503.loopexit

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hx, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hy, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hz, align 8, !tbaa !83
  store ptr @.str.6, ptr %i.ia, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ib, i8 0, i64 40, i1 false)
  store i32 123, ptr %i.ic, align 8, !tbaa !86
  store i32 1, ptr %i.id, align 8, !tbaa !87
  store ptr %i.c, ptr %10, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %10)
          to label %bb.ea unwind label %.loopexit.split-lp503.loopexit

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.ie, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.if, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.ig, align 8, !tbaa !83
  store ptr @.str.6, ptr %i.ih, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ii, i8 0, i64 40, i1 false)
  store i32 151, ptr %i.ij, align 8, !tbaa !86
  store i32 1, ptr %i.ik, align 8, !tbaa !87
  store ptr %i.c, ptr %9, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %9)
          to label %_Z5uiMsgIJRA2048_wEEv14UIMESSAGE_CODEDpOT_.exit435 unwind label %.loopexit.split-lp503.loopexit

_Z5uiMsgIJRA2048_wEEv14UIMESSAGE_CODEDpOT_.exit435: ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.eb

bb.eb:                                            ; preds = %_Z5uiMsgIJRA2048_wEEv14UIMESSAGE_CODEDpOT_.exit435, %bb.ds
  %.1461 = phi i32 [ %.0460655, %bb.ds ], [ %i.jy, %_Z5uiMsgIJRA2048_wEEv14UIMESSAGE_CODEDpOT_.exit435 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store ptr %i.in, ptr %i.ka, align 8, !tbaa !18
  invoke void @_Z14NextVolumeNamePwjb(ptr noundef nonnull %i.c, i32 noundef 2048, i1 noundef zeroext %i.il)
          to label %bb.ec unwind label %.loopexit.split-lp503.loopexit

bb.ec:                                            ; preds = %bb.eb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge424, label %bb.cs, !llvm.loop !155

.critedge424:                                     ; preds = %bb.ec, %bb.cr
  %.0460.lcssa = phi i32 [ 0, %bb.cr ], [ %.1461, %bb.ec ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %8, align 8, !tbaa !83
  %i.kb = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.kb, align 8, !tbaa !83
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kc, i8 0, i64 40, i1 false)
  store i32 122, ptr %i.kd, align 8, !tbaa !86
  %i.ke = getelementptr inbounds nuw i8, ptr %8, i64 100
  store i32 1, ptr %i.ke, align 4, !tbaa !102
  store i32 %.0460.lcssa, ptr %i.kc, align 8, !tbaa !101
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %8)
          to label %bb.ed unwind label %bb.ef

bb.ed:                                            ; preds = %.critedge424
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.kf = icmp eq i32 %.0460.lcssa, 0
  br i1 %i.kf, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %7, align 8, !tbaa !83
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.kg, align 8, !tbaa !83
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ki = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kh, i8 0, i64 40, i1 false)
  store i32 51, ptr %i.ki, align 8, !tbaa !86
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %7)
          to label %_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit437 unwind label %bb.ef

_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit437:       ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.critedge423

bb.ef:                                            ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.ee, %.critedge424
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp503

bb.eg:                                            ; preds = %bb.ed
  %i.kk = icmp sgt i32 %.0460.lcssa, %.0462.ph
  br i1 %i.kk, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %6, align 8, !tbaa !83
  %i.kl = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.kl, align 8, !tbaa !83
  %i.km = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.km, i8 0, i64 40, i1 false)
  store i32 52, ptr %i.kn, align 8, !tbaa !86
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 100
  store i32 1, ptr %i.ko, align 4, !tbaa !102
  store i32 %.0462.ph, ptr %i.km, align 8, !tbaa !101
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %6)
          to label %bb.ei unwind label %bb.ef

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %5, align 8, !tbaa !83
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.kp, align 8, !tbaa !83
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kq, i8 0, i64 40, i1 false)
  store i32 54, ptr %i.kr, align 8, !tbaa !86
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %5)
          to label %_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit439 unwind label %bb.ef

_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit439:       ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.critedge423

bb.ej:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %4, align 8, !tbaa !83
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.ks, align 8, !tbaa !83
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kt, i8 0, i64 40, i1 false)
  store i32 124, ptr %i.ku, align 8, !tbaa !86
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %4)
          to label %bb.ek unwind label %bb.ef

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.kv = add nuw nsw i32 %.0267.ph, %.0269.ph    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.kw = icmp sgt i32 %i.kv, 0                   ; 2 uses
  br i1 %i.kw, label %.lr.ph661.preheader, label %._crit_edge

.lr.ph661.preheader:                              ; preds = %bb.ek
  %wide.trip.count804 = zext nneg i32 %i.kv to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count804, 1
  %i.kx = icmp eq i32 %i.kv, 1
  br i1 %i.kx, label %.lr.ph661.epil.preheader, label %.lr.ph661.preheader.new

.lr.ph661.preheader.new:                          ; preds = %.lr.ph661.preheader
  %unroll_iter = and i64 %wide.trip.count804, 2147483646
  br label %.lr.ph661

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.er
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph661.epil.preheader

.lr.ph661.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph661.preheader
  %indvars.iv801.epil.init = phi i64 [ 0, %.lr.ph661.preheader ], [ %indvars.iv.next802.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0250659.epil.init = phi i32 [ 0, %.lr.ph661.preheader ], [ %.1251.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1232 = trunc i32 %i.kv to i1
  call void @llvm.assume(i1 %lcmp.mod1232)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv801.epil.init
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !103, !range !81, !noundef !82
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.lr.ph661.epil.preheader
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv801.epil.init
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !18
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.em, label %._crit_edge

bb.em:                                            ; preds = %bb.el, %.lr.ph661.epil.preheader
  %i.le = add nsw i32 %.0250659.epil.init, 1
  %i.lf = sext i32 %.0250659.epil.init to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.lf
  %i.lh = trunc nuw nsw i64 %indvars.iv801.epil.init to i32
  store i32 %i.lh, ptr %i.lg, align 4, !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.em, %bb.el, %bb.ek
  %.0250.lcssa = phi i32 [ 0, %bb.ek ], [ %.1251.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.le, %bb.em ], [ %.0250659.epil.init, %bb.el ] ; 2 uses
  %i.li = udiv i32 67108864, %i.kv                ; 2 uses
  %i.lj = zext nneg i32 %i.li to i64              ; 7 uses
  %i.lk = invoke noalias noundef nonnull dereferenceable(11336) ptr @_Znam(i64 noundef 11336) #15
          to label %_ZN8RSEncode4InitEi.exit.preheader unwind label %.loopexit.split-lp ; 11 uses

.lr.ph661:                                        ; preds = %bb.er, %.lr.ph661.preheader.new
  %indvars.iv801 = phi i64 [ 0, %.lr.ph661.preheader.new ], [ %indvars.iv.next802.1, %bb.er ] ; 5 uses
  %.0250659 = phi i32 [ 0, %.lr.ph661.preheader.new ], [ %.1251.1, %bb.er ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph661.preheader.new ], [ %niter.next.1, %bb.er ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv801
  %i.lm = load i8, ptr %i.ll, align 2, !tbaa !103, !range !81, !noundef !82
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.lr.ph661
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv801
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !18
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.eo, label %.lr.ph661.1

bb.eo:                                            ; preds = %bb.en, %.lr.ph661
  %i.lr = add nsw i32 %.0250659, 1
  %i.ls = sext i32 %.0250659 to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ls
  %i.lu = trunc nuw nsw i64 %indvars.iv801 to i32
  store i32 %i.lu, ptr %i.lt, align 4, !tbaa !101
  br label %.lr.ph661.1

.lr.ph661.1:                                      ; preds = %bb.en, %bb.eo
  %.1251 = phi i32 [ %i.lr, %bb.eo ], [ %.0250659, %bb.en ] ; 3 uses
  %indvars.iv.next802 = or disjoint i64 %indvars.iv801, 1 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next802
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !103, !range !81, !noundef !82
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph661.1
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next802
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !18
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep, %.lr.ph661.1
  %i.mb = add nsw i32 %.1251, 1
  %i.mc = sext i32 %.1251 to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.mc
  %i.me = trunc nuw nsw i64 %indvars.iv.next802 to i32
  store i32 %i.me, ptr %i.md, align 4, !tbaa !101
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.1251.1 = phi i32 [ %i.mb, %bb.eq ], [ %.1251, %bb.ep ] ; 3 uses
  %indvars.iv.next802.1 = add nuw nsw i64 %indvars.iv801, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph661, !llvm.loop !156

.preheader499:                                    ; preds = %_ZN8RSEncode4InitEi.exit.preheader
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 57428
  %wide.trip.count809 = zext nneg i32 %i.kv to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lk, i64 11280 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lk, i64 11296
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lk, i64 11300 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lk, i64 11304 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lk, i64 11312 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lk, i64 11320 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lk, i64 11328 ; 3 uses
  %wide.trip.count832 = zext nneg i32 %.0269.ph to i64
  br label %.loopexit497

.loopexit500:                                     ; preds = %.loopexit497
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

_ZN8RSEncode4InitEi.exit.preheader:               ; preds = %._crit_edge
  invoke void @_ZN7RSCoder4InitEi(ptr noundef nonnull align 8 dereferenceable(11332) %i.lk, i32 noundef %.0267.ph)
          to label %.preheader499 unwind label %bb.es

bb.es:                                            ; preds = %_ZN8RSEncode4InitEi.exit.preheader
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

.loopexit497:                                     ; preds = %.loopexit497.backedge, %.preheader499
  %.0247 = phi i64 [ 0, %.preheader499 ], [ %i.nr, %.loopexit497.backedge ] ; 3 uses
  %.0244 = phi i32 [ -1, %.preheader499 ], [ %.1245, %.loopexit497.backedge ] ; 2 uses
  invoke void @_Z4Waitv()
          to label %.preheader498 unwind label %.loopexit500

.preheader498:                                    ; preds = %.loopexit497
  br i1 %i.kw, label %.lr.ph665, label %.thread871

.thread871:                                       ; preds = %.preheader498
  call void @_ZdaPv(ptr noundef nonnull %i.lk) #16
  br label %._crit_edge678

._crit_edge666:                                   ; preds = %bb.fa
  %i.mp = icmp eq i32 %.2242, 0
  br i1 %i.mp, label %.lr.ph677, label %bb.fb

.lr.ph665:                                        ; preds = %.preheader498, %bb.fa
  %indvars.iv806 = phi i64 [ %indvars.iv.next807, %bb.fa ], [ 0, %.preheader498 ] ; 5 uses
  %.0240663 = phi i32 [ %.2242, %bb.fa ], [ 0, %.preheader498 ] ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv806
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !103, !range !81, !noundef !82
  %i.ms = trunc nuw i8 %i.mr to i1
  br i1 %i.ms, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.lr.ph665
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv806
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !18 ; 3 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et, %.lr.ph665
  %i.mw = mul nuw nsw i64 %indvars.iv806, %i.lj
  %i.mx = load ptr, ptr %i.mf, align 8, !tbaa !16
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 0, i64 %i.lj, i1 false)
  br label %bb.fa

bb.ev:                                            ; preds = %bb.et
  %i.mz = mul nuw nsw i64 %indvars.iv806, %i.lj   ; 2 uses
  %i.na = load ptr, ptr %i.mf, align 8, !tbaa !16
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.mz
  %i.nc = load ptr, ptr %i.mu, align 8, !tbaa !20
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = invoke noundef i32 %i.ne(ptr noundef nonnull align 8 dereferenceable(8256) %i.mu, ptr noundef nonnull %i.nb, i64 noundef %i.lj)
          to label %bb.ew unwind label %bb.ey     ; 3 uses

bb.ew:                                            ; preds = %bb.ev
  %.not381 = icmp eq i32 %i.li, %i.nf
  br i1 %.not381, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ng = sext i32 %i.nf to i64                   ; 2 uses
  %i.nh = load ptr, ptr %i.mf, align 8, !tbaa !16
  %i.ni = getelementptr i8, ptr %i.nh, i64 %i.mz
  %i.nj = getelementptr i8, ptr %i.ni, i64 %i.ng
  %i.nk = sub nsw i64 %i.lj, %i.ng
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.nj, i8 0, i64 %i.nk, i1 false)
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ev
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.ez:                                            ; preds = %bb.ex, %bb.ew
  %spec.select425 = call i32 @llvm.smax.i32(i32 %i.nf, i32 %.0240663)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.eu, %bb.ez
  %.2242 = phi i32 [ %.0240663, %bb.eu ], [ %spec.select425, %bb.ez ] ; 4 uses
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 1 ; 2 uses
  %exitcond810.not = icmp eq i64 %indvars.iv.next807, %wide.trip.count809
  br i1 %exitcond810.not, label %._crit_edge666, label %.lr.ph665, !llvm.loop !157

bb.fb:                                            ; preds = %._crit_edge666
  %i.nm = invoke noundef i32 @_Z9ToPercentll(i64 noundef %.0247, i64 noundef %.0274.ph.ph)
          to label %bb.fc unwind label %bb.fe     ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %i.nn = load i8, ptr %i.mg, align 4, !tbaa !104, !range !81, !noundef !82
  %i.no = trunc nuw i8 %i.nn to i1
end_hunk_0
begin_hunk_1_@_ZN11RecVolumes57RestoreEP11CommandDataPKwb:bb.a
  %i.io = invoke noundef zeroext i1 %i.in(ptr noundef nonnull align 8 dereferenceable(8256) %i.ig)
          to label %bb.cb unwind label %bb.bz     ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.ip = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 4 uses
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.e, ptr noundef nonnull %i.ip, i64 noundef 2048)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  invoke void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.3, i64 noundef 2048)
          to label %bb.cd unwind label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.gx, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.gy, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.gz, align 8, !tbaa !83
  store ptr @.str.6, ptr %i.ha, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hb, i8 0, i64 40, i1 false)
  store i32 117, ptr %i.hc, align 8, !tbaa !86
  store i32 1, ptr %i.hd, align 8, !tbaa !87
  store ptr %i.ip, ptr %8, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %8)
          to label %bb.ce unwind label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hf, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hg, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hh, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hi, i8 0, i64 40, i1 false)
  store i32 119, ptr %i.hj, align 8, !tbaa !86
  store ptr %i.ip, ptr %7, align 8, !tbaa !83
  store i32 2, ptr %i.hk, align 8, !tbaa !87
  store ptr %i.e, ptr %i.he, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %7)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.iq = invoke noundef zeroext i1 @_Z10RenameFilePKwS0_(ptr noundef nonnull %i.ip, ptr noundef nonnull %i.e)
          to label %bb.cg unwind label %bb.cj     ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  %i.ir = load ptr, ptr %i.id, align 8, !tbaa !124 ; 3 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.it = load ptr, ptr %i.ir, align 8, !tbaa !20
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(8256) %i.ir) #14
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store ptr null, ptr %i.id, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %.pre492 = load ptr, ptr %i.id, align 8, !tbaa !124
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ce, %bb.cd, %bb.cf, %bb.cc, %bb.cb
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.es

bb.ck:                                            ; preds = %bb.ci, %bb.by
  %i.ix = phi ptr [ %.pre492, %bb.ci ], [ %i.ig, %bb.by ]
  %i.iy = icmp eq ptr %i.ix, null                 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.id, i64 8216
  %i.ja = zext i1 %i.iy to i8
  store i8 %i.ja, ptr %i.iz, align 8, !tbaa !199
  br i1 %i.iy, label %bb.cl, label %bb.da

bb.cl:                                            ; preds = %bb.ck
  %i.jb = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 5 uses
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.jb, ptr noundef nonnull %i.b, i64 noundef 2048)
          to label %bb.cm unwind label %bb.bz

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hl, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hm, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hn, align 8, !tbaa !83
  store ptr @.str.6, ptr %i.ho, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hp, i8 0, i64 40, i1 false)
  store i32 118, ptr %i.hq, align 8, !tbaa !86
  store i32 1, ptr %i.hr, align 8, !tbaa !87
  store ptr %i.jb, ptr %6, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %6)
          to label %bb.cn unwind label %bb.bz

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hs, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.ht, align 8, !tbaa !83
  store <2 x ptr> <ptr @.str.6, ptr @.str.6>, ptr %i.hu, align 8, !tbaa !83
  store ptr @.str.6, ptr %i.hv, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hw, i8 0, i64 40, i1 false)
  store i32 151, ptr %i.hx, align 8, !tbaa !86
  store i32 1, ptr %i.hy, align 8, !tbaa !87
  store ptr %i.jb, ptr %5, align 8, !tbaa !83
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %5)
          to label %bb.co unwind label %bb.bz

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.jc = invoke noalias noundef nonnull dereferenceable(8256) ptr @_Znwm(i64 noundef 8256) #15
          to label %bb.cp unwind label %bb.cu     ; 5 uses

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN4FileC1Ev(ptr noundef nonnull align 8 dereferenceable(8256) %i.jc)
          to label %bb.cq unwind label %bb.cv

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.jd = invoke noundef zeroext i1 @_Z10FileCreateP11CommandDataP4FilePwmPblP7RarTimeb(ptr noundef %1, ptr noundef nonnull %i.jc, ptr noundef nonnull %i.jb, i64 noundef 2048, ptr noundef nonnull %i.f, i64 noundef 9223372034707292159, ptr noundef null, i1 noundef zeroext false)
          to label %bb.cr unwind label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.jd, label %bb.cy, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.je = load i8, ptr %i.f, align 1, !tbaa !103, !range !81, !noundef !82
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN12ErrorHandler14CreateErrorMsgEPKw(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull %i.jb)
          to label %._crit_edge493 unwind label %bb.cw

._crit_edge493:                                   ; preds = %bb.ct
  %.pre494 = load i8, ptr %i.f, align 1, !tbaa !103, !range !81
  %i.jg = trunc nuw i8 %.pre494 to i1
  %i.jh = select i1 %i.jg, i32 255, i32 9
  br label %bb.cx

bb.cu:                                            ; preds = %bb.co
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.cv:                                            ; preds = %bb.cp
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.jc) #16
  br label %bb.es

bb.cw:                                            ; preds = %bb.cy, %bb.cx, %bb.ct, %bb.cq
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.es

bb.cx:                                            ; preds = %._crit_edge493, %bb.cs
  %i.jl = phi i32 [ %i.jh, %._crit_edge493 ], [ 255, %bb.cs ]
  invoke void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef %i.jl)
          to label %bb.cy unwind label %bb.cw

bb.cy:                                            ; preds = %bb.cx, %bb.cr
  %i.jm = load i64, ptr %i.ie, align 8, !tbaa !138
  invoke void @_ZN4File8PreallocEl(ptr noundef nonnull align 8 dereferenceable(8256) %i.jc, i64 noundef %i.jm)
          to label %bb.cz unwind label %bb.cw

bb.cz:                                            ; preds = %bb.cy
  store ptr %i.jc, ptr %i.id, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.ck
  invoke void @_Z14NextVolumeNamePwjb(ptr noundef nonnull %i.b, i32 noundef 2048, i1 noundef zeroext false)
          to label %bb.db unwind label %bb.bz

bb.db:                                            ; preds = %bb.da
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.jn = load i32, ptr %i.gv, align 8, !tbaa !125
  %i.jo = zext i32 %i.jn to i64
  %i.jp = icmp samesign ult i64 %indvars.iv.next477, %i.jo
  br i1 %i.jp, label %bb.by, label %._crit_edge415, !llvm.loop !188

bb.dc:                                            ; preds = %._crit_edge415
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  store ptr %i.ib, ptr %i.jq, align 8, !tbaa !127
  %i.jr = load i32, ptr %i.dz, align 8, !tbaa !136 ; 2 uses
  %.not437 = icmp eq i32 %i.jr, 0
  br i1 %.not437, label %._crit_edge420, label %.lr.ph419

.lr.ph419:                                        ; preds = %bb.dc
  %i.js = load ptr, ptr %0, align 8, !tbaa !119
  %i.jt = load i32, ptr %i.gv, align 8, !tbaa !125
  %i.ju = zext i32 %i.jt to i64
  %wide.trip.count = zext i32 %i.jr to i64
  br label %bb.de

._crit_edge420:                                   ; preds = %bb.di, %bb.dc
  %i.jv = load i32, ptr %i.dy, align 8, !tbaa !200
  %i.jw = udiv i32 67108864, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.jy = and i32 %i.jw, 134217726
  %spec.select279.a = zext nneg i32 %i.jy to i64
  store i64 %spec.select279.a, ptr %i.jx, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  invoke void @_ZN9RSCoder16C1Ev(ptr noundef nonnull align 8 dereferenceable(64) %21)
          to label %bb.dj unwind label %bb.dn

bb.dd:                                            ; preds = %._crit_edge415
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.de:                                            ; preds = %.lr.ph419, %bb.di
  %indvars.iv479 = phi i64 [ 0, %.lr.ph419 ], [ %indvars.iv.next480, %bb.di ] ; 4 uses
  %i.ka = getelementptr inbounds nuw [8224 x i8], ptr %i.js, i64 %indvars.iv479 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !124
  %.not253 = icmp eq ptr %i.kb, null
  br i1 %.not253, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8216
  %i.kd = load i8, ptr %i.kc, align 8, !tbaa !199, !range !81, !noundef !82
  %i.ke = xor i8 %i.kd, 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.kf = phi i8 [ 0, %bb.de ], [ %i.ke, %bb.df ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv479
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !103
  %i.kh = icmp samesign uge i64 %indvars.iv479, %i.ju
  %i.ki = trunc nuw i8 %i.kf to i1
  %or.cond341 = select i1 %i.kh, i1 true, i1 %i.ki
  br i1 %or.cond341, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kj = load i32, ptr %i.dy, align 8, !tbaa !200
  %i.kk = add i32 %i.kj, 1
  store i32 %i.kk, ptr %i.dy, align 8, !tbaa !200
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next480, %wide.trip.count
  br i1 %exitcond482.not, label %._crit_edge420, label %bb.de, !llvm.loop !189

bb.dj:                                            ; preds = %._crit_edge420
  %i.kl = load i32, ptr %i.gv, align 8, !tbaa !125
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !126
  %i.ko = load ptr, ptr %i.jq, align 8, !tbaa !127
  %i.kp = invoke noundef zeroext i1 @_ZN9RSCoder164InitEjjPb(ptr noundef nonnull align 8 dereferenceable(64) %21, i32 noundef %i.kl, i32 noundef %i.kn, ptr noundef %i.ko)
          to label %bb.dk unwind label %bb.do     ; 2 uses

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.kp, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %4, align 8, !tbaa !83
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <4 x ptr> <ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6>, ptr %i.kq, align 8, !tbaa !83
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kr, i8 0, i64 40, i1 false)
  store i32 55, ptr %i.ks, align 8, !tbaa !86
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %4)
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.kt = load ptr, ptr %i.jq, align 8, !tbaa !127 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.ep, label %.sink.split

bb.dn:                                            ; preds = %._crit_edge420
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.do:                                            ; preds = %bb.dl, %bb.dp, %bb.dj
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.dp:                                            ; preds = %bb.dk
  %i.kx = load i64, ptr %i.jx, align 8, !tbaa !133
  %i.ky = add i64 %i.kx, 1
  %i.kz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ky) #15
          to label %bb.dq unwind label %bb.do     ; 4 uses

bb.dq:                                            ; preds = %bb.dp
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !121
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 57428
  br label %bb.dr

bb.dr:                                            ; preds = %bb.el, %bb.dq
  %.0177 = phi i64 [ 0, %bb.dq ], [ %i.np, %bb.el ] ; 4 uses
  %.0174 = phi i32 [ -1, %bb.dq ], [ %.1175, %bb.el ] ; 2 uses
  invoke void @_Z4Waitv()
          to label %bb.ds unwind label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.ld = load i32, ptr %i.gv, align 8, !tbaa !125 ; 2 uses
  %.not438 = icmp eq i32 %i.ld, 0
  br i1 %.not438, label %.preheader, label %.lr.ph425

.lr.ph425:                                        ; preds = %bb.ds
  %i.le = sub i64 %.0180.lcssa, %.0177
  br label %bb.du

._crit_edge426:                                   ; preds = %bb.eb
  %.not.a = icmp eq i32 %spec.select280, 0
  br i1 %.not.a, label %.preheader, label %.preheader343

.preheader343:                                    ; preds = %._crit_edge426
  %.not439 = icmp eq i32 %i.mj, 0
  br i1 %.not439, label %._crit_edge431, label %.lr.ph430

.lr.ph430:                                        ; preds = %.preheader343
  %i.lf = zext nneg i32 %spec.select280 to i64
  br label %bb.ed

bb.dt:                                            ; preds = %bb.dr
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.du:                                            ; preds = %.lr.ph425, %bb.eb
  %indvars.iv483 = phi i64 [ 0, %.lr.ph425 ], [ %indvars.iv.next484, %bb.eb ] ; 4 uses
  %.0168423 = phi i32 [ %i.ld, %.lr.ph425 ], [ %.2, %bb.eb ] ; 2 uses
  %.0171421 = phi i32 [ 0, %.lr.ph425 ], [ %spec.select280, %bb.eb ]
  %i.lh = load ptr, ptr %i.jq, align 8, !tbaa !127 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv483
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !103, !range !81, !noundef !82
  %i.lk = trunc nuw i8 %i.lj to i1
  %i.ll = trunc nuw i64 %indvars.iv483 to i32
  br i1 %i.lk, label %._crit_edge498, label %.preheader342

.preheader342:                                    ; preds = %bb.du, %.preheader342
  %.1169 = phi i32 [ %i.lq, %.preheader342 ], [ %.0168423, %bb.du ] ; 2 uses
  %i.lm = zext i32 %.1169 to i64                  ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !103, !range !81, !noundef !82
  %i.lp = trunc nuw i8 %i.lo to i1
  %i.lq = add i32 %.1169, 1                       ; 2 uses
  br i1 %i.lp, label %._crit_edge498, label %.preheader342, !llvm.loop !190

._crit_edge498:                                   ; preds = %.preheader342, %bb.du
  %.pre-phi = phi i64 [ %indvars.iv483, %bb.du ], [ %i.lm, %.preheader342 ]
  %.2 = phi i32 [ %.0168423, %bb.du ], [ %i.lq, %.preheader342 ]
  %i.lr = load ptr, ptr %0, align 8, !tbaa !119
  %i.ls = getelementptr inbounds nuw [8224 x i8], ptr %i.lr, i64 %.pre-phi ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !124 ; 3 uses
  %.not245.a = icmp eq ptr %i.lt, null
  br i1 %.not245.a, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %._crit_edge498
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8216
  %i.lv = load i8, ptr %i.lu, align 8, !tbaa !199, !range !81, !noundef !82
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.lx = load i64, ptr %i.jx, align 8, !tbaa !133
  %i.ly = load ptr, ptr %i.lt, align 8, !tbaa !20
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = invoke noundef i32 %i.ma(ptr noundef nonnull align 8 dereferenceable(8256) %i.lt, ptr noundef nonnull %i.kz, i64 noundef %i.lx)
          to label %bb.dy unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.dy:                                            ; preds = %bb.dw, %bb.dv, %._crit_edge498
  %.0166 = phi i32 [ 0, %bb.dv ], [ 0, %._crit_edge498 ], [ %i.mb, %bb.dw ] ; 2 uses
  %i.md = sext i32 %.0166 to i64                  ; 3 uses
  %i.me = load i64, ptr %i.jx, align 8, !tbaa !133 ; 3 uses
  %.not246 = icmp eq i64 %i.me, %i.md
  br i1 %.not246, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mf = getelementptr inbounds i8, ptr %i.kz, i64 %i.md
  %i.mg = sub i64 %i.me, %i.md
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mf, i8 0, i64 %i.mg, i1 false)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.mh = call i64 @llvm.umin.i64(i64 %i.me, i64 %i.le)
  %i.mi = trunc i64 %i.mh to i32
  invoke void @_ZN11RecVolumes59ProcessRSEP11CommandDatajPKhjb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr poison, i32 noundef %i.ll, ptr noundef nonnull %i.kz, i32 noundef %i.mi, i1 noundef zeroext false)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %spec.select280 = call i32 @llvm.smax.i32(i32 %.0166, i32 %.0171421) ; 4 uses
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %i.mj = load i32, ptr %i.gv, align 8, !tbaa !125 ; 3 uses
  %i.mk = zext i32 %i.mj to i64
  %i.ml = icmp samesign ult i64 %indvars.iv.next484, %i.mk
  br i1 %i.ml, label %bb.du, label %._crit_edge426, !llvm.loop !191
end_hunk_1
