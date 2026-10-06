Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.08?download=true
inline.NumInlined: 531
inline.NumDeleted: 320
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEBF_:bb.a
bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit
  tail call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_.exit1

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_.exit1: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsjFxWRWgRcyr_5rayon4iter6extend12fast_collectINtNtB4_10filter_map9FilterMapINtNtB6_5range4IterjENCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB1K_11HybridIndex13full_snapshot0ETmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1M_6ondisk12PostingEntryEEEB1M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvXs0_NtNtCsjFxWRWgRcyr_5rayon4iter10filter_mapINtB6_9FilterMapINtNtBa_5range4IterjENCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB1r_11HybridIndex13full_snapshot0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerEB1t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsjFxWRWgRcyr_5rayon4iter6extend12fast_collectINtNtB4_10filter_map9FilterMapINtNtB6_5slice4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core4meta18collect_filestamps0ETB1D_NtB2k_9FileStampEEB2m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvXs0_NtNtCsjFxWRWgRcyr_5rayon4iter10filter_mapINtB6_9FilterMapINtNtBa_5slice4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core4meta18collect_filestamps0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerEB23_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB11_5sliceSBW_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2c_6hybridNtB31_11HybridIndex13execute_query0Es_0E0EB2c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ed, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.aa ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB18_5sliceSB13_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2k_6hybridNtB39_11HybridIndex13execute_query0Es_0E0EB2k_.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB18_5sliceSB13_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2k_6hybridNtB39_11HybridIndex13execute_query0Es_0E0EB2k_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB18_5sliceSB13_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2k_6hybridNtB39_11HybridIndex13execute_query0Es_0E0EB2k_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB17_5sliceSB12_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2j_6hybridNtB38_11HybridIndex13execute_query0Es_0E0EB2j_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecmE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %i.p, i64 40
  %.val7.i = load i64, ptr %i.r, align 8, !alias.scope !287, !noalias !288, !noundef !4 ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 16
  %.val8.i = load i64, ptr %i.s, align 8, !alias.scope !287, !noalias !288, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %.val7.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ult i64 %.val8.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign uge i64 %.val7.i, %.val8.i ; 2 uses
  %.not28.i = icmp eq i64 %i.o, 2                 ; 2 uses
  br i1 %i.v, label %.preheader17.i, label %.preheader.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecmE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi i64 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.aa, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.01.0.i19.i
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %.val5.i = load i64, ptr %i.x, align 8, !alias.scope !287, !noalias !288, !noundef !4 ; 3 uses
  %i.y = icmp ult i64 %.val5.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %.val5.i, %.val6.i
  br i1 %i.z, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB17_5sliceSB12_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2j_6hybridNtB38_11HybridIndex13execute_query0Es_0E0EB2j_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw nsw i64 %.sroa.01.0.i19.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %i.o
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB17_5sliceSB12_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2j_6hybridNtB38_11HybridIndex13execute_query0Es_0E0EB2j_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi i64 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.af, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.01.1.i22.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %.val.i = load i64, ptr %i.ac, align 8, !alias.scope !287, !noalias !288, !noundef !4 ; 3 uses
  %i.ad = icmp ult i64 %.val.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ult i64 %.val.i, %.val4.i
  br i1 %i.ae, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB17_5sliceSB12_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2j_6hybridNtB38_11HybridIndex13execute_query0Es_0E0EB2j_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.af = add nuw nsw i64 %.sroa.01.1.i22.i, 1    ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.af, %i.o
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB17_5sliceSB12_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2j_6hybridNtB38_11HybridIndex13execute_query0Es_0E0EB2j_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB17_5sliceSB12_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2j_6hybridNtB38_11HybridIndex13execute_query0Es_0E0EB2j_.exit.i: ; preds = %bb.m, %.lr.ph23.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.l ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %i.o, %bb.m ] ; 5 uses
  %i.ag = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.ag)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB17_5sliceSB12_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2j_6hybridNtB38_11HybridIndex13execute_query0Es_0E0EB2j_.exit.i
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  %or.cond.i = or i1 %i.v, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecmE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 384307168202282326) %i.o)
  %i.aj = shl nuw nsw i64 %i.ai, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB18_5sliceSB13_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2k_6hybridNtB39_11HybridIndex13execute_query0Es_0E0EB2k_.exit

bb.p:                                             ; preds = %bb.i
  %i.ak = tail call i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1a_5sliceSB15_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2m_6hybridNtB3b_11HybridIndex13execute_query0Es_0E0EB2m_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ak, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = or disjoint i64 %i.al, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB18_5sliceSB13_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2k_6hybridNtB39_11HybridIndex13execute_query0Es_0E0EB2k_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecmE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %.preheader17.i, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i485559.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ]
  %i.an = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB18_5sliceSB13_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2k_6hybridNtB39_11HybridIndex13execute_query0Es_0E0EB2k_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ap = phi i64 [ %i.ah, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i485559.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.0.0.i485559.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.av, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.017.i.i.i, -1
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.0.017.i.i.i
  %i.at = getelementptr [24 x i8], ptr %i.aq, i64 %i.ar
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.q, !noalias !288

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24, !noalias !288
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.ap
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecmE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB18_5sliceSB13_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2k_6hybridNtB39_11HybridIndex13execute_query0Es_0E0EB2k_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecmE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ao, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecmE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.am, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.aw = lshr i64 %.sroa.023.0, 1
  %i.ax = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ay = sub nsw i64 %factor, %i.aw
  %i.az = add nuw i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1b_5sliceSB16_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2n_6hybridNtB3c_11HybridIndex13execute_query0Es_0E0EB2n_.exit
  %.sroa.02.144 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bf, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1b_5sliceSB16_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2n_6hybridNtB3c_11HybridIndex13execute_query0Es_0E0EB2n_.exit ] ; 2 uses
  %.sroa.023.143 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1b_5sliceSB16_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2n_6hybridNtB3c_11HybridIndex13execute_query0Es_0E0EB2n_.exit ] ; 4 uses
  %i.bf = add i64 %.sroa.02.144, -1               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bh, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1b_5sliceSB16_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2n_6hybridNtB3c_11HybridIndex13execute_query0Es_0E0EB2n_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.143, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1b_5sliceSB16_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2n_6hybridNtB3c_11HybridIndex13execute_query0Es_0E0EB2n_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.144, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1b_5sliceSB16_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2n_6hybridNtB3c_11HybridIndex13execute_query0Es_0E0EB2n_.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bj, align 1
  br i1 %i.l, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bf
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4 ; 3 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 8 uses
  %i.bn = lshr i64 %.sroa.023.143, 1              ; 6 uses
  %i.bo = add nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bp = sub i64 %.sroa.09.0, %i.bo
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bp ; 6 uses
  %i.br = icmp samesign ugt i64 %i.bo, %3
  %i.bs = trunc i64 %.sroa.023.143 to i1
  %i.bt = or i64 %i.bl, %.sroa.023.143
  %i.bu = trunc i64 %i.bt to i1
  %or.cond3.i = or i1 %i.br, %i.bu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc i64 %i.bl to i1
  br i1 %i.bv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = shl nuw nsw i64 %i.bo, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1b_5sliceSB16_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2n_6hybridNtB3c_11HybridIndex13execute_query0Es_0E0EB2n_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bx = or i64 %i.bm, 1
  %i.by = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1a_5sliceSB15_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2m_6hybridNtB3b_11HybridIndex13execute_query0Es_0E0EB2m_(ptr noalias nofree noundef nonnull align 8 %i.bq, i64 noundef range(i64 0, 384307168202282326) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bm
  %i.cd = or i64 %i.bn, 1
  %i.ce = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1a_5sliceSB15_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2m_6hybridNtB3b_11HybridIndex13execute_query0Es_0E0EB2m_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 384307168202282326) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.ci = icmp eq i64 %i.bm, 0
  %i.cj = icmp eq i64 %i.bn, 0
  %or.cond.i33 = or i1 %i.cj, %i.ci
  br i1 %or.cond.i33, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB12_5sliceSBX_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2d_6hybridNtB32_11HybridIndex13execute_query0Es_0E0EB2d_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bm, i64 %i.bn) ; 2 uses
  %i.cl = icmp samesign ult i64 %3, %i.ck
  br i1 %i.cl, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB12_5sliceSBX_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2d_6hybridNtB32_11HybridIndex13execute_query0Es_0E0EB2d_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bm ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.bm, %i.bn  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.cm, ptr %i.bq
  %i.cn = mul nuw nsw i64 %i.ck, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cn, i1 false), !alias.scope !291
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn ; 3 uses
  br i1 %.not.i34, label %.preheader.i35, label %.lr.ph.i.i

.preheader.i35:                                   ; preds = %.critedge.i, %.preheader.i35
  %i.cp = phi ptr [ %i.dd, %.preheader.i35 ], [ %i.co, %.critedge.i ] ; 2 uses
  %i.cq = phi ptr [ %i.db, %.preheader.i35 ], [ %i.cm, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i36 = phi ptr [ %i.ct, %.preheader.i35 ], [ %i.n, %.critedge.i ]
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -24 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -24 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i36, i64 -24 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cp, i64 -8
  %.val.i.i = load i64, ptr %i.cu, align 8, !alias.scope !290, !noalias !292, !noundef !4 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cq, i64 -8
  %.val12.i.i = load i64, ptr %i.cv, align 8, !alias.scope !289, !noalias !293, !noundef !4 ; 2 uses
  %i.cw = icmp ult i64 %.val.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp ult i64 %.val12.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ult i64 %.val.i.i, %.val12.i.i ; 3 uses
  %..i.i = select i1 %i.cy, ptr %i.cr, ptr %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !291, !noalias !294
  %i.cz = xor i1 %i.cy, true
  %i.da = zext i1 %i.cz to i64
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.da ; 3 uses
  %i.dc = zext i1 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.dc ; 3 uses
  %i.de = icmp eq ptr %i.db, %i.bq
  %i.df = icmp eq ptr %i.dd, %2
  %or.cond.i.i = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCsgCecv3eZDcN_5alloc3vec3VecmEE10merge_downNCINvMNtB1f_5sliceSB1a_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2E_6hybridNtB3t_11HybridIndex13execute_query0Es_0E0EB2E_.exit.i, label %.preheader.i35

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dg = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %i.bq, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.cm, %.critedge.i ] ; 3 uses
  %i.dh = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.di = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val.i.i = load i64, ptr %i.di, align 8, !alias.scope !289, !noalias !295, !noundef !4 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dh, i64 16
  %.val.i18.i = load i64, ptr %i.dj, align 8, !alias.scope !290, !noalias !296, !noundef !4 ; 2 uses
  %i.dk = icmp ult i64 %.sroa.0.0.val.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp ult i64 %.val.i18.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp samesign ult i64 %.sroa.0.0.val.i.i, %.val.i18.i ; 3 uses
  %i.dn = xor i1 %i.dm, true
  %.sroa.05.0.i.i = select i1 %i.dm, ptr %.sroa.0.02.i.i, ptr %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !291, !noalias !297
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %i.do ; 3 uses
  %i.dq = zext i1 %i.dm to i64
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.dt = icmp ne ptr %i.dp, %i.co
  %i.du = icmp ne ptr %i.dr, %i.n
  %or.cond.i19.i = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCsgCecv3eZDcN_5alloc3vec3VecmEE10merge_downNCINvMNtB1f_5sliceSB1a_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2E_6hybridNtB3t_11HybridIndex13execute_query0Es_0E0EB2E_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCsgCecv3eZDcN_5alloc3vec3VecmEE10merge_downNCINvMNtB1f_5sliceSB1a_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2E_6hybridNtB3t_11HybridIndex13execute_query0Es_0E0EB2E_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i35
  %.sroa.13.1.i = phi ptr [ %i.db, %.preheader.i35 ], [ %i.ds, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dd, %.preheader.i35 ], [ %i.co, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i35 ], [ %i.dp, %.lr.ph.i.i ] ; 2 uses
  %i.dv = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dw = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dx = sub nuw i64 %i.dv, %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dx, i1 false), !alias.scope !291, !noalias !298
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB12_5sliceSBX_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2d_6hybridNtB32_11HybridIndex13execute_query0Es_0E0EB2d_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB12_5sliceSBX_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2d_6hybridNtB32_11HybridIndex13execute_query0Es_0E0EB2d_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCsgCecv3eZDcN_5alloc3vec3VecmEE10merge_downNCINvMNtB1f_5sliceSB1a_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2E_6hybridNtB3t_11HybridIndex13execute_query0Es_0E0EB2E_.exit.i
  %i.dy = shl nuw nsw i64 %i.bo, 1
  %i.dz = or disjoint i64 %i.dy, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1b_5sliceSB16_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2n_6hybridNtB3c_11HybridIndex13execute_query0Es_0E0EB2n_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1b_5sliceSB16_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2n_6hybridNtB3c_11HybridIndex13execute_query0Es_0E0EB2n_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB12_5sliceSBX_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2d_6hybridNtB32_11HybridIndex13execute_query0Es_0E0EB2d_.exit
  %.sroa.0.0.i = phi i64 [ %i.dz, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB12_5sliceSBX_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2d_6hybridNtB32_11HybridIndex13execute_query0Es_0E0EB2d_.exit ], [ %i.bw, %bb.u ] ; 2 uses
  %i.ea = icmp ugt i64 %i.bf, 1
  br i1 %i.ea, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eb = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ec = lshr i64 %.sroa.018.0, 1
  %i.ed = add nuw nsw i64 %i.ec, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ee = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ee, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ef = or i64 %1, 1
  %i.eg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMNtB1a_5sliceSB15_11sort_by_keyjNCINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB2m_6hybridNtB3b_11HybridIndex13execute_query0Es_0E0EB2m_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCs5Xr050g3D4S_3std4path7PathBufNvYBW_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = icmp samesign ult i64 %1, 2
  br i1 %i.m, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = udiv i64 4611686018427387904, %1
  %i.o = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.n, %i.p         ; 2 uses
  %i.q = icmp samesign ult i64 %1, 4097
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %1, 1
  %i.t = sub nuw nsw i64 %1, %i.s
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.u, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.en, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.el, %bb.ab ] ; 3 uses
  %i.v = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit ], [ 1, %bb.f ] ; 2 uses
  %i.w = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.y = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %.not.i31 = icmp ult i64 %i.y, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i64 %i.y, 2
  br i1 %i.aa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.z, i64 32
  %.val11.i = load ptr, ptr %i.ab, align 8, !alias.scope !318, !noalias !319, !nonnull !4, !noundef !4
  %i.ac = getelementptr i8, ptr %i.z, i64 40
  %.val12.i = load i64, ptr %i.ac, align 8, !alias.scope !318, !noalias !319, !noundef !4
  %i.ad = getelementptr i8, ptr %i.z, i64 8
  %.val13.i = load ptr, ptr %i.ad, align 8, !alias.scope !318, !noalias !319 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.z, i64 16
  %.val14.i = load i64, ptr %i.ae, align 8, !alias.scope !318, !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !320
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !320
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val13.i, i64 noundef %.val14.i), !noalias !320
  %i.af = call noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.i), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !320
  %i.ag = icmp sgt i8 %i.af, -1                   ; 2 uses
  %.not34.i = icmp eq i64 %i.y, 2                 ; 2 uses
  br i1 %i.ag, label %.preheader23.i, label %.preheader.i

.preheader23.i:                                   ; preds = %bb.k
  br i1 %.not34.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not34.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph29.i

.lr.ph.i:                                         ; preds = %.preheader23.i, %bb.l
  %.sroa.01.0.i25.i.a = phi i64 [ %i.al, %bb.l ], [ 2, %.preheader23.i ] ; 3 uses
  %6 = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.sroa.01.0.i25.i.a ; 4 uses
  %7 = getelementptr i8, ptr %6, i64 8
  %.val7.i = load ptr, ptr %7, align 8, !alias.scope !318, !noalias !319, !nonnull !4, !noundef !4
  %8 = getelementptr i8, ptr %6, i64 16
  %.val8.i = load i64, ptr %8, align 8, !alias.scope !318, !noalias !319, !noundef !4
  %i.ah = getelementptr i8, ptr %6, i64 -16
  %.val9.i.a = load ptr, ptr %i.ah, align 8, !alias.scope !318, !noalias !319 ; 2 uses
  %i.ai = getelementptr i8, ptr %6, i64 -8
  %.val10.i = load i64, ptr %i.ai, align 8, !alias.scope !318, !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !320
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.i, i64 noundef %.val8.i), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !320
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.a) ]
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val9.i.a, i64 noundef %.val10.i), !noalias !320
  %i.aj = call noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.g), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !320
  %i.ak = icmp slt i8 %i.aj, 0
  br i1 %i.ak, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.al = add nuw nsw i64 %.sroa.01.0.i25.i.a, 1  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.y
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i

.lr.ph29.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i28.i.a = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %9 = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.sroa.01.1.i28.i.a ; 4 uses
  %10 = getelementptr i8, ptr %9, i64 8
  %.val.i = load ptr, ptr %10, align 8, !alias.scope !318, !noalias !319, !nonnull !4, !noundef !4
  %11 = getelementptr i8, ptr %9, i64 16
  %.val4.i = load i64, ptr %11, align 8, !alias.scope !318, !noalias !319, !noundef !4
  %i.am = getelementptr i8, ptr %9, i64 -16
  %.val5.i.a = load ptr, ptr %i.am, align 8, !alias.scope !318, !noalias !319 ; 2 uses
  %i.an = getelementptr i8, ptr %9, i64 -8
  %.val6.i = load i64, ptr %i.an, align 8, !alias.scope !318, !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !320
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val4.i), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !320
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.a) ]
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val5.i.a, i64 noundef %.val6.i), !noalias !320
  %i.ao = call noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !320
  %i.ap = icmp slt i8 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i

bb.m:                                             ; preds = %.lr.ph29.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i28.i.a, 1  ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.aq, %i.y
  br i1 %exitcond37.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph29.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.m, %.lr.ph29.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.y, %bb.l ], [ %.sroa.01.0.i25.i.a, %.lr.ph.i ], [ %.sroa.01.1.i28.i.a, %.lr.ph29.i ], [ %i.y, %bb.m ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.y
  call void @llvm.assume(i1 %i.ar)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  %or.cond.i = or i1 %i.ag, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.at = call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 384307168202282326) %i.y)
  %i.au = shl nuw nsw i64 %i.at, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

bb.p:                                             ; preds = %bb.i
  %i.av = call i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.y, i64 32) ; 2 uses
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef %i.av, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #23
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %.preheader23.i, %bb.n, %bb.j
  %.sroa.0.0.i20.i = phi i64 [ %i.y, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader23.i ], [ %.sroa.0.0.i465357.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i20.i, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ba = phi i64 [ %i.as, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.sroa.0.0.i465357.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bg, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bc = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.sroa.0.017.i.i.i
  %i.be = getelementptr [24 x i8], ptr %i.bb, i64 %i.bc
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.q, !noalias !319

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24, !noalias !319
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bg, %i.ba
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit
  %.sroa.02.155 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit ] ; 2 uses
  %.sroa.023.154 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit ] ; 4 uses
  %i.bq = add i64 %.sroa.02.155, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.154, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.155, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.v, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !4 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 8 uses
  %i.by = lshr i64 %.sroa.023.154, 1              ; 6 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 4 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ca ; 6 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.154 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.154
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cd, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ci = or i64 %i.bx, 1
  %i.cj = call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 384307168202282326) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #23
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 384307168202282326) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.ct = icmp eq i64 %i.bx, 0
  %i.cu = icmp eq i64 %i.by, 0
  %or.cond.i33 = or i1 %i.cu, %i.ct
  br i1 %or.cond.i33, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bx, i64 %i.by) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %i.cv
  br i1 %i.cw, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.bx, %i.by  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.cx, ptr %i.cb
  %i.cy = mul nuw nsw i64 %i.cv, 24               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !323
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 4 uses
  br i1 %.not.i34, label %.preheader.i36, label %.lr.ph.i.i

.preheader.i36:                                   ; preds = %.critedge.i, %.noexc18.i
  %.sroa.13.0.i = phi ptr [ %i.dk, %.noexc18.i ], [ %i.cx, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.dm, %.noexc18.i ], [ %i.cz, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i37 = phi ptr [ %i.dc, %.noexc18.i ], [ %i.x, %.critedge.i ]
  %i.da = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.0.i.i37, i64 -24 ; 2 uses
  %i.dd = getelementptr i8, ptr %.sroa.7.0.i, i64 -16
  %.val.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !322, !noalias !324, !nonnull !4, !noundef !4
  %i.de = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val12.i.i = load i64, ptr %i.de, align 8, !alias.scope !322, !noalias !324, !noundef !4
  %i.df = getelementptr i8, ptr %.sroa.13.0.i, i64 -16
  %.val13.i.i = load ptr, ptr %i.df, align 8, !alias.scope !321, !noalias !325 ; 2 uses
  %i.dg = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val14.i.i = load i64, ptr %i.dg, align 8, !alias.scope !321, !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !326
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val12.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !323

.noexc.i:                                         ; preds = %.preheader.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !326
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val13.i.i, i64 noundef %.val14.i.i)
          to label %.noexc17.i unwind label %.loopexit.i, !noalias !323

.noexc17.i:                                       ; preds = %.noexc.i
  %i.dh = invoke noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
          to label %.noexc18.i unwind label %.loopexit.i, !noalias !323 ; 2 uses

.noexc18.i:                                       ; preds = %.noexc17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !326
  %i.di = icmp sgt i8 %i.dh, -1                   ; 2 uses
  %..i.i = select i1 %i.di, ptr %i.db, ptr %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !323, !noalias !327
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.dj ; 3 uses
  %.lobit.i.i = lshr i8 %i.dh, 7
  %i.dl = zext nneg i8 %.lobit.i.i to i64
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.dl ; 3 uses
  %i.dn = icmp eq ptr %i.dk, %i.cb
  %i.do = icmp eq ptr %i.dm, %2
  %or.cond.i.i = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs5Xr050g3D4S_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.preheader.i36

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc25.i
  %.sroa.13.1.i = phi ptr [ %i.dz, %.noexc25.i ], [ %i.cb, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i35 = phi ptr [ %i.dw, %.noexc25.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dy, %.noexc25.i ], [ %i.cx, %.critedge.i ] ; 4 uses
  %i.dp = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !321, !noalias !328, !nonnull !4, !noundef !4
  %i.dq = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dq, align 8, !alias.scope !321, !noalias !328, !noundef !4
  %i.dr = getelementptr i8, ptr %.sroa.0.0.i35, i64 8
  %.val.i20.i = load ptr, ptr %i.dr, align 8, !alias.scope !322, !noalias !329 ; 2 uses
  %i.ds = getelementptr i8, ptr %.sroa.0.0.i35, i64 16
  %.val7.i.i = load i64, ptr %i.ds, align 8, !alias.scope !322, !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !330
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val.i.i, i64 noundef %.sroa.0.0.val6.i.i)
          to label %.noexc23.i unwind label %.loopexit.split-lp.i, !noalias !323

.noexc23.i:                                       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !330
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i20.i) ]
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i20.i, i64 noundef %.val7.i.i)
          to label %.noexc24.i unwind label %.loopexit.split-lp.i, !noalias !323

.noexc24.i:                                       ; preds = %.noexc23.i
  %i.dt = invoke noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !noalias !323 ; 2 uses

.noexc25.i:                                       ; preds = %.noexc24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !330
  %i.du = icmp sgt i8 %i.dt, -1                   ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.du, ptr %.sroa.0.0.i35, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !323, !noalias !331
  %i.dv = zext i1 %i.du to i64
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i35, i64 %i.dv ; 3 uses
  %.lobit.i21.i = lshr i8 %i.dt, 7
  %i.dx = zext nneg i8 %.lobit.i21.i to i64
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 24 ; 2 uses
  %i.ea = icmp ne ptr %i.dw, %i.cz
  %i.eb = icmp ne ptr %i.dy, %i.x
  %or.cond.i22.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs5Xr050g3D4S_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs5Xr050g3D4S_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.noexc25.i, %.noexc18.i
  %.sroa.13.4.i = phi ptr [ %i.dk, %.noexc18.i ], [ %i.dz, %.noexc25.i ]
  %.sroa.7.2.i = phi ptr [ %i.dm, %.noexc18.i ], [ %i.cz, %.noexc25.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc18.i ], [ %i.dw, %.noexc25.i ] ; 2 uses
  %i.ec = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ed = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ee = sub nuw i64 %i.ec, %i.ed
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ee, i1 false), !alias.scope !323, !noalias !332
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

.loopexit.i:                                      ; preds = %.noexc17.i, %.noexc.i, %.preheader.i36
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.noexc24.i, %.noexc23.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cz, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i35, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ef = ptrtoint ptr %.sroa.7.1.i to i64
  %i.eg = ptrtoint ptr %.sroa.0.2.i to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.eh, i1 false), !alias.scope !323, !noalias !333
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs5Xr050g3D4S_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.ei = shl nuw nsw i64 %i.bz, 1
  %i.ej = or disjoint i64 %i.ei, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit
  %.sroa.0.0.i = phi i64 [ %i.ej, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs5Xr050g3D4S_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.ch, %bb.u ] ; 2 uses
  %i.ek = icmp ugt i64 %i.bq, 1
  br i1 %i.ek, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.el = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.em = lshr i64 %.sroa.018.0, 1
  %i.en = add nuw nsw i64 %i.em, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.eo = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eo, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ep = or i64 %1, 1
  %i.eq = call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ep, i1 true)
  %i.er = trunc nuw nsw i64 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 1
  %i.et = xor i32 %i.es, 126
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs5Xr050g3D4S_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keymNCNvBY_8simplify0E0EB10_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.aa ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvB15_8simplify0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvB15_8simplify0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvB15_8simplify0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvB14_8simplify0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQuery7reverseBy_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val7.i = load i32, ptr %i.r, align 4, !alias.scope !349, !noalias !350, !noundef !4 ; 3 uses
  %.val8.i = load i32, ptr %i.p, align 4, !alias.scope !349, !noalias !350, !noundef !4
  %i.s = icmp uge i32 %.val7.i, %.val8.i          ; 2 uses
  %.not28.i = icmp eq i64 %i.o, 2                 ; 2 uses
  br i1 %i.s, label %.preheader17.i, label %.preheader.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQuery7reverseBy_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi i32 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.01.0.i19.i
  %.val5.i = load i32, ptr %i.t, align 4, !alias.scope !349, !noalias !350, !noundef !4 ; 2 uses
  %i.u = icmp ult i32 %.val5.i, %.val6.i
  br i1 %i.u, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvB14_8simplify0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i19.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.o
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvB14_8simplify0E0EB16_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi i32 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.y, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.01.1.i22.i
  %.val.i = load i32, ptr %i.w, align 4, !alias.scope !349, !noalias !350, !noundef !4 ; 2 uses
  %i.x = icmp ult i32 %.val.i, %.val4.i
  br i1 %i.x, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvB14_8simplify0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.y = add nuw nsw i64 %.sroa.01.1.i22.i, 1     ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.y, %i.o
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvB14_8simplify0E0EB16_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvB14_8simplify0E0EB16_.exit.i: ; preds = %bb.m, %.lr.ph23.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.l ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %i.o, %bb.m ] ; 5 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.z)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvB14_8simplify0E0EB16_.exit.i
  %i.aa = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  %or.cond.i = or i1 %i.s, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQuery7reverseBy_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.o)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvB15_8simplify0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keymNCNvB17_8simplify0E0EB19_(ptr noalias nofree noundef nonnull align 4 %i.p, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvB15_8simplify0E0EB17_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQuery7reverseBy_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryEB14_.exit.i.i.i, %.preheader17.i, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i435054.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryEB14_.exit.i.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvB15_8simplify0E0EB17_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ai = phi i64 [ %i.aa, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i435054.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.0.i435054.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ao, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.017.i.i.i, -1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.017.i.i.i
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryEB14_.exit.i.i.i unwind label %bb.q, !noalias !350

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24, !noalias !350
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ao = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQuery7reverseBy_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvB15_8simplify0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQuery7reverseBy_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQuery7reverseBy_.exit.i ], [ %i.af, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap
  %i.as = add nuw i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvB18_8simplify0E0EB1a_.exit
  %.sroa.02.144 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.ay, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvB18_8simplify0E0EB1a_.exit ] ; 2 uses
  %.sroa.023.143 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvB18_8simplify0E0EB1a_.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.144, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvB18_8simplify0E0EB1a_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.143, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvB18_8simplify0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.144, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvB18_8simplify0E0EB1a_.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.l, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.023.143, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.143 to i1
  %i.bm = or i64 %i.be, %.sroa.023.143
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bp = shl nuw nsw i64 %i.bh, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvB18_8simplify0E0EB1a_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bl, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keymNCNvB17_8simplify0E0EB19_(ptr noalias nofree noundef nonnull align 4 %i.bj, i64 noundef range(i64 0, 1152921504606846976) %i.bf, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.bu, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bf
  %i.bw = or i64 %i.bg, 1
  %i.bx = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keymNCNvB17_8simplify0E0EB19_(ptr noalias nofree noundef nonnull align 4 %i.bv, i64 noundef range(i64 0, 1152921504606846976) %i.bg, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.cb = icmp eq i64 %i.bf, 0
  %i.cc = icmp eq i64 %i.bg, 0
  %or.cond.i33 = or i1 %i.cc, %i.cb
  br i1 %or.cond.i33, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvBZ_8simplify0E0EB11_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bf, i64 %i.bg) ; 2 uses
  %i.ce = icmp samesign ult i64 %3, %i.cd
  br i1 %i.ce, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvBZ_8simplify0E0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.cf, ptr %i.bj
  %i.cg = shl nuw nsw i64 %i.cd, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cg, i1 false), !alias.scope !353
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 3 uses
  br i1 %.not.i34, label %.preheader.i35, label %.lr.ph.i.i

.preheader.i35:                                   ; preds = %.critedge.i, %.preheader.i35
  %i.ci = phi ptr [ %i.ct, %.preheader.i35 ], [ %i.ch, %.critedge.i ]
  %i.cj = phi ptr [ %i.cr, %.preheader.i35 ], [ %i.cf, %.critedge.i ]
  %.sroa.0.0.i.i36 = phi ptr [ %i.cm, %.preheader.i35 ], [ %i.n, %.critedge.i ]
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.0.i.i36, i64 -8 ; 2 uses
  %.val.i.i = load i32, ptr %i.cl, align 4, !alias.scope !352, !noalias !354, !noundef !4
  %.val12.i.i = load i32, ptr %i.ck, align 4, !alias.scope !351, !noalias !355, !noundef !4
  %i.cn = icmp ult i32 %.val.i.i, %.val12.i.i     ; 3 uses
  %..i.i = select i1 %i.cn, ptr %i.ck, ptr %i.cl
  %i.co = load i64, ptr %..i.i, align 4, !alias.scope !353, !noalias !356
  store i64 %i.co, ptr %i.cm, align 4, !alias.scope !351, !noalias !355
  %i.cp = xor i1 %i.cn, true
  %i.cq = zext i1 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cq ; 3 uses
  %i.cs = zext i1 %i.cn to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cs ; 3 uses
  %i.cu = icmp eq ptr %i.cr, %i.bj
  %i.cv = icmp eq ptr %i.ct, %2
  %or.cond.i.i = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keymNCNvB1c_8simplify0E0EB1e_.exit.i, label %.preheader.i35

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cw = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.bj, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.cf, %.critedge.i ] ; 3 uses
  %i.cx = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !351, !noalias !357, !noundef !4
  %.val.i18.i = load i32, ptr %i.cx, align 4, !alias.scope !352, !noalias !358, !noundef !4
  %i.cy = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i18.i ; 3 uses
  %i.cz = xor i1 %i.cy, true
  %.sroa.05.0.i.i = select i1 %i.cy, ptr %.sroa.0.02.i.i, ptr %i.cx
  %i.da = load i64, ptr %.sroa.05.0.i.i, align 4, !alias.scope !353, !noalias !359
  store i64 %i.da, ptr %i.cw, align 4, !alias.scope !351, !noalias !357
  %i.db = zext i1 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cy to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.dg = icmp ne ptr %i.dc, %i.ch
  %i.dh = icmp ne ptr %i.de, %i.n
  %or.cond.i19.i = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keymNCNvB1c_8simplify0E0EB1e_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keymNCNvB1c_8simplify0E0EB1e_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i35
  %.sroa.13.1.i = phi ptr [ %i.cr, %.preheader.i35 ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ct, %.preheader.i35 ], [ %i.ch, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i35 ], [ %i.dc, %.lr.ph.i.i ] ; 2 uses
  %i.di = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dk, i1 false), !alias.scope !353, !noalias !360
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvBZ_8simplify0E0EB11_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvBZ_8simplify0E0EB11_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keymNCNvB1c_8simplify0E0EB1e_.exit.i
  %i.dl = shl nuw nsw i64 %i.bh, 1
  %i.dm = or disjoint i64 %i.dl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvB18_8simplify0E0EB1a_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvB18_8simplify0E0EB1a_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvBZ_8simplify0E0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.dm, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvBZ_8simplify0E0EB11_.exit ], [ %i.bp, %bb.u ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ay, 1
  br i1 %i.dn, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw nsw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dr, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keymNCNvB17_8simplify0E0EB19_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keymNCNvNtB10_5query30sort_dedup_postings_by_file_ids_0E0EB10_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.aa ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvNtB17_5query30sort_dedup_postings_by_file_ids_0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvNtB17_5query30sort_dedup_postings_by_file_ids_0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvNtB17_5query30sort_dedup_postings_by_file_ids_0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvNtB16_5query30sort_dedup_postings_by_file_ids_0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val7.i = load i32, ptr %i.r, align 4, !alias.scope !376, !noalias !377, !noundef !4 ; 3 uses
  %.val8.i = load i32, ptr %i.p, align 4, !alias.scope !376, !noalias !377, !noundef !4
  %i.s = icmp uge i32 %.val7.i, %.val8.i          ; 2 uses
  %.not28.i = icmp eq i64 %i.o, 2                 ; 2 uses
  br i1 %i.s, label %.preheader17.i, label %.preheader.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi i32 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.01.0.i19.i
  %.val5.i = load i32, ptr %i.t, align 4, !alias.scope !376, !noalias !377, !noundef !4 ; 2 uses
  %i.u = icmp ult i32 %.val5.i, %.val6.i
  br i1 %i.u, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvNtB16_5query30sort_dedup_postings_by_file_ids_0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i19.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.o
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvNtB16_5query30sort_dedup_postings_by_file_ids_0E0EB16_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi i32 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.y, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.01.1.i22.i
  %.val.i = load i32, ptr %i.w, align 4, !alias.scope !376, !noalias !377, !noundef !4 ; 2 uses
  %i.x = icmp ult i32 %.val.i, %.val4.i
  br i1 %i.x, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvNtB16_5query30sort_dedup_postings_by_file_ids_0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.y = add nuw nsw i64 %.sroa.01.1.i22.i, 1     ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.y, %i.o
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvNtB16_5query30sort_dedup_postings_by_file_ids_0E0EB16_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvNtB16_5query30sort_dedup_postings_by_file_ids_0E0EB16_.exit.i: ; preds = %bb.m, %.lr.ph23.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.l ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %i.o, %bb.m ] ; 5 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.z)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keymNCNvNtB16_5query30sort_dedup_postings_by_file_ids_0E0EB16_.exit.i
  %i.aa = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  %or.cond.i = or i1 %i.s, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.o)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvNtB17_5query30sort_dedup_postings_by_file_ids_0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keymNCNvNtB19_5query30sort_dedup_postings_by_file_ids_0E0EB19_(ptr noalias nofree noundef nonnull align 4 %i.p, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvNtB17_5query30sort_dedup_postings_by_file_ids_0E0EB17_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i.i, %.preheader17.i, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i435054.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvNtB17_5query30sort_dedup_postings_by_file_ids_0E0EB17_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ai = phi i64 [ %i.aa, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i435054.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.0.i435054.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ao, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.017.i.i.i, -1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.017.i.i.i
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i.i unwind label %bb.q, !noalias !377

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24, !noalias !377
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ao = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keymNCNvNtB17_5query30sort_dedup_postings_by_file_ids_0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntry7reverseBy_.exit.i ], [ %i.af, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap
  %i.as = add nuw i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvNtB1a_5query30sort_dedup_postings_by_file_ids_0E0EB1a_.exit
  %.sroa.02.144 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.ay, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvNtB1a_5query30sort_dedup_postings_by_file_ids_0E0EB1a_.exit ] ; 2 uses
  %.sroa.023.143 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvNtB1a_5query30sort_dedup_postings_by_file_ids_0E0EB1a_.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.144, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvNtB1a_5query30sort_dedup_postings_by_file_ids_0E0EB1a_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.143, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvNtB1a_5query30sort_dedup_postings_by_file_ids_0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.144, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvNtB1a_5query30sort_dedup_postings_by_file_ids_0E0EB1a_.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.l, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.023.143, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.143 to i1
  %i.bm = or i64 %i.be, %.sroa.023.143
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bp = shl nuw nsw i64 %i.bh, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvNtB1a_5query30sort_dedup_postings_by_file_ids_0E0EB1a_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bl, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keymNCNvNtB19_5query30sort_dedup_postings_by_file_ids_0E0EB19_(ptr noalias nofree noundef nonnull align 4 %i.bj, i64 noundef range(i64 0, 1152921504606846976) %i.bf, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.bu, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bf
  %i.bw = or i64 %i.bg, 1
  %i.bx = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keymNCNvNtB19_5query30sort_dedup_postings_by_file_ids_0E0EB19_(ptr noalias nofree noundef nonnull align 4 %i.bv, i64 noundef range(i64 0, 1152921504606846976) %i.bg, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.cb = icmp eq i64 %i.bf, 0
  %i.cc = icmp eq i64 %i.bg, 0
  %or.cond.i33 = or i1 %i.cc, %i.cb
  br i1 %or.cond.i33, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvNtB11_5query30sort_dedup_postings_by_file_ids_0E0EB11_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bf, i64 %i.bg) ; 2 uses
  %i.ce = icmp samesign ult i64 %3, %i.cd
  br i1 %i.ce, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvNtB11_5query30sort_dedup_postings_by_file_ids_0E0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.cf, ptr %i.bj
  %i.cg = shl nuw nsw i64 %i.cd, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cg, i1 false), !alias.scope !380
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 3 uses
  br i1 %.not.i34, label %.preheader.i35, label %.lr.ph.i.i

.preheader.i35:                                   ; preds = %.critedge.i, %.preheader.i35
  %i.ci = phi ptr [ %i.ct, %.preheader.i35 ], [ %i.ch, %.critedge.i ]
  %i.cj = phi ptr [ %i.cr, %.preheader.i35 ], [ %i.cf, %.critedge.i ]
  %.sroa.0.0.i.i36 = phi ptr [ %i.cm, %.preheader.i35 ], [ %i.n, %.critedge.i ]
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.0.i.i36, i64 -8 ; 2 uses
  %.val.i.i = load i32, ptr %i.cl, align 4, !alias.scope !379, !noalias !381, !noundef !4
  %.val12.i.i = load i32, ptr %i.ck, align 4, !alias.scope !378, !noalias !382, !noundef !4
  %i.cn = icmp ult i32 %.val.i.i, %.val12.i.i     ; 3 uses
  %..i.i = select i1 %i.cn, ptr %i.ck, ptr %i.cl
  %i.co = load i64, ptr %..i.i, align 4, !alias.scope !380, !noalias !383
  store i64 %i.co, ptr %i.cm, align 4, !alias.scope !378, !noalias !382
  %i.cp = xor i1 %i.cn, true
  %i.cq = zext i1 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cq ; 3 uses
  %i.cs = zext i1 %i.cn to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cs ; 3 uses
  %i.cu = icmp eq ptr %i.cr, %i.bj
  %i.cv = icmp eq ptr %i.ct, %2
  %or.cond.i.i = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keymNCNvNtB1e_5query30sort_dedup_postings_by_file_ids_0E0EB1e_.exit.i, label %.preheader.i35

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cw = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.bj, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.cf, %.critedge.i ] ; 3 uses
  %i.cx = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !378, !noalias !384, !noundef !4
  %.val.i18.i = load i32, ptr %i.cx, align 4, !alias.scope !379, !noalias !385, !noundef !4
  %i.cy = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i18.i ; 3 uses
  %i.cz = xor i1 %i.cy, true
  %.sroa.05.0.i.i = select i1 %i.cy, ptr %.sroa.0.02.i.i, ptr %i.cx
  %i.da = load i64, ptr %.sroa.05.0.i.i, align 4, !alias.scope !380, !noalias !386
  store i64 %i.da, ptr %i.cw, align 4, !alias.scope !378, !noalias !384
  %i.db = zext i1 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cy to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.dg = icmp ne ptr %i.dc, %i.ch
  %i.dh = icmp ne ptr %i.de, %i.n
  %or.cond.i19.i = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keymNCNvNtB1e_5query30sort_dedup_postings_by_file_ids_0E0EB1e_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keymNCNvNtB1e_5query30sort_dedup_postings_by_file_ids_0E0EB1e_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i35
  %.sroa.13.1.i = phi ptr [ %i.cr, %.preheader.i35 ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ct, %.preheader.i35 ], [ %i.ch, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i35 ], [ %i.dc, %.lr.ph.i.i ] ; 2 uses
  %i.di = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dk, i1 false), !alias.scope !380, !noalias !387
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvNtB11_5query30sort_dedup_postings_by_file_ids_0E0EB11_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvNtB11_5query30sort_dedup_postings_by_file_ids_0E0EB11_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keymNCNvNtB1e_5query30sort_dedup_postings_by_file_ids_0E0EB1e_.exit.i
  %i.dl = shl nuw nsw i64 %i.bh, 1
  %i.dm = or disjoint i64 %i.dl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvNtB1a_5query30sort_dedup_postings_by_file_ids_0E0EB1a_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keymNCNvNtB1a_5query30sort_dedup_postings_by_file_ids_0E0EB1a_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvNtB11_5query30sort_dedup_postings_by_file_ids_0E0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.dm, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keymNCNvNtB11_5query30sort_dedup_postings_by_file_ids_0E0EB11_.exit ], [ %i.bp, %bb.u ] ; 2 uses
  %i.dn = icmp ugt i64 %i.ay, 1
  br i1 %i.dn, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dp = lshr i64 %.sroa.018.0, 1
  %i.dq = add nuw nsw i64 %i.dp, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dr, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ds = or i64 %1, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keymNCNvNtB19_5query30sort_dedup_postings_by_file_ids_0E0EB19_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvMBY_NtBY_13IgnoreMatcher16with_all_sourcess0_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aw, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aw ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ib, %bb.aw ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.hz, %bb.aw ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_13IgnoreMatcher16with_all_sourcess0_0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_13IgnoreMatcher16with_all_sourcess0_0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_13IgnoreMatcher16with_all_sourcess0_0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_13IgnoreMatcher16with_all_sourcess0_0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnore7reverseBy_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.s = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnore7sort_byNCNvMBA_NtBA_13IgnoreMatcher16with_all_sourcess0_0E0BC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.p) #26, !noalias !462 ; 2 uses
  %.not23.i = icmp eq i64 %i.o, 2                 ; 2 uses
  br i1 %i.s, label %.preheader.i, label %.preheader12.i

.preheader12.i:                                   ; preds = %bb.k
  br i1 %.not23.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnore7reverseBy_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not23.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph18.i

.lr.ph.i:                                         ; preds = %.preheader12.i, %bb.l
  %.sroa.01.0.i14.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader12.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [136 x i8], ptr %i.p, i64 %.sroa.01.0.i14.i ; 2 uses
  %6 = getelementptr i8, ptr %i.t, i64 -136
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnore7sort_byNCNvMBA_NtBA_13IgnoreMatcher16with_all_sourcess0_0E0BC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %6) #26, !noalias !462
  br i1 %i.u, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_13IgnoreMatcher16with_all_sourcess0_0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i14.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.o
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_13IgnoreMatcher16with_all_sourcess0_0E0EB16_.exit.i, label %.lr.ph.i

.lr.ph18.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i17.i = phi i64 [ %i.y, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [136 x i8], ptr %i.p, i64 %.sroa.01.1.i17.i ; 2 uses
  %7 = getelementptr i8, ptr %i.w, i64 -136
  %i.x = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnore7sort_byNCNvMBA_NtBA_13IgnoreMatcher16with_all_sourcess0_0E0BC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %7) #26, !noalias !462
  br i1 %i.x, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_13IgnoreMatcher16with_all_sourcess0_0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph18.i
  %i.y = add nuw nsw i64 %.sroa.01.1.i17.i, 1     ; 2 uses
  %exitcond26.not.i = icmp eq i64 %i.y, %i.o
  br i1 %exitcond26.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_13IgnoreMatcher16with_all_sourcess0_0E0EB16_.exit.i, label %.lr.ph18.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_13IgnoreMatcher16with_all_sourcess0_0E0EB16_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph18.i
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.m ], [ %.sroa.01.1.i17.i, %.lr.ph18.i ], [ %.sroa.01.0.i14.i, %.lr.ph.i ], [ %i.o, %bb.l ] ; 5 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.z)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvMB14_NtB14_13IgnoreMatcher16with_all_sourcess0_0E0EB16_.exit.i
  %i.aa = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  %or.cond.not.i = and i1 %i.s, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnore7reverseBy_.exit.i

bb.o:                                             ; preds = %bb.i
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 67818912035696881) %i.o)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_13IgnoreMatcher16with_all_sourcess0_0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_13IgnoreMatcher16with_all_sourcess0_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_13IgnoreMatcher16with_all_sourcess0_0E0EB17_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnore7reverseBy_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreEB14_.exit.i.i.i, %.preheader12.i, %bb.n, %bb.j
  %.sroa.0.0.i9.i = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader12.i ], [ %.sroa.0.0.i354246.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreEB14_.exit.i.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i9.i, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_13IgnoreMatcher16with_all_sourcess0_0E0EB17_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ai = phi i64 [ %i.aa, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i354246.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [136 x i8], ptr %i.p, i64 %.sroa.0.0.i354246.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ao, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.017.i.i.i, -1
  %i.al = getelementptr inbounds nuw [136 x i8], ptr %i.p, i64 %.sroa.0.017.i.i.i
  %i.am = getelementptr [136 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 17)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreEB14_.exit.i.i.i unwind label %bb.q, !noalias !462

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24, !noalias !462
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ao = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnore7reverseBy_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvMB15_NtB15_13IgnoreMatcher16with_all_sourcess0_0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnore7reverseBy_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnore7reverseBy_.exit.i ], [ %i.af, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap
  %i.as = add nuw nsw i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_13IgnoreMatcher16with_all_sourcess0_0E0EB1a_.exit
  %.sroa.02.1130 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.ay, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_13IgnoreMatcher16with_all_sourcess0_0E0EB1a_.exit ] ; 2 uses
  %.sroa.023.1129 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_13IgnoreMatcher16with_all_sourcess0_0E0EB1a_.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.1130, -1              ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_13IgnoreMatcher16with_all_sourcess0_0E0EB1a_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1129, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_13IgnoreMatcher16with_all_sourcess0_0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1130, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_13IgnoreMatcher16with_all_sourcess0_0E0EB1a_.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.l, label %bb.aw, label %bb.ax

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.023.1129, 1             ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.1129 to i1
  %i.bm = or i64 %i.be, %.sroa.023.1129
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bp = shl nuw nsw i64 %i.bh, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_13IgnoreMatcher16with_all_sourcess0_0E0EB1a_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bl, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_13IgnoreMatcher16with_all_sourcess0_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 67818912035696881) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw [136 x i8], ptr %i.bj, i64 %i.bf
  %i.bw = or i64 %i.bg, 1
  %i.bx = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_13IgnoreMatcher16with_all_sourcess0_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 67818912035696881) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cb = icmp eq i64 %i.bf, 0
  %i.cc = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_13IgnoreMatcher16with_all_sourcess0_0E0EB11_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bf, i64 %i.bg) ; 2 uses
  %i.ce = icmp samesign ult i64 %3, %i.cd
  br i1 %i.ce, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_13IgnoreMatcher16with_all_sourcess0_0E0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [136 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cf, ptr %i.bj
  %i.cg = mul nuw nsw i64 %i.cd, 136              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cg, i1 false), !alias.scope !463
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 5 uses
  br i1 %.not.i33, label %.preheader.i35, label %.lr.ph.i.i

.preheader.i35:                                   ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.ev, %.noexc.i ], [ %i.cf, %.critedge.i ] ; 6 uses
  %.sroa.7.0.i = phi ptr [ %i.ex, %.noexc.i ], [ %i.ch, %.critedge.i ] ; 6 uses
  %.sroa.0.0.i.i36 = phi ptr [ %i.es, %.noexc.i ], [ %i.n, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -136 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.ck = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -128
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !468, !noalias !469, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -120
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !468, !noalias !469, !noundef !4 ; 6 uses
  br label %.lr.ph.split.preheader.i.i.i.i.i.i39

.lr.ph.split.preheader.i.i.i.i.i.i39:             ; preds = %bb.ae, %.preheader.i35
  %.sroa.0.028.i.i.i40 = phi i64 [ 0, %.preheader.i35 ], [ %i.dh, %bb.ae ] ; 3 uses
  %i.co = phi i64 [ 0, %.preheader.i35 ], [ %i.dd, %bb.ae ]
  br label %.lr.ph.split.i.i.i.i.i.i41

.lr.ph.split.i.i.i.i.i.i41:                       ; preds = %bb.ac, %.lr.ph.split.preheader.i.i.i.i.i.i39
  %i.cp = phi i64 [ %i.dd, %bb.ac ], [ %i.co, %.lr.ph.split.preheader.i.i.i.i.i.i39 ] ; 5 uses
  %i.cq = sub nuw i64 %i.cn, %i.cp                ; 4 uses
  %i.cr = getelementptr i8, ptr %i.cl, i64 %i.cp  ; 3 uses
  %i.cs = icmp samesign ult i64 %i.cq, 16
  br i1 %i.cs, label %.preheader.i.i.i.i.i.i.i64, label %bb.aa

.preheader.i.i.i.i.i.i.i64:                       ; preds = %.lr.ph.split.i.i.i.i.i.i41
  %.not.i.i.i.i.i.i.i65 = icmp eq i64 %i.cn, %i.cp
  br i1 %.not.i.i.i.i.i.i.i65, label %.lr.ph.split.preheader.i.i.i.lr.ph.i7.i.i42, label %.lr.ph.i.i.i.i.i.i.i66

bb.aa:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i41
  %i.ct = invoke { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef range(i64 0, -9223372036854775808) %i.cq)
          to label %.noexc69 unwind label %.loopexit.i.loopexit.split-lp ; 2 uses

.noexc69:                                         ; preds = %bb.aa
  %i.cu = extractvalue { i64, i64 } %i.ct, 0
  %i.cv = extractvalue { i64, i64 } %i.ct, 1
  %i.cw = trunc nuw i64 %i.cu to i1
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvMBY_NtBY_13IgnoreMatcher16with_all_sourcess0_0E0EB10_:bb.a
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !485, !noalias !486, !noundef !4
  %i.gn = icmp eq i8 %i.gm, 47
  br i1 %i.gn, label %.loopexit.i.i.i.i13.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i21.i.i
  %i.go = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i22.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i23.i.i = icmp eq i64 %i.go, %i.ge
  br i1 %exitcond.not.i.i.i.i.i23.i.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbzNSmZPCnTx_10tgrep_core.exit24.i.i, label %.lr.ph.i.i.i.i.i21.i.i

.loopexit.i.i.i.i13.i.i:                          ; preds = %.lr.ph.i.i.i.i.i21.i.i, %.noexc38
  %.sroa.5.0.i.i.i.i.i14.i.i = phi i64 [ %i.gj, %.noexc38 ], [ %.sroa.04.011.i.i.i.i.i22.i.i, %.lr.ph.i.i.i.i.i21.i.i ] ; 4 uses
  %i.gp = icmp ult i64 %.sroa.5.0.i.i.i.i.i14.i.i, %i.ge
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = add i64 %i.gd, 1
  %i.gr = add i64 %i.gq, %.sroa.5.0.i.i.i.i.i14.i.i ; 3 uses
  %.not12.i.i.i.i16.i.i = icmp ugt i64 %i.gr, %i.gb
  %i.gs = add i64 %.sroa.5.0.i.i.i.i.i14.i.i, %i.gd
  %or.cond.i.i.i.i17.not.i.i = icmp ult i64 %i.gs, %i.gb
  br i1 %or.cond.i.i.i.i17.not.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.at, %.loopexit.i.i.i.i13.i.i
  br i1 %.not12.i.i.i.i16.i.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbzNSmZPCnTx_10tgrep_core.exit24.i.i, label %.lr.ph.split.i.i.i.i11.i.i

bb.at:                                            ; preds = %.loopexit.i.i.i.i13.i.i
  %i.gt = getelementptr i8, ptr %i.gf, i64 %.sroa.5.0.i.i.i.i.i14.i.i
  %lhsc25.i.i = load i8, ptr %i.gt, align 1, !noalias !484
  %i.gu = icmp eq i8 %lhsc25.i.i, 47
  br i1 %i.gu, label %bb.au, label %bb.as

bb.au:                                            ; preds = %bb.at
  %i.gv = add i64 %.sroa.0.028.i10.i.i, 1
  br label %.lr.ph.split.preheader.i.i.i.i9.i.i

_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbzNSmZPCnTx_10tgrep_core.exit24.i.i: ; preds = %bb.as, %.noexc38, %.preheader.i.i.i.i.i19.i.i, %bb.ar
  %i.gw = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.0.028.i.i.i, i64 %.sroa.0.028.i10.i.i)
  %i.gx = icmp eq i64 %.sroa.0.028.i.i.i, %.sroa.0.028.i10.i.i
  br i1 %i.gx, label %bb.av, label %.noexc19.i

bb.av:                                            ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbzNSmZPCnTx_10tgrep_core.exit24.i.i
  %i.gy = icmp sgt i64 %i.fd, -1
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = icmp sgt i64 %i.gb, -1
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = tail call i8 @llvm.ucmp.i8.i64(i64 %i.fd, i64 %i.gb)
  br label %.noexc19.i

.noexc19.i:                                       ; preds = %bb.av, %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbzNSmZPCnTx_10tgrep_core.exit24.i.i
  %.sroa.0.0.i.i37 = phi i8 [ %i.ha, %bb.av ], [ %i.gw, %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter7MatchescENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BM_5count0ECsbzNSmZPCnTx_10tgrep_core.exit24.i.i ] ; 2 uses
  %i.hb = icmp eq i8 %.sroa.0.0.i.i37, 0
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 128
  %i.hd = load i8, ptr %i.hc, align 8, !range !5, !alias.scope !481, !noalias !480
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 128
  %i.hf = load i8, ptr %i.he, align 8, !range !5, !alias.scope !480, !noalias !481
  %i.hg = sub nsw i8 %i.hd, %i.hf
  %.sroa.0.1.i.i = select i1 %i.hb, i8 %i.hg, i8 %.sroa.0.0.i.i37
  %i.hh = icmp eq i8 %.sroa.0.1.i.i, -1           ; 3 uses
  %i.hi = xor i1 %i.hh, true
  %.sroa.05.0.i.i = select i1 %i.hh, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.05.0.i.i, i64 136, i1 false), !alias.scope !463, !noalias !487
  %i.hj = zext i1 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.i34, i64 %i.hj ; 3 uses
  %i.hl = zext i1 %i.hh to i64
  %i.hm = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.02.i.i, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 136 ; 2 uses
  %i.ho = icmp ne ptr %i.hk, %i.ch
  %i.hp = icmp ne ptr %i.hm, %i.n
  %or.cond.i18.i = select i1 %i.ho, i1 %i.hp, i1 false
  br i1 %or.cond.i18.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvMB1c_NtB1c_13IgnoreMatcher16with_all_sourcess0_0E0EB1e_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvMB1c_NtB1c_13IgnoreMatcher16with_all_sourcess0_0E0EB1e_.exit.i: ; preds = %.noexc19.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.ev, %.noexc.i ], [ %i.hn, %.noexc19.i ]
  %.sroa.7.2.i = phi ptr [ %i.ex, %.noexc.i ], [ %i.ch, %.noexc19.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.hk, %.noexc19.i ] ; 2 uses
  %i.hq = ptrtoint ptr %.sroa.7.2.i to i64
  %i.hr = ptrtoint ptr %.sroa.0.3.i to i64
  %i.hs = sub nuw i64 %i.hq, %i.hr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.hs, i1 false), !alias.scope !463, !noalias !488
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_13IgnoreMatcher16with_all_sourcess0_0E0EB11_.exit

.loopexit.i.loopexit:                             ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i.loopexit.split-lp:                    ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i.loopexit:                    ; preds = %bb.aq
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %bb.al
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.i.loopexit, %.loopexit.i.loopexit.split-lp
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i.loopexit.split-lp ], [ %.sroa.13.0.i, %.loopexit.i.loopexit ], [ %.sroa.13.1.i, %.loopexit.split-lp.i.loopexit ], [ %.sroa.13.1.i, %.loopexit.split-lp.i.loopexit.split-lp ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i.loopexit.split-lp ], [ %.sroa.7.0.i, %.loopexit.i.loopexit ], [ %i.ch, %.loopexit.split-lp.i.loopexit ], [ %i.ch, %.loopexit.split-lp.i.loopexit.split-lp ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i.loopexit.split-lp ], [ %2, %.loopexit.i.loopexit ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i.loopexit ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.i.loopexit ], [ %lpad.loopexit74, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp.i.loopexit.split-lp ]
  %i.ht = ptrtoint ptr %.sroa.7.1.i to i64
  %i.hu = ptrtoint ptr %.sroa.0.2.i to i64
  %i.hv = sub nuw i64 %i.ht, %i.hu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.hv, i1 false), !alias.scope !463, !noalias !489
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_13IgnoreMatcher16with_all_sourcess0_0E0EB11_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCNvMB1c_NtB1c_13IgnoreMatcher16with_all_sourcess0_0E0EB1e_.exit.i
  %i.hw = shl nuw nsw i64 %i.bh, 1
  %i.hx = or disjoint i64 %i.hw, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_13IgnoreMatcher16with_all_sourcess0_0E0EB1a_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvMB18_NtB18_13IgnoreMatcher16with_all_sourcess0_0E0EB1a_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_13IgnoreMatcher16with_all_sourcess0_0E0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.hx, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvMBZ_NtBZ_13IgnoreMatcher16with_all_sourcess0_0E0EB11_.exit ], [ %i.bp, %bb.u ] ; 2 uses
  %i.hy = icmp ugt i64 %i.ay, 1
  br i1 %i.hy, label %bb.r, label %._crit_edge

bb.aw:                                            ; preds = %._crit_edge
  %i.hz = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ia = lshr i64 %.sroa.018.0, 1
  %i.ib = add nuw nsw i64 %i.ia, %.sroa.09.0
  br label %bb.f

bb.ax:                                            ; preds = %._crit_edge
  %i.ic = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ic, 0
  br i1 %.not30, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.id = or i64 %1, 1
  %i.ie = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.id, i1 true)
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = shl nuw nsw i32 %i.if, 1
  %i.ih = xor i32 %i.ig, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvMB17_NtB17_13IgnoreMatcher16with_all_sourcess0_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.ih, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.a, %bb.az
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB11_3vec3VecBX_EENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB2z_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3B_8adapters3map3MapINtB2z_4IterReRSB56_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5m_8TypeDefs7builtin0EE0E0EB5o_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.et, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.er, %bb.aa ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB18_3vec3VecB14_EENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2I_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3L_8adapters3map3MapINtB2I_4IterReRSB5h_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5x_8TypeDefs7builtin0EE0E0EB5z_.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB18_3vec3VecB14_EENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2I_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3L_8adapters3map3MapINtB2I_4IterReRSB5h_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5x_8TypeDefs7builtin0EE0E0EB5z_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB18_3vec3VecB14_EENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2I_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3L_8adapters3map3MapINtB2I_4IterReRSB5h_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5x_8TypeDefs7builtin0EE0E0EB5z_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB17_3vec3VecB13_EENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2H_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3K_8adapters3map3MapINtB2H_4IterReRSB5g_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5w_8TypeDefs7builtin0EE0E0EB5y_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_3vec3VecBv_EE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %i.p, i64 56
  %.val11.i = load ptr, ptr %i.r, align 8, !alias.scope !520, !noalias !521, !nonnull !4, !noundef !4 ; 3 uses
  %i.s = getelementptr i8, ptr %i.p, i64 64
  %.val12.i = load i64, ptr %i.s, align 8, !alias.scope !520, !noalias !521, !noundef !4 ; 4 uses
  %i.t = getelementptr i8, ptr %i.p, i64 8
  %.val13.i = load ptr, ptr %i.t, align 8, !alias.scope !520, !noalias !521, !nonnull !4, !noundef !4
  %i.u = getelementptr i8, ptr %i.p, i64 16
  %.val14.i = load i64, ptr %i.u, align 8, !alias.scope !520, !noalias !521, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i, i64 range(i64 0, -9223372036854775808) %.val14.i)
  %i.v = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !522, !noalias !523 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub nsw i64 %.val12.i, %.val14.i
  %spec.select.i.i.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %.not38.i = icmp eq i64 %i.o, 2                 ; 2 uses
  br i1 %i.z, label %.preheader27.i, label %.preheader.i

.preheader27.i:                                   ; preds = %bb.k
  br i1 %.not38.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_3vec3VecBv_EE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not38.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.l
  %.val10.i = phi i64 [ %.val8.i, %bb.l ], [ %.val12.i, %.preheader27.i ] ; 2 uses
  %.val9.i = phi ptr [ %.val7.i, %bb.l ], [ %.val11.i, %.preheader27.i ]
  %.sroa.01.0.i29.i = phi i64 [ %i.ai, %bb.l ], [ 2, %.preheader27.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.01.0.i29.i ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val7.i = load ptr, ptr %i.ab, align 8, !alias.scope !520, !noalias !521, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val8.i = load i64, ptr %i.ac, align 8, !alias.scope !520, !noalias !521, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val8.i, i64 range(i64 0, -9223372036854775808) %.val10.i)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i.i.i.i15.i), !alias.scope !524, !noalias !523 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub nsw i64 %.val8.i, %.val10.i
  %spec.select.i.i.i.i.i16.i = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = icmp slt i64 %spec.select.i.i.i.i.i16.i, 0
  br i1 %i.ah, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB17_3vec3VecB13_EENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2H_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3K_8adapters3map3MapINtB2H_4IterReRSB5g_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5w_8TypeDefs7builtin0EE0E0EB5y_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ai = add nuw nsw i64 %.sroa.01.0.i29.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.o
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB17_3vec3VecB13_EENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2H_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3K_8adapters3map3MapINtB2H_4IterReRSB5g_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5w_8TypeDefs7builtin0EE0E0EB5y_.exit.i, label %.lr.ph.i

.lr.ph33.i:                                       ; preds = %.preheader.i, %bb.m
  %.val6.i = phi i64 [ %.val4.i, %bb.m ], [ %.val12.i, %.preheader.i ] ; 2 uses
  %.val5.i = phi ptr [ %.val.i, %bb.m ], [ %.val11.i, %.preheader.i ]
  %.sroa.01.1.i32.i = phi i64 [ %i.ar, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.01.1.i32.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val.i = load ptr, ptr %i.ak, align 8, !alias.scope !520, !noalias !521, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 16
  %.val4.i = load i64, ptr %i.al, align 8, !alias.scope !520, !noalias !521, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i.i17.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val4.i, i64 range(i64 0, -9223372036854775808) %.val6.i)
  %i.am = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val5.i, i64 %spec.store.select.i.i.i.i.i17.i), !alias.scope !525, !noalias !523 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub nsw i64 %.val4.i, %.val6.i
  %spec.select.i.i.i.i.i18.i = select i1 %i.ao, i64 %i.ap, i64 %i.an
  %i.aq = icmp slt i64 %spec.select.i.i.i.i.i18.i, 0
  br i1 %i.aq, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB17_3vec3VecB13_EENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2H_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3K_8adapters3map3MapINtB2H_4IterReRSB5g_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5w_8TypeDefs7builtin0EE0E0EB5y_.exit.i

bb.m:                                             ; preds = %.lr.ph33.i
  %i.ar = add nuw nsw i64 %.sroa.01.1.i32.i, 1    ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.ar, %i.o
  br i1 %exitcond41.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB17_3vec3VecB13_EENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2H_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3K_8adapters3map3MapINtB2H_4IterReRSB5g_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5w_8TypeDefs7builtin0EE0E0EB5y_.exit.i, label %.lr.ph33.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB17_3vec3VecB13_EENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2H_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3K_8adapters3map3MapINtB2H_4IterReRSB5g_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5w_8TypeDefs7builtin0EE0E0EB5y_.exit.i: ; preds = %bb.m, %.lr.ph33.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.l ], [ %.sroa.01.0.i29.i, %.lr.ph.i ], [ %.sroa.01.1.i32.i, %.lr.ph33.i ], [ %i.o, %bb.m ] ; 5 uses
  %i.as = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.as)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB17_3vec3VecB13_EENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2H_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3K_8adapters3map3MapINtB2H_4IterReRSB5g_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5w_8TypeDefs7builtin0EE0E0EB5y_.exit.i
  %i.at = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.at, 0
  %or.cond.i = or i1 %i.z, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_3vec3VecBv_EE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.au = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 192153584101141163) %i.o)
  %i.av = shl nuw nsw i64 %i.au, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB18_3vec3VecB14_EENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2I_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3L_8adapters3map3MapINtB2I_4IterReRSB5h_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5x_8TypeDefs7builtin0EE0E0EB5z_.exit

bb.p:                                             ; preds = %bb.i
  %i.aw = tail call i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1a_3vec3VecB16_EENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2K_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3N_8adapters3map3MapINtB2K_4IterReRSB5j_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5z_8TypeDefs7builtin0EE0E0EB5B_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.aw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.ax = shl nuw nsw i64 %i.aw, 1
  %i.ay = or disjoint i64 %i.ax, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB18_3vec3VecB14_EENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2I_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3L_8adapters3map3MapINtB2I_4IterReRSB5h_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5x_8TypeDefs7builtin0EE0E0EB5z_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_3vec3VecBv_EE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB15_3vec3VecB11_EEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %.preheader27.i, %bb.n, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i596670.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB15_3vec3VecB11_EEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ]
  %i.az = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  %i.ba = or disjoint i64 %i.az, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB18_3vec3VecB14_EENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2I_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3L_8adapters3map3MapINtB2I_4IterReRSB5h_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5x_8TypeDefs7builtin0EE0E0EB5z_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.bb = phi i64 [ %i.at, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.0.0.i596670.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB15_3vec3VecB11_EEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bh, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB15_3vec3VecB11_EEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bd = xor i64 %.sroa.0.017.i.i.i, -1
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.0.017.i.i.i
  %i.bf = getelementptr [48 x i8], ptr %i.bc, i64 %i.bd
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, i64 noundef 6)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB15_3vec3VecB11_EEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.q, !noalias !521

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24, !noalias !521
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB15_3vec3VecB11_EEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bh = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %i.bb
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_3vec3VecBv_EE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB18_3vec3VecB14_EENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2I_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3L_8adapters3map3MapINtB2I_4IterReRSB5h_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5x_8TypeDefs7builtin0EE0E0EB5z_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_3vec3VecBv_EE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ba, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_3vec3VecBv_EE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.ay, %bb.p ], [ %i.av, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1b_3vec3VecB17_EENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2L_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3O_8adapters3map3MapINtB2L_4IterReRSB5k_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5A_8TypeDefs7builtin0EE0E0EB5C_.exit
  %.sroa.02.144 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.br, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1b_3vec3VecB17_EENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2L_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3O_8adapters3map3MapINtB2L_4IterReRSB5k_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5A_8TypeDefs7builtin0EE0E0EB5C_.exit ] ; 2 uses
  %.sroa.023.143 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1b_3vec3VecB17_EENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2L_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3O_8adapters3map3MapINtB2L_4IterReRSB5k_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5A_8TypeDefs7builtin0EE0E0EB5C_.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.144, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1b_3vec3VecB17_EENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2L_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3O_8adapters3map3MapINtB2L_4IterReRSB5k_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5A_8TypeDefs7builtin0EE0E0EB5C_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.143, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1b_3vec3VecB17_EENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2L_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3O_8adapters3map3MapINtB2L_4IterReRSB5k_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5A_8TypeDefs7builtin0EE0E0EB5C_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.144, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1b_3vec3VecB17_EENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2L_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3O_8adapters3map3MapINtB2L_4IterReRSB5k_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5A_8TypeDefs7builtin0EE0E0EB5C_.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.l, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.143, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.143 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.143
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1b_3vec3VecB17_EENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2L_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3O_8adapters3map3MapINtB2L_4IterReRSB5k_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5A_8TypeDefs7builtin0EE0E0EB5C_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1a_3vec3VecB16_EENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2K_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3N_8adapters3map3MapINtB2K_4IterReRSB5j_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5z_8TypeDefs7builtin0EE0E0EB5B_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 192153584101141163) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [48 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1a_3vec3VecB16_EENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2K_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3N_8adapters3map3MapINtB2K_4IterReRSB5j_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5z_8TypeDefs7builtin0EE0E0EB5B_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 192153584101141163) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.cu = icmp eq i64 %i.by, 0
  %i.cv = icmp eq i64 %i.bz, 0
  %or.cond.i33 = or i1 %i.cv, %i.cu
  br i1 %or.cond.i33, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB12_3vec3VecBY_EENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2A_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3C_8adapters3map3MapINtB2A_4IterReRSB57_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5n_8TypeDefs7builtin0EE0E0EB5p_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.by, i64 %i.bz) ; 2 uses
  %i.cx = icmp samesign ult i64 %3, %i.cw
  br i1 %i.cx, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB12_3vec3VecBY_EENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2A_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3C_8adapters3map3MapINtB2A_4IterReRSB57_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5n_8TypeDefs7builtin0EE0E0EB5p_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.cy, ptr %i.cc
  %i.cz = mul nuw nsw i64 %i.cw, 48               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cz, i1 false), !alias.scope !528
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.cz ; 3 uses
  br i1 %.not.i34, label %.preheader.i35, label %.lr.ph.i.i

.preheader.i35:                                   ; preds = %.critedge.i, %.preheader.i35
  %i.db = phi ptr [ %i.dr, %.preheader.i35 ], [ %i.da, %.critedge.i ] ; 3 uses
  %i.dc = phi ptr [ %i.dq, %.preheader.i35 ], [ %i.cy, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i36 = phi ptr [ %i.df, %.preheader.i35 ], [ %i.n, %.critedge.i ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -48 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -48 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.i.i36, i64 -48 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.db, i64 -40
  %.val.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !527, !noalias !529, !nonnull !4, !noundef !4
  %i.dh = getelementptr i8, ptr %i.db, i64 -32
  %.val12.i.i = load i64, ptr %i.dh, align 8, !alias.scope !527, !noalias !529, !noundef !4 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dc, i64 -40
  %.val13.i.i = load ptr, ptr %i.di, align 8, !alias.scope !526, !noalias !530, !nonnull !4, !noundef !4
  %i.dj = getelementptr i8, ptr %i.dc, i64 -32
  %.val14.i.i = load i64, ptr %i.dj, align 8, !alias.scope !526, !noalias !530, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.i, i64 range(i64 0, -9223372036854775808) %.val14.i.i)
  %i.dk = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !531, !noalias !532 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp eq i32 %i.dk, 0
  %i.dn = sub nsw i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.dm, i64 %i.dn, i64 %i.dl ; 2 uses
  %i.do = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.do, ptr %i.de, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !alias.scope !528, !noalias !533
  %i.dp = zext i1 %i.do to i64
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %i.dp ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i, 63
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %i.de, i64 %spec.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.ds = icmp eq ptr %i.dq, %i.cc
  %i.dt = icmp eq ptr %i.dr, %2
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1f_3vec3VecB1b_EEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB32_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB45_8adapters3map3MapINtB32_4IterReRSB5B_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5R_8TypeDefs7builtin0EE0E0EB5T_.exit.i, label %.preheader.i35

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.du = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.cc, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.cy, %.critedge.i ] ; 4 uses
  %i.dv = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.dw = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !526, !noalias !534, !nonnull !4, !noundef !4
  %i.dx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dx, align 8, !alias.scope !526, !noalias !534, !noundef !4 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dv, i64 8
  %.val.i18.i = load ptr, ptr %i.dy, align 8, !alias.scope !527, !noalias !535, !nonnull !4, !noundef !4
  %i.dz = getelementptr i8, ptr %i.dv, i64 16
  %.val7.i.i = load i64, ptr %i.dz, align 8, !alias.scope !527, !noalias !535, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i19.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i.i, i64 range(i64 0, -9223372036854775808) %.val7.i.i)
  %i.ea = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i18.i, i64 %spec.store.select.i.i.i.i.i.i19.i), !alias.scope !536, !noalias !537 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp eq i32 %i.ea, 0
  %i.ed = sub nsw i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i.i.i.i20.i = select i1 %i.ec, i64 %i.ed, i64 %i.eb ; 2 uses
  %i.ee = icmp sgt i64 %spec.select.i.i.i.i.i.i20.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.ee, ptr %i.dv, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05.0.i.i, i64 48, i1 false), !alias.scope !528, !noalias !538
  %i.ef = zext i1 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [48 x i8], ptr %i.dv, i64 %i.ef ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i21.i = lshr i64 %spec.select.i.i.i.i.i.i20.i, 63
  %i.eh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.i.i.i.lobit.i21.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 2 uses
  %i.ej = icmp ne ptr %i.eg, %i.da
  %i.ek = icmp ne ptr %i.eh, %i.n
  %or.cond.i22.i = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1f_3vec3VecB1b_EEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB32_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB45_8adapters3map3MapINtB32_4IterReRSB5B_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5R_8TypeDefs7builtin0EE0E0EB5T_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1f_3vec3VecB1b_EEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB32_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB45_8adapters3map3MapINtB32_4IterReRSB5B_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5R_8TypeDefs7builtin0EE0E0EB5T_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i35
  %.sroa.13.1.i = phi ptr [ %i.dq, %.preheader.i35 ], [ %i.ei, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dr, %.preheader.i35 ], [ %i.da, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i35 ], [ %i.eg, %.lr.ph.i.i ] ; 2 uses
  %i.el = ptrtoint ptr %.sroa.7.0.i to i64
  %i.em = ptrtoint ptr %.sroa.0.1.i to i64
  %i.en = sub nuw i64 %i.el, %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.en, i1 false), !alias.scope !528, !noalias !539
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB12_3vec3VecBY_EENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2A_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3C_8adapters3map3MapINtB2A_4IterReRSB57_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5n_8TypeDefs7builtin0EE0E0EB5p_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB12_3vec3VecBY_EENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2A_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3C_8adapters3map3MapINtB2A_4IterReRSB57_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5n_8TypeDefs7builtin0EE0E0EB5p_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1f_3vec3VecB1b_EEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB32_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB45_8adapters3map3MapINtB32_4IterReRSB5B_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5R_8TypeDefs7builtin0EE0E0EB5T_.exit.i
  %i.eo = shl nuw nsw i64 %i.ca, 1
  %i.ep = or disjoint i64 %i.eo, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1b_3vec3VecB17_EENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2L_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3O_8adapters3map3MapINtB2L_4IterReRSB5k_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5A_8TypeDefs7builtin0EE0E0EB5C_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1b_3vec3VecB17_EENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2L_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3O_8adapters3map3MapINtB2L_4IterReRSB5k_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5A_8TypeDefs7builtin0EE0E0EB5C_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB12_3vec3VecBY_EENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2A_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3C_8adapters3map3MapINtB2A_4IterReRSB57_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5n_8TypeDefs7builtin0EE0E0EB5p_.exit
  %.sroa.0.0.i = phi i64 [ %i.ep, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB12_3vec3VecBY_EENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2A_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3C_8adapters3map3MapINtB2A_4IterReRSB57_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5n_8TypeDefs7builtin0EE0E0EB5p_.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.eq = icmp ugt i64 %i.br, 1
  br i1 %i.eq, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.er = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.es = lshr i64 %.sroa.018.0, 1
  %i.et = add nuw nsw i64 %i.es, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eu = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eu, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ev = or i64 %1, 1
  %i.ew = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ev, i1 true)
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = xor i32 %i.ey, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1a_3vec3VecB16_EENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2K_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3N_8adapters3map3MapINtB2K_4IterReRSB5j_ENCNvMs_NtCsbzNSmZPCnTx_10tgrep_core9filetypesNtB5z_8TypeDefs7builtin0EE0E0EB5B_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6ondisk12PostingEntryEENCINvMNtB1R_5sliceSBW_11sort_by_keyjNCINvB10_23execute_plan_with_masksNCNvMNtB12_6hybridNtB41_11HybridIndex24execute_query_with_masks0Es_0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ed, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.aa ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvMNtB19_6hybridNtB49_11HybridIndex24execute_query_with_masks0Es_0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvMNtB19_6hybridNtB49_11HybridIndex24execute_query_with_masks0Es_0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvMNtB19_6hybridNtB49_11HybridIndex24execute_query_with_masks0Es_0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvMNtB18_6hybridNtB48_11HybridIndex24execute_query_with_masks0Es_0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseBA_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %i.p, i64 56
  %.val7.i = load i64, ptr %i.r, align 8, !alias.scope !555, !noalias !556, !noundef !4 ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 24
  %.val8.i = load i64, ptr %i.s, align 8, !alias.scope !555, !noalias !556, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %.val7.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ult i64 %.val8.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign uge i64 %.val7.i, %.val8.i ; 2 uses
  %.not28.i = icmp eq i64 %i.o, 2                 ; 2 uses
  br i1 %i.v, label %.preheader17.i, label %.preheader.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseBA_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi i64 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.aa, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.01.0.i19.i
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %.val5.i = load i64, ptr %i.x, align 8, !alias.scope !555, !noalias !556, !noundef !4 ; 3 uses
  %i.y = icmp ult i64 %.val5.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %.val5.i, %.val6.i
  br i1 %i.z, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvMNtB18_6hybridNtB48_11HybridIndex24execute_query_with_masks0Es_0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw nsw i64 %.sroa.01.0.i19.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %i.o
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvMNtB18_6hybridNtB48_11HybridIndex24execute_query_with_masks0Es_0E0EB18_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi i64 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.af, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.01.1.i22.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %.val.i = load i64, ptr %i.ac, align 8, !alias.scope !555, !noalias !556, !noundef !4 ; 3 uses
  %i.ad = icmp ult i64 %.val.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ult i64 %.val.i, %.val4.i
  br i1 %i.ae, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvMNtB18_6hybridNtB48_11HybridIndex24execute_query_with_masks0Es_0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.af = add nuw nsw i64 %.sroa.01.1.i22.i, 1    ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.af, %i.o
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvMNtB18_6hybridNtB48_11HybridIndex24execute_query_with_masks0Es_0E0EB18_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvMNtB18_6hybridNtB48_11HybridIndex24execute_query_with_masks0Es_0E0EB18_.exit.i: ; preds = %bb.m, %.lr.ph23.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.l ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %i.o, %bb.m ] ; 5 uses
  %i.ag = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.ag)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvMNtB18_6hybridNtB48_11HybridIndex24execute_query_with_masks0Es_0E0EB18_.exit.i
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  %or.cond.i = or i1 %i.v, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseBA_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 288230376151711744) %i.o)
  %i.aj = shl nuw nsw i64 %i.ai, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvMNtB19_6hybridNtB49_11HybridIndex24execute_query_with_masks0Es_0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %i.ak = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvMNtB1b_6hybridNtB4b_11HybridIndex24execute_query_with_masks0Es_0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ak, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = or disjoint i64 %i.al, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvMNtB19_6hybridNtB49_11HybridIndex24execute_query_with_masks0Es_0E0EB19_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseBA_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEEB16_.exit.i.i.i, %.preheader17.i, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i485559.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEEB16_.exit.i.i.i ]
  %i.an = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvMNtB19_6hybridNtB49_11HybridIndex24execute_query_with_masks0Es_0E0EB19_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ap = phi i64 [ %i.ah, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i485559.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.0.0.i485559.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEEB16_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.av, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEEB16_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.017.i.i.i, -1
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.0.017.i.i.i
  %i.at = getelementptr [32 x i8], ptr %i.aq, i64 %i.ar
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEEB16_.exit.i.i.i unwind label %bb.q, !noalias !556

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24, !noalias !556
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEEB16_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.ap
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseBA_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvMNtB19_6hybridNtB49_11HybridIndex24execute_query_with_masks0Es_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseBA_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ao, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseBA_.exit.i ], [ %i.am, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.aw = lshr i64 %.sroa.023.0, 1
  %i.ax = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ay = sub nsw i64 %factor, %i.aw
  %i.az = add nuw i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvMNtB1c_6hybridNtB4c_11HybridIndex24execute_query_with_masks0Es_0E0EB1c_.exit
  %.sroa.02.144 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bf, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvMNtB1c_6hybridNtB4c_11HybridIndex24execute_query_with_masks0Es_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.143 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvMNtB1c_6hybridNtB4c_11HybridIndex24execute_query_with_masks0Es_0E0EB1c_.exit ] ; 4 uses
  %i.bf = add i64 %.sroa.02.144, -1               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bh, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvMNtB1c_6hybridNtB4c_11HybridIndex24execute_query_with_masks0Es_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.143, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvMNtB1c_6hybridNtB4c_11HybridIndex24execute_query_with_masks0Es_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.144, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvMNtB1c_6hybridNtB4c_11HybridIndex24execute_query_with_masks0Es_0E0EB1c_.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bj, align 1
  br i1 %i.l, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bf
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4 ; 3 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 8 uses
  %i.bn = lshr i64 %.sroa.023.143, 1              ; 6 uses
  %i.bo = add nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bp = sub i64 %.sroa.09.0, %i.bo
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bp ; 6 uses
  %i.br = icmp samesign ugt i64 %i.bo, %3
  %i.bs = trunc i64 %.sroa.023.143 to i1
  %i.bt = or i64 %i.bl, %.sroa.023.143
  %i.bu = trunc i64 %i.bt to i1
  %or.cond3.i = or i1 %i.br, %i.bu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc i64 %i.bl to i1
  br i1 %i.bv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = shl nuw nsw i64 %i.bo, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvMNtB1c_6hybridNtB4c_11HybridIndex24execute_query_with_masks0Es_0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bx = or i64 %i.bm, 1
  %i.by = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvMNtB1b_6hybridNtB4b_11HybridIndex24execute_query_with_masks0Es_0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.bq, i64 noundef range(i64 0, 288230376151711744) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bm
  %i.cd = or i64 %i.bn, 1
  %i.ce = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvMNtB1b_6hybridNtB4b_11HybridIndex24execute_query_with_masks0Es_0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 288230376151711744) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.ci = icmp eq i64 %i.bm, 0
  %i.cj = icmp eq i64 %i.bn, 0
  %or.cond.i33 = or i1 %i.cj, %i.ci
  br i1 %or.cond.i33, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB13_6ondisk12PostingEntryEENCINvMNtB1S_5sliceSBX_11sort_by_keyjNCINvB11_23execute_plan_with_masksNCNvMNtB13_6hybridNtB42_11HybridIndex24execute_query_with_masks0Es_0E0EB13_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bm, i64 %i.bn) ; 2 uses
  %i.cl = icmp samesign ult i64 %3, %i.ck
  br i1 %i.cl, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB13_6ondisk12PostingEntryEENCINvMNtB1S_5sliceSBX_11sort_by_keyjNCINvB11_23execute_plan_with_masksNCNvMNtB13_6hybridNtB42_11HybridIndex24execute_query_with_masks0Es_0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bm ; 3 uses
  %.not.i34 = icmp samesign ugt i64 %i.bm, %i.bn  ; 2 uses
  %spec.select.i = select i1 %.not.i34, ptr %i.cm, ptr %i.bq
  %i.cn = shl nuw nsw i64 %i.ck, 5                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cn, i1 false), !alias.scope !559
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn ; 3 uses
  br i1 %.not.i34, label %.preheader.i35, label %.lr.ph.i.i

.preheader.i35:                                   ; preds = %.critedge.i, %.preheader.i35
  %i.cp = phi ptr [ %i.dd, %.preheader.i35 ], [ %i.co, %.critedge.i ] ; 2 uses
  %i.cq = phi ptr [ %i.db, %.preheader.i35 ], [ %i.cm, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i36 = phi ptr [ %i.ct, %.preheader.i35 ], [ %i.n, %.critedge.i ]
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -32 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -32 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i36, i64 -32 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cp, i64 -8
  %.val.i.i = load i64, ptr %i.cu, align 8, !alias.scope !558, !noalias !560, !noundef !4 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cq, i64 -8
  %.val12.i.i = load i64, ptr %i.cv, align 8, !alias.scope !557, !noalias !561, !noundef !4 ; 2 uses
  %i.cw = icmp ult i64 %.val.i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp ult i64 %.val12.i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ult i64 %.val.i.i, %.val12.i.i ; 3 uses
  %..i.i = select i1 %i.cy, ptr %i.cr, ptr %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !559, !noalias !562
  %i.cz = xor i1 %i.cy, true
  %i.da = zext i1 %i.cz to i64
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %i.da ; 3 uses
  %i.dc = zext i1 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %i.dc ; 3 uses
  %i.de = icmp eq ptr %i.db, %i.bq
  %i.df = icmp eq ptr %i.dd, %2
  %or.cond.i.i = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1g_6ondisk12PostingEntryEEE10merge_downNCINvMNtB25_5sliceSB1a_11sort_by_keyjNCINvB1e_23execute_plan_with_masksNCNvMNtB1g_6hybridNtB4t_11HybridIndex24execute_query_with_masks0Es_0E0EB1g_.exit.i, label %.preheader.i35

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dg = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %i.bq, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.cm, %.critedge.i ] ; 3 uses
  %i.dh = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.di = getelementptr i8, ptr %.sroa.0.02.i.i, i64 24
  %.sroa.0.0.val.i.i = load i64, ptr %i.di, align 8, !alias.scope !557, !noalias !563, !noundef !4 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dh, i64 24
  %.val.i18.i = load i64, ptr %i.dj, align 8, !alias.scope !558, !noalias !564, !noundef !4 ; 2 uses
  %i.dk = icmp ult i64 %.sroa.0.0.val.i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp ult i64 %.val.i18.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp samesign ult i64 %.sroa.0.0.val.i.i, %.val.i18.i ; 3 uses
  %i.dn = xor i1 %i.dm, true
  %.sroa.05.0.i.i = select i1 %i.dm, ptr %.sroa.0.02.i.i, ptr %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !559, !noalias !565
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %i.do ; 3 uses
  %i.dq = zext i1 %i.dm to i64
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  %i.dt = icmp ne ptr %i.dp, %i.co
  %i.du = icmp ne ptr %i.dr, %i.n
  %or.cond.i19.i = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1g_6ondisk12PostingEntryEEE10merge_downNCINvMNtB25_5sliceSB1a_11sort_by_keyjNCINvB1e_23execute_plan_with_masksNCNvMNtB1g_6hybridNtB4t_11HybridIndex24execute_query_with_masks0Es_0E0EB1g_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1g_6ondisk12PostingEntryEEE10merge_downNCINvMNtB25_5sliceSB1a_11sort_by_keyjNCINvB1e_23execute_plan_with_masksNCNvMNtB1g_6hybridNtB4t_11HybridIndex24execute_query_with_masks0Es_0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i35
  %.sroa.13.1.i = phi ptr [ %i.db, %.preheader.i35 ], [ %i.ds, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dd, %.preheader.i35 ], [ %i.co, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i35 ], [ %i.dp, %.lr.ph.i.i ] ; 2 uses
  %i.dv = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dw = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dx = sub nuw i64 %i.dv, %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dx, i1 false), !alias.scope !559, !noalias !566
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB13_6ondisk12PostingEntryEENCINvMNtB1S_5sliceSBX_11sort_by_keyjNCINvB11_23execute_plan_with_masksNCNvMNtB13_6hybridNtB42_11HybridIndex24execute_query_with_masks0Es_0E0EB13_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB13_6ondisk12PostingEntryEENCINvMNtB1S_5sliceSBX_11sort_by_keyjNCINvB11_23execute_plan_with_masksNCNvMNtB13_6hybridNtB42_11HybridIndex24execute_query_with_masks0Es_0E0EB13_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1g_6ondisk12PostingEntryEEE10merge_downNCINvMNtB25_5sliceSB1a_11sort_by_keyjNCINvB1e_23execute_plan_with_masksNCNvMNtB1g_6hybridNtB4t_11HybridIndex24execute_query_with_masks0Es_0E0EB1g_.exit.i
  %i.dy = shl nuw nsw i64 %i.bo, 1
  %i.dz = or disjoint i64 %i.dy, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvMNtB1c_6hybridNtB4c_11HybridIndex24execute_query_with_masks0Es_0E0EB1c_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvMNtB1c_6hybridNtB4c_11HybridIndex24execute_query_with_masks0Es_0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB13_6ondisk12PostingEntryEENCINvMNtB1S_5sliceSBX_11sort_by_keyjNCINvB11_23execute_plan_with_masksNCNvMNtB13_6hybridNtB42_11HybridIndex24execute_query_with_masks0Es_0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.dz, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB13_6ondisk12PostingEntryEENCINvMNtB1S_5sliceSBX_11sort_by_keyjNCINvB11_23execute_plan_with_masksNCNvMNtB13_6hybridNtB42_11HybridIndex24execute_query_with_masks0Es_0E0EB13_.exit ], [ %i.bw, %bb.u ] ; 2 uses
  %i.ea = icmp ugt i64 %i.bf, 1
  br i1 %i.ea, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eb = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ec = lshr i64 %.sroa.018.0, 1
  %i.ed = add nuw nsw i64 %i.ec, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ee = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ee, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ef = or i64 %1, 1
  %i.eg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvMNtB1b_6hybridNtB4b_11HybridIndex24execute_query_with_masks0Es_0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB14_5sliceSBW_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2l_9LiveIndex14remap_snapshot0E0EB2n_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.aa ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex14remap_snapshot0E0EB2v_.exit
  %.sroa.021.0 = phi i8 [ %i.bt, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex14remap_snapshot0E0EB2v_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex14remap_snapshot0E0EB2v_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex14remap_snapshot0E0EB2u_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val7.i = load ptr, ptr %i.r, align 8, !alias.scope !587, !noalias !588, !nonnull !4, !align !8, !noundef !4
  %.val8.i = load ptr, ptr %i.p, align 8, !alias.scope !587, !noalias !588, !nonnull !4, !align !8, !noundef !4
  %i.s = load i32, ptr %.val7.i, align 4, !noalias !589, !noundef !4 ; 3 uses
  %i.t = and i32 %i.s, 2147483647
  %i.u = load i32, ptr %.val8.i, align 4, !noalias !589, !noundef !4
  %i.v = and i32 %i.u, 2147483647
  %i.w = icmp samesign ult i32 %i.t, %i.v         ; 2 uses
  %.not28.i = icmp eq i64 %i.o, 2                 ; 2 uses
  br i1 %i.w, label %.preheader.i, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %i.x = phi i32 [ %i.z, %bb.l ], [ %i.s, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.ad, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.0.i19.i
  %.val5.i = load ptr, ptr %i.y, align 8, !alias.scope !587, !noalias !588, !nonnull !4, !align !8, !noundef !4
  %i.z = load i32, ptr %.val5.i, align 4, !noalias !589, !noundef !4 ; 2 uses
  %i.aa = and i32 %i.z, 2147483647
  %i.ab = and i32 %i.x, 2147483647
  %i.ac = icmp samesign ult i32 %i.aa, %i.ab
  br i1 %i.ac, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex14remap_snapshot0E0EB2u_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ad = add nuw nsw i64 %.sroa.01.0.i19.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %i.o
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex14remap_snapshot0E0EB2u_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %i.ae = phi i32 [ %i.ag, %bb.m ], [ %i.s, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.ak, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.1.i22.i
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !587, !noalias !588, !nonnull !4, !align !8, !noundef !4
  %i.ag = load i32, ptr %.val.i, align 4, !noalias !589, !noundef !4 ; 2 uses
  %i.ah = and i32 %i.ag, 2147483647
  %i.ai = and i32 %i.ae, 2147483647
  %i.aj = icmp samesign ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex14remap_snapshot0E0EB2u_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.ak = add nuw nsw i64 %.sroa.01.1.i22.i, 1    ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ak, %i.o
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex14remap_snapshot0E0EB2u_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex14remap_snapshot0E0EB2u_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph23.i
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.m ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %i.o, %bb.l ] ; 6 uses
  %i.al = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.al)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex14remap_snapshot0E0EB2u_.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i

bb.o:                                             ; preds = %bb.i
  %i.am = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.o)
  %i.an = shl nuw nsw i64 %i.am, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex14remap_snapshot0E0EB2v_.exit

bb.p:                                             ; preds = %bb.i
  %i.ao = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2v_9LiveIndex14remap_snapshot0E0EB2x_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ao, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex14remap_snapshot0E0EB2v_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i.epil.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i ], [ %i.bk, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod82 = trunc i64 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.ar = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %i.at = getelementptr [16 x i8], ptr %i.az, i64 %i.ar ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !590, !noalias !591
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !592, !noalias !588
  store <2 x ptr> %i.au, ptr %i.at, align 8, !alias.scope !593, !noalias !594
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i.epil.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa, %.preheader17.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i435054.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i435054.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i.epil.preheader ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex14remap_snapshot0E0EB2v_.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %.not.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i435054.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.0.i435054.i ; 3 uses
  %xtraiter = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.ay, 1
  br i1 %i.ba, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i.new

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.ay, 9223372036854775806
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i.new ], [ %i.bk, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i ]
  %i.bb = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bd = getelementptr [16 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bc, align 8, !alias.scope !590, !noalias !591
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !alias.scope !592, !noalias !588
  store <2 x ptr> %i.be, ptr %i.bd, align 8, !alias.scope !593, !noalias !594
  %i.bf = xor i64 %.sroa.0.016.i.i.i, -2
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = getelementptr [16 x i8], ptr %i.az, i64 %i.bf ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !alias.scope !590, !noalias !591
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !592, !noalias !588
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !alias.scope !593, !noalias !594
  %i.bk = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex14remap_snapshot0E0EB2v_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.aq, %bb.p ], [ %i.an, %bb.o ] ; 2 uses
  %i.bl = lshr i64 %.sroa.023.0, 1
  %i.bm = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bn = sub nsw i64 %factor, %i.bl
  %i.bo = add nuw nsw i64 %i.bm, %factor
  %i.bp = mul i64 %i.bn, %.sroa.0.0
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false)
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex14remap_snapshot0E0EB2y_.exit
  %.sroa.02.143 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bu, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex14remap_snapshot0E0EB2y_.exit ] ; 2 uses
  %.sroa.023.142 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex14remap_snapshot0E0EB2y_.exit ] ; 4 uses
  %i.bu = add i64 %.sroa.02.143, -1               ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex14remap_snapshot0E0EB2y_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.142, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex14remap_snapshot0E0EB2y_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.143, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex14remap_snapshot0E0EB2y_.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.by, align 1
  br i1 %i.l, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bu
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 8 uses
  %i.cc = lshr i64 %.sroa.023.142, 1              ; 6 uses
  %i.cd = add nuw i64 %i.cb, %i.cc                ; 4 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ce ; 6 uses
  %i.cg = icmp samesign ugt i64 %i.cd, %3
  %i.ch = trunc i64 %.sroa.023.142 to i1
  %i.ci = or i64 %i.ca, %.sroa.023.142
  %i.cj = trunc i64 %i.ci to i1
  %or.cond3.i = or i1 %i.cg, %i.cj
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cl = shl nuw nsw i64 %i.cd, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex14remap_snapshot0E0EB2y_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ch, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cm = or i64 %i.cb, 1
  %i.cn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2v_9LiveIndex14remap_snapshot0E0EB2x_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 576460752303423488) %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb
  %i.cs = or i64 %i.cc, 1
  %i.ct = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2v_9LiveIndex14remap_snapshot0E0EB2x_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 576460752303423488) %i.cc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.cx = icmp eq i64 %i.cb, 0
  %i.cy = icmp eq i64 %i.cc, 0
  %or.cond.i = or i1 %i.cy, %i.cx
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB15_5sliceSBX_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2m_9LiveIndex14remap_snapshot0E0EB2o_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.cb, i64 %i.cc) ; 2 uses
  %i.da = icmp samesign ult i64 %3, %i.cz
  br i1 %i.da, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB15_5sliceSBX_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2m_9LiveIndex14remap_snapshot0E0EB2o_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cb, %i.cc  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.db, ptr %i.cf
  %i.dc = shl nuw nsw i64 %i.cz, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dc, i1 false), !alias.scope !599
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc ; 3 uses
  br i1 %.not.i33, label %.preheader.i34, label %.lr.ph.i.i

.preheader.i34:                                   ; preds = %.critedge.i, %.preheader.i34
  %i.de = phi ptr [ %i.ds, %.preheader.i34 ], [ %i.dd, %.critedge.i ]
  %i.df = phi ptr [ %i.dq, %.preheader.i34 ], [ %i.db, %.critedge.i ]
  %.sroa.0.0.i.i35 = phi ptr [ %i.di, %.preheader.i34 ], [ %i.n, %.critedge.i ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -16 ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 -16 ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !598, !noalias !600, !nonnull !4, !align !8, !noundef !4
  %.val12.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !597, !noalias !601, !nonnull !4, !align !8, !noundef !4
  %i.dj = load i32, ptr %.val.i.i, align 4, !noalias !602, !noundef !4
  %i.dk = and i32 %i.dj, 2147483647
  %i.dl = load i32, ptr %.val12.i.i, align 4, !noalias !602, !noundef !4
  %i.dm = and i32 %i.dl, 2147483647
  %i.dn = icmp samesign ult i32 %i.dk, %i.dm      ; 3 uses
  %..i.i = select i1 %i.dn, ptr %i.dg, ptr %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !599, !noalias !603
  %i.do = xor i1 %i.dn, true
  %i.dp = zext i1 %i.do to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dp ; 3 uses
  %i.dr = zext i1 %i.dn to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dr ; 3 uses
  %i.dt = icmp eq ptr %i.dq, %i.cf
  %i.du = icmp eq ptr %i.ds, %2
  %or.cond.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringEE10merge_downNCINvMNtB1i_5sliceSB1a_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2N_9LiveIndex14remap_snapshot0E0EB2P_.exit.i, label %.preheader.i34

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dv = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.cf, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.db, %.critedge.i ] ; 3 uses
  %i.dw = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !597, !noalias !604, !nonnull !4, !align !8, !noundef !4
  %.val.i18.i = load ptr, ptr %i.dw, align 8, !alias.scope !598, !noalias !605, !nonnull !4, !align !8, !noundef !4
  %i.dx = load i32, ptr %.sroa.0.0.val.i.i, align 4, !noalias !606, !noundef !4
  %i.dy = and i32 %i.dx, 2147483647
  %i.dz = load i32, ptr %.val.i18.i, align 4, !noalias !606, !noundef !4
  %i.ea = and i32 %i.dz, 2147483647
  %i.eb = icmp samesign ult i32 %i.dy, %i.ea      ; 3 uses
  %i.ec = xor i1 %i.eb, true
  %.sroa.05.0.i.i = select i1 %i.eb, ptr %.sroa.0.02.i.i, ptr %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !599, !noalias !607
  %i.ed = zext i1 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.ed ; 3 uses
  %i.ef = zext i1 %i.eb to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.ei = icmp ne ptr %i.ee, %i.dd
  %i.ej = icmp ne ptr %i.eg, %i.n
  %or.cond.i19.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringEE10merge_downNCINvMNtB1i_5sliceSB1a_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2N_9LiveIndex14remap_snapshot0E0EB2P_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringEE10merge_downNCINvMNtB1i_5sliceSB1a_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2N_9LiveIndex14remap_snapshot0E0EB2P_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i34
  %.sroa.13.1.i = phi ptr [ %i.dq, %.preheader.i34 ], [ %i.eh, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ds, %.preheader.i34 ], [ %i.dd, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i34 ], [ %i.ee, %.lr.ph.i.i ] ; 2 uses
  %i.ek = ptrtoint ptr %.sroa.7.0.i to i64
  %i.el = ptrtoint ptr %.sroa.0.1.i to i64
  %i.em = sub nuw i64 %i.ek, %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.em, i1 false), !alias.scope !599, !noalias !608
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB15_5sliceSBX_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2m_9LiveIndex14remap_snapshot0E0EB2o_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB15_5sliceSBX_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2m_9LiveIndex14remap_snapshot0E0EB2o_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringEE10merge_downNCINvMNtB1i_5sliceSB1a_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2N_9LiveIndex14remap_snapshot0E0EB2P_.exit.i
  %i.en = shl nuw nsw i64 %i.cd, 1
  %i.eo = or disjoint i64 %i.en, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex14remap_snapshot0E0EB2y_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex14remap_snapshot0E0EB2y_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB15_5sliceSBX_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2m_9LiveIndex14remap_snapshot0E0EB2o_.exit
  %.sroa.0.0.i = phi i64 [ %i.eo, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB15_5sliceSBX_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2m_9LiveIndex14remap_snapshot0E0EB2o_.exit ], [ %i.cl, %bb.u ] ; 2 uses
  %i.ep = icmp ugt i64 %i.bu, 1
  br i1 %i.ep, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.er = lshr i64 %.sroa.018.0, 1
  %i.es = add nuw nsw i64 %i.er, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.et = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.et, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = or i64 %1, 1
  %i.ev = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.eu, i1 true)
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 1
  %i.ey = xor i32 %i.ex, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2v_9LiveIndex14remap_snapshot0E0EB2x_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB14_5sliceSBW_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2l_9LiveIndex17all_paths_ordered0E0EB2n_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.aa ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex17all_paths_ordered0E0EB2v_.exit
  %.sroa.021.0 = phi i8 [ %i.bt, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex17all_paths_ordered0E0EB2v_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex17all_paths_ordered0E0EB2v_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex17all_paths_ordered0E0EB2u_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val7.i = load ptr, ptr %i.r, align 8, !alias.scope !629, !noalias !630, !nonnull !4, !align !8, !noundef !4
  %.val8.i = load ptr, ptr %i.p, align 8, !alias.scope !629, !noalias !630, !nonnull !4, !align !8, !noundef !4
  %i.s = load i32, ptr %.val7.i, align 4, !noalias !631, !noundef !4 ; 3 uses
  %i.t = and i32 %i.s, 2147483647
  %i.u = load i32, ptr %.val8.i, align 4, !noalias !631, !noundef !4
  %i.v = and i32 %i.u, 2147483647
  %i.w = icmp samesign ult i32 %i.t, %i.v         ; 2 uses
  %.not28.i = icmp eq i64 %i.o, 2                 ; 2 uses
  br i1 %i.w, label %.preheader.i, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %i.x = phi i32 [ %i.z, %bb.l ], [ %i.s, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.ad, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.0.i19.i
  %.val5.i = load ptr, ptr %i.y, align 8, !alias.scope !629, !noalias !630, !nonnull !4, !align !8, !noundef !4
  %i.z = load i32, ptr %.val5.i, align 4, !noalias !631, !noundef !4 ; 2 uses
  %i.aa = and i32 %i.z, 2147483647
  %i.ab = and i32 %i.x, 2147483647
  %i.ac = icmp samesign ult i32 %i.aa, %i.ab
  br i1 %i.ac, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex17all_paths_ordered0E0EB2u_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ad = add nuw nsw i64 %.sroa.01.0.i19.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %i.o
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex17all_paths_ordered0E0EB2u_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %i.ae = phi i32 [ %i.ag, %bb.m ], [ %i.s, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.ak, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.1.i22.i
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !629, !noalias !630, !nonnull !4, !align !8, !noundef !4
  %i.ag = load i32, ptr %.val.i, align 4, !noalias !631, !noundef !4 ; 2 uses
  %i.ah = and i32 %i.ag, 2147483647
  %i.ai = and i32 %i.ae, 2147483647
  %i.aj = icmp samesign ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex17all_paths_ordered0E0EB2u_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.ak = add nuw nsw i64 %.sroa.01.1.i22.i, 1    ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ak, %i.o
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex17all_paths_ordered0E0EB2u_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex17all_paths_ordered0E0EB2u_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph23.i
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.m ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %i.o, %bb.l ] ; 6 uses
  %i.al = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.al)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2s_9LiveIndex17all_paths_ordered0E0EB2u_.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i

bb.o:                                             ; preds = %bb.i
  %i.am = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.o)
  %i.an = shl nuw nsw i64 %i.am, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex17all_paths_ordered0E0EB2v_.exit

bb.p:                                             ; preds = %bb.i
  %i.ao = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2v_9LiveIndex17all_paths_ordered0E0EB2x_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ao, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex17all_paths_ordered0E0EB2v_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i.epil.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i ], [ %i.bk, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod82 = trunc i64 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.ar = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %i.at = getelementptr [16 x i8], ptr %i.az, i64 %i.ar ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !632, !noalias !633
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !634, !noalias !630
  store <2 x ptr> %i.au, ptr %i.at, align 8, !alias.scope !635, !noalias !636
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i.epil.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa, %.preheader17.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i435054.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i435054.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i.epil.preheader ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex17all_paths_ordered0E0EB2v_.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %.not.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i435054.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.0.i435054.i ; 3 uses
  %xtraiter = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.ay, 1
  br i1 %i.ba, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i.new

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.ay, 9223372036854775806
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i.new ], [ %i.bk, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i ]
  %i.bb = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bd = getelementptr [16 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bc, align 8, !alias.scope !632, !noalias !633
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !alias.scope !634, !noalias !630
  store <2 x ptr> %i.be, ptr %i.bd, align 8, !alias.scope !635, !noalias !636
  %i.bf = xor i64 %.sroa.0.016.i.i.i, -2
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = getelementptr [16 x i8], ptr %i.az, i64 %i.bf ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !alias.scope !632, !noalias !633
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !634, !noalias !630
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !alias.scope !635, !noalias !636
  %i.bk = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit11.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2t_9LiveIndex17all_paths_ordered0E0EB2v_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.aq, %bb.p ], [ %i.an, %bb.o ] ; 2 uses
  %i.bl = lshr i64 %.sroa.023.0, 1
  %i.bm = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bn = sub nsw i64 %factor, %i.bl
  %i.bo = add nuw nsw i64 %i.bm, %factor
  %i.bp = mul i64 %i.bn, %.sroa.0.0
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false)
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex17all_paths_ordered0E0EB2y_.exit
  %.sroa.02.143 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.bu, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex17all_paths_ordered0E0EB2y_.exit ] ; 2 uses
  %.sroa.023.142 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex17all_paths_ordered0E0EB2y_.exit ] ; 4 uses
  %i.bu = add i64 %.sroa.02.143, -1               ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex17all_paths_ordered0E0EB2y_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.142, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex17all_paths_ordered0E0EB2y_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.143, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex17all_paths_ordered0E0EB2y_.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.by, align 1
  br i1 %i.l, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bu
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 8 uses
  %i.cc = lshr i64 %.sroa.023.142, 1              ; 6 uses
  %i.cd = add nuw i64 %i.cb, %i.cc                ; 4 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ce ; 6 uses
  %i.cg = icmp samesign ugt i64 %i.cd, %3
  %i.ch = trunc i64 %.sroa.023.142 to i1
  %i.ci = or i64 %i.ca, %.sroa.023.142
  %i.cj = trunc i64 %i.ci to i1
  %or.cond3.i = or i1 %i.cg, %i.cj
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cl = shl nuw nsw i64 %i.cd, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2w_9LiveIndex17all_paths_ordered0E0EB2y_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ch, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cm = or i64 %i.cb, 1
  %i.cn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2v_9LiveIndex17all_paths_ordered0E0EB2x_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 576460752303423488) %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb
  %i.cs = or i64 %i.cc, 1
  %i.ct = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2v_9LiveIndex17all_paths_ordered0E0EB2x_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 576460752303423488) %i.cc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.cx = icmp eq i64 %i.cb, 0
  %i.cy = icmp eq i64 %i.cc, 0
  %or.cond.i = or i1 %i.cy, %i.cx
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB15_5sliceSBX_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2m_9LiveIndex17all_paths_ordered0E0EB2o_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.cb, i64 %i.cc) ; 2 uses
  %i.da = icmp samesign ult i64 %3, %i.cz
  br i1 %i.da, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB15_5sliceSBX_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2m_9LiveIndex17all_paths_ordered0E0EB2o_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cb, %i.cc  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.db, ptr %i.cf
  %i.dc = shl nuw nsw i64 %i.cz, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dc, i1 false), !alias.scope !641
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc ; 3 uses
  br i1 %.not.i33, label %.preheader.i34, label %.lr.ph.i.i

.preheader.i34:                                   ; preds = %.critedge.i, %.preheader.i34
  %i.de = phi ptr [ %i.ds, %.preheader.i34 ], [ %i.dd, %.critedge.i ]
  %i.df = phi ptr [ %i.dq, %.preheader.i34 ], [ %i.db, %.critedge.i ]
  %.sroa.0.0.i.i35 = phi ptr [ %i.di, %.preheader.i34 ], [ %i.n, %.critedge.i ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -16 ; 3 uses
end_hunk_1
