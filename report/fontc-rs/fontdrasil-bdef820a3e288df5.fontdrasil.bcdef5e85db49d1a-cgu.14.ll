Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontdrasil-bdef820a3e288df5.fontdrasil.bcdef5e85db49d1a-cgu.14?download=true
inline.NumInlined: 115
inline.NumDeleted: 80
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsgdm2QMcbaeA_10fontdrasil:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.3.0 = phi i64 [ %i.f, %bb.d ], [ %.sroa.6.0.copyload, %bb.c ]
  %.sroa.03.0 = phi i64 [ %i.e, %bb.d ], [ %.sroa.5.0.copyload, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %0, align 8
  store i64 %.sroa.3.0, ptr %i.g, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !19, !inline_history !18 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !19, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !19, !noundef !9
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !19
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsgdm2QMcbaeA_10fontdrasil.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEBC_EECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsgdm2QMcbaeA_10fontdrasil.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %common.resume unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsgdm2QMcbaeA_10fontdrasil.exit2 unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsgdm2QMcbaeA_10fontdrasil.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsgdm2QMcbaeA_10fontdrasil.exit2: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECsgdm2QMcbaeA_10fontdrasil.exit
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapIBR_INtNtNtB6_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENCB1E_s_0EcINtNtB6_6option6OptionzENCINvXsI_B2I_IB2G_INtNtCsgCecv3eZDcN_5alloc3vec3VeccEEINtNtNtB4_6traits7collect12FromIteratorIB2G_cEE9from_iterBQ_E0B3l_EB1I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !32, !noalias !33
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !32, !noalias !33
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VeccEINtB2_12SpecFromItercINtNtNtCsf3Ta7LF998c_4core4iter8adapters12GenericShuntINtNtB1k_3map3MapIB2a_INtNtNtB1o_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENCB30_s_0EINtNtB1o_6option6OptionzEEE9from_iterB34_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  %i.d = load i8, ptr %i.c, align 1, !range !8, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VeccEECsgdm2QMcbaeA_10fontdrasil.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !35
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeccENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VeccEECsgdm2QMcbaeA_10fontdrasil.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVeccENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVeccEECsgdm2QMcbaeA_10fontdrasil.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVeccEECsgdm2QMcbaeA_10fontdrasil.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VeccEECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVeccENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not14 = icmp eq i64 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph16

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit, %bb.a
  ret void

.lr.ph16:                                         ; preds = %bb.a, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit
  %.sroa.2.015 = phi i64 [ %i.c, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.015, -1             ; 6 uses
  %.not7 = icmp ult i64 %i.c, %1
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph16
  %i.d = sub nuw nsw i64 %i.c, %1                 ; 2 uses
  %3 = shl nuw nsw i64 %i.d, 1                    ; 2 uses
  %4 = or disjoint i64 %3, 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph16
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %4, %bb.b ], [ 1, %bb.c ] ; 2 uses
  %5 = phi i64 [ %3, %bb.b ], [ 0, %bb.c ]
  %.sroa.04.0.a = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %1) ; 4 uses
  %i.f = icmp ule i64 %.sroa.04.0.a, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %.not.i11 = icmp ult i64 %.sroa.04.0, %i.e
  br i1 %.not.i11, label %.lr.ph, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %i.g = phi i64 [ %i.ae, %bb.i ], [ %.sroa.04.0, %bb.d ] ; 3 uses
  %i.h = phi i64 [ %i.ad, %bb.i ], [ %5, %bb.d ]
  %.sroa.0.0.i12 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0.a, %bb.d ]
  %i.i = add nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.e
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.m = tail call noundef range(i8 0, 3) i8 @_RINvNtCsf3Ta7LF998c_4core3cmp21default_chaining_implNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyBO_NvMB2_NtB2_8Ordering5is_ltEBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.l) ; 2 uses
  %.not.i.i = icmp eq i8 %i.m, 2
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw i8 %i.m to i1
  br label %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.q = load i64, ptr %i.o, align 8, !alias.scope !60, !noundef !9
  %i.r = load i64, ptr %i.p, align 8, !alias.scope !61, !noundef !9
  %i.s = icmp ult i64 %i.q, %i.r
  br label %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit

_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i = phi i1 [ %i.n, %bb.f ], [ %i.s, %bb.g ]
  %i.t = zext i1 %.sroa.0.0.i.i to i64
  %i.u = add nuw nsw i64 %i.g, %i.t
  br label %bb.h

bb.h:                                             ; preds = %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit ], [ %i.g, %.lr.ph ] ; 3 uses
  %i.v = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.0.0.i12 ; 3 uses
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.x = tail call noundef range(i8 0, 3) i8 @_RINvNtCsf3Ta7LF998c_4core3cmp21default_chaining_implNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyBO_NvMB2_NtB2_8Ordering5is_ltEBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w)
  switch i8 %i.x, label %bb.i [
    i8 2, label %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit10
    i8 0, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit
  ]

_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit10: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.aa = load i64, ptr %i.y, align 8, !alias.scope !68, !noundef !9
  %i.ab = load i64, ptr %i.z, align 8, !alias.scope !69, !noundef !9
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit

bb.i:                                             ; preds = %bb.h, %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit10
  tail call void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsgdm2QMcbaeA_10fontdrasil(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef 15)
  %i.ad = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ae, %i.e
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit: ; preds = %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit10, %bb.i, %bb.h, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph16
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1G_8adapters6filter15filter_try_foldBX_B2E_INtNtB1I_6result6ResultB2E_zENCNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB4K_18LocationSortingHat7key_fors_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B49_EB4M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.not16 = icmp eq ptr %i.f, %i.e
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB3j_18LocationSortingHat7key_fors_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit
  %i.h = phi ptr [ %i.e, %.lr.ph ], [ %i.u, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB3j_18LocationSortingHat7key_fors_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit ]
  %i.i = phi ptr [ %i.f, %.lr.ph ], [ %i.t, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB3j_18LocationSortingHat7key_fors_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit ] ; 2 uses
  %.sroa.4.017 = phi ptr [ %2, %.lr.ph ], [ %.pn2.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB3j_18LocationSortingHat7key_fors_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit ] ; 4 uses
  %.sroa.01.0.copyload = load i32, ptr %i.i, align 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store ptr %.sroa.4.017, ptr %i.g, align 8
  store i32 %.sroa.01.0.copyload, ptr %i.a, align 4
  %.val.i = load ptr, ptr %3, align 8, !nonnull !9, !align !10, !noundef !9 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !72, !nonnull !9, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !72, !noundef !9
  %i.o = invoke noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtB5_13SliceContains14slice_containsCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB3j_18LocationSortingHat7key_fors_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.sroa.01.0.copyload, ptr %.sroa.4.017, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.017, i64 4
  %.pre = load ptr, ptr %i.c, align 8
  %.pre18 = load ptr, ptr %i.d, align 8
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB3j_18LocationSortingHat7key_fors_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.q

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = invoke noundef i64 @_RNvMNtNtCsgCecv3eZDcN_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCsbZq13ASDQ8l_10font_types3tag3TagE3lenCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB3j_18LocationSortingHat7key_fors_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit: ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %.pre18, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.u = phi ptr [ %.pre, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.pn2.i = phi ptr [ %i.p, %bb.d ], [ %.sroa.4.017, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.t, %i.u
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB3j_18LocationSortingHat7key_fors_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn2.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB3j_18LocationSortingHat7key_fors_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit ]
  %i.v = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBY_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1P_8for_each4callBX_NCINvNvNtB1T_7collect14default_extend18unchecked_extenderTINtB8_3VecBY_EB4e_EBX_E0E0ECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB1g_ENCINvNvNtBa_7collect14default_extend18unchecked_extenderTINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EB32_EB1f_E0E0Csgdm2QMcbaeA_10fontdrasil.exit

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB1g_ENCINvNvNtBa_7collect14default_extend18unchecked_extenderTINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EB32_EB1f_E0E0Csgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.j, %bb.b ], [ %.promoted, %bb.a ] ; 4 uses
  %.not.not = icmp eq ptr %i.f, %i.d
  br i1 %.not.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB1g_EEECsgdm2QMcbaeA_10fontdrasil.exit, label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB1g_ENCINvNvNtBa_7collect14default_extend18unchecked_extenderTINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EB32_EB1f_E0E0Csgdm2QMcbaeA_10fontdrasil.exit
  %i.g = load double, ptr %i.f, align 8, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load double, ptr %i.h, align 8, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke void @_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter6traits7collectTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEBP_EINtB5_6ExtendTB1m_B1m_EE20extend_one_uncheckedCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, double noundef %i.g, double noundef %i.i)
          to label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB1g_ENCINvNvNtBa_7collect14default_extend18unchecked_extenderTINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EB32_EB1f_E0E0Csgdm2QMcbaeA_10fontdrasil.exit unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB1g_EEECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB1g_ENCINvNvNtBa_7collect14default_extend18unchecked_extenderTINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EB32_EB1f_E0E0Csgdm2QMcbaeA_10fontdrasil.exit
  %i.k = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.n, align 8
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val4 = load ptr, ptr %0, align 8, !alias.scope !11, !nonnull !9, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.p, align 8, !alias.scope !11, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  store i64 %.val5, ptr %i.a, align 8, !noalias !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val4, ptr %i.q, align 8, !noalias !75
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB1q_EEECsgdm2QMcbaeA_10fontdrasil.exit unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB1q_EEECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.c
end_hunk_0
