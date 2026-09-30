Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/TextureTransform?download=true
inline.NumInlined: 493
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
_ZNK6Assimp17STransformVecInfoeqERKS0_.exit:      ; preds = %bb.aj
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 32
  %i.hh = load float, ptr %i.hg, align 8
  %i.hi = fsub float %i.hh, %i.gl
  %i.hj = call noundef float @llvm.fabs.f32(float %i.hi)
  %i.hk = fcmp ule float %i.hj, 5.000000e-02
  br i1 %i.hk, label %bb.ak, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread

bb.ak:                                            ; preds = %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 36
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = icmp eq i32 %i.hm, %spec.store.select
  br i1 %i.hn, label %bb.al, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.ho = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %.loopexit585 unwind label %bb.am ; 5 uses

bb.am:                                            ; preds = %.loopexit585.thread, %.loopexit584, %bb.al
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread: ; preds = %bb.aj, %bb.ah, %bb.ag, %bb.ai, %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit, %bb.ak
  %.sroa.0520.0 = load ptr, ptr %.sroa.0520.0617, align 8 ; 2 uses
  %.not567 = icmp eq ptr %.sroa.0520.0, %i.gg
  br i1 %.not567, label %.loopexit585.thread, label %bb.ag, !llvm.loop !27

.loopexit585:                                     ; preds = %bb.al
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 56
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store ptr %.sroa.0532.0.lcssa, ptr %i.hr, align 8
  %.sroa.8534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store ptr %i.bn, ptr %.sroa.8534.0..sroa_idx, align 8
  %.sroa.9537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  store i32 %i.bz, ptr %.sroa.9537.0..sroa_idx, align 8
  %.sroa.10540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ho, i64 36
  store i32 %i.cb, ptr %.sroa.10540.0..sroa_idx, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %i.hq) #17
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 72 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = add i64 %i.ht, 1
  store i64 %i.hu, ptr %i.hs, align 8
  %i.hv = icmp eq ptr %.sroa.0520.0617, %i.gg
  br i1 %i.hv, label %.loopexit585.thread, label %bb.ao

.loopexit585.thread:                              ; preds = %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread, %bb.af, %.loopexit585
  %i.hw = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %.noexc375 unwind label %bb.am ; 7 uses

.noexc375:                                        ; preds = %.loopexit585.thread
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hx, ptr noundef nonnull align 16 dereferenceable(64) %2, i64 20, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hy, ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i64 16, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 56 ; 7 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 64
  store ptr %i.hz, ptr %i.ia, align 8
  store ptr %i.hz, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 72 ; 3 uses
  store i64 0, ptr %i.ib, align 8
  %i.ic = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ic, %i.as
  br i1 %.not4.i.i.i.i, label %.loopexit584, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc375, %.noexc.i.i.i
  %.sroa.01.05.i.i.i.i = phi ptr [ %i.ii, %.noexc.i.i.i ], [ %i.ic, %.noexc375 ] ; 2 uses
  %i.id = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %.noexc.i.i.i unwind label %bb.an ; 2 uses

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i.i, i64 16
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.if, ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef nonnull align 8 dereferenceable(24) %i.hz) #17
  %i.ig = load i64, ptr %i.ib, align 8
  %i.ih = add i64 %i.ig, 1
  store i64 %i.ih, ptr %i.ib, align 8
  %i.ii = load ptr, ptr %.sroa.01.05.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i374 = icmp eq ptr %i.ii, %i.as
  br i1 %.not.i.i.i.i374, label %.loopexit584, label %.lr.ph.i.i.i.i, !llvm.loop !1

bb.an:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  %i.ik = load ptr, ptr %i.hz, align 8            ; 2 uses
  %.not8.i.i.i.i.i370 = icmp eq ptr %i.ik, %i.hz
  br i1 %.not8.i.i.i.i.i370, label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i, label %.lr.ph.i.i.i.i.i371

.lr.ph.i.i.i.i.i371:                              ; preds = %bb.an, %.lr.ph.i.i.i.i.i371
  %.09.i.i.i.i.i372 = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i371 ], [ %i.ik, %bb.an ] ; 2 uses
  %i.il = load ptr, ptr %.09.i.i.i.i.i372, align 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i372, i64 noundef 40) #18
  %.not.i.i.i.i.i373 = icmp eq ptr %i.il, %i.hz
  br i1 %.not.i.i.i.i.i373, label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i, label %.lr.ph.i.i.i.i.i371, !llvm.loop !2

_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i: ; preds = %.lr.ph.i.i.i.i.i371, %bb.an
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef 80) #18
  br label %.body

.loopexit584:                                     ; preds = %.noexc.i.i.i, %.noexc375
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %i.gg) #17
  %i.im = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8
  %i.io = add i64 %i.in, 1
  store i64 %i.io, ptr %i.im, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 36
  store i32 %spec.store.select, ptr %i.ir, align 4
  %i.is = load ptr, ptr %i.ip, align 8            ; 2 uses
  %i.it = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %_ZNSt7__cxx114listIN6Assimp12TTUpdateInfoESaIS2_EE9push_backERKS2_.exit286 unwind label %bb.am ; 5 uses

_ZNSt7__cxx114listIN6Assimp12TTUpdateInfoESaIS2_EE9push_backERKS2_.exit286: ; preds = %.loopexit584
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store ptr %.sroa.0532.0.lcssa, ptr %i.iv, align 8
  %.sroa.8534.0..sroa_idx535 = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store ptr %i.bn, ptr %.sroa.8534.0..sroa_idx535, align 8
  %.sroa.9537.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  store i32 %i.bz, ptr %.sroa.9537.0..sroa_idx538, align 8
  %.sroa.10540.0..sroa_idx541 = getelementptr inbounds nuw i8, ptr %i.it, i64 36
  store i32 %i.cb, ptr %.sroa.10540.0..sroa_idx541, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef nonnull align 8 dereferenceable(24) %i.iu) #17
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 72 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = add i64 %i.ix, 1
  store i64 %i.iy, ptr %i.iw, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit585, %_ZNSt7__cxx114listIN6Assimp12TTUpdateInfoESaIS2_EE9push_backERKS2_.exit286, %bb.ad, %.lr.ph623, %bb.aa
  %indvars.iv.next701 = add nuw nsw i64 %indvars.iv700, 1 ; 2 uses
  %i.iz = load i32, ptr %i.l, align 8
  %i.ja = zext i32 %i.iz to i64
  %i.jb = icmp samesign ult i64 %indvars.iv.next701, %i.ja
  br i1 %i.jb, label %.lr.ph623, label %._crit_edge624, !llvm.loop !28

._crit_edge624:                                   ; preds = %bb.ao
  %i.jc = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.jc, %i.as
  br i1 %.not8.i.i.i, label %.sink.split, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge624, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.jd, %.lr.ph.i.i.i ], [ %i.jc, %._crit_edge624 ] ; 2 uses
  %i.jd = load ptr, ptr %.09.i.i.i, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 40) #18
  %.not.i.i.i = icmp eq ptr %i.jd, %i.as
  br i1 %.not.i.i.i, label %.sink.split, label %.lr.ph.i.i.i, !llvm.loop !2

.body:                                            ; preds = %bb.am, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i, %bb.ae, %bb.x
  %.pn268.pn = phi { ptr, i32 } [ %i.ei, %bb.x ], [ %i.gf, %bb.ae ], [ %i.hp, %bb.am ], [ %i.ij, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i ]
  %i.je = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not8.i.i.i287 = icmp eq ptr %i.je, %i.as
  br i1 %.not8.i.i.i287, label %_ZN6Assimp17STransformVecInfoD2Ev.exit291, label %.lr.ph.i.i.i288

.lr.ph.i.i.i288:                                  ; preds = %.body, %.lr.ph.i.i.i288
  %.09.i.i.i289 = phi ptr [ %i.jf, %.lr.ph.i.i.i288 ], [ %i.je, %.body ] ; 2 uses
  %i.jf = load ptr, ptr %.09.i.i.i289, align 8    ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i289, i64 noundef 40) #18
  %.not.i.i.i290 = icmp eq ptr %i.jf, %i.as
  br i1 %.not.i.i.i290, label %_ZN6Assimp17STransformVecInfoD2Ev.exit291, label %.lr.ph.i.i.i288, !llvm.loop !2

_ZN6Assimp17STransformVecInfoD2Ev.exit291:        ; preds = %.lr.ph.i.i.i288, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.dq

.critedge280:                                     ; preds = %bb.v, %._crit_edge613
  %i.jg = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not8.i.i.i292 = icmp eq ptr %i.jg, %i.as
  br i1 %.not8.i.i.i292, label %.sink.split, label %.lr.ph.i.i.i293

.lr.ph.i.i.i293:                                  ; preds = %.critedge280, %.lr.ph.i.i.i293
  %.09.i.i.i294 = phi ptr [ %i.jh, %.lr.ph.i.i.i293 ], [ %i.jg, %.critedge280 ] ; 2 uses
  %i.jh = load ptr, ptr %.09.i.i.i294, align 8    ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i294, i64 noundef 40) #18
  %.not.i.i.i295 = icmp eq ptr %i.jh, %i.as
  br i1 %.not.i.i.i295, label %.sink.split, label %.lr.ph.i.i.i293, !llvm.loop !2

.sink.split:                                      ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i293, %.critedge280, %._crit_edge624
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %.lr.ph627
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 1 ; 2 uses
  %i.ji = load i32, ptr %i.bo, align 8
  %i.jj = zext i32 %i.ji to i64
  %i.jk = icmp samesign ult i64 %indvars.iv.next704, %i.jj
  br i1 %i.jk, label %.lr.ph627, label %._crit_edge628.loopexit, !llvm.loop !29

._crit_edge677:                                   ; preds = %.critedge678, %._crit_edge631
  %i.jl = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.dg unwind label %bb.dk

bb.aq:                                            ; preds = %.lr.ph676, %.critedge678
  %indvars.iv720 = phi i64 [ 0, %.lr.ph676 ], [ %indvars.iv.next721, %.critedge678 ] ; 4 uses
  %i.jm = load ptr, ptr %i.bc, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv720
  %i.jo = load ptr, ptr %i.jn, align 8            ; 2 uses
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0545.0, i64 %indvars.iv720 ; 24 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 112 ; 5 uses
  %i.jr = load <8 x ptr>, ptr %i.jq, align 8
  %3 = load ptr, ptr %i.jq, align 8
  %i.js = icmp ne <8 x ptr> %i.jr, splat (ptr null)
  %i.jt = bitcast <8 x i1> %i.js to i8
  %i.ju = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.jt)
  %i.jv = zext nneg i8 %i.ju to i32               ; 2 uses
  %i.jw = load i32, ptr %i.e, align 4
  %i.jx = add i32 %i.jw, %i.jv
  store i32 %i.jx, ptr %i.e, align 4
  %.not.i.not = icmp eq ptr %3, null
  br i1 %.not.i.not, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jy = load ptr, ptr %i.jp, align 8            ; 4 uses
  %i.jz = icmp eq ptr %i.jy, %i.jp
  br i1 %i.jz, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 21 uses
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = icmp eq i64 %i.kb, 1
  br i1 %i.kc, label %bb.at, label %.lr.ph637.preheader

bb.at:                                            ; preds = %bb.as
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ke = load <4 x float>, ptr %i.kd, align 8
  %.fr841 = freeze <4 x float> %i.ke
  %i.kf = fcmp une <4 x float> %.fr841, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.kg = bitcast <4 x i1> %i.kf to i4
  %.not842 = icmp eq i4 %i.kg, 0
  br i1 %.not842, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit, label %.lr.ph637.preheader

.lr.ph637.preheader:                              ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit, %bb.as, %bb.at
  br label %.lr.ph637

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit: ; preds = %bb.at
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ki = load float, ptr %i.kh, align 8
  %i.kj = fcmp olt float %i.ki, f0x3C0EFA35
  br i1 %i.kj, label %.critedge, label %.lr.ph637.preheader

.critedge:                                        ; preds = %bb.ar, %bb.aq, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit
  %i.kk = load i32, ptr %i.d, align 4
  %i.kl = add i32 %i.kk, %i.jv
  store i32 %i.kl, ptr %i.d, align 4
  br label %.critedge678

.lr.ph637:                                        ; preds = %.lr.ph637.preheader, %.critedge4
  %.0223636 = phi i32 [ %i.lq, %.critedge4 ], [ 0, %.lr.ph637.preheader ] ; 2 uses
  %.0225635 = phi i1 [ %i.ku, %.critedge4 ], [ false, %.lr.ph637.preheader ]
  %.0228634 = phi i1 [ %.1229, %.critedge4 ], [ false, %.lr.ph637.preheader ]
  %.sroa.0481.0633 = phi ptr [ %i.lp, %.critedge4 ], [ %i.jy, %.lr.ph637.preheader ] ; 11 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 16
  %i.kn = load <4 x float>, ptr %i.km, align 8
  %.fr843 = freeze <4 x float> %i.kn
  %i.ko = fcmp une <4 x float> %.fr843, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.kp = bitcast <4 x i1> %i.ko to i4
  %i.kq = icmp ne i4 %i.kp, 0                     ; 2 uses
  br i1 %i.kq, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315.thread, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315: ; preds = %.lr.ph637
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 32
  %i.ks = load float, ptr %i.kr, align 8
  %.fr = freeze float %i.ks
  %i.kt = fcmp uge float %.fr, f0x3C0EFA35
  %spec.select560 = select i1 %i.kt, i1 true, i1 %.0225635
  br label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315.thread

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315.thread: ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315, %.lr.ph637
  %i.ku = phi i1 [ true, %.lr.ph637 ], [ %spec.select560, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315 ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 48 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 8
  %i.kx = icmp eq i32 %i.kw, -1
  br i1 %i.kx, label %bb.au, label %bb.av

.loopexit577:                                     ; preds = %.preheader572.preheader, %bb.az
  %lpad.loopexit579 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit.split-lp578:                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread
  %lpad.loopexit.split-lp580 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.au:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315.thread
  store i32 %.0223636, ptr %i.kv, align 8
  br label %.critedge4

bb.av:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315.thread
  br i1 %.0228634, label %.critedge4, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ky = load ptr, ptr %i.jp, align 8            ; 2 uses
  %.not563 = icmp eq ptr %.sroa.0481.0633, %i.ky
  %brmerge = or i1 %i.kq, %.not563
  br i1 %brmerge, label %.critedge4, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit319

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit319: ; preds = %bb.aw
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 32
  %i.la = load float, ptr %i.kz, align 8
  %i.lb = fcmp olt float %i.la, f0x3C0EFA35
  br i1 %i.lb, label %.lr.ph641.preheader, label %.critedge4

.lr.ph641.preheader:                              ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit319
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 16
  br label %.lr.ph641

.lr.ph641:                                        ; preds = %.lr.ph641.preheader, %bb.ax
  %.sroa.0469.0640 = phi ptr [ %i.lk, %bb.ax ], [ %i.ky, %.lr.ph641.preheader ] ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0469.0640, i64 16
  %i.le = load <4 x float>, ptr %i.ld, align 8
  %.fr844 = freeze <4 x float> %i.le
  %i.lf = fcmp une <4 x float> %.fr844, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.lg = bitcast <4 x i1> %i.lf to i4
  %.not845 = icmp eq i4 %i.lg, 0
  br i1 %.not845, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323: ; preds = %.lr.ph641
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0469.0640, i64 32
  %i.li = load float, ptr %i.lh, align 8
  %i.lj = fcmp olt float %i.li, f0x3C0EFA35
  br i1 %i.lj, label %bb.ax, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread

bb.ax:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323
  %i.lk = load ptr, ptr %.sroa.0469.0640, align 8 ; 3 uses
  %.not564 = icmp eq ptr %i.lk, %.sroa.0481.0633
  br i1 %.not564, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread, label %.lr.ph641, !llvm.loop !30

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread: ; preds = %bb.ax, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323, %.lr.ph641
  %.sroa.0469.0.lcssa.ph = phi ptr [ %i.lk, %bb.ax ], [ %.sroa.0469.0640, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323 ], [ %.sroa.0469.0640, %.lr.ph641 ]
  %i.ll = invoke noundef ptr @_ZNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(64) %i.lc)
          to label %bb.ay unwind label %.loopexit.split-lp578

bb.ay:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef %.sroa.0469.0.lcssa.ph) #17
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0481.0633) #17
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 56 ; 3 uses
  %i.ln = load ptr, ptr %i.lm, align 8            ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ln, %i.lm
  br i1 %.not8.i.i.i.i.i, label %_ZNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS2_EE5eraseESt20_List_const_iteratorIS2_E.exit, label %.lr.ph.i.i.i.i.i325

.lr.ph.i.i.i.i.i325:                              ; preds = %bb.ay, %.lr.ph.i.i.i.i.i325
  %.09.i.i.i.i.i = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i325 ], [ %i.ln, %bb.ay ] ; 2 uses
  %i.lo = load ptr, ptr %.09.i.i.i.i.i, align 8   ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 40) #18
  %.not.i.i.i.i.i326 = icmp eq ptr %i.lo, %i.lm
  br i1 %.not.i.i.i.i.i326, label %_ZNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS2_EE5eraseESt20_List_const_iteratorIS2_E.exit, label %.lr.ph.i.i.i.i.i325, !llvm.loop !2

_ZNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS2_EE5eraseESt20_List_const_iteratorIS2_E.exit: ; preds = %.lr.ph.i.i.i.i.i325, %bb.ay
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0481.0633, i64 noundef 80) #18
  br label %.loopexit583

.critedge4:                                       ; preds = %bb.aw, %bb.av, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit319, %bb.au
  %.1229 = phi i1 [ true, %bb.au ], [ false, %bb.aw ], [ false, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit319 ], [ true, %bb.av ]
  %i.lp = load ptr, ptr %.sroa.0481.0633, align 8 ; 2 uses
  %i.lq = add i32 %.0223636, 1
  %.not562 = icmp eq ptr %i.lp, %i.jp
  br i1 %.not562, label %.loopexit583, label %.lr.ph637, !llvm.loop !31

.loopexit583:                                     ; preds = %.critedge4, %_ZNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS2_EE5eraseESt20_List_const_iteratorIS2_E.exit
  br i1 %i.ku, label %.preheader576, label %.critedge678

.preheader576:                                    ; preds = %.loopexit583
  %.sroa.0481.1647 = load ptr, ptr %i.jp, align 8 ; 3 uses
  %.not565648 = icmp eq ptr %.sroa.0481.1647, %i.jp
  br i1 %.not565648, label %._crit_edge653, label %.lr.ph652

.lr.ph652:                                        ; preds = %.preheader576, %bb.ba
  %.sroa.0481.1651 = phi ptr [ %.sroa.0481.1, %bb.ba ], [ %.sroa.0481.1647, %.preheader576 ] ; 2 uses
  %.1224649 = phi i32 [ %i.lu, %bb.ba ], [ 0, %.preheader576 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0481.1651, i64 48
  %i.ls = load i32, ptr %i.lr, align 8            ; 2 uses
  %.not252 = icmp eq i32 %i.ls, -286331154
  %.not253 = icmp eq i32 %i.ls, %.1224649
  %or.cond = select i1 %.not252, i1 true, i1 %.not253
  br i1 %or.cond, label %bb.ba, label %.preheader572.preheader

.preheader572.preheader:                          ; preds = %.lr.ph652
  %i.lt = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.az unwind label %.loopexit577

bb.az:                                            ; preds = %.preheader572.preheader
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.lt, ptr noundef nonnull @.str.16)
          to label %bb.ba unwind label %.loopexit577

bb.ba:                                            ; preds = %.lr.ph652, %bb.az
  %i.lu = add i32 %.1224649, 1
  %.sroa.0481.1 = load ptr, ptr %.sroa.0481.1651, align 8 ; 2 uses
  %.not565 = icmp eq ptr %.sroa.0481.1, %i.jp
  br i1 %.not565, label %._crit_edge653.loopexit, label %.lr.ph652, !llvm.loop !32

._crit_edge653.loopexit:                          ; preds = %bb.ba
  %.sroa.0481.2656.pre = load ptr, ptr %i.jp, align 8
  br label %._crit_edge653

._crit_edge653:                                   ; preds = %._crit_edge653.loopexit, %.preheader576
  %.sroa.0481.2656 = phi ptr [ %.sroa.0481.1647, %.preheader576 ], [ %.sroa.0481.2656.pre, %._crit_edge653.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.lv = load <8 x ptr>, ptr %i.jq, align 8
  %i.lw = icmp eq <8 x ptr> %i.lv, splat (ptr null) ; 2 uses
  %i.lx = zext <8 x i1> %i.lw to <8 x i8>
  store <8 x i8> %i.lx, ptr %i.g, align 8
  %.not566657 = icmp eq ptr %.sroa.0481.2656, %i.jp
  br i1 %.not566657, label %.preheader574, label %.lr.ph659

.preheader574.loopexit:                           ; preds = %.lr.ph659
  %.pre724 = load i8, ptr %i.g, align 8, !range !42
  %i.ly = trunc nuw i8 %.pre724 to i1
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  br i1 %i.ly, label %bb.bd, label %bb.bb
end_hunk_0
