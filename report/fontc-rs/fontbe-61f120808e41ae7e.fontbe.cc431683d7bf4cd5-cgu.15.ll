Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.15?download=true
inline.NumInlined: 2339
inline.NumDeleted: 1551
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENCNvB1p_11kerned_maps0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2C_8for_each4callINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB68_3VecB3F_E14extend_trustedBN_E0E0EB1t_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.i.i.i, i64 40, i1 false), !noalias !2094
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !noalias !2094
  invoke void @_RINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7_7HashMapRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBP_B1A_EE6extendINtNtNtB38_8adapters3map3MapINtNtB4g_6filter6FilterINtNtNtNtB2j_11collections4hash3map4IterBP_B1A_ENCNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern11kerned_maps00ENCB5O_s_0EEB5W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern11kerned_maps0B7_.exit.i.i unwind label %bb.g, !noalias !2095

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.body.i.i.i unwind label %bb.h, !noalias !2095

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2095
  unreachable

bb.i:                                             ; preds = %.body.i.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2092
  unreachable

_RNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern11kerned_maps0B7_.exit.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !2096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.j unwind label %bb.c, !noalias !2090

bb.j:                                             ; preds = %_RNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern11kerned_maps0B7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2089
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !2097
  %i.ad = add i64 %.val10.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.o
  br i1 %i.af, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupEuNCNvBS_11kerned_maps0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6o_3VecB36_E14extend_trustedINtB2y_3MapBF_B5r_EE0E0E0EBW_.exit, label %bb.d

bb.k:                                             ; preds = %.body.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.c ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2090
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupEuNCNvBS_11kerned_maps0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6o_3VecB36_E14extend_trustedINtB2y_3MapBF_B5r_EE0E0E0EBW_.exit: ; preds = %bb.j, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ad, %bb.j ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2090
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENCNvB1p_12resolve_pair0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4callTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3K_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5M_3VecB3G_E14extend_trustedBN_E0E0EB1t_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.01.i.i = alloca [24 x i8], align 8       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !12, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_TINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3a_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvBS_12resolve_pair0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB62_3VecB36_E14extend_trustedINtB2y_3MapBF_B54_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 112
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.w, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.x, %bb.g ] ; 2 uses
  %i.m = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2112
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2113, !noalias !2114, !nonnull !5, !align !12, !noundef !5
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc.i unwind label %bb.c, !noalias !2114

.noexc.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2113, !noalias !2114, !nonnull !5, !align !12, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.s = invoke noundef double @_RNvNtNtCshxhuDJfZv4T_6fontbe8features4kern20lookup_kerning_value(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
          to label %bb.g unwind label %bb.e, !noalias !2115

bb.e:                                             ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #40
          to label %bb.h unwind label %bb.f, !noalias !2115

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2115
  unreachable

bb.g:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2112
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i.i, i64 24, i1 false), !noalias !2117
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store double %i.s, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !2117
  %i.w = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i)
  %i.x = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.k
  br i1 %i.y, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_TINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3a_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvBS_12resolve_pair0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB62_3VecB36_E14extend_trustedINtB2y_3MapBF_B54_EE0E0E0EBW_.exit, label %bb.d

bb.h:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.t, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2114
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_TINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3a_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvBS_12resolve_pair0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB62_3VecB36_E14extend_trustedINtB2y_3MapBF_B54_EE0E0E0EBW_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.w, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2114
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB2B_10MaxBuilder6updates_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3L_8for_each4callNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5K_3VecB4O_E14extend_trustedBN_E0E0EB2D_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16uNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4g_10MaxBuilder6updates_0NCINvNvB1W_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3k_E14extend_trustedINtB2M_3MapBF_B48_EE0E0E0EB4i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 22                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 352
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 1
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.5.0.copyload, %i.e
  %i.i = shl i64 %i.h, 1
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 6
  %i.l = getelementptr i8, ptr %0, i64 %i.d
  %i.m = getelementptr i8, ptr %i.l, i64 -14
  %bound0 = icmp ult ptr %i.g, %i.m
  %bound1 = icmp ult ptr %i.k, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846968      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.p = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.x = getelementptr i8, ptr %i.p, i64 6
  %i.y = getelementptr i8, ptr %i.q, i64 28
  %i.z = getelementptr i8, ptr %i.r, i64 50
  %i.aa = getelementptr i8, ptr %i.s, i64 72
  %i.ab = getelementptr i8, ptr %i.t, i64 94
  %i.ac = getelementptr i8, ptr %i.u, i64 116
  %i.ad = getelementptr i8, ptr %i.v, i64 138
  %i.ae = getelementptr i8, ptr %i.w, i64 160
  %i.af = load i16, ptr %i.x, align 2, !alias.scope !2132, !noalias !2133, !noundef !5
  %i.ag = load i16, ptr %i.y, align 2, !alias.scope !2132, !noalias !2133, !noundef !5
  %i.ah = load i16, ptr %i.z, align 2, !alias.scope !2132, !noalias !2133, !noundef !5
  %i.ai = load i16, ptr %i.aa, align 2, !alias.scope !2132, !noalias !2133, !noundef !5
  %i.aj = load i16, ptr %i.ab, align 2, !alias.scope !2132, !noalias !2133, !noundef !5
  %i.ak = load i16, ptr %i.ac, align 2, !alias.scope !2132, !noalias !2133, !noundef !5
  %i.al = load i16, ptr %i.ad, align 2, !alias.scope !2132, !noalias !2133, !noundef !5
  %i.am = load i16, ptr %i.ae, align 2, !alias.scope !2132, !noalias !2133, !noundef !5
  %i.an = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 1
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 2
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 3
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.aj, i64 4
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ak, i64 5
  %i.at = insertelement <8 x i16> %i.as, i16 %i.al, i64 6
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 7
  %i.av = getelementptr [2 x i8], ptr %i.o, i64 %index
  store <8 x i16> %i.au, ptr %i.av, align 2, !alias.scope !2134, !noalias !2135
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !2129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16uNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4g_10MaxBuilder6updates_0NCINvNvB1W_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3k_E14extend_trustedINtB2M_3MapBF_B48_EE0E0E0EB4i_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ax = phi i64 [ %i.bb, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.bc, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.az = getelementptr i8, ptr %i.ay, i64 6
  %.val15.i.prol = load i16, ptr %i.az, align 2, !noalias !2133, !noundef !5
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ax
  store i16 %.val15.i.prol, ptr %i.ba, align 2, !noalias !2136
  %i.bb = add i64 %i.ax, 1                        ; 3 uses
  %i.bc = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2130

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16uNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4g_10MaxBuilder6updates_0NCINvNvB1W_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3k_E14extend_trustedINtB2M_3MapBF_B48_EE0E0E0EB4i_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bf = phi i64 [ %i.bv, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bw, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 6
  %.val15.i = load i16, ptr %i.bh, align 2, !noalias !2133, !noundef !5
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.bf
  store i16 %.val15.i, ptr %i.bi, align 2, !noalias !2136
  %i.bj = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 28
  %.val15.i.1 = load i16, ptr %i.bk, align 2, !noalias !2133, !noundef !5
  %i.bl = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.bf
  %i.bm = getelementptr i8, ptr %i.bl, i64 2
  store i16 %.val15.i.1, ptr %i.bm, align 2, !noalias !2136
  %i.bn = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 50
  %.val15.i.2 = load i16, ptr %i.bo, align 2, !noalias !2133, !noundef !5
  %i.bp = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.bf
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  store i16 %.val15.i.2, ptr %i.bq, align 2, !noalias !2136
  %i.br = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bs = getelementptr i8, ptr %i.br, i64 72
  %.val15.i.3 = load i16, ptr %i.bs, align 2, !noalias !2133, !noundef !5
  %i.bt = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.bf
  %i.bu = getelementptr i8, ptr %i.bt, i64 6
  store i16 %.val15.i.3, ptr %i.bu, align 2, !noalias !2136
  %i.bv = add i64 %i.bf, 4                        ; 2 uses
  %i.bw = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.e
  br i1 %i.bx, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16uNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4g_10MaxBuilder6updates_0NCINvNvB1W_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3k_E14extend_trustedINtB2M_3MapBF_B48_EE0E0E0EB4i_.exit, label %scalar.ph, !llvm.loop !2131

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16uNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4g_10MaxBuilder6updates_0NCINvNvB1W_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3k_E14extend_trustedINtB2M_3MapBF_B48_EE0E0E0EB4i_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bv, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2133
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENCNvMs1_B1p_NtB1p_6U32Set10iter_pages0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionTmRNtNtB1r_7bitpage7BitPageEEuINtNtNtBc_3ops12control_flow11ControlFlowB4N_ENCINvNvB3a_4find5checkB4N_QNCNvB2B_20iter_non_empty_pages0E0E0B5h_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !2149
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !noalias !2149
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2150, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !2150 ; 2 uses
  %i.g = icmp eq ptr %.promoted.i, %i.f
  br i1 %i.g, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionTmRNtNtBN_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB3M_ENCNvMs1_BL_NtBL_6U32Set10iter_pages0NCINvNtB2P_7flatten15try_flatten_oneB3q_uB4f_NCINvNvB1T_4find5checkB3M_QNCNvB53_20iter_non_empty_pages0E0E0E0B4f_ECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i, %.lr.ph.i
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !2150
  %.val.i = load i32, ptr %i.i, align 4, !noalias !2149, !noundef !5
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %.val9.i = load i32, ptr %i.k, align 4, !noalias !2149 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !2151, !noalias !2149, !nonnull !5, !align !12, !noundef !5
  %.val.i.i = load ptr, ptr %i.l, align 8, !noalias !2152, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !2152, !noundef !5
  %i.o = zext i32 %.val.i to i64                  ; 2 uses
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2152, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2153
  store i32 %.val9.i, ptr %i.a, align 8, !noalias !2154
  store ptr %i.s, ptr %i.h, align 8, !noalias !2154
  %i.t = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs1_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtBW_6U32Set20iter_non_empty_pages0INtB7_5FnMutTRTmRNtNtBY_7bitpage7BitPageEEE8call_mutCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2153
  br i1 %i.t, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionTmRNtNtBN_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB3M_ENCNvMs1_BL_NtBL_6U32Set10iter_pages0NCINvNtB2P_7flatten15try_flatten_oneB3q_uB4f_NCINvNvB1T_4find5checkB3M_QNCNvB53_20iter_non_empty_pages0E0E0E0B4f_ECshxhuDJfZv4T_6fontbe.exit, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.c, %bb.b
  %i.u = icmp eq ptr %i.j, %i.f
  br i1 %i.u, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionTmRNtNtBN_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB3M_ENCNvMs1_BL_NtBL_6U32Set10iter_pages0NCINvNtB2P_7flatten15try_flatten_oneB3q_uB4f_NCINvNvB1T_4find5checkB3M_QNCNvB53_20iter_non_empty_pages0E0E0E0B4f_ECshxhuDJfZv4T_6fontbe.exit, label %bb.b

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionTmRNtNtBN_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB3M_ENCNvMs1_BL_NtBL_6U32Set10iter_pages0NCINvNtB2P_7flatten15try_flatten_oneB3q_uB4f_NCINvNvB1T_4find5checkB3M_QNCNvB53_20iter_non_empty_pages0E0E0E0B4f_ECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.c, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i, %bb.a
  %.sroa.3.0.i = phi ptr [ null, %bb.a ], [ null, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i ], [ %i.s, %bb.c ]
  %.sroa.0.0.i = phi i32 [ undef, %bb.a ], [ undef, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i ], [ %.val9.i, %bb.c ]
  %i.v = insertvalue { i32, ptr } poison, i32 %.sroa.0.0.i, 0
  %i.w = insertvalue { i32, ptr } %i.v, ptr %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i32, ptr } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENCNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2L_8for_each4callNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4M_3VecB3O_E14extend_trustedBN_E0E0EB29_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !12, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !12, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.j = icmp eq ptr %i.c, %i.e
  br i1 %i.j, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayeruNCNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr00NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3K_EE0E0E0EB3Q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.al, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.am, %bb.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.01.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2168
  store ptr %i.o, ptr %i.b, align 8, !noalias !2169
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2170, !noalias !2171, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !range !19, !noalias !2172, !noundef !5
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !2172, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !range !13, !noalias !2172, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2169
  store ptr %i.b, ptr %i.a, align 8, !noalias !2169
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphNtB6_5Debug3fmtCshxhuDJfZv4T_6fontbe, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !2169
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #41
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENCNvMs5_NtNtB1s_8features4kernNtB2k_16KernSplitContext25split_base_and_mark_pairs0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3x_8for_each4callINtNtCsgCecv3eZDcN_5alloc6borrow3CowB1o_ENCINvMsk_NtB4F_3vecINtB5o_3VecB4A_E14extend_trustedBN_E0E0EB1s_:bb.a
  store ptr %.val15.i.epil, ptr %.sroa.42.0..sroa_idx.i.i.epil, align 8, !noalias !2204
  %i.s = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2203
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1r_15NormalizedSpaceEB1o_EENCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3r_8for_each4callNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar12AxisValueMapNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5A_3VecB4u_E14extend_trustedBN_E0E0EB2G_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar12AxisValueMapuNCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps2_0NCINvNvB21_8for_each4callB3p_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5P_3VecB3p_E14extend_trustedINtB2R_3MapBF_B4n_EE0E0E0EB4t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load double, ptr %i.g, align 8, !noalias !2213, !noundef !5 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val16.i = load double, ptr %i.h, align 8, !noalias !2213, !noundef !5 ; 2 uses
  %i.i = bitcast double %.val15.i to i64
  %.not.i.i.i = icmp sgt i64 %i.i, -1
  %i.j = uitofp i1 %.not.i.i.i to double
  %i.k = fadd double %i.j, -5.000000e-01
  %i.l = fmul double %.val15.i, 1.638400e+04
  %i.m = fadd double %i.l, %i.k
  %i.n = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.m)
  %i.o = bitcast double %.val16.i to i64
  %.not1.i.i.i = icmp sgt i64 %i.o, -1
  %i.p = uitofp i1 %.not1.i.i.i to double
  %i.q = fadd double %i.p, -5.000000e-01
  %i.r = fmul double %.val16.i, 1.638400e+04
  %i.s = fadd double %i.r, %i.q
  %i.t = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.s)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.f ; 2 uses
  store i16 %i.n, ptr %i.u, align 2, !noalias !2214
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i16 %i.t, ptr %i.v, align 2, !noalias !2214
  %i.w = add i64 %i.f, 1                          ; 2 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.e
  br i1 %i.y, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar12AxisValueMapuNCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps2_0NCINvNvB21_8for_each4callB3p_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5P_3VecB3p_E14extend_trustedINtB2R_3MapBF_B4n_EE0E0E0EB4t_.exit, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar12AxisValueMapuNCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps2_0NCINvNvB21_8for_each4callB3p_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5P_3VecB3p_E14extend_trustedINtB2R_3MapBF_B4n_EE0E0E0EB4t_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2213
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { double, double } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1r_15NormalizedSpaceEB1o_EENCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps_0ENtNtNtBa_6traits8iterator8Iterator4foldTddENCB2C_s0_0EB2G_(ptr noundef nonnull %0, ptr noundef %1, double noundef %2, double noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtB27_8adapters3map8map_foldRBQ_B2L_B2L_NCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps_0NCB3C_s0_0E0EB3G_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 1152921504606846972      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6 = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat7 = shufflevector <2 x double> %broadcast.splatinsert6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi8 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi9 = phi <2 x double> [ %broadcast.splat7, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi10 = phi <2 x double> [ %broadcast.splat7, %vector.ph ], [ %i.j, %vector.body ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %wide.vec = load <4 x double>, ptr %i.f, align 8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec11 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec12 = load <4 x double>, ptr %i.h, align 8 ; 2 uses
  %strided.vec13 = shufflevector <4 x double> %wide.vec12, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec14 = shufflevector <4 x double> %wide.vec12, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.i = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %vec.phi9, <2 x double> %strided.vec) ; 2 uses
  %i.j = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %vec.phi10, <2 x double> %strided.vec13) ; 2 uses
  %i.k = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %vec.phi, <2 x double> %strided.vec11) ; 2 uses
  %i.l = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %vec.phi8, <2 x double> %strided.vec14) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !2215

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %i.k, <2 x double> %i.l)
  %i.n = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %rdx.minmax15 = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %i.i, <2 x double> %i.j)
  %i.o = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax15) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtB27_8adapters3map8map_foldRBQ_B2L_B2L_NCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps_0NCB3C_s0_0E0EB3G_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.6.0.i.ph = phi double [ %3, %bb.b ], [ %i.n, %middle.block ]
  %.sroa.02.0.i.ph = phi double [ %2, %bb.b ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.t, %scalar.ph ], [ %.sroa.05.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.6.0.i = phi double [ %i.s, %scalar.ph ], [ %.sroa.6.0.i.ph, %scalar.ph.preheader ]
  %.sroa.02.0.i = phi double [ %i.r, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.0.i ; 2 uses
  %.val.i = load double, ptr %i.p, align 8, !noundef !5
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val14.i = load double, ptr %i.q, align 8, !noundef !5
  %i.r = tail call nsz double @llvm.minimumnum.f64(double %.sroa.02.0.i, double %.val.i) ; 2 uses
  %i.s = tail call nsz double @llvm.maximumnum.f64(double %.sroa.6.0.i, double %.val14.i) ; 2 uses
  %i.t = add nuw i64 %.sroa.05.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.e
  br i1 %i.u, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtB27_8adapters3map8map_foldRBQ_B2L_B2L_NCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps_0NCB3C_s0_0E0EB3G_.exit, label %scalar.ph, !llvm.loop !2216

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtB27_8adapters3map8map_foldRBQ_B2L_B2L_NCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps_0NCB3C_s0_0E0EB3G_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.pn17.i = phi double [ %2, %bb.a ], [ %i.o, %middle.block ], [ %i.r, %scalar.ph ]
  %.pn15.i = phi double [ %3, %bb.a ], [ %i.n, %middle.block ], [ %i.s, %scalar.ph ]
  %.pn.i = insertvalue { double, double } poison, double %.pn17.i, 0
  %.merged.i = insertvalue { double, double } %.pn.i, double %.pn15.i, 1
  ret { double, double } %.merged.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtB1s_2ir12GlyphAnchorsEEENCNvXs3_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3h_8MarkWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB3l_13orchestration7ContextNtB51_9AnyWorkIdNtNtB3l_5error5ErrorE4exec0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6c_8for_each4callRB2H_NCINvMsk_NtB2e_3vecINtB7t_3VecB7f_E14extend_trustedBN_E0E0EB3l_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBV_2ir12GlyphAnchorsEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2H_8adapters3map8map_foldRBQ_RB2a_uNCNvXs3_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB4d_8MarkWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4h_13orchestration7ContextNtB5X_9AnyWorkIdNtNtB4h_5error5ErrorE4exec0NCINvNvB2B_8for_each4callB3Z_NCINvMsk_NtB1H_3vecINtB7J_3VecB3Z_E14extend_trustedINtB3r_3MapBF_B45_EE0E0E0EB4h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv i64 %i.d, 40                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 520
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.5.0.copyload, %i.e
  %i.i = shl i64 %i.h, 3
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 32
  %bound0 = icmp ult ptr %i.g, %1
  %bound1 = icmp ult ptr %i.k, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %i.e, 3                          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 4, i64 %i.l
  %n.vec = sub nsw i64 %i.e, %i.n                 ; 3 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec
  %i.p = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.u = getelementptr i8, ptr %i.q, i64 32
  %i.v = getelementptr i8, ptr %i.r, i64 72
  %i.w = getelementptr i8, ptr %i.s, i64 112
  %i.x = getelementptr i8, ptr %i.t, i64 152
  %i.y = load ptr, ptr %i.u, align 8, !alias.scope !2233, !noalias !2234, !nonnull !5, !noundef !5
  %i.z = load ptr, ptr %i.v, align 8, !alias.scope !2233, !noalias !2234, !nonnull !5, !noundef !5
  %i.aa = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %i.ab = insertelement <2 x ptr> %i.aa, ptr %i.z, i64 1
  %i.ac = load ptr, ptr %i.w, align 8, !alias.scope !2233, !noalias !2234, !nonnull !5, !noundef !5
  %i.ad = load ptr, ptr %i.x, align 8, !alias.scope !2233, !noalias !2234, !nonnull !5, !noundef !5
  %i.ae = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.ad, i64 1
  %wide.gep = getelementptr inbounds nuw i8, <2 x ptr> %i.ab, i64 16
  %wide.gep5 = getelementptr inbounds nuw i8, <2 x ptr> %i.af, i64 16
  %i.ag = getelementptr [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %wide.gep, ptr %i.ag, align 8, !alias.scope !2235, !noalias !2236
  store <2 x ptr> %wide.gep5, ptr %i.ah, align 8, !alias.scope !2235, !noalias !2236
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2230

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.aj = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ak = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aq, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.am = getelementptr i8, ptr %i.al, i64 32
  %.val15.i.prol = load ptr, ptr %i.am, align 8, !noalias !2234, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %.val15.i.prol, i64 16
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ak
  store ptr %i.an, ptr %i.ao, align 8, !noalias !2237, !captures !20
  %i.ap = add i64 %i.ak, 1                        ; 3 uses
  %i.aq = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2231

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %i.ar = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBV_2ir12GlyphAnchorsEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2H_8adapters3map8map_foldRBQ_RB2a_uNCNvXs3_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB4d_8MarkWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4h_13orchestration7ContextNtB5X_9AnyWorkIdNtNtB4h_5error5ErrorE4exec0NCINvNvB2B_8for_each4callB3Z_NCINvMsk_NtB1H_3vecINtB7J_3VecB3Z_E14extend_trustedINtB3r_3MapBF_B45_EE0E0E0EB4h_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.at = phi i64 [ %i.bn, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bo, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.av = getelementptr i8, ptr %i.au, i64 32
  %.val15.i = load ptr, ptr %i.av, align 8, !noalias !2234, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %.val15.i, i64 16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.at
  store ptr %i.aw, ptr %i.ax, align 8, !noalias !2237, !captures !20
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.az = getelementptr i8, ptr %i.ay, i64 72
  %.val15.i.1 = load ptr, ptr %i.az, align 8, !noalias !2234, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %.val15.i.1, i64 16
  %i.bb = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.at
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %i.bc, align 8, !noalias !2237, !captures !20
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.be = getelementptr i8, ptr %i.bd, i64 112
  %.val15.i.2 = load ptr, ptr %i.be, align 8, !noalias !2234, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %.val15.i.2, i64 16
  %i.bg = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.at
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  store ptr %i.bf, ptr %i.bh, align 8, !noalias !2237, !captures !20
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 152
  %.val15.i.3 = load ptr, ptr %i.bj, align 8, !noalias !2234, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.val15.i.3, i64 16
  %i.bl = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.at
  %i.bm = getelementptr i8, ptr %i.bl, i64 24
  store ptr %i.bk, ptr %i.bm, align 8, !noalias !2237, !captures !20
  %i.bn = add i64 %i.at, 4                        ; 2 uses
  %i.bo = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %i.e
  br i1 %i.bp, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBV_2ir12GlyphAnchorsEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2H_8adapters3map8map_foldRBQ_RB2a_uNCNvXs3_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB4d_8MarkWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4h_13orchestration7ContextNtB5X_9AnyWorkIdNtNtB4h_5error5ErrorE4exec0NCINvNvB2B_8for_each4callB3Z_NCINvMsk_NtB1H_3vecINtB7J_3VecB3Z_E14extend_trustedINtB3r_3MapBF_B45_EE0E0E0EB4h_.exit, label %scalar.ph, !llvm.loop !2232

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBV_2ir12GlyphAnchorsEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2H_8adapters3map8map_foldRBQ_RB2a_uNCNvXs3_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB4d_8MarkWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4h_13orchestration7ContextNtB5X_9AnyWorkIdNtNtB4h_5error5ErrorE4exec0NCINvNvB2B_8for_each4callB3Z_NCINvMsk_NtB1H_3vecINtB7J_3VecB3Z_E14extend_trustedINtB3r_3MapBF_B45_EE0E0E0EB4h_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bn, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2234
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtB1s_2ir15KerningInstanceEEENCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB3h_19GatherIrKerningWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB3l_13orchestration7ContextNtB5c_9AnyWorkIdNtNtB3l_5error5ErrorE4exec0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6n_8for_each4callTINtNtB4q_6coords8LocationNtB7u_15NormalizedSpaceEB2H_ENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8t_7HashMapB7r_B2H_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB6r_7collect6ExtendB7q_E6extendBN_E0E0EB3l_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [72 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %0, %1
  br i1 %i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBV_2ir15KerningInstanceEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2K_8adapters3map8map_foldRBQ_TINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB46_15NormalizedSpaceEB2a_EuNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB5n_19GatherIrKerningWorkINtNtB48_13orchestration4WorkNtNtB5r_13orchestration7ContextNtB6W_9AnyWorkIdNtNtB5r_5error5ErrorE4exec0NCINvNvB2E_8for_each4callB42_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8J_7HashMapB43_B2a_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2I_7collect6ExtendB42_E6extendINtB3u_3MapBF_B5i_EE0E0E0EB5r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtB10_2ir15KerningInstanceEETINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2N_15NormalizedSpaceEB2f_EuNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB44_19GatherIrKerningWorkINtNtB2P_13orchestration4WorkNtNtB48_13orchestration7ContextNtB5D_9AnyWorkIdNtNtB48_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2J_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7U_7HashMapB2K_B2f_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB6Y_7collect6ExtendB2J_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3Z_EE0E0E0B48_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aj, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtB10_2ir15KerningInstanceEETINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2N_15NormalizedSpaceEB2f_EuNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB44_19GatherIrKerningWorkINtNtB2P_13orchestration4WorkNtNtB48_13orchestration7ContextNtB5D_9AnyWorkIdNtNtB48_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2J_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7U_7HashMapB2K_B2f_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB6Y_7collect6ExtendB2J_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3Z_EE0E0E0B48_.exit.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %.val8.i = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2249
  %i.u = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16 ; 2 uses
  call void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u), !noalias !2249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2250
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.u)
          to label %.noexc.i.i.i unwind label %bb.h, !noalias !2249

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2250
  %i.v = getelementptr inbounds nuw i8, ptr %.val8.i, i64 40
  invoke void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB18_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.e unwind label %bb.d, !noalias !2251

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i: ; preds = %bb.f, %bb.d
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.w, %bb.d ], [ %i.y, %bb.f ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #40
          to label %.body.i.i.i unwind label %bb.g, !noalias !2251

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i

bb.e:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2250
  %i.x = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64
  invoke void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtB7_3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %_RNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB4_19GatherIrKerningWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB8_13orchestration7ContextNtB1Y_9AnyWorkIdNtNtB8_5error5ErrorE4exec0B8_.exit.i.i unwind label %bb.f, !noalias !2251

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB15_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i unwind label %bb.g, !noalias !2251

bb.g:                                             ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2251
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #40
          to label %common.resume.i.i unwind label %bb.i, !noalias !2249

bb.i:                                             ; preds = %.body.i.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2249
  unreachable

common.resume.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %.pn.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB4_19GatherIrKerningWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB8_13orchestration7ContextNtB1Y_9AnyWorkIdNtNtB8_5error5ErrorE4exec0B8_.exit.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2253
  call void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBQ_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
  %i.ac = load i64, ptr %i.a, align 8, !range !7, !alias.scope !2254, !noalias !2253, !noundef !5
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtB10_2ir15KerningInstanceEETINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2N_15NormalizedSpaceEB2f_EuNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB44_19GatherIrKerningWorkINtNtB2P_13orchestration4WorkNtNtB48_13orchestration7ContextNtB5D_9AnyWorkIdNtNtB48_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2J_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7U_7HashMapB2K_B2f_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB6Y_7collect6ExtendB2J_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3Z_EE0E0E0B48_.exit.i, label %bb.j

end_hunk_1
