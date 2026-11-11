Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling?download=true
inline.NumInlined: 1815
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4pbrt16Sample1DFunctionESt8functionIFffEEiiffN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  store i64 %i.b, ptr %i.f, align 8, !tbaa !41
  store ptr %i.k, ptr %i.d, align 8, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.g, i1 false), !tbaa !15
  store i64 %i.b, ptr %i.e, align 8, !tbaa !38
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge31

.preheader.lr.ph:                                 ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKfRKS3_.exit
  %.not27 = icmp slt i32 %3, 0
  %i.m = sitofp i32 %3 to float
  %i.n = uitofp nneg i32 %2 to float
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = zext nneg i32 %2 to i64                  ; 2 uses
  br i1 %.not27, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.r = shl nuw nsw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.r, i1 false), !tbaa !15
  br label %._crit_edge31

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = uitofp nneg i32 %i.s to float
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e
  %i.u = fptrunc double %.sroa.speculated to float
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.u, ptr %i.v, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond35.not, label %._crit_edge31, label %.preheader, !llvm.loop !120

bb.b:                                             ; preds = %.preheader, %bb.e
  %.01929 = phi i32 [ 0, %.preheader ], [ %i.ak, %bb.e ] ; 3 uses
  %.02428 = phi double [ 0.000000e+00, %.preheader ], [ %.sroa.speculated, %bb.e ] ; 2 uses
  %i.w = uitofp nneg i32 %.01929 to float
  %i.x = fdiv float %i.w, %i.m
  %i.y = fadd float %i.x, %i.t
  %i.z = fdiv float %i.y, %i.n                    ; 2 uses
  %i.aa = fsub float 1.000000e+00, %i.z
  %i.ab = fmul float %4, %i.aa
  %i.ac = fmul float %5, %i.z
  %i.ad = fadd float %i.ac, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.ad, ptr %i.a, align 4, !tbaa !15
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !124
  %i.ag = invoke noundef float %i.af(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !121

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = call noundef float @llvm.fabs.f32(float %i.ag)
  %i.ai = fpext float %i.ah to double             ; 2 uses
  %i.aj = fcmp olt double %.02428, %i.ai
  %.sroa.speculated = select i1 %i.aj, double %i.ai, double %.02428 ; 2 uses
  %i.ak = add nuw i32 %.01929, 1
  %exitcond.not = icmp eq i32 %.01929, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !122

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.c
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #28
  resume { ptr, i32 } %lpad.loopexit.split-lp41

._crit_edge31:                                    ; preds = %._crit_edge, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKfRKS3_.exit.thread, %.preheader.lr.ph.split.us, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKfRKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = shl i64 %i.e, 2
  %i.g = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit unwind label %bb.c, !inline_history !125

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt16Sample2DFunctionESt8functionIFfffEEiiiNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pbrt::Array2D") align 8 captures(none) %0, ptr nofree noundef align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, <2 x float> %5, <2 x float> %6, ptr %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = sext i32 %4 to i64                       ; 2 uses
  %i.d = icmp slt i32 %4, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29
  unreachable

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.e = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #32 ; 4 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.e, i1 false)
  %i.h = load <2 x i32>, ptr @_ZN4pbrt6PrimesE, align 16, !tbaa !18 ; 3 uses
  %i.i = extractelement <2 x i32> %i.h, i64 0
  %i.j = zext i32 %i.i to i64                     ; 5 uses
  %i.k = udiv i64 -1, %i.j
  %i.l = sub nuw i64 %i.k, %i.j
  %i.m = uitofp <2 x i32> %i.h to <2 x float>
  %i.n = extractelement <2 x i32> %i.h, i64 1
  %i.o = zext i32 %i.n to i64                     ; 5 uses
  %i.p = udiv i64 -1, %i.o
  %i.q = sub nuw i64 %i.p, %i.o
  %i.r = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.m ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = extractelement <2 x float> %i.r, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread221
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread221 ] ; 5 uses
  %.not.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i, label %.thread221, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.023.i = phi i64 [ %i.u, %.lr.ph.i ], [ %indvars.iv, %bb.b ] ; 3 uses
  %.01922.i = phi i64 [ %i.v, %.lr.ph.i ], [ 0, %bb.b ]
  %.02021.i = phi float [ %i.w, %.lr.ph.i ], [ 1.000000e+00, %bb.b ]
  %i.u = udiv i64 %.023.i, %i.j                   ; 2 uses
  %reass.add.i = sub i64 %.01922.i, %i.u
  %reass.mul.i = mul i64 %reass.add.i, %i.j
  %i.v = add i64 %reass.mul.i, %.023.i            ; 3 uses
  %i.w = fmul float %i.s, %.02021.i               ; 2 uses
  %i.x = icmp samesign uge i64 %.023.i, %i.j
  %i.y = icmp ult i64 %i.v, %i.l
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph.i, label %.lr.ph.i47.preheader, !llvm.loop !127

.lr.ph.i47.preheader:                             ; preds = %.lr.ph.i
  %i.aa = uitofp i64 %i.v to float
  %i.ab = fmul float %i.w, %i.aa
  %.fr = freeze float %i.ab                       ; 2 uses
  %i.ac = fcmp ogt float %.fr, f0x3F7FFFFF
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.lr.ph.i47
  %.023.i48 = phi i64 [ %i.ad, %.lr.ph.i47 ], [ %indvars.iv, %.lr.ph.i47.preheader ] ; 3 uses
  %.01922.i49 = phi i64 [ %i.ae, %.lr.ph.i47 ], [ 0, %.lr.ph.i47.preheader ]
  %.02021.i50 = phi float [ %i.af, %.lr.ph.i47 ], [ 1.000000e+00, %.lr.ph.i47.preheader ]
  %i.ad = udiv i64 %.023.i48, %i.o                ; 2 uses
  %reass.add.i51 = sub i64 %.01922.i49, %i.ad
  %reass.mul.i52 = mul i64 %reass.add.i51, %i.o
  %i.ae = add i64 %reass.mul.i52, %.023.i48       ; 3 uses
  %i.af = fmul float %i.t, %.02021.i50            ; 2 uses
  %i.ag = icmp samesign uge i64 %.023.i48, %i.o
  %i.ah = icmp ult i64 %i.ae, %i.q
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.lr.ph.i47, label %bb.c, !llvm.loop !127

bb.c:                                             ; preds = %.lr.ph.i47
  %i.aj = uitofp i64 %i.ae to float
  %i.ak = fmul float %i.af, %i.aj
  %.fr248 = freeze float %i.ak                    ; 2 uses
  %i.al = fcmp ogt float %.fr248, f0x3F7FFFFF
  %8 = insertelement <2 x float> poison, float %.fr, i64 0
  %9 = insertelement <2 x float> %8, float %.fr248, i64 1
  %10 = bitcast <2 x float> %9 to <2 x i32>
  %11 = insertelement <2 x i1> poison, i1 %i.ac, i64 0
  %12 = insertelement <2 x i1> %11, i1 %i.al, i64 1
  %13 = select <2 x i1> %12, <2 x i32> splat (i32 1065353215), <2 x i32> %10
  br label %.thread221

.thread221:                                       ; preds = %bb.b, %bb.c
  %14 = phi <2 x i32> [ %13, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store <2 x i32> %14, ptr %i.am, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !128

._crit_edge.thread:                               ; preds = %.thread221, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.0123.1215232 = phi ptr [ null, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.f, %.thread221 ] ; 8 uses
  %.sink.i216231 = phi ptr [ null, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.g, %.thread221 ] ; 4 uses
  %i.an = ptrtoint ptr %.sink.i216231 to i64      ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.0123.1215232 to i64 ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.d, label %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %._crit_edge.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #29
          to label %.noexc57 unwind label %_ZN4pbrt7Array2DIfED2Ev.exit

.noexc57:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %._crit_edge.thread
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 6 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #32
          to label %.noexc58 unwind label %_ZN4pbrt7Array2DIfED2Ev.exit ; 14 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i32 0, ptr %i.ay, align 4
  %.sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 1065353216, ptr %.sroa_idx115, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0123.1215232, %.sink.i216231
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc58
  %i.az = add i64 %i.an, -8
  %i.ba = sub i64 %i.az, %i.ao
  %i.bb = and i64 %i.ba, -8
  %i.bc = add i64 %i.bb, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %.sroa.0123.1215232, i64 %i.bc, i1 false), !alias.scope !155
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0123.1215232, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, %.sink.i216231
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !132

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc58
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc58 ], [ %i.be, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.i256 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i to i64
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0123.1215232, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.1215232, i64 noundef %i.ap) #30
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %.idx327 = shl nuw nsw i64 %i.av, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx327 ; 3 uses
  %.sroa.18.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i59 = icmp eq ptr %.sroa.18.0, %i.bf
  br i1 %.not.i.i59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  store i32 1065353216, ptr %.sroa.18.0, align 4
  %.sroa_idx106 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  store i32 0, ptr %.sroa_idx106, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit74

bb.g:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bh = ptrtoint ptr %i.ax to i64
  %.idx326 = shl nuw nsw i64 %i.av, 3             ; 2 uses
  %i.bi = icmp eq i64 %i.av, 1152921504606846975
  br i1 %i.bi, label %bb.h, label %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #29
          to label %.noexc72 unwind label %bb.o

.noexc72:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60: ; preds = %bb.g
  %i.bj = shl nuw nsw i64 %i.av, 1
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975) ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #32
          to label %.noexc73 unwind label %bb.o   ; 8 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx326 ; 2 uses
  store i32 1065353216, ptr %i.bn, align 4
  %.sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 0, ptr %.sroa_idx108, align 4
  %i.bo = sub i64 %.0.lcssa.i.i.i.i.i.i256, %i.bh ; 3 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bo, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i64.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.noexc73
  %min.iters.check257 = icmp ult i64 %i.bo, 120
  br i1 %min.iters.check257, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.bq, 12
  %n.vec = and i64 %i.bq, 4611686018427387888     ; 4 uses
  %i.bs = shl i64 %n.vec, 3                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bm, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ax, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.bv ; 4 uses
  %next.gep258 = getelementptr i8, ptr %i.ax, i64 %i.bv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.bw = getelementptr i8, ptr %next.gep258, i64 32
  %i.bx = getelementptr i8, ptr %next.gep258, i64 64
  %i.by = getelementptr i8, ptr %next.gep258, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep258, align 4, !alias.scope !157
  %wide.load259 = load <4 x i64>, ptr %i.bw, align 4, !alias.scope !157
  %wide.load260 = load <4 x i64>, ptr %i.bx, align 4, !alias.scope !157
  %wide.load261 = load <4 x i64>, ptr %i.by, align 4, !alias.scope !157
  %i.bz = getelementptr i8, ptr %next.gep, i64 32
  %i.ca = getelementptr i8, ptr %next.gep, i64 64
  %i.cb = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !156
  store <4 x i64> %wide.load259, ptr %i.bz, align 4, !alias.scope !156
  store <4 x i64> %wide.load260, ptr %i.ca, align 4, !alias.scope !156
  store <4 x i64> %wide.load261, ptr %i.cb, align 4, !alias.scope !156
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i64.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec262 = and i64 %i.bq, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec262, 3                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bm, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ax, i64 %i.cd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index263 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next267, %vec.epilog.vector.body ] ; 2 uses
  %i.cg = shl i64 %index263, 3                    ; 2 uses
  %next.gep264 = getelementptr i8, ptr %i.bm, i64 %i.cg
  %next.gep265 = getelementptr i8, ptr %i.ax, i64 %i.cg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %wide.load266 = load <4 x i64>, ptr %next.gep265, align 4, !alias.scope !157
  store <4 x i64> %wide.load266, ptr %next.gep264, align 4, !alias.scope !156
  %index.next267 = add nuw i64 %index263, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next267, %n.vec262
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n268 = icmp eq i64 %i.bq, %n.vec262
  br i1 %cmp.n268, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68, label %.lr.ph.i.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i.i64.preheader:                   ; preds = %.noexc73, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i65.ph = phi ptr [ %i.bm, %.noexc73 ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i66.ph = phi ptr [ %i.ax, %.noexc73 ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i64

.lr.ph.i.i.i.i.i.i64:                             ; preds = %.lr.ph.i.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i.i64
  %.012.i.i.i.i.i.i65 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i64 ], [ %.012.i.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i.i64.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i66 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i64 ], [ %.0911.i.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i.i64.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i.i66, align 4, !alias.scope !157
  store i64 %i.ci, ptr %.012.i.i.i.i.i.i65, align 4, !alias.scope !156
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i66, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i67 = icmp eq ptr %.0911.i.i.i.i.i.i66, %.0.lcssa.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i67, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68, label %.lr.ph.i.i.i.i.i.i64, !llvm.loop !138

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68: ; preds = %.lr.ph.i.i.i.i.i.i64, %middle.block, %vec.epilog.middle.block
end_hunk_0
