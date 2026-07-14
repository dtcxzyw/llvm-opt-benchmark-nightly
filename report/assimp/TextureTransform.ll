inline.NumInlined: 493
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
  br i1 %i.he, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit

_ZNK6Assimp17STransformVecInfoeqERKS0_.exit:      ; preds = %bb.aj
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 32
  %i.hg = load float, ptr %i.hf, align 8
  %i.hh = fsub float %i.hg, %i.gk
  %i.hi = call noundef float @llvm.fabs.f32(float %i.hh)
  %i.hj = fcmp ule float %i.hi, 5.000000e-02
  br i1 %i.hj, label %bb.ak, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread

bb.ak:                                            ; preds = %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 36
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = icmp eq i32 %i.hl, %spec.store.select
  br i1 %i.hm, label %bb.al, label %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.hn = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %.loopexit585 unwind label %bb.am ; 5 uses

bb.am:                                            ; preds = %.loopexit585.thread, %.loopexit584, %bb.al
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread: ; preds = %bb.aj, %bb.ah, %bb.ag, %bb.ai, %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit, %bb.ak
  %.sroa.0520.0 = load ptr, ptr %.sroa.0520.0617, align 8 ; 2 uses
  %.not567 = icmp eq ptr %.sroa.0520.0, %i.gf
  br i1 %.not567, label %.loopexit585.thread, label %bb.ag, !llvm.loop !26

.loopexit585:                                     ; preds = %bb.al
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 56
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store ptr %.sroa.0532.0.lcssa, ptr %i.hq, align 8
  %.sroa.8534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr %i.bm, ptr %.sroa.8534.0..sroa_idx, align 8
  %.sroa.9537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store i32 %i.by, ptr %.sroa.9537.0..sroa_idx, align 8
  %.sroa.10540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 36
  store i32 %i.ca, ptr %.sroa.10540.0..sroa_idx, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %i.hp) #17
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0520.0617, i64 72 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.hr, align 8
  %i.hu = icmp eq ptr %.sroa.0520.0617, %i.gf
  br i1 %i.hu, label %.loopexit585.thread, label %bb.ao

.loopexit585.thread:                              ; preds = %_ZNK6Assimp17STransformVecInfoeqERKS0_.exit.thread, %bb.af, %.loopexit585
  %i.hv = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %.noexc375 unwind label %bb.am ; 7 uses

.noexc375:                                        ; preds = %.loopexit585.thread
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hw, ptr noundef nonnull align 16 dereferenceable(64) %2, i64 20, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hx, ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 56 ; 7 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  store ptr %i.hy, ptr %i.hz, align 8
  store ptr %i.hy, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 72 ; 3 uses
  store i64 0, ptr %i.ia, align 8
  %i.ib = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ib, %i.as
  br i1 %.not4.i.i.i.i, label %.loopexit584, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc375, %.noexc.i.i.i
  %.sroa.01.05.i.i.i.i = phi ptr [ %i.ih, %.noexc.i.i.i ], [ %i.ib, %.noexc375 ] ; 2 uses
  %i.ic = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %.noexc.i.i.i unwind label %bb.an ; 2 uses

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i.i, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr noundef nonnull align 8 dereferenceable(24) %i.id, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(24) %i.hy) #17
  %i.if = load i64, ptr %i.ia, align 8
  %i.ig = add i64 %i.if, 1
  store i64 %i.ig, ptr %i.ia, align 8
  %i.ih = load ptr, ptr %.sroa.01.05.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i374 = icmp eq ptr %i.ih, %i.as
  br i1 %.not.i.i.i.i374, label %.loopexit584, label %.lr.ph.i.i.i.i, !llvm.loop !27

bb.an:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  %i.ij = load ptr, ptr %i.hy, align 8            ; 2 uses
  %.not8.i.i.i.i.i370 = icmp eq ptr %i.ij, %i.hy
  br i1 %.not8.i.i.i.i.i370, label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i, label %.lr.ph.i.i.i.i.i371

.lr.ph.i.i.i.i.i371:                              ; preds = %bb.an, %.lr.ph.i.i.i.i.i371
  %.09.i.i.i.i.i372 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i371 ], [ %i.ij, %bb.an ] ; 2 uses
  %i.ik = load ptr, ptr %.09.i.i.i.i.i372, align 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i372, i64 noundef 40) #18
  %.not.i.i.i.i.i373 = icmp eq ptr %i.ik, %i.hy
  br i1 %.not.i.i.i.i.i373, label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i, label %.lr.ph.i.i.i.i.i371, !llvm.loop !28

_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i: ; preds = %.lr.ph.i.i.i.i.i371, %bb.an
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef 80) #18
  br label %.body

.loopexit584:                                     ; preds = %.noexc.i.i.i, %.noexc375
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %i.gf) #17
  %i.il = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.il, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 36
  store i32 %spec.store.select, ptr %i.iq, align 4
  %i.ir = load ptr, ptr %i.io, align 8            ; 2 uses
  %i.is = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19
          to label %_ZNSt7__cxx114listIN6Assimp12TTUpdateInfoESaIS2_EE9push_backERKS2_.exit286 unwind label %bb.am ; 5 uses

_ZNSt7__cxx114listIN6Assimp12TTUpdateInfoESaIS2_EE9push_backERKS2_.exit286: ; preds = %.loopexit584
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store ptr %.sroa.0532.0.lcssa, ptr %i.iu, align 8
  %.sroa.8534.0..sroa_idx535 = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store ptr %i.bm, ptr %.sroa.8534.0..sroa_idx535, align 8
  %.sroa.9537.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  store i32 %i.by, ptr %.sroa.9537.0..sroa_idx538, align 8
  %.sroa.10540.0..sroa_idx541 = getelementptr inbounds nuw i8, ptr %i.is, i64 36
  store i32 %i.ca, ptr %.sroa.10540.0..sroa_idx541, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %i.it) #17
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 72 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = add i64 %i.iw, 1
  store i64 %i.ix, ptr %i.iv, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit585, %_ZNSt7__cxx114listIN6Assimp12TTUpdateInfoESaIS2_EE9push_backERKS2_.exit286, %bb.ad, %.lr.ph623, %bb.aa
  %indvars.iv.next701 = add nuw nsw i64 %indvars.iv700, 1 ; 2 uses
  %i.iy = load i32, ptr %i.l, align 8
  %i.iz = zext i32 %i.iy to i64
  %i.ja = icmp samesign ult i64 %indvars.iv.next701, %i.iz
  br i1 %i.ja, label %.lr.ph623, label %._crit_edge624, !llvm.loop !29

._crit_edge624:                                   ; preds = %bb.ao
  %i.jb = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.jb, %i.as
  br i1 %.not8.i.i.i, label %.sink.split, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge624, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i ], [ %i.jb, %._crit_edge624 ] ; 2 uses
  %i.jc = load ptr, ptr %.09.i.i.i, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 40) #18
  %.not.i.i.i = icmp eq ptr %i.jc, %i.as
  br i1 %.not.i.i.i, label %.sink.split, label %.lr.ph.i.i.i, !llvm.loop !28

.body:                                            ; preds = %bb.am, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i, %bb.ae, %bb.x
  %.pn268.pn = phi { ptr, i32 } [ %i.eh, %bb.x ], [ %i.ge, %bb.ae ], [ %i.ho, %bb.am ], [ %i.ii, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp17STransformVecInfoEEEED2Ev.exit9.i ]
  %i.jd = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not8.i.i.i287 = icmp eq ptr %i.jd, %i.as
  br i1 %.not8.i.i.i287, label %_ZN6Assimp17STransformVecInfoD2Ev.exit291, label %.lr.ph.i.i.i288

.lr.ph.i.i.i288:                                  ; preds = %.body, %.lr.ph.i.i.i288
  %.09.i.i.i289 = phi ptr [ %i.je, %.lr.ph.i.i.i288 ], [ %i.jd, %.body ] ; 2 uses
  %i.je = load ptr, ptr %.09.i.i.i289, align 8    ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i289, i64 noundef 40) #18
  %.not.i.i.i290 = icmp eq ptr %i.je, %i.as
  br i1 %.not.i.i.i290, label %_ZN6Assimp17STransformVecInfoD2Ev.exit291, label %.lr.ph.i.i.i288, !llvm.loop !28

_ZN6Assimp17STransformVecInfoD2Ev.exit291:        ; preds = %.lr.ph.i.i.i288, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.dq

.critedge280:                                     ; preds = %bb.v, %._crit_edge613
  %i.jf = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not8.i.i.i292 = icmp eq ptr %i.jf, %i.as
  br i1 %.not8.i.i.i292, label %.sink.split, label %.lr.ph.i.i.i293

.lr.ph.i.i.i293:                                  ; preds = %.critedge280, %.lr.ph.i.i.i293
  %.09.i.i.i294 = phi ptr [ %i.jg, %.lr.ph.i.i.i293 ], [ %i.jf, %.critedge280 ] ; 2 uses
  %i.jg = load ptr, ptr %.09.i.i.i294, align 8    ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i294, i64 noundef 40) #18
  %.not.i.i.i295 = icmp eq ptr %i.jg, %i.as
  br i1 %.not.i.i.i295, label %.sink.split, label %.lr.ph.i.i.i293, !llvm.loop !28

.sink.split:                                      ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i293, %.critedge280, %._crit_edge624
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %.lr.ph627
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 1 ; 2 uses
  %i.jh = load i32, ptr %i.bn, align 8
  %i.ji = zext i32 %i.jh to i64
  %i.jj = icmp samesign ult i64 %indvars.iv.next704, %i.ji
  br i1 %i.jj, label %.lr.ph627, label %._crit_edge628.loopexit, !llvm.loop !30

._crit_edge677:                                   ; preds = %.critedge678, %._crit_edge631
  %i.jk = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.dg unwind label %bb.dk

bb.aq:                                            ; preds = %.lr.ph676, %.critedge678
  %indvars.iv720 = phi i64 [ 0, %.lr.ph676 ], [ %indvars.iv.next721, %.critedge678 ] ; 4 uses
  %i.jl = load ptr, ptr %i.bb, align 8
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv720
  %i.jn = load ptr, ptr %i.jm, align 8            ; 6 uses
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0545.0, i64 %indvars.iv720 ; 24 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.jn, i64 112 ; 5 uses
  %4 = load <4 x ptr>, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne <4 x ptr> %4, splat (ptr null)
  %7 = getelementptr inbounds nuw i8, ptr %i.jn, i64 144
  %8 = load ptr, ptr %7, align 8
  %.not.4.i = icmp ne ptr %8, null
  %9 = zext i1 %.not.4.i to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 152
  %10 = load ptr, ptr %i.jp, align 8
  %.not.5.i = icmp ne ptr %10, null
  %11 = zext i1 %.not.5.i to i32
  %12 = getelementptr inbounds nuw i8, ptr %i.jn, i64 160
  %i.jq = load ptr, ptr %12, align 8
  %.not.6.i = icmp ne ptr %i.jq, null
  %13 = zext i1 %.not.6.i to i32
  %14 = bitcast <4 x i1> %6 to i4
  %15 = call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %14)
  %16 = zext nneg i4 %15 to i32
  %op.rdx842 = add nuw nsw i32 %16, %9
  %op.rdx843 = add nuw nsw i32 %11, %13
  %op.rdx844 = add nuw nsw i32 %op.rdx842, %op.rdx843
  %17 = getelementptr inbounds nuw i8, ptr %i.jn, i64 168
  %18 = load ptr, ptr %17, align 8
  %.not.7.i = icmp ne ptr %18, null
  %i.jr = zext i1 %.not.7.i to i32
  %spec.select.7.i = add nuw nsw i32 %op.rdx844, %i.jr ; 2 uses
  %i.js = load i32, ptr %i.e, align 4
  %i.jt = add i32 %spec.select.7.i, %i.js
  store i32 %i.jt, ptr %i.e, align 4
  %.not238 = icmp eq ptr %5, null
  br i1 %.not238, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ju = load ptr, ptr %i.jo, align 8            ; 4 uses
  %i.jv = icmp eq ptr %i.ju, %i.jo
  br i1 %i.jv, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 21 uses
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = icmp eq i64 %i.jx, 1
  br i1 %i.jy, label %bb.at, label %.lr.ph637.preheader

bb.at:                                            ; preds = %bb.as
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.ka = load <4 x float>, ptr %i.jz, align 8
  %.fr845.a = freeze <4 x float> %i.ka
  %i.kb = fcmp une <4 x float> %.fr845.a, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.kc = bitcast <4 x i1> %i.kb to i4
  %.not846.a = icmp eq i4 %i.kc, 0
  br i1 %.not846.a, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit, label %.lr.ph637.preheader

.lr.ph637.preheader:                              ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit, %bb.as, %bb.at
  br label %.lr.ph637

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit: ; preds = %bb.at
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.ke = load float, ptr %i.kd, align 8
  %i.kf = fcmp olt float %i.ke, f0x3C0EFA35
  br i1 %i.kf, label %.critedge, label %.lr.ph637.preheader

.critedge:                                        ; preds = %bb.ar, %bb.aq, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit
  %i.kg = load i32, ptr %i.d, align 4
  %i.kh = add i32 %i.kg, %spec.select.7.i
  store i32 %i.kh, ptr %i.d, align 4
  br label %.critedge678

.lr.ph637:                                        ; preds = %.lr.ph637.preheader, %.critedge4
  %.0222636 = phi i1 [ %.1223, %.critedge4 ], [ false, %.lr.ph637.preheader ]
  %.0224635 = phi i1 [ %i.kq, %.critedge4 ], [ false, %.lr.ph637.preheader ]
  %.0227634 = phi i32 [ %i.lm, %.critedge4 ], [ 0, %.lr.ph637.preheader ] ; 2 uses
  %.sroa.0481.0633 = phi ptr [ %i.ll, %.critedge4 ], [ %i.ju, %.lr.ph637.preheader ] ; 11 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 16
  %i.kj = load <4 x float>, ptr %i.ki, align 8
  %.fr847.a = freeze <4 x float> %i.kj
  %i.kk = fcmp une <4 x float> %.fr847.a, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.kl = bitcast <4 x i1> %i.kk to i4
  %i.km = icmp ne i4 %i.kl, 0                     ; 2 uses
  br i1 %i.km, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315.thread, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315: ; preds = %.lr.ph637
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 32
  %i.ko = load float, ptr %i.kn, align 8
  %.fr = freeze float %i.ko
  %i.kp = fcmp uge float %.fr, f0x3C0EFA35
  %spec.select560 = select i1 %i.kp, i1 true, i1 %.0224635
  br label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315.thread

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315.thread: ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315, %.lr.ph637
  %i.kq = phi i1 [ true, %.lr.ph637 ], [ %spec.select560, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 48 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 8
  %i.kt = icmp eq i32 %i.ks, -1
  br i1 %i.kt, label %bb.au, label %bb.av

.loopexit577:                                     ; preds = %.preheader572.preheader, %bb.az
  %lpad.loopexit579 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit.split-lp578:                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread
  %lpad.loopexit.split-lp580 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.au:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315.thread
  store i32 %.0227634, ptr %i.kr, align 8
  br label %.critedge4

bb.av:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit315.thread
  br i1 %.0222636, label %.critedge4, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ku = load ptr, ptr %i.jo, align 8            ; 2 uses
  %.not563 = icmp eq ptr %.sroa.0481.0633, %i.ku
  %brmerge = or i1 %i.km, %.not563
  br i1 %brmerge, label %.critedge4, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit319

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit319: ; preds = %bb.aw
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 32
  %i.kw = load float, ptr %i.kv, align 8
  %i.kx = fcmp olt float %i.kw, f0x3C0EFA35
  br i1 %i.kx, label %.lr.ph641.preheader, label %.critedge4

.lr.ph641.preheader:                              ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit319
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 16
  br label %.lr.ph641

.lr.ph641:                                        ; preds = %.lr.ph641.preheader, %bb.ax
  %.sroa.0469.0640 = phi ptr [ %i.lg, %bb.ax ], [ %i.ku, %.lr.ph641.preheader ] ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0469.0640, i64 16
  %i.la = load <4 x float>, ptr %i.kz, align 8
  %.fr848 = freeze <4 x float> %i.la
  %i.lb = fcmp une <4 x float> %.fr848, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.lc = bitcast <4 x i1> %i.lb to i4
  %.not849 = icmp eq i4 %i.lc, 0
  br i1 %.not849, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323: ; preds = %.lr.ph641
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0469.0640, i64 32
  %i.le = load float, ptr %i.ld, align 8
  %i.lf = fcmp olt float %i.le, f0x3C0EFA35
  br i1 %i.lf, label %bb.ax, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread

bb.ax:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323
  %i.lg = load ptr, ptr %.sroa.0469.0640, align 8 ; 3 uses
  %.not564 = icmp eq ptr %i.lg, %.sroa.0481.0633
  br i1 %.not564, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread, label %.lr.ph641, !llvm.loop !31

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread: ; preds = %bb.ax, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323, %.lr.ph641
  %.sroa.0469.0.lcssa.ph = phi ptr [ %i.lg, %bb.ax ], [ %.sroa.0469.0640, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323 ], [ %.sroa.0469.0640, %.lr.ph641 ]
  %i.lh = invoke noundef ptr @_ZNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.jo, ptr noundef nonnull align 8 dereferenceable(64) %i.ky)
          to label %bb.ay unwind label %.loopexit.split-lp578

bb.ay:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.lh, ptr noundef %.sroa.0469.0.lcssa.ph) #17
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0481.0633) #17
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0481.0633, i64 56 ; 3 uses
  %i.lj = load ptr, ptr %i.li, align 8            ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.lj, %i.li
  br i1 %.not8.i.i.i.i.i, label %_ZNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS2_EE5eraseESt20_List_const_iteratorIS2_E.exit, label %.lr.ph.i.i.i.i.i325

.lr.ph.i.i.i.i.i325:                              ; preds = %bb.ay, %.lr.ph.i.i.i.i.i325
  %.09.i.i.i.i.i = phi ptr [ %i.lk, %.lr.ph.i.i.i.i.i325 ], [ %i.lj, %bb.ay ] ; 2 uses
  %i.lk = load ptr, ptr %.09.i.i.i.i.i, align 8   ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 40) #18
  %.not.i.i.i.i.i326 = icmp eq ptr %i.lk, %i.li
  br i1 %.not.i.i.i.i.i326, label %_ZNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS2_EE5eraseESt20_List_const_iteratorIS2_E.exit, label %.lr.ph.i.i.i.i.i325, !llvm.loop !28

_ZNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS2_EE5eraseESt20_List_const_iteratorIS2_E.exit: ; preds = %.lr.ph.i.i.i.i.i325, %bb.ay
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0481.0633, i64 noundef 80) #18
  br label %.loopexit583

.critedge4:                                       ; preds = %bb.aw, %bb.av, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit319, %bb.au
  %.1223 = phi i1 [ true, %bb.au ], [ false, %bb.aw ], [ false, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit319 ], [ true, %bb.av ]
  %i.ll = load ptr, ptr %.sroa.0481.0633, align 8 ; 2 uses
  %i.lm = add i32 %.0227634, 1
  %.not562 = icmp eq ptr %i.ll, %i.jo
  br i1 %.not562, label %.loopexit583, label %.lr.ph637, !llvm.loop !32

.loopexit583:                                     ; preds = %.critedge4, %_ZNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS2_EE5eraseESt20_List_const_iteratorIS2_E.exit
  br i1 %i.kq, label %.preheader576, label %.critedge678

.preheader576:                                    ; preds = %.loopexit583
  %.sroa.0481.1647 = load ptr, ptr %i.jo, align 8 ; 3 uses
  %.not565648 = icmp eq ptr %.sroa.0481.1647, %i.jo
  br i1 %.not565648, label %._crit_edge653, label %.lr.ph652

.lr.ph652:                                        ; preds = %.preheader576, %bb.ba
  %.sroa.0481.1651 = phi ptr [ %.sroa.0481.1, %bb.ba ], [ %.sroa.0481.1647, %.preheader576 ] ; 2 uses
  %.1228650 = phi i32 [ %i.lq, %bb.ba ], [ 0, %.preheader576 ] ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0481.1651, i64 48
  %i.lo = load i32, ptr %i.ln, align 8            ; 2 uses
  %.not252 = icmp eq i32 %i.lo, -286331154
  %.not253 = icmp eq i32 %i.lo, %.1228650
  %or.cond = select i1 %.not252, i1 true, i1 %.not253
  br i1 %or.cond, label %bb.ba, label %.preheader572.preheader

.preheader572.preheader:                          ; preds = %.lr.ph652
  %i.lp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.az unwind label %.loopexit577

bb.az:                                            ; preds = %.preheader572.preheader
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.lp, ptr noundef nonnull @.str.16)
          to label %bb.ba unwind label %.loopexit577

bb.ba:                                            ; preds = %.lr.ph652, %bb.az
  %i.lq = add i32 %.1228650, 1
  %.sroa.0481.1 = load ptr, ptr %.sroa.0481.1651, align 8 ; 2 uses
  %.not565 = icmp eq ptr %.sroa.0481.1, %i.jo
  br i1 %.not565, label %._crit_edge653.loopexit, label %.lr.ph652, !llvm.loop !33

._crit_edge653.loopexit:                          ; preds = %bb.ba
  %.sroa.0481.2656.pre = load ptr, ptr %i.jo, align 8
  br label %._crit_edge653

._crit_edge653:                                   ; preds = %._crit_edge653.loopexit, %.preheader576
  %.sroa.0481.2656 = phi ptr [ %.sroa.0481.1647, %.preheader576 ], [ %.sroa.0481.2656.pre, %._crit_edge653.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.lr = load <8 x ptr>, ptr %3, align 8
  %i.ls = icmp eq <8 x ptr> %i.lr, splat (ptr null) ; 2 uses
  %i.lt = zext <8 x i1> %i.ls to <8 x i8>
  store <8 x i8> %i.lt, ptr %i.g, align 8
  %.not566657 = icmp eq ptr %.sroa.0481.2656, %i.jo
  br i1 %.not566657, label %.preheader574, label %.lr.ph659

.preheader574.loopexit:                           ; preds = %.lr.ph659
  %.pre725 = load i8, ptr %i.g, align 8, !range !34
  %i.lu = trunc nuw i8 %.pre725 to i1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  br i1 %i.lu, label %bb.bd, label %bb.bb

.preheader574:                                    ; preds = %._crit_edge653
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.lx = extractelement <8 x i1> %i.ls, i64 0
  br i1 %i.lx, label %bb.bd, label %bb.bb

.lr.ph659:                                        ; preds = %._crit_edge653, %.lr.ph659
  %.sroa.0481.2658 = phi ptr [ %.sroa.0481.2, %.lr.ph659 ], [ %.sroa.0481.2656, %._crit_edge653 ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0481.2658, i64 36
  %i.lz = load i32, ptr %i.ly, align 4
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ma
  store i8 1, ptr %i.mb, align 1
  %.sroa.0481.2 = load ptr, ptr %.sroa.0481.2658, align 8 ; 2 uses
  %.not566 = icmp eq ptr %.sroa.0481.2, %i.jo
  br i1 %.not566, label %.preheader574.loopexit, label %.lr.ph659, !llvm.loop !35

bb.bb:                                            ; preds = %.preheader574.loopexit, %.preheader574
  %i.mc = phi ptr [ %i.lv, %.preheader574.loopexit ], [ %i.lw, %.preheader574 ] ; 2 uses
  %i.md = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bc unwind label %bb.bz     ; 8 uses

bb.bc:                                            ; preds = %bb.bb
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.me, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.mf, align 4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.mh, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 56 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.md, i64 64
  store ptr %i.mi, ptr %i.mj, align 8
  store ptr %i.mi, ptr %i.mi, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.md, i64 72
  store i64 0, ptr %i.mk, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.md, ptr noundef nonnull align 8 dereferenceable(24) %i.jo) #17
  %i.ml = load i64, ptr %i.jw, align 8
  %i.mm = add i64 %i.ml, 1
  store i64 %i.mm, ptr %i.jw, align 8
  %i.mn = load ptr, ptr %i.mc, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 36
  store i32 0, ptr %i.mo, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %.preheader574.loopexit, %.preheader574, %bb.bc
  %i.mp = phi ptr [ %i.lv, %.preheader574.loopexit ], [ %i.lw, %.preheader574 ], [ %i.mc, %bb.bc ] ; 7 uses
  %i.mq = load i8, ptr %i.bc, align 1, !range !34, !noundef !36
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ms = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bf unwind label %bb.bz     ; 8 uses

bb.bf:                                            ; preds = %bb.be
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.mt, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.mu, align 4
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mv, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.mw, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 56 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 64
  store ptr %i.mx, ptr %i.my, align 8
  store ptr %i.mx, ptr %i.mx, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 72
  store i64 0, ptr %i.mz, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ms, ptr noundef nonnull align 8 dereferenceable(24) %i.jo) #17
  %i.na = load i64, ptr %i.jw, align 8
  %i.nb = add i64 %i.na, 1
  store i64 %i.nb, ptr %i.jw, align 8
  %i.nc = load ptr, ptr %i.mp, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 36
  store i32 1, ptr %i.nd, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %i.ne = load i8, ptr %i.bd, align 2, !range !34, !noundef !36
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ng = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bi unwind label %bb.bz     ; 8 uses

bb.bi:                                            ; preds = %bb.bh
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.nh, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.ni, align 4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nj, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 56 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ng, i64 64
  store ptr %i.nl, ptr %i.nm, align 8
  store ptr %i.nl, ptr %i.nl, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 72
  store i64 0, ptr %i.nn, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ng, ptr noundef nonnull align 8 dereferenceable(24) %i.jo) #17
  %i.no = load i64, ptr %i.jw, align 8
  %i.np = add i64 %i.no, 1
  store i64 %i.np, ptr %i.jw, align 8
  %i.nq = load ptr, ptr %i.mp, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 36
  store i32 2, ptr %i.nr, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %i.ns = load i8, ptr %i.be, align 1, !range !34, !noundef !36
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nu = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bl unwind label %bb.bz     ; 8 uses

bb.bl:                                            ; preds = %bb.bk
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.nv, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.nw, align 4
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nx, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.ny, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 56 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 64
  store ptr %i.nz, ptr %i.oa, align 8
  store ptr %i.nz, ptr %i.nz, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 72
  store i64 0, ptr %i.ob, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.nu, ptr noundef nonnull align 8 dereferenceable(24) %i.jo) #17
  %i.oc = load i64, ptr %i.jw, align 8
  %i.od = add i64 %i.oc, 1
  store i64 %i.od, ptr %i.jw, align 8
  %i.oe = load ptr, ptr %i.mp, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 36
  store i32 3, ptr %i.of, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj
  %i.og = load i8, ptr %i.bf, align 4, !range !34, !noundef !36
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.oi = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bo unwind label %bb.bz     ; 8 uses

bb.bo:                                            ; preds = %bb.bn
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.oj, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.ok, align 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 32
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ol, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.om, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 56 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  store ptr %i.on, ptr %i.oo, align 8
  store ptr %i.on, ptr %i.on, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.oi, i64 72
  store i64 0, ptr %i.op, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.oi, ptr noundef nonnull align 8 dereferenceable(24) %i.jo) #17
  %i.oq = load i64, ptr %i.jw, align 8
  %i.or = add i64 %i.oq, 1
  store i64 %i.or, ptr %i.jw, align 8
  %i.os = load ptr, ptr %i.mp, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 36
  store i32 4, ptr %i.ot, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bm
  %i.ou = load i8, ptr %i.bg, align 1, !range !34, !noundef !36
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ow = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.br unwind label %bb.bz     ; 8 uses

bb.br:                                            ; preds = %bb.bq
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ox, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.oy, align 4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oz, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 56 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 64
  store ptr %i.pb, ptr %i.pc, align 8
  store ptr %i.pb, ptr %i.pb, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 72
  store i64 0, ptr %i.pd, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ow, ptr noundef nonnull align 8 dereferenceable(24) %i.jo) #17
  %i.pe = load i64, ptr %i.jw, align 8
  %i.pf = add i64 %i.pe, 1
  store i64 %i.pf, ptr %i.jw, align 8
  %i.pg = load ptr, ptr %i.mp, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 36
  store i32 5, ptr %i.ph, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %i.pi = load i8, ptr %i.bh, align 2, !range !34, !noundef !36
  %i.pj = trunc nuw i8 %i.pi to i1
  br i1 %i.pj, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pk = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bu unwind label %bb.bz     ; 8 uses

bb.bu:                                            ; preds = %bb.bt
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.pl, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.pm, align 4
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.po, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 56 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 64
  store ptr %i.pp, ptr %i.pq, align 8
  store ptr %i.pp, ptr %i.pp, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pk, i64 72
  store i64 0, ptr %i.pr, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.pk, ptr noundef nonnull align 8 dereferenceable(24) %i.jo) #17
  %i.ps = load i64, ptr %i.jw, align 8
  %i.pt = add i64 %i.ps, 1
  store i64 %i.pt, ptr %i.jw, align 8
  %i.pu = load ptr, ptr %i.mp, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 36
  store i32 6, ptr %i.pv, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %i.pw = load i8, ptr %i.bi, align 1, !range !34, !noundef !36
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.py = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bx unwind label %bb.bz     ; 8 uses

bb.bx:                                            ; preds = %bb.bw
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.pz, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.qa, align 4
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 32
  %i.qc = getelementptr inbounds nuw i8, ptr %i.py, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qb, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.qc, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 56 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 64
  store ptr %i.qd, ptr %i.qe, align 8
  store ptr %i.qd, ptr %i.qd, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.py, i64 72
  store i64 0, ptr %i.qf, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.py, ptr noundef nonnull align 8 dereferenceable(24) %i.jo) #17
  %i.qg = load i64, ptr %i.jw, align 8
  %i.qh = add i64 %i.qg, 1
  store i64 %i.qh, ptr %i.jw, align 8
  %i.qi = load ptr, ptr %i.mp, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 36
  store i32 7, ptr %i.qj, align 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bv
  %i.qk = load i64, ptr %i.jw, align 8            ; 2 uses
  %i.ql = trunc i64 %i.qk to i32                  ; 2 uses
  %i.qm = icmp ugt i32 %i.ql, 8
  br i1 %i.qm, label %bb.ca, label %.preheader573

bb.bz:                                            ; preds = %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh, %bb.be, %bb.bb
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.ca:                                            ; preds = %bb.by
  %i.qo = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.qo, label %.preheader573thread-pre-split, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.qq = load i64, ptr %i.jw, align 8
  %i.qr = trunc i64 %i.qq to i32
  store i32 %i.qr, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store i32 8, ptr %i.i, align 4
  invoke void @_ZN6Assimp6Logger5errorIJjRA32_KciRA11_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.qp, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 1 dereferenceable(32) @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 1 dereferenceable(11) @.str.18)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %.preheader573thread-pre-split

bb.cf:                                            ; preds = %bb.cc, %bb.ca
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.cg:                                            ; preds = %bb.cd
  %i.qt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %bb.df

.preheader573thread-pre-split:                    ; preds = %bb.ce, %bb.cb
  %.pr780 = load i64, ptr %i.jw, align 8
  br label %.preheader573

.preheader573:                                    ; preds = %.preheader573thread-pre-split, %bb.by
  %i.qu = phi i64 [ %.pr780, %.preheader573thread-pre-split ], [ %i.qk, %bb.by ]
  %.0218 = phi i32 [ 8, %.preheader573thread-pre-split ], [ %i.ql, %bb.by ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %.not685 = icmp eq i64 %i.qu, 0
  br i1 %.not685, label %._crit_edge672, label %.lr.ph671

.lr.ph671:                                        ; preds = %.preheader573
  %i.qv = getelementptr inbounds nuw i8, ptr %i.jn, i64 4 ; 4 uses
  %i.qw = trunc nuw i64 %indvars.iv720 to i32
  br label %bb.ch

._crit_edge672:                                   ; preds = %bb.dd, %.preheader573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %.critedge678

bb.ch:                                            ; preds = %.lr.ph671, %bb.dd
  %i.qx = phi i64 [ 0, %.lr.ph671 ], [ %i.aab, %bb.dd ]
  %.sroa.0481.3669.in = phi ptr [ %i.jo, %.lr.ph671 ], [ %.sroa.0481.3669, %bb.dd ]
  %.0215667 = phi i32 [ 0, %.lr.ph671 ], [ %i.aaa, %bb.dd ] ; 7 uses
  %.sroa.0481.3669 = load ptr, ptr %.sroa.0481.3669.in, align 8 ; 15 uses
  %.not239 = icmp ult i32 %.0215667, %.0218
  br i1 %.not239, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %.sroa.08.012.i = load ptr, ptr %i.qy, align 8  ; 2 uses
  %.not1113.i = icmp eq ptr %.sroa.08.012.i, %i.qy
  br i1 %.not1113.i, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit, label %.lr.ph.i

.lr.ph.ithread-pre-split:                         ; preds = %.noexc329
  %.pr = load i32, ptr %i.b, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ci, %.lr.ph.ithread-pre-split
  %i.qz = phi i32 [ %.pr, %.lr.ph.ithread-pre-split ], [ 0, %bb.ci ] ; 2 uses
  %.sroa.08.014.i = phi ptr [ %.sroa.08.0.i, %.lr.ph.ithread-pre-split ], [ %.sroa.08.012.i, %bb.ci ] ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8            ; 2 uses
  %.not.i328 = icmp eq ptr %i.rb, null
  br i1 %.not.i328, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i
  store i32 %i.qz, ptr %i.rb, align 4
  br label %.noexc329

bb.ck:                                            ; preds = %.lr.ph.i
  %.not7.i = icmp eq i32 %i.qz, 0
  br i1 %.not7.i, label %bb.cl, label %.noexc329

bb.cl:                                            ; preds = %bb.ck
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 24
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 32
  %i.rf = load i32, ptr %i.re, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 36
  %i.rh = load i32, ptr %i.rg, align 4
  %i.ri = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %i.rf, i32 noundef %i.rh, i32 noundef 4)
          to label %.noexc329 unwind label %.loopexit571 ; 0 uses

.noexc329:                                        ; preds = %bb.cl, %bb.ck, %bb.cj
  %.sroa.08.0.i = load ptr, ptr %.sroa.08.014.i, align 8 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.08.0.i, %i.qy
  br i1 %.not11.i, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit, label %.lr.ph.ithread-pre-split, !llvm.loop !16

_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit: ; preds = %.noexc329, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.dd

.loopexit571:                                     ; preds = %bb.cl
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp:                               ; preds = %bb.cm, %bb.co, %bb.cp, %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cm:                                            ; preds = %bb.ch
  %i.rj = load i32, ptr %i.d, align 4
  %i.rk = add i32 %i.rj, 1
  store i32 %i.rk, ptr %i.d, align 4
  %i.rl = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.cn unwind label %.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.rl, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 16
  %i.rn = load float, ptr %i.rm, align 8
  %i.ro = fpext float %i.rn to double
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 20
  %i.rq = load float, ptr %i.rp, align 4
  %i.rr = fpext float %i.rq to double
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 24
  %i.rt = load float, ptr %i.rs, align 8
  %i.ru = fpext float %i.rt to double
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 28
  %i.rw = load float, ptr %i.rv, align 4
  %i.rx = fpext float %i.rw to double
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 32
  %i.rz = load float, ptr %i.ry, align 8
  %i.sa = fmul float %i.rz, f0x42652EE1
  %i.sb = fpext float %i.sa to double
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 40
  %i.sd = load i32, ptr %i.sc, align 8            ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.sd, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.26, ptr @.str.27
  %switch.selectcmp3.i = icmp eq i32 %i.sd, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.25, ptr %switch.select.i
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 44
  %i.sf = load i32, ptr %i.se, align 4            ; 2 uses
  %switch.selectcmp.i330 = icmp eq i32 %i.sf, 2
  %switch.select.i331 = select i1 %switch.selectcmp.i330, ptr @.str.26, ptr @.str.27
  %switch.selectcmp3.i332 = icmp eq i32 %i.sf, 0
  %switch.select4.i333 = select i1 %switch.selectcmp3.i332, ptr @.str.25, ptr %switch.select.i331
  %i.sg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.19, i32 noundef %i.qw, i32 noundef %.0215667, double noundef %i.ro, double noundef %i.rr, double noundef %i.ru, double noundef %i.rx, double noundef %i.sb, ptr noundef nonnull %switch.select4.i, ptr noundef nonnull %switch.select4.i333) #17 ; 0 uses
  %i.sh = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cp unwind label %.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN6Assimp6Logger4infoIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.sh, ptr noundef nonnull align 1 dereferenceable(1024) %i.c)
          to label %bb.cq unwind label %.loopexit.split-lp

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.qx ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8            ; 3 uses
  %.not240 = icmp eq ptr %i.sj, null
  br i1 %.not240, label %bb.cs, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.cq
  %.sroa.0469.2818 = load ptr, ptr %.sroa.0481.3669, align 8 ; 2 uses
  %.0214819 = add nuw nsw i32 %.0215667, 1        ; 2 uses
  %i.sk = icmp ult i32 %.0214819, %.0218
  br i1 %i.sk, label %.lr.ph822, label %.loopexit570

.preheader:                                       ; preds = %.lr.ph822
  %.sroa.0469.2 = load ptr, ptr %.sroa.0469.2820, align 8 ; 2 uses
  %.0214 = add nuw nsw i32 %.0214821, 1           ; 2 uses
  %i.sl = icmp ult i32 %.0214, %.0218
  br i1 %i.sl, label %.lr.ph822, label %.loopexit570, !llvm.loop !37

.lr.ph822:                                        ; preds = %.preheader.preheader, %.preheader
  %.0214821 = phi i32 [ %.0214, %.preheader ], [ %.0214819, %.preheader.preheader ]
  %.sroa.0469.2820 = phi ptr [ %.sroa.0469.2, %.preheader ], [ %.sroa.0469.2818, %.preheader.preheader ] ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0469.2820, i64 36
  %i.sn = load i32, ptr %i.sm, align 4
  %i.so = icmp eq i32 %i.sn, %.0215667
  br i1 %i.so, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %.preheader, !llvm.loop !37

.loopexit570:                                     ; preds = %.preheader, %.preheader.preheader
  %.sroa.0469.2.lcssa = phi ptr [ %.sroa.0469.2818, %.preheader.preheader ], [ %.sroa.0469.2, %.preheader ]
  %.pre726 = load ptr, ptr %i.jo, align 8
  %i.sp = icmp eq ptr %.sroa.0469.2.lcssa, %.pre726
  br i1 %i.sp, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %bb.cu

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit: ; preds = %.lr.ph822, %.loopexit570
  call void @_ZdaPv(ptr noundef nonnull %i.sj) #18
  %i.sq = load i32, ptr %i.qv, align 4            ; 2 uses
  %i.sr = zext i32 %i.sq to i64
  %i.ss = mul nuw nsw i64 %i.sr, 12               ; 2 uses
  %i.st = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ss) #19
          to label %bb.cr unwind label %.loopexit.split-lp ; 2 uses

bb.cr:                                            ; preds = %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit
  %i.su = icmp eq i32 %i.sq, 0
  br i1 %i.su, label %.sink.split793, label %.sink.split793.sink.split

bb.cs:                                            ; preds = %bb.cq
  %i.sv = load i32, ptr %i.qv, align 4            ; 2 uses
  %i.sw = zext i32 %i.sv to i64
  %i.sx = mul nuw nsw i64 %i.sw, 12               ; 2 uses
  %i.sy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sx) #19
          to label %bb.ct unwind label %.loopexit.split-lp ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.sz = icmp eq i32 %i.sv, 0
  br i1 %i.sz, label %.sink.split793, label %.sink.split793.sink.split

.sink.split793.sink.split:                        ; preds = %bb.ct, %bb.cr
  %.sink801 = phi i64 [ %i.ss, %bb.cr ], [ %i.sx, %bb.ct ]
  %.sink795 = phi ptr [ %i.st, %bb.cr ], [ %i.sy, %bb.ct ] ; 2 uses
  %i.ta = add nsw i64 %.sink801, -12              ; 2 uses
  %i.tb = urem i64 %i.ta, 12
  %i.tc = sub nuw nsw i64 %i.ta, %i.tb
  %i.td = add nsw i64 %i.tc, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sink795, i8 0, i64 %i.td, i1 false)
  br label %.sink.split793

.sink.split793:                                   ; preds = %.sink.split793.sink.split, %bb.ct, %bb.cr
  %.sink = phi ptr [ %i.st, %bb.cr ], [ %i.sy, %bb.ct ], [ %.sink795, %.sink.split793.sink.split ] ; 2 uses
  store ptr %.sink, ptr %i.si, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %.sink.split793, %.loopexit570
  %i.te = phi ptr [ %i.sj, %.loopexit570 ], [ %.sink, %.sink.split793 ] ; 9 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 16 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 36
  %i.th = load i32, ptr %i.tg, align 4
  %i.ti = zext i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8            ; 2 uses
  %.not241 = icmp eq ptr %i.te, %i.tk
  br i1 %.not241, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tl = load i32, ptr %i.qv, align 4
  %i.tm = zext i32 %i.tl to i64
  %i.tn = mul nuw nsw i64 %i.tm, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.te, ptr align 4 %i.tk, i64 %i.tn, i1 false)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.to = load i32, ptr %i.qv, align 4            ; 2 uses
  %i.tp = zext i32 %i.to to i64
  %.idx = mul nuw nsw i64 %i.tp, 12               ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.te, i64 %.idx
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 20
  %i.ts = load <4 x float>, ptr %i.tf, align 8
  %.fr850 = freeze <4 x float> %i.ts              ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 32
  %.pre727 = load float, ptr %.phi.trans.insert, align 8 ; 4 uses
  %i.tt = fcmp olt float %.pre727, f0x3C0EFA35
  %i.tu = fcmp une <4 x float> %.fr850, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.tv = bitcast <4 x i1> %i.tu to i4
  %i.tw = icmp eq i4 %i.tv, 0
  %op.rdx = select i1 %i.tw, i1 %i.tt, i1 false
  br i1 %op.rdx, label %.loopexit, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread: ; preds = %bb.cw
  %i.tx = load i32, ptr %i.f, align 4
  %i.ty = add i32 %i.tx, 1
  store i32 %i.ty, ptr %i.f, align 4
  %i.tz = fcmp ogt float %.pre727, f0x3C0EFA35
  %i.ua = extractelement <4 x float> %.fr850, i64 0
  %i.ub = extractelement <4 x float> %.fr850, i64 1
  br i1 %i.tz, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %i.uc = call noundef float @cosf(float noundef %.pre727) #17
  %i.ud = call noundef float @sinf(float noundef %.pre727) #17 ; 2 uses
  %i.ue = fneg float %i.ud
  %.pre728 = load float, ptr %i.tf, align 8
  %.pre729 = load float, ptr %i.tr, align 4
  br label %bb.cz

bb.cy:                                            ; preds = %bb.dc
  %i.uf = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cz:                                            ; preds = %bb.cx, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %i.ug = phi float [ %.pre729, %bb.cx ], [ %i.ub, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %i.uh = phi float [ %.pre728, %bb.cx ], [ %i.ua, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %.sroa.0447.0 = phi float [ %i.uc, %bb.cx ], [ 1.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ] ; 2 uses
  %.sroa.8449.0 = phi float [ %i.ue, %bb.cx ], [ 0.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ] ; 2 uses
  %.sroa.18.0 = phi float [ %i.ud, %bb.cx ], [ 0.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %i.ui = fadd float %i.uh, 0.000000e+00          ; 2 uses
  %i.uj = fadd float %i.ug, 0.000000e+00          ; 2 uses
  %i.uk = extractelement <4 x float> %.fr850, i64 2
  %i.ul = call float @llvm.fmuladd.f32(float %i.uk, float 0.000000e+00, float 0.000000e+00)
  %i.um = shufflevector <4 x float> %.fr850, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.un = fmul <2 x float> %i.um, <float 0.000000e+00, float 1.000000e+00>
  %i.uo = shufflevector <4 x float> %.fr850, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.up = insertelement <2 x float> %i.uo, float %i.ul, i64 1
  %i.uq = fadd <2 x float> %i.up, zeroinitializer ; 4 uses
  %i.ur = fadd <2 x float> %i.un, zeroinitializer ; 4 uses
  %i.us = extractelement <2 x float> %i.ur, i64 0
  %i.ut = call float @llvm.fabs.f32(float %i.us)  ; 2 uses
  %i.uu = insertelement <2 x float> poison, float %.sroa.18.0, i64 0
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uw = fmul <2 x float> %i.ur, %i.uv           ; 2 uses
  %i.ux = insertelement <2 x float> poison, float %.sroa.0447.0, i64 0
  %i.uy = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uy, <2 x float> %i.uq, <2 x float> %i.uw)
  %i.va = fadd <2 x float> %i.uz, zeroinitializer ; 3 uses
  %i.vb = fmul <2 x float> %i.ur, %i.uy           ; 2 uses
  %i.vc = insertelement <2 x float> poison, float %.sroa.8449.0, i64 0
  %i.vd = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ve = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vd, <2 x float> %i.uq, <2 x float> %i.vb)
  %i.vf = fadd <2 x float> %i.ve, zeroinitializer ; 3 uses
  %i.vg = extractelement <2 x float> %i.ur, i64 1
  %i.vh = fmul float %i.vg, 0.000000e+00
  %i.vi = insertelement <2 x float> poison, float %i.ut, i64 0
  %i.vj = insertelement <2 x float> %i.vi, float %i.vh, i64 1
  %i.vk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uq, <2 x float> zeroinitializer, <2 x float> %i.vj)
  %i.vl = fadd <2 x float> %i.vk, splat (float 5.000000e-01) ; 3 uses
  %i.vm = extractelement <2 x float> %i.uq, i64 1 ; 3 uses
  %i.vn = extractelement <2 x float> %i.uw, i64 0
  %i.vo = call float @llvm.fmuladd.f32(float %.sroa.0447.0, float %i.vm, float %i.vn)
  %i.vp = fadd float %i.vo, 0.000000e+00          ; 3 uses
  %i.vq = extractelement <2 x float> %i.vb, i64 0
  %i.vr = call float @llvm.fmuladd.f32(float %.sroa.8449.0, float %i.vm, float %i.vq)
  %i.vs = fadd float %i.vr, 0.000000e+00          ; 3 uses
  %i.vt = call float @llvm.fmuladd.f32(float %i.vm, float 0.000000e+00, float %i.ut)
  %i.vu = fadd float %i.vt, 1.000000e+00          ; 3 uses
  %i.vv = fmul <2 x float> %i.vf, zeroinitializer
  %i.vw = fadd <2 x float> %i.vv, %i.va
  %i.vx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vl, <2 x float> zeroinitializer, <2 x float> %i.vw) ; 3 uses
  %i.vy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.va, <2 x float> zeroinitializer, <2 x float> %i.vf)
  %i.vz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vl, <2 x float> zeroinitializer, <2 x float> %i.vy) ; 3 uses
  %i.wa = fmul <2 x float> %i.vf, splat (float -5.000000e-01)
  %i.wb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.va, <2 x float> splat (float -5.000000e-01), <2 x float> %i.wa)
  %i.wc = fadd <2 x float> %i.vl, %i.wb           ; 3 uses
  %i.wd = fmul float %i.vs, 0.000000e+00
  %i.we = fadd float %i.wd, %i.vp
  %i.wf = call float @llvm.fmuladd.f32(float %i.vu, float 0.000000e+00, float %i.we) ; 3 uses
  %i.wg = call float @llvm.fmuladd.f32(float %i.vp, float 0.000000e+00, float %i.vs)
  %i.wh = call float @llvm.fmuladd.f32(float %i.vu, float 0.000000e+00, float %i.wg) ; 3 uses
  %i.wi = fmul float %i.vs, -5.000000e-01
  %i.wj = call float @llvm.fmuladd.f32(float %i.vp, float -5.000000e-01, float %i.wi)
  %i.wk = fadd float %i.vu, %i.wj                 ; 3 uses
  %i.wl = fmul <2 x float> %i.vz, zeroinitializer
  %i.wm = fadd <2 x float> %i.vx, %i.wl
  %i.wn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vx, <2 x float> zeroinitializer, <2 x float> %i.vz)
  %i.wo = insertelement <2 x float> poison, float %i.uj, i64 0
  %i.wp = shufflevector <2 x float> %i.wo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wq = fmul <2 x float> %i.wp, %i.vz
  %i.wr = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.ws = shufflevector <2 x float> %i.wr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ws, <2 x float> %i.vx, <2 x float> %i.wq)
  %i.wu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wc, <2 x float> zeroinitializer, <2 x float> %i.wm) ; 3 uses
  %i.wv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wc, <2 x float> zeroinitializer, <2 x float> %i.wn) ; 3 uses
  %i.ww = fadd <2 x float> %i.wc, %i.wt           ; 3 uses
  %i.wx = fmul float %i.wh, 0.000000e+00
  %i.wy = fadd float %i.wf, %i.wx
end_hunk_0
begin_hunk_1_@_ZN6Assimp6Logger13formatMessageIJRA13_KcRjRA2_S2_ES5_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSB_SC_EEOT0_DpOT_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRjRA2_KcERA13_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSB_SC_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %3) #17
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA2_KcERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(2) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %6, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #17
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #17
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA2_KcERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %i.b) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %5, align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #17
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #17
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #17
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !107
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !107
  store i8 0, ptr %i.c, align 8, !alias.scope !107
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !107 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !107 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !107 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !107 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !107
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #17
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #17
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!5 = distinct !{!5, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!8 = distinct !{!8, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!11 = distinct !{!11, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!14 = distinct !{!14, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!15 = !{!13, !10, !7, !4}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = !{i8 0, i8 2}
!35 = distinct !{!35, !17}
!36 = !{}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !17, !40, !39}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!48 = distinct !{!48, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!51 = distinct !{!51, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!57 = distinct !{!57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!58 = !{!56, !53, !50, !47}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!61 = distinct !{!61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!64 = distinct !{!64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!67 = distinct !{!67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!68 = !{!66, !63, !60}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!71 = distinct !{!71, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!74 = distinct !{!74, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!77 = distinct !{!77, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!80 = distinct !{!80, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!81 = !{!79, !76, !73, !70}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!84 = distinct !{!84, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!87 = distinct !{!87, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!90 = distinct !{!90, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!93 = distinct !{!93, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!94 = !{!92, !89, !86, !83}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!97 = distinct !{!97, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!100 = distinct !{!100, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!103 = distinct !{!103, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!106 = distinct !{!106, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!107 = !{!105, !102, !99, !96}
end_hunk_1
