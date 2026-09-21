Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/multiclass_obj?download=true
inline.NumInlined: 3054
inline.NumDeleted: 1257
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK7xgboost7Context14DispatchDeviceIZNS_6linalg17ElementWiseKernelIKfLi1EZNS_3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmE_TnDaLi2EEEvPKS0_NS2_10TensorViewIT_XT0_EEEOT1_EUlvE_ZNS3_IS4_Li1ESK_TnDaLi2EEEvSM_SP_SR_EUlvE0_EEDcOSO_OT0_:bb.a
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn11 = phi { ptr, i32 } [ %i.al, %bb.l ], [ %i.ak, %bb.k ] ; 2 uses
  %i.am = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.y
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.m
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !25
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.j
  %.pn11.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %.pn11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %.pn11, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %common.resume

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %i.aq = load ptr, ptr %1, align 8, !tbaa !549, !nonnull !80, !align !190
  %.sroa.2.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.sroa.2.0.copyload.i23 = load i64, ptr %.sroa.2.0..sroa_idx.i22, align 8, !tbaa !27 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !550, !nonnull !80, !align !190
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !186
  %i.au = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !551, !nonnull !80, !align !190
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.aw, ptr %4, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.2.0.copyload.i23, ptr %i.a, align 8, !tbaa !27
  %i.ax = uitofp i64 %.sroa.2.0.copyload.i23 to double
  %i.ay = fmul nnan double %i.ax, f0x3F40000000000000
  %i.az = call double @llvm.ceil.f64(double %i.ay)
  %i.ba = fptoui double %i.az to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.a, ptr %3, align 8, !tbaa !192
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.bb, align 8, !tbaa !101
  call void @_ZN7xgboost6common11ParallelForImZNS0_13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi1EZNS_3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS3_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmE_EEvNS3_10TensorViewIT_XT0_EEEiOT1_EUlOSO_E_EEvT0_iSR_EUlSO_E_EEvSO_iNS0_5SchedEOSU_(i64 noundef %i.ba, i32 noundef %i.au, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.u

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bc = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bc, ptr noundef nonnull @.str.85, i32 noundef 271)
  %i.bd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.q ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.o
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.88, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.d, align 8
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i27 to i16
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i16 noundef signext %.sroa.0.0.extract.trunc)
          to label %bb.p unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.u

bb.q:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.bg, %bb.q ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %common.resume

bb.u:                                             ; preds = %bb.p, %bb.n, %_ZZN7xgboost6linalg17ElementWiseKernelIKfLi1EZNS_3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmE_TnDaLi2EEEvPKNS_7ContextENS0_10TensorViewIT_XT0_EEEOT1_ENKUlvE0_clEv.exit, %bb.b
  ret void

bb.v:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #37
  unreachable
}

declare noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS0_13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi1EZNS_3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS3_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmE_EEvNS3_10TensorViewIT_XT0_EEEiOT1_EUlOSO_E_EEvT0_iSR_EUlSO_E_EEvSO_iNS0_5SchedEOSU_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %6 = alloca %"class.xgboost::common::Range1d", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %9 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.a
  %.not116 = icmp eq i64 %0, 0
  br i1 %.not116, label %.loopexit, label %.lr.ph109

.lr.ph109:                                        ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph109, %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi1EZNS_3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit
  %.0108 = phi i64 [ 0, %.lr.ph109 ], [ %i.dr, %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi1EZNS_3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit ] ; 2 uses
  %i.f = shl i64 %.0108, 11                       ; 3 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !566, !nonnull !80, !align !190
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27
  %i.i = sub i64 %i.h, %i.f
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.i, i64 2048)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !567, !nonnull !80, !align !190
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.k = add i64 %.sroa.speculated.i, %i.f
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.f, i64 noundef %i.k)
  %i.l = load i64, ptr %6, align 8, !tbaa !194    ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !tbaa !195  ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi1EZNS_3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit
  %i.o = phi i64 [ %i.do, %_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit ], [ %i.m, %bb.b ]
  %.05.i.i = phi i64 [ %i.dp, %_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit ], [ %i.l, %bb.b ] ; 6 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !197, !nonnull !80, !align !190 ; 14 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27, !noalias !568
  %i.r = mul i64 %i.q, %.05.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27, !noalias !568 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27, !noalias !568 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !142, !noalias !568 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 0, i64 %i.r          ; 3 uses
  %.not8.i.i.i = icmp ugt i64 %i.z, %i.x
  br i1 %.not8.i.i.i, label %bb.c, label %bb.d, !prof !97

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @_ZSt9terminatev() #37, !noalias !568
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.aa = load ptr, ptr %.in.i.i.i, align 8, !tbaa !143, !noalias !568 ; 2 uses
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = icmp eq i64 %i.x, %i.z                  ; 2 uses
  %i.ad = or i1 %i.ac, %i.ab
  br i1 %i.ad, label %_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit.i, label %bb.e, !prof !136

bb.e:                                             ; preds = %bb.d
  call void @_ZSt9terminatev() #37, !noalias !568
  unreachable

_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z ; 6 uses
  %.not.i81147 = icmp eq i64 %i.v, 0
  %.not.i81 = select i1 %i.ac, i1 true, i1 %.not.i81147
  br i1 %.not.i81, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit.i
  %min.iters.check = icmp ugt i64 %i.v, 7
  %ident.check.not = icmp eq i64 %i.t, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.preheader165

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.ah, %vector.body ] ; 2 uses
  %vec.phi162 = phi <4 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.ai, %vector.body ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <4 x float>, ptr %i.af, align 4, !tbaa !146 ; 2 uses
  %wide.load163 = load <4 x float>, ptr %i.ag, align 4, !tbaa !146 ; 2 uses
  %i.ah = call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load, <4 x float> %vec.phi) ; 2 uses
  %i.ai = call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load163, <4 x float> %vec.phi162) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = fcmp uno <4 x float> %wide.load, %wide.load163
  %10 = freeze <4 x i1> %i.aj
  %i.ak = bitcast <4 x i1> %10 to i4
  %i.al = icmp ne i4 %i.ak, 0                     ; 5 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  %i.an = or i1 %i.al, %i.am
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !554

middle.block:                                     ; preds = %vector.body
  %i.ao = select i1 %i.al, <4 x float> %vec.phi, <4 x float> %i.ah
  %i.ap = select i1 %i.al, <4 x float> %vec.phi162, <4 x float> %i.ai
  %i.aq = select i1 %i.al, i64 %index, i64 %n.vec
  %rdx.minmax = call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ao, <4 x float> %i.ap)
  %i.ar = call nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %i.v, %n.vec
  %.not164 = or i1 %cmp.n, %i.al
  br i1 %.not164, label %.lr.ph.i.preheader165, label %.lr.ph44.i.preheader

.lr.ph.i.preheader165:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.041.i.ph = phi float [ f0x00800000, %.lr.ph.i.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %.03940.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ] ; 5 uses
  %i.as = sub i64 %i.v, %.03940.i.ph
  %.neg = add i64 %.03940.i.ph, 1
  %xtraiter = and i64 %i.as, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader165
  %i.at = mul i64 %.03940.i.ph, %i.t
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !146
  %i.aw = call nsz float @llvm.maxnum.f32(float %i.av, float %.041.i.ph) ; 2 uses
  %i.ax = add nuw i64 %.03940.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader165
  %.lcssa169.unr = phi float [ poison, %.lr.ph.i.preheader165 ], [ %i.aw, %.lr.ph.i.prol ]
  %.041.i.unr = phi float [ %.041.i.ph, %.lr.ph.i.preheader165 ], [ %i.aw, %.lr.ph.i.prol ]
  %.03940.i.unr = phi i64 [ %.03940.i.ph, %.lr.ph.i.preheader165 ], [ %i.ax, %.lr.ph.i.prol ]
  %i.ay = icmp eq i64 %i.v, %.neg
  br i1 %i.ay, label %.lr.ph44.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.041.i = phi float [ %i.bh, %.lr.ph.i ], [ %.041.i.unr, %.lr.ph.i.prol.loopexit ]
  %.03940.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %.03940.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.az = mul i64 %.03940.i, %i.t
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !146
  %i.bc = call nsz float @llvm.maxnum.f32(float %i.bb, float %.041.i)
  %i.bd = add nuw i64 %.03940.i, 1
  %i.be = mul i64 %i.bd, %i.t
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !146
  %i.bh = call nsz float @llvm.maxnum.f32(float %i.bg, float %i.bc) ; 2 uses
  %i.bi = add nuw i64 %.03940.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bi, %i.v
  br i1 %exitcond.not.i.1, label %.lr.ph44.i.preheader, label %.lr.ph.i, !llvm.loop !555

.lr.ph44.i.preheader:                             ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %.lcssa = phi float [ %i.ar, %middle.block ], [ %.lcssa169.unr, %.lr.ph.i.prol.loopexit ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  br label %.lr.ph44.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph44.i
  %i.bj = fptrunc double %i.cm to float
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit.i
  %.0.lcssa56.i = phi float [ %.lcssa, %._crit_edge.loopexit.i ], [ f0x00800000, %_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit.i ]
  %.016.lcssa.i = phi float [ %i.bj, %._crit_edge.loopexit.i ], [ 0.000000e+00, %_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !27
  %i.bm = mul i64 %i.bl, %.05.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !172
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !146
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !142 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.bv = icmp ult i64 %.05.i.i, %i.bs
  br i1 %i.bv, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, label %bb.h, !prof !136

bb.h:                                             ; preds = %bb.g
  call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i: ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !143
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.05.i.i
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i

_ZNK7xgboost6common15OptionalWeightsixEm.exit.i:  ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, %bb.f
  %.in.i.i = phi ptr [ %i.bu, %bb.f ], [ %i.by, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i ]
  %i.bz = load float, ptr %.in.i.i, align 4, !tbaa !146 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 152 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !157
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph47.i, label %_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit

.lr.ph47.i:                                       ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  br label %bb.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.01643.i = phi double [ %i.cm, %.lr.ph44.i ], [ 0.000000e+00, %.lr.ph44.i.preheader ]
  %.03842.i = phi i64 [ %i.cn, %.lr.ph44.i ], [ 0, %.lr.ph44.i.preheader ] ; 2 uses
  %i.cg = mul i64 %.03842.i, %i.t
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !146
  %i.cj = fsub float %i.ci, %.lcssa
  %i.ck = call float @expf(float noundef %i.cj) #20
  %i.cl = fpext float %i.ck to double
  %i.cm = fadd double %.01643.i, %i.cl            ; 2 uses
  %i.cn = add nuw i64 %.03842.i, 1                ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.cn, %i.v
  br i1 %exitcond51.not.i, label %._crit_edge.loopexit.i, label %.lr.ph44.i, !llvm.loop !7

bb.i:                                             ; preds = %bb.i, %.lr.ph47.i
  %storemerge46.i = phi i64 [ 0, %.lr.ph47.i ], [ %i.dl, %bb.i ] ; 4 uses
  %i.co = mul i64 %storemerge46.i, %i.t
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !146
  %i.cr = fsub float %i.cq, %.0.lcssa56.i
  %i.cs = call float @expf(float noundef %i.cr) #20
  %i.ct = fdiv float %i.cs, %.016.lcssa.i         ; 4 uses
  %i.cu = fmul nsz float %i.ct, 2.000000e+00
  %i.cv = fsub nsz float 1.000000e+00, %i.ct
  %i.cw = fmul nsz float %i.cu, %i.cv
  %i.cx = fmul nsz float %i.bz, %i.cw
  %i.cy = call nsz float @llvm.maxnum.f32(float %i.cx, float 1.000000e-16)
  %i.cz = uitofp nneg i64 %storemerge46.i to float
  %i.da = fcmp oeq float %i.bq, %i.cz
  %i.db = fadd float %i.ct, -1.000000e+00
  %i.dc = select i1 %i.da, float %i.db, float %i.ct
  %i.dd = fmul float %i.bz, %i.dc
  %i.de = load i64, ptr %i.cd, align 8, !tbaa !27
  %i.df = mul i64 %i.de, %.05.i.i
  %i.dg = load i64, ptr %i.ce, align 8, !tbaa !27
  %i.dh = mul i64 %i.dg, %storemerge46.i
  %i.di = load ptr, ptr %i.cf, align 8, !tbaa !185
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %i.df
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %i.dh ; 2 uses
  store float %i.dd, ptr %i.dk, align 4
  %.sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store float %i.cy, ptr %.sroa_idx17.i, align 4
  %i.dl = add nuw nsw i64 %storemerge46.i, 1      ; 2 uses
  %i.dm = load i64, ptr %i.ca, align 8, !tbaa !157
  %i.dn = icmp slt i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.i, label %_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit.loopexit, !llvm.loop !8

_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit.loopexit: ; preds = %bb.i
  %.pre = load i64, ptr %i.e, align 8, !tbaa !195
  br label %_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit

_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit: ; preds = %_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit.loopexit, %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i
  %i.do = phi i64 [ %.pre, %_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit.loopexit ], [ %i.o, %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i ] ; 2 uses
  %i.dp = add nuw i64 %.05.i.i, 1                 ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  br i1 %i.dq, label %.lr.ph.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi1EZNS_3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit, !llvm.loop !9

_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi1EZNS_3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit: ; preds = %_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.dr = add nuw i64 %.0108, 1                   ; 2 uses
  %exitcond128.not = icmp eq i64 %i.dr, %0
  br i1 %exitcond128.not, label %.loopexit, label %bb.b, !llvm.loop !556

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !82, !noalias !569
  store i32 1, ptr %i.b, align 4, !tbaa !82, !noalias !569
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.j
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %7, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ds = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc unwind label %bb.l

end_hunk_0
begin_hunk_1_@_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi1EZNS2_3obj20SoftmaxMultiClassObj11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  %i.af = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #20 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.p

bb.n:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #20 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.p

bb.p:                                             ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi1EZNS_3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit, %bb.o, %bb.m
  ret void

bb.q:                                             ; preds = %bb.n, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %lpad.phi, %bb.g ], [ %i.ag, %bb.n ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.n, %bb.l
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  store i64 %2, ptr %i.b, align 8, !tbaa !27
  store i64 %1, ptr %0, align 8, !tbaa !194
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = icmp ult i64 %1, %2
  br i1 %i.d, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %3, align 8, !tbaa !99
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.e = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.92, i32 noundef 44)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.32, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.94, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = load ptr, ptr %3, align 8, !tbaa !99     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.27, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.pr12 = load ptr, ptr %3, align 8, !tbaa !99   ; 4 uses
  %.not.i = icmp eq ptr %.pr12, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %.pr12, align 8, !tbaa !24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !25
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr12, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.h:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3obj20SoftmaxMultiClassObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !27, !noalias !574
  %i.b = mul i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27, !noalias !574 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27, !noalias !574 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !142, !noalias !574 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 0, i64 %i.b          ; 3 uses
  %.not8.i.i = icmp ugt i64 %i.j, %i.h
  br i1 %.not8.i.i, label %bb.b, label %bb.c, !prof !97

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37, !noalias !574
  unreachable

bb.c:                                             ; preds = %bb.a
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %.in.i.i, align 8, !tbaa !143, !noalias !574 ; 2 uses
  %i.l = icmp ne ptr %i.k, null
  %i.m = icmp eq i64 %i.h, %i.j                   ; 2 uses
  %i.n = or i1 %i.m, %i.l
  br i1 %i.n, label %_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit, label %bb.d, !prof !136

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #37, !noalias !574
  unreachable

_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j ; 6 uses
  %.not61 = icmp eq i64 %i.f, 0
  %.not = select i1 %i.m, i1 true, i1 %.not61
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %min.iters.check = icmp ugt i64 %i.f, 7
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %.lr.ph.preheader63

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.f, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.r, %vector.body ] ; 2 uses
  %vec.phi59 = phi <4 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.s, %vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x float>, ptr %i.p, align 4, !tbaa !146 ; 2 uses
  %wide.load60 = load <4 x float>, ptr %i.q, align 4, !tbaa !146 ; 2 uses
  %i.r = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load, <4 x float> %vec.phi) ; 2 uses
  %i.s = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load60, <4 x float> %vec.phi59) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = fcmp uno <4 x float> %wide.load, %wide.load60
  %2 = freeze <4 x i1> %i.t
  %i.u = bitcast <4 x i1> %2 to i4
  %i.v = icmp ne i4 %i.u, 0                       ; 5 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !572

middle.block:                                     ; preds = %vector.body
  %i.y = select i1 %i.v, <4 x float> %vec.phi, <4 x float> %i.r
  %i.z = select i1 %i.v, <4 x float> %vec.phi59, <4 x float> %i.s
  %i.aa = select i1 %i.v, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.y, <4 x float> %i.z)
  %i.ab = tail call nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %i.f, %n.vec
  %.not62 = or i1 %cmp.n, %i.v
  br i1 %.not62, label %.lr.ph.preheader63, label %.lr.ph44.preheader

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader, %middle.block
  %.041.ph = phi float [ f0x00800000, %.lr.ph.preheader ], [ %i.ab, %middle.block ] ; 2 uses
  %.03940.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aa, %middle.block ] ; 5 uses
  %i.ac = sub i64 %i.f, %.03940.ph
  %.neg = add i64 %.03940.ph, 1
  %xtraiter = and i64 %i.ac, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader63
  %i.ad = mul i64 %.03940.ph, %i.d
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !146
  %i.ag = tail call nsz float @llvm.maxnum.f32(float %i.af, float %.041.ph) ; 2 uses
  %i.ah = add nuw i64 %.03940.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader63
  %.lcssa64.unr = phi float [ poison, %.lr.ph.preheader63 ], [ %i.ag, %.lr.ph.prol ]
  %.041.unr = phi float [ %.041.ph, %.lr.ph.preheader63 ], [ %i.ag, %.lr.ph.prol ]
  %.03940.unr = phi i64 [ %.03940.ph, %.lr.ph.preheader63 ], [ %i.ah, %.lr.ph.prol ]
  %i.ai = icmp eq i64 %i.f, %.neg
  br i1 %i.ai, label %.lr.ph44.preheader, label %.lr.ph

.lr.ph44.preheader:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.lcssa58 = phi float [ %i.ab, %middle.block ], [ %.lcssa64.unr, %.lr.ph.prol.loopexit ], [ %i.ar, %.lr.ph ] ; 2 uses
  br label %.lr.ph44

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.041 = phi float [ %i.ar, %.lr.ph ], [ %.041.unr, %.lr.ph.prol.loopexit ]
  %.03940 = phi i64 [ %i.as, %.lr.ph ], [ %.03940.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.aj = mul i64 %.03940, %i.d
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !146
  %i.am = tail call nsz float @llvm.maxnum.f32(float %i.al, float %.041)
  %i.an = add nuw i64 %.03940, 1
  %i.ao = mul i64 %i.an, %i.d
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !146
  %i.ar = tail call nsz float @llvm.maxnum.f32(float %i.aq, float %i.am) ; 2 uses
  %i.as = add nuw i64 %.03940, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.as, %i.f
  br i1 %exitcond.not.1, label %.lr.ph44.preheader, label %.lr.ph, !llvm.loop !573

._crit_edge.loopexit:                             ; preds = %.lr.ph44
  %i.at = fptrunc double %i.bw to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit, %._crit_edge.loopexit
  %.0.lcssa56 = phi float [ %.lcssa58, %._crit_edge.loopexit ], [ f0x00800000, %_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit ]
  %.016.lcssa = phi float [ %i.at, %._crit_edge.loopexit ], [ 0.000000e+00, %_ZNK7xgboost6linalg10TensorViewIKfLi2EE5SliceIJRmNS0_6detail6AllTagEEEEDaDpOT_.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load i64, ptr %i.au, align 8, !tbaa !27
  %i.aw = mul i64 %i.av, %1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !172
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = load float, ptr %i.az, align 4, !tbaa !146
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !142 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit

bb.f:                                             ; preds = %._crit_edge
  %i.bf = icmp ult i64 %1, %i.bc
  br i1 %i.bf, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i, label %bb.g, !prof !136

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i: ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !143
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %1
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit

_ZNK7xgboost6common15OptionalWeightsixEm.exit:    ; preds = %bb.e, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i
  %.in.i = phi ptr [ %i.be, %bb.e ], [ %i.bi, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i ]
  %i.bj = load float, ptr %.in.i, align 4, !tbaa !146 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !157
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.h

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %.lr.ph44
  %.01643 = phi double [ %i.bw, %.lr.ph44 ], [ 0.000000e+00, %.lr.ph44.preheader ]
  %.03842 = phi i64 [ %i.bx, %.lr.ph44 ], [ 0, %.lr.ph44.preheader ] ; 2 uses
  %i.bq = mul i64 %.03842, %i.d
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !146
  %i.bt = fsub float %i.bs, %.lcssa58
  %i.bu = tail call float @expf(float noundef %i.bt) #20
  %i.bv = fpext float %i.bu to double
  %i.bw = fadd double %.01643, %i.bv              ; 2 uses
  %i.bx = add nuw i64 %.03842, 1                  ; 2 uses
  %exitcond51.not = icmp eq i64 %i.bx, %i.f
  br i1 %exitcond51.not, label %._crit_edge.loopexit, label %.lr.ph44, !llvm.loop !7

._crit_edge48:                                    ; preds = %bb.h, %_ZNK7xgboost6common15OptionalWeightsixEm.exit
  ret void

bb.h:                                             ; preds = %.lr.ph47, %bb.h
  %storemerge46 = phi i64 [ 0, %.lr.ph47 ], [ %i.cv, %bb.h ] ; 4 uses
  %i.by = mul i64 %storemerge46, %i.d
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !146
  %i.cb = fsub float %i.ca, %.0.lcssa56
  %i.cc = tail call float @expf(float noundef %i.cb) #20
  %i.cd = fdiv float %i.cc, %.016.lcssa           ; 4 uses
  %i.ce = fmul nsz float %i.cd, 2.000000e+00
  %i.cf = fsub nsz float 1.000000e+00, %i.cd
  %i.cg = fmul nsz float %i.ce, %i.cf
  %i.ch = fmul nsz float %i.bj, %i.cg
  %i.ci = tail call nsz float @llvm.maxnum.f32(float %i.ch, float 1.000000e-16)
  %i.cj = uitofp nneg i64 %storemerge46 to float
  %i.ck = fcmp oeq float %i.ba, %i.cj
  %i.cl = fadd float %i.cd, -1.000000e+00
  %i.cm = select i1 %i.ck, float %i.cl, float %i.cd
  %i.cn = fmul float %i.bj, %i.cm
  %i.co = load i64, ptr %i.bn, align 8, !tbaa !27
  %i.cp = mul i64 %i.co, %1
  %i.cq = load i64, ptr %i.bo, align 8, !tbaa !27
  %i.cr = mul i64 %i.cq, %storemerge46
  %i.cs = load ptr, ptr %i.bp, align 8, !tbaa !185
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %i.cp
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %i.cr ; 2 uses
  store float %i.cn, ptr %i.cu, align 4
  %.sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store float %i.ci, ptr %.sroa_idx17, align 4
  %i.cv = add nuw nsw i64 %storemerge46, 1        ; 2 uses
  %i.cw = load i64, ptr %i.bk, align 8, !tbaa !157
  %i.cx = icmp slt i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.h, label %._crit_edge48, !llvm.loop !8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #27

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !82
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.36, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %bb.b
  %i.e = load i32, ptr %2, align 4, !tbaa !82
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.e)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.37, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %bb.d unwind label %bb.h       ; 8 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
end_hunk_1
begin_hunk_2_@_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj20SoftmaxMultiClassObj9TransformEPNS2_16HostDeviceVectorIfEEbEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSA_EEEvSE_DpPT_EUlmE_JmEEEvT_DpT0_:bb.a
  %i.y = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #20
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aa = call ptr @__cxa_begin_catch(ptr %i.w) #20 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #20 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ac) #35
          to label %.noexc10 unwind label %bb.t

.noexc10:                                         ; preds = %bb.j
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.i
  %i.ad = load ptr, ptr %0, align 8, !tbaa !201
  %.not23 = icmp eq ptr %i.ad, null
  br i1 %.not23, label %bb.k, label %bb.u

bb.k:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ae = load ptr, ptr %7, align 8, !tbaa !201
  store ptr null, ptr %7, align 8, !tbaa !201
  %i.af = load ptr, ptr %0, align 8, !tbaa !201   ; 2 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !201
  store ptr %i.ae, ptr %0, align 8, !tbaa !201
  %.not.i.i11 = icmp eq ptr %i.af, null
  br i1 %.not.i.i11, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %.pr = load ptr, ptr %7, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.u

bb.m:                                             ; preds = %bb.h
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #20
  %i.ah = icmp eq i32 %i.x, %i.ag
  br i1 %i.ah, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.w) #20 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #20 ; 2 uses
  %.not.i.i12 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i12, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit14, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ak) #35
          to label %.noexc13 unwind label %bb.r

.noexc13:                                         ; preds = %bb.o
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit14:        ; preds = %bb.n
  %i.al = load ptr, ptr %0, align 8, !tbaa !201
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.am = load ptr, ptr %6, align 8, !tbaa !201
  store ptr null, ptr %6, align 8, !tbaa !201
  %i.an = load ptr, ptr %0, align 8, !tbaa !201   ; 2 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !201
  store ptr %i.am, ptr %0, align 8, !tbaa !201
  %.not.i.i15 = icmp eq ptr %i.an, null
  br i1 %.not.i.i15, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16.thread: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit18

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16: ; preds = %bb.p
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %.pr21 = load ptr, ptr %6, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i17 = icmp eq ptr %.pr21, null
  br i1 %.not.i17, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit18, label %bb.q

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit18

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit18: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit16, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit18, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit14
  %i.ap = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #20 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ar = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #20 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.v

bb.v:                                             ; preds = %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj20SoftmaxMultiClassObj9TransformEPNS_16HostDeviceVectorIfEEbEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_ENKUlmE_clEm.exit, %bb.u, %bb.s
  ret void

bb.w:                                             ; preds = %bb.t, %bb.r, %bb.m
  %.merged = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.v, %bb.m ], [ %i.aq, %bb.t ]
  resume { ptr, i32 } %.merged

bb.x:                                             ; preds = %bb.t, %bb.r
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7SoftmaxINS0_6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEEEEvT_S7_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !219    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !136

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220  ; 6 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load float, ptr %i.e, align 4, !tbaa !146 ; 3 uses
  %.fr67 = freeze ptr %2
  %i.g = icmp ne ptr %0, %.fr67                   ; 2 uses
  %.sroa.642.053 = add nuw i64 %1, 1              ; 4 uses
  %i.h = icmp ne i64 %.sroa.642.053, %3
  %.not8.i54 = select i1 %i.g, i1 true, i1 %i.h
  br i1 %.not8.i54, label %.lr.ph, label %.preheader50

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEdeEv.exit
  br i1 %i.g, label %.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.i = xor i64 %1, -1
  %i.j = add i64 %i.a, %i.i
  %i.k = add i64 %3, -2
  %i.l = sub i64 %i.k, %1
  %i.m = freeze i64 %i.l
  %.not77.not = icmp ugt i64 %i.j, %i.m
  br i1 %.not77.not, label %.lr.ph.split.preheader80, label %.split.us, !prof !136

.lr.ph.split.preheader80:                         ; preds = %.lr.ph.split.preheader
  %i.n = xor i64 %1, -1
  %i.o = add i64 %3, %i.n                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.split.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader80
  %n.vec = and i64 %i.o, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.642.053
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.s, %vector.body ] ; 2 uses
  %vec.phi82 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.t, %vector.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x float>, ptr %i.q, align 4, !tbaa !146 ; 2 uses
  %wide.load83 = load <4 x float>, ptr %i.r, align 4, !tbaa !146 ; 2 uses
  %i.s = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load, <4 x float> %vec.phi) ; 2 uses
  %i.t = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load83, <4 x float> %vec.phi82) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = fcmp uno <4 x float> %wide.load, %wide.load83
  %4 = freeze <4 x i1> %i.u
  %i.v = bitcast <4 x i1> %4 to i4
  %i.w = icmp ne i4 %i.v, 0                       ; 5 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  %i.y = or i1 %i.w, %i.x
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !600

middle.block:                                     ; preds = %vector.body
  %i.z = select i1 %i.w, <4 x float> %vec.phi, <4 x float> %i.s
  %i.aa = select i1 %i.w, <4 x float> %vec.phi82, <4 x float> %i.t
  %i.ab = select i1 %i.w, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.z, <4 x float> %i.aa)
  %i.ac = tail call nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %i.ad = add i64 %.sroa.642.053, %i.ab
  %cmp.n = icmp ne i64 %i.o, %n.vec
  %.not96 = or i1 %cmp.n, %i.w
  br i1 %.not96, label %.lr.ph.split.preheader97, label %.preheader50

.lr.ph.split.preheader97:                         ; preds = %.lr.ph.split.preheader80, %middle.block
  %.sroa.642.056.ph = phi i64 [ %.sroa.642.053, %.lr.ph.split.preheader80 ], [ %i.ad, %middle.block ]
  %.055.ph = phi float [ %i.f, %.lr.ph.split.preheader80 ], [ %i.ac, %middle.block ]
  br label %.lr.ph.split

.preheader50:                                     ; preds = %.lr.ph.split, %middle.block, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEdeEv.exit
  %.0.lcssa = phi float [ %i.f, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEdeEv.exit ], [ %i.ac, %middle.block ], [ %i.ag, %.lr.ph.split ]
  %.not59 = icmp eq i64 %1, %3
  br i1 %.not59, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %.preheader50
  %umax = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %1) ; 2 uses
  br label %.lr.ph62

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader97, %.lr.ph.split
  %.sroa.642.056 = phi i64 [ %.sroa.642.0, %.lr.ph.split ], [ %.sroa.642.056.ph, %.lr.ph.split.preheader97 ] ; 2 uses
  %.055 = phi float [ %i.ag, %.lr.ph.split ], [ %.055.ph, %.lr.ph.split.preheader97 ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.642.056
  %i.af = load float, ptr %i.ae, align 4, !tbaa !146
  %i.ag = tail call nsz float @llvm.maxnum.f32(float %i.af, float %.055) ; 2 uses
  %.sroa.642.0 = add nuw i64 %.sroa.642.056, 1    ; 2 uses
  %.not68 = icmp eq i64 %.sroa.642.0, %3
  br i1 %.not68, label %.preheader50, label %.lr.ph.split, !llvm.loop !601

.split.us:                                        ; preds = %.lr.ph, %.lr.ph.split.preheader
  tail call void @_ZSt9terminatev() #37
  unreachable

.preheader:                                       ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24
  %i.ah = fptrunc double %i.bb to float           ; 2 uses
  %umax71 = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %1)
  %i.ai = xor i64 %1, -1
  %i.aj = add i64 %3, %i.ai
  %i.ak = freeze i64 %i.aj
  %i.al = sub i64 %umax, %1
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.al)
  %i.an = add i64 %i.am, 1                        ; 3 uses
  %min.iters.check85 = icmp ult i64 %i.an, 5
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.ph86

scalar.ph84.preheader:                            ; preds = %vector.body90, %.preheader
  %.sroa.6.065.ph = phi i64 [ %1, %.preheader ], [ %i.ar, %vector.body90 ]
  br label %scalar.ph84

vector.ph86:                                      ; preds = %.preheader
  %i.ao = and i64 %i.an, 3                        ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = select i1 %i.ap, i64 4, i64 %i.ao
  %n.vec87 = sub i64 %i.an, %i.aq                 ; 2 uses
  %i.ar = add i64 %1, %n.vec87
  %broadcast.splatinsert88 = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat89 = shufflevector <4 x float> %broadcast.splatinsert88, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = getelementptr [4 x i8], ptr %i.d, i64 %1
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph86
  %index91 = phi i64 [ 0, %vector.ph86 ], [ %index.next93, %vector.body90 ] ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %index91 ; 2 uses
  %wide.load92 = load <4 x float>, ptr %i.at, align 4, !tbaa !146
  %i.au = fdiv <4 x float> %wide.load92, %broadcast.splat89
  store <4 x float> %i.au, ptr %i.at, align 4, !tbaa !146
  %index.next93 = add nuw i64 %index91, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next93, %n.vec87
  br i1 %i.av, label %scalar.ph84.preheader, label %vector.body90, !llvm.loop !602

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24
  %.01761 = phi double [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24 ], [ 0.000000e+00, %.lr.ph62.preheader ]
  %.sroa.8.060 = phi i64 [ %i.bc, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24 ], [ %1, %.lr.ph62.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.8.060, %umax
  br i1 %exitcond.not, label %bb.c, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24, !prof !97

bb.c:                                             ; preds = %.lr.ph62
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit24: ; preds = %.lr.ph62
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.8.060 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !146
  %i.ay = fsub float %i.ax, %.0.lcssa
  %i.az = tail call float @expf(float noundef %i.ay) #20 ; 2 uses
  store float %i.az, ptr %i.aw, align 4, !tbaa !146
  %i.ba = fpext float %i.az to double
  %i.bb = fadd double %.01761, %i.ba              ; 2 uses
  %i.bc = add i64 %.sroa.8.060, 1                 ; 2 uses
  %.not = icmp eq i64 %i.bc, %3
  br i1 %.not, label %.preheader, label %.lr.ph62, !llvm.loop !603

._crit_edge:                                      ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit28, %.preheader50
  ret void

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit28
  %.sroa.6.065 = phi i64 [ %i.bg, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit28 ], [ %.sroa.6.065.ph, %scalar.ph84.preheader ] ; 3 uses
  %exitcond72.not = icmp eq i64 %.sroa.6.065, %umax71
  br i1 %exitcond72.not, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit28, !prof !97

bb.d:                                             ; preds = %scalar.ph84
  tail call void @_ZSt9terminatev() #37
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit28: ; preds = %scalar.ph84
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.065 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !146
  %i.bf = fdiv float %i.be, %i.ah
  store float %i.bf, ptr %i.bd, align 4, !tbaa !146
  %i.bg = add i64 %.sroa.6.065, 1                 ; 2 uses
  %.not49 = icmp eq i64 %i.bg, %3
  br i1 %.not49, label %._crit_edge, label %scalar.ph84, !llvm.loop !604
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj20SoftmaxMultiClassObj9TransformEPNS_16HostDeviceVectorIfEEbEUlmNS0_4SpanIKfLm18446744073709551615EEENS9_IfLm18446744073709551615EEEE_E10LaunchCUDAILPv0EJS7_S7_EEEvSD_DpPT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull @.str.97, i32 noundef 163)
  %i.b = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.b ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.98, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
          to label %_ZNSolsEb.exit unwind label %bb.b ; 0 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNKS0_9TransformILb0EE9EvaluatorIZNKS_3obj20SoftmaxMultiClassObj9TransformEPNS_16HostDeviceVectorIfEEbEUlmNS0_4SpanIKfLm18446744073709551615EEENSA_IfLm18446744073709551615EEEE_E9LaunchCPUIJS8_S8_EEEvSE_DpPT_EUlmE_EEvT_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not102 = icmp eq i64 %0, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph95

.lr.ph95:                                         ; preds = %.preheader, %.lr.ph95
  %.04994 = phi i64 [ %i.d, %.lr.ph95 ], [ 0, %.preheader ] ; 2 uses
  tail call void @_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj20SoftmaxMultiClassObj9TransformEPNS_16HostDeviceVectorIfEEbEUlmNS0_4SpanIKfLm18446744073709551615EEENS9_IfLm18446744073709551615EEEE_E9LaunchCPUIJS7_S7_EEEvSD_DpPT_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.04994)
  %i.d = add nuw i64 %.04994, 1                   ; 2 uses
  %exitcond113.not = icmp eq i64 %i.d, %0
  br i1 %exitcond113.not, label %.loopexit, label %.lr.ph95, !llvm.loop !605

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !82, !noalias !614
  store i32 1, ptr %i.b, align 4, !tbaa !82, !noalias !614
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

end_hunk_2
