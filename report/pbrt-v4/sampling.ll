Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling?download=true
inline.NumInlined: 1815
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4pbrt16Sample1DFunctionESt8functionIFffEEiiffN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.ag = invoke noundef float %i.af(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %.loopexit, !inline_history !65

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = call noundef float @llvm.fabs.f32(float %i.ag)
  %i.ai = fpext float %i.ah to double             ; 2 uses
  %i.aj = fcmp olt double %.02428, %i.ai
  %.sroa.speculated = select i1 %i.aj, double %i.ai, double %.02428 ; 2 uses
  %i.ak = add nuw i32 %.01929, 1
  %exitcond.not = icmp eq i32 %.01929, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !66

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #30
  resume { ptr, i32 } %lpad.phi

._crit_edge31:                                    ; preds = %._crit_edge, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKfRKS3_.exit.thread, %.preheader.lr.ph.split.us, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKfRKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58
  %i.f = shl i64 %i.e, 2
  %i.g = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit unwind label %bb.c, !inline_history !68

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #33
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #31
  unreachable

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.e = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #34 ; 4 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.e, i1 false)
  %i.h = load <2 x i32>, ptr @_ZN4pbrt6PrimesE, align 16, !tbaa !13 ; 3 uses
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
  br i1 %i.z, label %.lr.ph.i, label %.lr.ph.i47.preheader, !llvm.loop !69

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
  br i1 %i.ai, label %.lr.ph.i47, label %bb.c, !llvm.loop !69

bb.c:                                             ; preds = %.lr.ph.i47
  %i.aj = uitofp i64 %i.ae to float
  %i.ak = fmul float %i.af, %i.aj
  %.fr248 = freeze float %i.ak                    ; 2 uses
  %i.al = fcmp ogt float %.fr248, f0x3F7FFFFF
  %i.am = insertelement <2 x float> poison, float %.fr, i64 0
  %i.an = insertelement <2 x float> %i.am, float %.fr248, i64 1
  %i.ao = bitcast <2 x float> %i.an to <2 x i32>
  %i.ap = insertelement <2 x i1> poison, i1 %i.ac, i64 0
  %i.aq = insertelement <2 x i1> %i.ap, i1 %i.al, i64 1
  %i.ar = select <2 x i1> %i.aq, <2 x i32> splat (i32 1065353215), <2 x i32> %i.ao
  br label %.thread221

.thread221:                                       ; preds = %bb.b, %bb.c
  %i.as = phi <2 x i32> [ %i.ar, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store <2 x i32> %i.as, ptr %i.at, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !70

._crit_edge.thread:                               ; preds = %.thread221, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.0123.1215232 = phi ptr [ null, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.f, %.thread221 ] ; 8 uses
  %.sink.i216231 = phi ptr [ null, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.g, %.thread221 ] ; 4 uses
  %i.au = ptrtoint ptr %.sink.i216231 to i64      ; 2 uses
  %i.av = ptrtoint ptr %.sroa.0123.1215232 to i64 ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.d, label %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %._crit_edge.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #31
          to label %.noexc57.a unwind label %_ZN4pbrt7Array2DIfED2Ev.exit

.noexc57.a:                                       ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %._crit_edge.thread
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 6 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #34
          to label %.noexc58 unwind label %_ZN4pbrt7Array2DIfED2Ev.exit ; 14 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i32 0, ptr %i.bf, align 4
  %.sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 1065353216, ptr %.sroa_idx115, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0123.1215232, %.sink.i216231
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc58
  %i.bg = add i64 %i.au, -8
  %i.bh = sub i64 %i.bg, %i.av
  %i.bi = and i64 %i.bh, -8
  %i.bj = add i64 %i.bi, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %.sroa.0123.1215232, i64 %i.bj, i1 false), !alias.scope !71, !noalias !75
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0123.1215232, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, %.sink.i216231
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !76

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc58
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %.noexc58 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.i255 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i to i64
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0123.1215232, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.1215232, i64 noundef %i.aw) #32
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %.idx328 = shl nuw nsw i64 %i.bc, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx328 ; 3 uses
  %.sroa.18.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i59 = icmp eq ptr %.sroa.18.0, %i.bm
  br i1 %.not.i.i59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  store i32 1065353216, ptr %.sroa.18.0, align 4
  %.sroa_idx106 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  store i32 0, ptr %.sroa_idx106, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit74

bb.g:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bo = ptrtoint ptr %i.be to i64
  %.idx327 = shl nuw nsw i64 %i.bc, 3             ; 2 uses
  %i.bp = icmp eq i64 %i.bc, 1152921504606846975
  br i1 %i.bp, label %bb.h, label %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #31
          to label %.noexc72 unwind label %bb.o

.noexc72:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60: ; preds = %bb.g
  %8 = shl nuw nsw i64 %i.bc, 1
  %i.bq = tail call i64 @llvm.umin.i64(i64 %8, i64 1152921504606846975) ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #34
          to label %.noexc73 unwind label %bb.o   ; 8 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i60
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx327 ; 2 uses
  store i32 1065353216, ptr %i.bt, align 4
  %.sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 0, ptr %.sroa_idx108, align 4
  %i.bu = sub i64 %.0.lcssa.i.i.i.i.i.i255, %i.bo ; 3 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bu, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i64.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.noexc73
  %min.iters.check256 = icmp ult i64 %i.bu, 120
  br i1 %min.iters.check256, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %i.bw, 12
  %n.vec = and i64 %i.bw, 4611686018427387888     ; 4 uses
  %i.by = shl i64 %n.vec, 3                       ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bs, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.be, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.cb ; 4 uses
  %next.gep257 = getelementptr i8, ptr %i.be, i64 %i.cb ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.cc = getelementptr i8, ptr %next.gep257, i64 32
  %i.cd = getelementptr i8, ptr %next.gep257, i64 64
  %i.ce = getelementptr i8, ptr %next.gep257, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep257, align 4, !alias.scope !80, !noalias !77
  %wide.load258 = load <4 x i64>, ptr %i.cc, align 4, !alias.scope !80, !noalias !77
  %wide.load259 = load <4 x i64>, ptr %i.cd, align 4, !alias.scope !80, !noalias !77
  %wide.load260 = load <4 x i64>, ptr %i.ce, align 4, !alias.scope !80, !noalias !77
  %i.cf = getelementptr i8, ptr %next.gep, i64 32
  %i.cg = getelementptr i8, ptr %next.gep, i64 64
  %i.ch = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !77, !noalias !80
  store <4 x i64> %wide.load258, ptr %i.cf, align 4, !alias.scope !77, !noalias !80
  store <4 x i64> %wide.load259, ptr %i.cg, align 4, !alias.scope !77, !noalias !80
  store <4 x i64> %wide.load260, ptr %i.ch, align 4, !alias.scope !77, !noalias !80
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i64.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec262 = and i64 %i.bw, 4611686018427387900  ; 3 uses
  %i.cj = shl i64 %n.vec262, 3                    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bs, i64 %i.cj  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.be, i64 %i.cj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index263 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next267, %vec.epilog.vector.body ] ; 2 uses
  %i.cm = shl i64 %index263, 3                    ; 2 uses
  %next.gep264 = getelementptr i8, ptr %i.bs, i64 %i.cm
  %next.gep265 = getelementptr i8, ptr %i.be, i64 %i.cm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %wide.load266 = load <4 x i64>, ptr %next.gep265, align 4, !alias.scope !80, !noalias !77
  store <4 x i64> %wide.load266, ptr %next.gep264, align 4, !alias.scope !77, !noalias !80
  %index.next267 = add nuw i64 %index263, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next267, %n.vec262
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n268 = icmp eq i64 %i.bw, %n.vec262
  br i1 %cmp.n268, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68, label %.lr.ph.i.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i.i64.preheader:                   ; preds = %.noexc73, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i65.ph = phi ptr [ %i.bs, %.noexc73 ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i66.ph = phi ptr [ %i.be, %.noexc73 ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i64

.lr.ph.i.i.i.i.i.i64:                             ; preds = %.lr.ph.i.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i.i64
  %.012.i.i.i.i.i.i65 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i64 ], [ %.012.i.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i.i64.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i66 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i64 ], [ %.0911.i.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i.i64.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.co = load i64, ptr %.0911.i.i.i.i.i.i66, align 4, !alias.scope !80, !noalias !77
  store i64 %i.co, ptr %.012.i.i.i.i.i.i65, align 4, !alias.scope !77, !noalias !80
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i66, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i67 = icmp eq ptr %.0911.i.i.i.i.i.i66, %.0.lcssa.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i67, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68, label %.lr.ph.i.i.i.i.i.i64, !llvm.loop !87

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68: ; preds = %.lr.ph.i.i.i.i.i.i64, %middle.block, %vec.epilog.middle.block
  %.lcssa249 = phi ptr [ %i.ck, %vec.epilog.middle.block ], [ %i.bz, %middle.block ], [ %i.cq, %.lr.ph.i.i.i.i.i.i64 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.lcssa249, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %.idx327) #32
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit74

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit74: ; preds = %bb.f, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68
  %.sroa.32.2 = phi ptr [ %i.cs, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68 ], [ %i.bm, %bb.f ] ; 6 uses
  %.sroa.18.1 = phi ptr [ %i.cr, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68 ], [ %i.bn, %bb.f ] ; 4 uses
  %.sroa.0123.3 = phi ptr [ %i.bs, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i68 ], [ %i.be, %bb.f ] ; 10 uses
  %.not.i.i75 = icmp eq ptr %.sroa.18.1, %.sroa.32.2
  br i1 %.not.i.i75, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit74
  store i32 1065353216, ptr %.sroa.18.1, align 4
  %.sroa_idx100 = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 4
  store i32 1065353216, ptr %.sroa_idx100, align 4
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit90

bb.j:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit74
  %i.ct = ptrtoint ptr %.sroa.32.2 to i64         ; 2 uses
  %i.cu = ptrtoint ptr %.sroa.0123.3 to i64       ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 4 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %bb.k, label %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i76

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #31
          to label %.noexc88.a unwind label %bb.p

.noexc88.a:                                       ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i76: ; preds = %bb.j
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i77 = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i77, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i.i.i78 = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i78)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #34
          to label %.noexc89 unwind label %bb.p   ; 9 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i76
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv ; 2 uses
  store i32 1065353216, ptr %i.de, align 4
  %.sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 1065353216, ptr %.sroa_idx102, align 4
  %.not10.i.i.i.i.i.i79 = icmp eq ptr %.sroa.0123.3, %.sroa.32.2
  br i1 %.not10.i.i.i.i.i.i79, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84, label %iter.check289

iter.check289:                                    ; preds = %.noexc89
  %i.df = add i64 %i.ct, -8
  %i.dg = sub i64 %i.df, %i.cu                    ; 3 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 5 uses
  %min.iters.check271 = icmp ult i64 %i.dg, 24
  br i1 %min.iters.check271, label %.lr.ph.i.i.i.i.i.i80.preheader, label %vector.main.loop.iter.check272

vector.main.loop.iter.check272:                   ; preds = %iter.check289
  %min.iters.check273 = icmp ult i64 %i.dg, 120
  br i1 %min.iters.check273, label %vec.epilog.ph293, label %vector.ph274

vector.ph274:                                     ; preds = %vector.main.loop.iter.check272
  %i.dj = and i64 %i.di, 12
  %n.vec275 = and i64 %i.di, 4611686018427387888  ; 4 uses
  %i.dk = shl i64 %n.vec275, 3                    ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dd, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %.sroa.0123.3, i64 %i.dk
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph274
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next284, %vector.body276 ] ; 2 uses
  %i.dn = shl i64 %index277, 3                    ; 2 uses
  %next.gep278 = getelementptr i8, ptr %i.dd, i64 %i.dn ; 4 uses
  %next.gep279 = getelementptr i8, ptr %.sroa.0123.3, i64 %i.dn ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.do = getelementptr i8, ptr %next.gep279, i64 32
  %i.dp = getelementptr i8, ptr %next.gep279, i64 64
  %i.dq = getelementptr i8, ptr %next.gep279, i64 96
  %wide.load280.a = load <4 x i64>, ptr %next.gep279, align 4, !alias.scope !91, !noalias !88
  %wide.load281 = load <4 x i64>, ptr %i.do, align 4, !alias.scope !91, !noalias !88
  %wide.load282 = load <4 x i64>, ptr %i.dp, align 4, !alias.scope !91, !noalias !88
  %wide.load283 = load <4 x i64>, ptr %i.dq, align 4, !alias.scope !91, !noalias !88
  %i.dr = getelementptr i8, ptr %next.gep278, i64 32
  %i.ds = getelementptr i8, ptr %next.gep278, i64 64
  %i.dt = getelementptr i8, ptr %next.gep278, i64 96
  store <4 x i64> %wide.load280.a, ptr %next.gep278, align 4, !alias.scope !88, !noalias !91
  store <4 x i64> %wide.load281, ptr %i.dr, align 4, !alias.scope !88, !noalias !91
  store <4 x i64> %wide.load282, ptr %i.ds, align 4, !alias.scope !88, !noalias !91
  store <4 x i64> %wide.load283, ptr %i.dt, align 4, !alias.scope !88, !noalias !91
  %index.next284 = add nuw i64 %index277, 16      ; 2 uses
  %i.du = icmp eq i64 %index.next284, %n.vec275
  br i1 %i.du, label %middle.block285, label %vector.body276, !llvm.loop !93

middle.block285:                                  ; preds = %vector.body276
  %cmp.n286 = icmp eq i64 %i.di, %n.vec275
  br i1 %cmp.n286, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block285
  %min.epilog.iters.check292 = icmp eq i64 %i.dj, 0
  br i1 %min.epilog.iters.check292, label %.lr.ph.i.i.i.i.i.i80.preheader, label %vec.epilog.ph293, !prof !85

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check272, %vec.epilog.iter.check291
  %vec.epilog.resume.val287 = phi i64 [ %n.vec275, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check272 ]
  %n.vec294 = and i64 %i.di, 4611686018427387900  ; 3 uses
  %i.dv = shl i64 %n.vec294, 3                    ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dd, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %.sroa.0123.3, i64 %i.dv
  br label %vec.epilog.vector.body295

vec.epilog.vector.body295:                        ; preds = %vec.epilog.vector.body295, %vec.epilog.ph293
  %index296 = phi i64 [ %vec.epilog.resume.val287, %vec.epilog.ph293 ], [ %index.next300, %vec.epilog.vector.body295 ] ; 2 uses
  %i.dy = shl i64 %index296, 3                    ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.dd, i64 %i.dy
  %next.gep298 = getelementptr i8, ptr %.sroa.0123.3, i64 %i.dy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %wide.load299 = load <4 x i64>, ptr %next.gep298, align 4, !alias.scope !91, !noalias !88
  store <4 x i64> %wide.load299, ptr %next.gep297, align 4, !alias.scope !88, !noalias !91
  %index.next300 = add nuw i64 %index296, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next300, %n.vec294
  br i1 %i.dz, label %vec.epilog.middle.block301, label %vec.epilog.vector.body295, !llvm.loop !94

vec.epilog.middle.block301:                       ; preds = %vec.epilog.vector.body295
  %cmp.n302 = icmp eq i64 %i.di, %n.vec294
  br i1 %cmp.n302, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84, label %.lr.ph.i.i.i.i.i.i80.preheader

.lr.ph.i.i.i.i.i.i80.preheader:                   ; preds = %iter.check289, %vec.epilog.iter.check291, %vec.epilog.middle.block301
  %.012.i.i.i.i.i.i81.ph = phi ptr [ %i.dd, %iter.check289 ], [ %i.dl, %vec.epilog.iter.check291 ], [ %i.dw, %vec.epilog.middle.block301 ]
  %.0911.i.i.i.i.i.i82.ph = phi ptr [ %.sroa.0123.3, %iter.check289 ], [ %i.dm, %vec.epilog.iter.check291 ], [ %i.dx, %vec.epilog.middle.block301 ]
  br label %.lr.ph.i.i.i.i.i.i80

.lr.ph.i.i.i.i.i.i80:                             ; preds = %.lr.ph.i.i.i.i.i.i80.preheader, %.lr.ph.i.i.i.i.i.i80
  %.012.i.i.i.i.i.i81 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i80 ], [ %.012.i.i.i.i.i.i81.ph, %.lr.ph.i.i.i.i.i.i80.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i82 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i80 ], [ %.0911.i.i.i.i.i.i82.ph, %.lr.ph.i.i.i.i.i.i80.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.ea = load i64, ptr %.0911.i.i.i.i.i.i82, align 4, !alias.scope !91, !noalias !88
  store i64 %i.ea, ptr %.012.i.i.i.i.i.i81, align 4, !alias.scope !88, !noalias !91
  %i.eb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i82, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i81, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i83 = icmp eq ptr %i.eb, %.sroa.32.2
  br i1 %.not.i.i.i.i.i.i83, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84, label %.lr.ph.i.i.i.i.i.i80, !llvm.loop !95

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84: ; preds = %.lr.ph.i.i.i.i.i.i80, %.noexc89, %vec.epilog.middle.block301, %middle.block285
  %.0.lcssa.i.i.i.i.i.i85 = phi ptr [ %i.dd, %.noexc89 ], [ %i.dw, %vec.epilog.middle.block301 ], [ %i.dl, %middle.block285 ], [ %i.ec, %.lr.ph.i.i.i.i.i.i80 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.3, i64 noundef %i.cv) #32
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit90

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit90: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84, %bb.i
  %.sroa.32.3 = phi ptr [ %i.ed, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84 ], [ %.sroa.32.2, %bb.i ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i85.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i85, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84 ], [ %.sroa.18.1, %bb.i ]
  %.sroa.0123.4 = phi ptr [ %i.dd, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i84 ], [ %.sroa.0123.3, %bb.i ] ; 8 uses
  %.sroa.18.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i85.pn, i64 8 ; 2 uses
  %.sroa.speculated4.i.i.i = tail call i32 @llvm.smin.i32(i32 %2, i32 0) ; 5 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %3, i32 0) ; 4 uses
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %.sroa.speculated.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.09.0.insert.ext.i.i.i = zext i32 %.sroa.speculated4.i.i.i to i64
  %.sroa.09.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.09.0.insert.ext.i.i.i
  %.sroa.speculated4.i14.i.i = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 4 uses
  %.sroa.speculated.i15.i.i = tail call i32 @llvm.smax.i32(i32 %3, i32 0) ; 3 uses
  %.sroa.2.0.insert.ext.i16.i.i = zext nneg i32 %.sroa.speculated.i15.i.i to i64
  %.sroa.2.0.insert.shift.i17.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i16.i.i, 32
  %.sroa.09.0.insert.ext.i18.i.i = zext nneg i32 %.sroa.speculated4.i14.i.i to i64
  %.sroa.09.0.insert.insert.i19.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i17.i.i, %.sroa.09.0.insert.ext.i18.i.i
  store i64 %.sroa.09.0.insert.insert.i.i.i, ptr %0, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.09.0.insert.insert.i19.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.cast.i.i = ptrtoint ptr %7 to i64
  store i64 %.cast.i.i, ptr %i.ee, align 8, !tbaa !50
  %i.ef = sub nsw i32 %.sroa.speculated4.i14.i.i, %.sroa.speculated4.i.i.i
  %i.eg = sub nsw i32 %.sroa.speculated.i15.i.i, %.sroa.speculated.i.i.i
  %i.eh = mul nsw i32 %i.eg, %i.ef                ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIfEEPT_m.exit.thread.i.i, label %.lr.ph.preheader.i.i

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIfEEPT_m.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit90
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ej, align 8, !tbaa !96
  br label %_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit90
  %i.ek = zext nneg i32 %i.eh to i64
  %i.el = shl nuw nsw i64 %i.ek, 2                ; 2 uses
  %i.em = load ptr, ptr %7, align 8, !tbaa !55
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef ptr %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.el, i64 noundef 4)
          to label %.noexc91 unwind label %bb.q, !inline_history !102 ; 3 uses

.noexc91:                                         ; preds = %.lr.ph.preheader.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ep, i8 0, i64 %i.el, i1 false), !tbaa !9
  br label %_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit

_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIfEEPT_m.exit.thread.i.i, %.noexc91
  %i.er = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIfEEPT_m.exit.thread.i.i ], [ %i.ep, %.noexc91 ] ; 14 uses
  %i.es = icmp sgt i32 %3, 0
  br i1 %i.es, label %.preheader160.lr.ph, label %._crit_edge177.split.thread

.preheader160.lr.ph:                              ; preds = %_ZN4pbrt7Array2DIfEC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE.exit
  %i.et = icmp sgt i32 %2, 0
  %i.eu = ptrtoint ptr %.sroa.18.2 to i64
  %i.ev = ptrtoint ptr %.sroa.0123.4 to i64       ; 3 uses
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 3
  %i.ey = sitofp i32 %2 to float
  %i.ez = uitofp nneg i32 %3 to float
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fc = sub nsw i32 %.sroa.speculated4.i14.i.i, %.sroa.speculated4.i.i.i ; 2 uses
  br i1 %i.et, label %.preheader160.lr.ph.split, label %._crit_edge177.split.thread

.preheader160.lr.ph.split:                        ; preds = %.preheader160.lr.ph
  %.not180 = icmp eq ptr %.sroa.18.2, %.sroa.0123.4
  %wide.trip.count199 = zext nneg i32 %2 to i64   ; 10 uses
  br i1 %.not180, label %.preheader160.preheader, label %.preheader160.us.preheader

.preheader160.us.preheader:                       ; preds = %.preheader160.lr.ph.split
  %i.fd = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.ez, i64 1
  br label %.preheader160.us

.preheader160.preheader:                          ; preds = %.preheader160.lr.ph.split
  %i.ff = add nsw i64 %wide.trip.count199, -1     ; 2 uses
  %min.iters.check305 = icmp ult i32 %2, 4
  %i.fg = trunc nsw i64 %i.ff to i32
  %i.fh = icmp ugt i64 %i.ff, 4294967295
  %min.iters.check307 = icmp ult i32 %2, 32
  %i.fi = and i64 %wide.trip.count199, 28
  %n.vec309 = and i64 %wide.trip.count199, 2147483616 ; 4 uses
  %cmp.n314 = icmp eq i64 %n.vec309, %wide.trip.count199
  %min.epilog.iters.check319 = icmp eq i64 %i.fi, 0
end_hunk_0
