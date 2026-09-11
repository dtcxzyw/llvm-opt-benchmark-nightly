Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/pspec?download=true
inline.NumInlined: 1853
inline.NumDeleted: 656
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.u
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !27
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.v:                                             ; preds = %bb.t, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %i.ct, %bb.t ]
  %i.db = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.v
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !27
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn24
}

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS5_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #26 align 2 {
bb.a:
  tail call fastcc void @_ZL5usageRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(32) %1)
  tail call void @exit(i32 noundef 1) #37
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZ4mainE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !31
  br label %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !23
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.e, ptr %i.a, align 8, !tbaa !37
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !28
  %i.h = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.h, ptr %i.b, align 8, !tbaa !27
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !27
  store i8 %i.j, ptr %i.i, align 1, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = load ptr, ptr %.016, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !656

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #36
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, i64, ptr, i64, ptr nofree noundef align 8 dead_on_return dereferenceable(8), i64) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #5 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !31    ; 4 uses
  %.val2 = load i64, ptr %1, align 8, !tbaa !37   ; 2 uses
  %i.a = trunc i64 %.val2 to i32
  %i.b = load ptr, ptr %.val, align 8, !tbaa !659, !nonnull !89, !align !141
  %i.c = load i32, ptr %i.b, align 4, !tbaa !29   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph34.i.i.i, label %"_ZSt10__invoke_rIvRZ4mainE3$_1JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_.exit"

.lr.ph34.i.i.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.215.0.insert.ext.i.i.i = shl i64 %.val2, 32
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph34.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.g = phi i32 [ %i.c, %.lr.ph34.i.i.i ], [ %i.ab, %._crit_edge.i.i.i ]
  %i.h = sdiv i32 %i.g, 2                         ; 2 uses
  %i.i = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.j = sub nsw i32 %i.a, %i.h
  %i.k = sub nsw i32 %i.i, %i.h
  %i.l = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.m = insertelement <2 x i32> %i.l, i32 %i.j, i64 1
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !660, !nonnull !89, !align !157 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !86, !range !88, !noundef !89
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN4pstd8optionalISt6vectorIN4pbrt6Point2IfEESaIS4_EEEdeEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 235, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(4) @.str.63) #36
  unreachable

_ZN4pstd8optionalISt6vectorIN4pbrt6Point2IfEESaIS4_EEEdeEv.exit.i.i.i: ; preds = %bb.b
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !661  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !661  ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not27.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.v = fmul <2 x float> %i.am, %i.am
  %2 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.v)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN4pstd8optionalISt6vectorIN4pbrt6Point2IfEESaIS4_EEEdeEv.exit.i.i.i
  %.sroa.024.0.lcssa.i.i.i = phi float [ 0.000000e+00, %_ZN4pstd8optionalISt6vectorIN4pbrt6Point2IfEESaIS4_EEEdeEv.exit.i.i.i ], [ %2, %._crit_edge.loopexit.i.i.i ]
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !662, !nonnull !89, !align !157
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50   ; 2 uses
  %.sroa.014.0.insert.insert.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, %.sroa.215.0.insert.ext.i.i.i ; 2 uses
  %i.y = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.x, i64 %.sroa.014.0.insert.insert.i.i.i, i32 noundef 0, i64 4294967297)
  %i.z = fadd float %.sroa.024.0.lcssa.i.i.i, %i.y
  tail call void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %i.x, i64 %.sroa.014.0.insert.insert.i.i.i, i32 noundef 0, float noundef %i.z)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aa = load ptr, ptr %.val, align 8, !tbaa !659, !nonnull !89, !align !141
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i.i, %i.ac
  br i1 %i.ad, label %bb.b, label %"_ZSt10__invoke_rIvRZ4mainE3$_1JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_.exit", !llvm.loop !657

.lr.ph.i.i.i:                                     ; preds = %_ZN4pstd8optionalISt6vectorIN4pbrt6Point2IfEESaIS4_EEEdeEv.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.021.028.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.s, %_ZN4pstd8optionalISt6vectorIN4pbrt6Point2IfEESaIS4_EEEdeEv.exit.i.i.i ] ; 2 uses
  %i.ae = phi <2 x float> [ %i.am, %.lr.ph.i.i.i ], [ zeroinitializer, %_ZN4pstd8optionalISt6vectorIN4pbrt6Point2IfEESaIS4_EEEdeEv.exit.i.i.i ]
  %i.af = load <2 x float>, ptr %.sroa.021.028.i.i.i, align 4
  %i.ag = fmul <2 x float> %i.af, %i.n
  %3 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ag)
  %i.ah = fmul float %3, f0xC0C90FDB              ; 2 uses
  %i.ai = tail call noundef float @cosf(float noundef %i.ah) #32
  %i.aj = tail call noundef float @sinf(float noundef %i.ah) #32
  %i.ak = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.aj, i64 1
  %i.am = fadd <2 x float> %i.ae, %i.al           ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.u
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

"_ZSt10__invoke_rIvRZ4mainE3$_1JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_.exit": ; preds = %._crit_edge.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #5 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZ4mainE3$_1", ptr %0, align 8, !tbaa !159
  br label %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !31
  store ptr %.val, ptr %0, align 8, !tbaa !31
  br label %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !663
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  br label %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !31 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #33
  br label %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, i32 noundef %2, float noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.pbrt::Point2", align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  store i64 %1, ptr %5, align 8
  store i32 %2, ptr %i.a, align 4, !tbaa !29
  store float %3, ptr %i.b, align 4, !tbaa !53
  %i.c = fcmp uno float %3, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !666
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !23, !alias.scope !667
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !26, !alias.scope !667
  store i8 0, ptr %i.g, align 8, !tbaa !27, !alias.scope !667
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRiJS2_S2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.76, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !28, !alias.scope !667 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %common.resume.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.g, align 8, !tbaa !27, !alias.scope !667
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.c
  %i.n = load ptr, ptr %4, align 8, !tbaa !28
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 1, ptr noundef nonnull @.str.64, i32 noundef 429, ptr noundef %i.n)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.o = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.g, align 8, !tbaa !27
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #33
  br label %_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit

bb.f:                                             ; preds = %_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.g, align 8, !tbaa !27
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume.i

_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt3LogIJRiS1_S1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit, %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.x = phi float [ 0.000000e+00, %bb.g ], [ %3, %bb.a ] ; 4 uses
  %i.y = load i32, ptr %0, align 8, !tbaa !116
  switch i32 %i.y, label %bb.r [
    i32 0, label %bb.i
    i32 1, label %bb.l
    i32 2, label %bb.q
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.copyload = load i64, ptr %5, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.02.0.copyload to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.02.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !117
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !118
  %i.af = mul nsw i32 %i.ae, %.sroa.2.0.extract.trunc.i
  %i.ag = add nsw i32 %i.af, %.sroa.0.0.extract.trunc.i
  %i.ah = mul nsw i32 %i.ag, %i.ac
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !29
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ai
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ak  ; 3 uses
  %i.ap = load i64, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %i.aq = and i64 %i.ap, 144115188075855871
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = lshr i64 %i.ap, 57
  %i.at = trunc nuw nsw i64 %i.as to i32
  switch i32 %i.at, label %bb.k [
    i32 1, label %_ZN4pbrt5ClampIfiiEET_S1_T0_T1_.exit.i.i.i.i.i.preheader
    i32 2, label %bb.j
  ]

_ZN4pbrt5ClampIfiiEET_S1_T0_T1_.exit.i.i.i.i.i.preheader: ; preds = %bb.i
  %i.au = fmul float %i.x, 2.550000e+02
  %i.av = fadd float %i.au, 5.000000e-01          ; 3 uses
  %i.aw = fcmp olt float %i.av, 0.000000e+00
  %i.ax = fcmp ogt float %i.av, 2.550000e+02
  %..i.i.i.i.i.i = select i1 %i.ax, float 2.550000e+02, float %i.av
  %.0.i.i.i.i.i.i = select i1 %i.aw, float 0.000000e+00, float %..i.i.i.i.i.i
  %i.ay = fptoui float %.0.i.i.i.i.i.i to i8
  store i8 %i.ay, ptr %i.ao, align 1, !tbaa !27
  br label %_ZNK4pbrt13ColorEncoding10FromLinearEN4pstd4spanIKfEENS2_IhEE.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZNK4pbrt17sRGBColorEncoding10FromLinearEN4pstd4spanIKfEENS2_IhEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr nonnull %i.b, i64 1, ptr %i.ao, i64 1)
  br label %_ZNK4pbrt13ColorEncoding10FromLinearEN4pstd4spanIKfEENS2_IhEE.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZNK4pbrt18GammaColorEncoding10FromLinearEN4pstd4spanIKfEENS2_IhEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.ar, ptr nonnull %i.b, i64 1, ptr %i.ao, i64 1)
  br label %_ZNK4pbrt13ColorEncoding10FromLinearEN4pstd4spanIKfEENS2_IhEE.exit

bb.l:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_:bb.a
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !46
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bn, ptr %i.h, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bo, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !27
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bo, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bv) #32
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bw, ptr %4, align 8, !tbaa !46
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.by = getelementptr i8, ptr %i.bw, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %4, i64 %i.bz
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !136
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cc) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !129
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.cd)
          to label %bb.u unwind label %bb.b

bb.m:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ai
  br i1 %i.ci, label %.body26, label %.body26.sink.split

.body26.sink.split:                               ; preds = %bb.o, %bb.k
  %.sink = phi ptr [ %i.ar, %bb.k ], [ %i.ch, %bb.o ]
  %.pn19.ph = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.cg, %bb.o ]
  %i.cj = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ck) #33
  br label %.body26

.body26:                                          ; preds = %.body26.sink.split, %bb.o, %bb.k
  %.pn19 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.cg, %bb.o ], [ %.pn19.ph, %.body26.sink.split ] ; 2 uses
  %i.cl = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.n
  br i1 %i.cm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body26, %bb.h
  %.sink74 = phi ptr [ %i.ab, %bb.h ], [ %i.cl, %.body26 ]
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn19, %.body26 ]
  %i.cn = load i64, ptr %i.n, align 8, !tbaa !27
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %.sink74, i64 noundef %i.co) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body26, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn19, %.body26 ], [ %.pn19.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %i.cf, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.p ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.v

bb.r:                                             ; preds = %bb.d
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !26
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load ptr, ptr %3, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr @_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.b, align 8, !tbaa !129
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef 176, ptr noundef nonnull @.str.69, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #36
          to label %.noexc38 unwind label %bb.t

.noexc38:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.cu = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.cv = phi ptr [ @.str.49, %bb.c ], [ @.str.37, %bb.r ], [ @.str.48, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %i.cu, ptr noundef nonnull %i.cv) #36
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cw = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.u
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !27
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.v:                                             ; preds = %bb.t, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %i.ct, %bb.t ]
  %i.db = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.v
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !27
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn24
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #29

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nofree nounwind }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind memory(none) }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold mustprogress nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { noreturn }
attributes #37 = { cold noreturn nounwind }
attributes #38 = { cold nounwind }
attributes #39 = { cold }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !36}
!1 = distinct !{!1, !36}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = distinct !{!4, !36}
!5 = distinct !{!5, !36}
!6 = distinct !{null}
!7 = distinct !{!7, !36}
!8 = distinct !{!8, !36}
!9 = distinct !{!9, !36}
!10 = distinct !{!10, !36}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"long", !16, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !24, i64 8, !16, i64 16}
!26 = !{!25, !24, i64 8}
!27 = !{!16, !16, i64 0}
!28 = !{!25, !21, i64 0}
!29 = !{!17, !17, i64 0}
!30 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!31 = !{!20, !20, i64 0}
!32 = !{!"_ZTSSt14_Function_base", !16, i64 0, !20, i64 16}
!33 = !{!32, !20, i64 16}
!34 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEE", !30, i64 0}
!35 = !{!34, !30, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!24, !24, i64 0}
!38 = !{!"bool", !16, i64 0}
!39 = !{!"_ZTSN4pbrt8LogLevelE", !16, i64 0}
!40 = !{!"float", !16, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!42 = !{!41, !30, i64 0}
!43 = !{!41, !30, i64 16}
!44 = !{!41, !30, i64 8}
!45 = !{!"vtable pointer", !15, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_19LinearColorEncodingENS_17sRGBColorEncodingENS_18GammaColorEncodingEEEE", !24, i64 0}
!48 = !{!47, !24, i64 0}
!49 = !{!"p1 _ZTSN4pbrt5ImageE", !20, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!40, !40, i64 0}
!54 = !{!"p1 short", !20, i64 0}
!55 = !{!"_ZTSN4pbrt16DigitPermutationE", !17, i64 0, !17, i64 4, !54, i64 8}
!56 = !{!55, !54, i64 8}
!57 = !{!55, !17, i64 0}
!58 = !{!"short", !16, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"_ZTSN4pbrt17RandomizeStrategyE", !16, i64 0}
!61 = !{!"_ZTSN4pbrt13ZSobolSamplerE", !60, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !24, i64 16, !17, i64 24}
!62 = !{!61, !17, i64 24}
!63 = !{!61, !17, i64 8}
!64 = !{!61, !24, i64 16}
!65 = !{!"_ZTSN4pbrt3RNGE", !24, i64 0, !24, i64 8}
!66 = !{!"_ZTSN4pbrt18IndependentSamplerE", !17, i64 0, !17, i64 4, !65, i64 8}
!67 = !{!66, !17, i64 4}
!68 = !{!65, !24, i64 0}
!69 = !{!65, !24, i64 8}
!70 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EiEE", !17, i64 0, !17, i64 4}
!71 = !{!"_ZTSN4pbrt6Point2IiEE", !70, i64 0}
!72 = !{!"_ZTSN4pbrt17StratifiedSamplerE", !17, i64 0, !17, i64 4, !17, i64 8, !38, i64 12, !65, i64 16, !71, i64 32, !17, i64 40, !17, i64 44}
!73 = !{!72, !17, i64 8}
!74 = !{!72, !38, i64 12}
!75 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !20, i64 0}
!76 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt10MLTSampler13PrimarySampleEEE", !75, i64 0}
!77 = !{!"p1 _ZTSN4pbrt10MLTSampler13PrimarySampleE", !20, i64 0}
!78 = !{!"_ZTSN4pstd6vectorIN4pbrt10MLTSampler13PrimarySampleENS_3pmr21polymorphic_allocatorIS3_EEEE", !76, i64 0, !77, i64 8, !24, i64 16, !24, i64 24}
!79 = !{!"p1 float", !20, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 0}
!82 = !{!"p1 _ZTSN4pbrt6Point2IiEE", !20, i64 0}
!83 = !{!"p1 int", !20, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"_ZTSN4pstd8optionalISt6vectorIN4pbrt6Point2IfEESaIS4_EEEE", !16, i64 0, !38, i64 24}
!86 = !{!85, !38, i64 24}
!87 = !{!"p1 _ZTSN4pbrt6Point2IfEE", !20, i64 0}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{!"p1 _ZTSN4pstd8optionalISt6vectorIN4pbrt6Point2IfEESaIS4_EEEE", !20, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"any p2 pointer", !20, i64 0}
!93 = !{!"p2 _ZTSN4pbrt5ImageE", !92, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"p1 _ZTSSt8functionIFvlEE", !20, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!"_ZTSSt8functionIFvlEE", !32, i64 0, !20, i64 24}
!98 = !{!97, !20, i64 24}
!99 = !{!"_ZTSSt14_Rb_tree_color", !16, i64 0}
!100 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !20, i64 0}
!101 = !{!"_ZTSSt18_Rb_tree_node_base", !99, i64 0, !100, i64 8, !100, i64 16, !100, i64 24}
!102 = !{!"_ZTSSt15_Rb_tree_header", !101, i64 0, !24, i64 32}
!103 = !{!102, !100, i64 8}
!104 = !{!"_ZTSN4pbrt11PixelFormatE", !16, i64 0}
!105 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !75, i64 0}
!106 = !{!"_ZTSN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEE", !105, i64 0, !30, i64 8, !24, i64 16, !24, i64 24}
!107 = !{!"_ZTSN4pbrt13ColorEncodingE", !47, i64 0}
!108 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIhEE", !75, i64 0}
!109 = !{!"_ZTSN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEE", !108, i64 0, !21, i64 8, !24, i64 16, !24, i64 24}
!110 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEEE", !75, i64 0}
!111 = !{!"p1 _ZTSN4pbrt4HalfE", !20, i64 0}
!112 = !{!"_ZTSN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEE", !110, i64 0, !111, i64 8, !24, i64 16, !24, i64 24}
!113 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIfEE", !75, i64 0}
!114 = !{!"_ZTSN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE", !113, i64 0, !79, i64 8, !24, i64 16, !24, i64 24}
!115 = !{!"_ZTSN4pbrt5ImageE", !104, i64 0, !71, i64 4, !106, i64 16, !107, i64 48, !109, i64 56, !112, i64 88, !114, i64 120}
!116 = !{!115, !104, i64 0}
!117 = !{!106, !24, i64 24}
!118 = !{!70, !17, i64 0}
!119 = !{!109, !21, i64 8}
!120 = !{!112, !111, i64 8}
!121 = !{!"_ZTSN4pbrt4HalfE", !58, i64 0}
!122 = !{!121, !58, i64 0}
!123 = !{!114, !79, i64 8}
!124 = !{!"_ZTSSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !32, i64 0, !20, i64 24}
!125 = !{!124, !20, i64 24}
!126 = !{!61, !60, i64 0}
!127 = !{!61, !17, i64 4}
!128 = !{!61, !17, i64 12}
!129 = !{!21, !21, i64 0}
!130 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!131 = !{!"_ZTSSt6locale", !130, i64 0}
!132 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !131, i64 56}
!133 = !{!132, !21, i64 40}
!134 = !{!132, !21, i64 32}
!135 = !{!"_ZTSSi", !24, i64 8}
!136 = !{!135, !24, i64 8}
!137 = !{!"_ZTSN4pbrt18PaddedSobolSamplerE", !17, i64 0, !17, i64 4, !60, i64 8, !71, i64 12, !17, i64 20, !17, i64 24}
!138 = !{!137, !17, i64 0}
!139 = !{!137, !17, i64 4}
!140 = !{!137, !60, i64 8}
!141 = !{i64 4}
!142 = !{!"p1 _ZTSN4pstd6vectorIN4pbrt6Point2IfEENS_3pmr21polymorphic_allocatorIS3_EEEE", !20, i64 0}
!143 = !{!"_ZTSN4pbrt14PMJ02BNSamplerE", !17, i64 0, !17, i64 4, !17, i64 8, !142, i64 16, !71, i64 24, !17, i64 32, !17, i64 36}
!144 = !{!143, !17, i64 32}
!145 = !{!143, !17, i64 36}
!146 = !{!72, !17, i64 40}
!147 = !{!72, !17, i64 44}
!148 = !{!137, !17, i64 20}
!149 = !{!137, !17, i64 24}
!150 = !{!"_ZTSN4pbrt12SobolSamplerE", !17, i64 0, !17, i64 4, !17, i64 8, !60, i64 12, !71, i64 16, !17, i64 24, !24, i64 32}
!151 = !{!150, !17, i64 24}
!152 = !{!150, !24, i64 32}
end_hunk_1
