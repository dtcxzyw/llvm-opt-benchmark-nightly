Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.02?download=true
inline.NumInlined: 2281
inline.NumDeleted: 862
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RINvMs_NtCslLGyqsphxMB_10widestring9utfstringNtB5_11Utf32String6retainNCNvNtCs8frGy5WneL6_4fish6expand25remove_internal_separator0EB1c_:bb.a

bb.f:                                             ; preds = %bb.c
  %i.r = add nuw nsw i64 %.sroa.0.08, 1
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openNtNtNtB8_3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !10
  invoke void @_RNvMsj_NtCsaL1QbXo9JQH_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #50
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openRNtNtB8_4path7PathBufECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !10
  tail call void @_RNvMsj_NtCsaL1QbXo9JQH_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openReECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMsj_NtCsaL1QbXo9JQH_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMso_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB1X_s_0ECs8frGy5WneL6_4fish(i64 noundef range(i64 1, -9223372036854775807) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef %0, i64 noundef %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsr_NtCs1xwejQucwHj_5alloc4syncINtB7_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE21allocate_for_slice_in0Cs8frGy5WneL6_4fish.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.f = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #48
  br label %_RNCNvMsr_NtCs1xwejQucwHj_5alloc4syncINtB7_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE21allocate_for_slice_in0Cs8frGy5WneL6_4fish.exit

_RNCNvMsr_NtCs1xwejQucwHj_5alloc4syncINtB7_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE21allocate_for_slice_in0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %i.g, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %_RNCNvMsr_NtCs1xwejQucwHj_5alloc4syncINtB7_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE21allocate_for_slice_in0Cs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #49
  unreachable

bb.e:                                             ; preds = %_RNCNvMsr_NtCs1xwejQucwHj_5alloc4syncINtB7_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE21allocate_for_slice_in0Cs8frGy5WneL6_4fish.exit
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i, 0
  %.val = load i64, ptr %3, align 8, !noundef !10
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.val, 1
  store i64 1, ptr %.sroa.0.0.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  store i64 1, ptr %i.j, align 8
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = phi i1 [ false, %bb.a ], [ true, %bb.b ]
  %i.c = landingpad { ptr, i32 }
          cleanup
  br i1 %i.b, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #50
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.d = icmp eq i64 %i.c, 3
  br i1 %i.d, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  %.lcssa = phi i64 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ]
  %i.f = landingpad { ptr, i32 }
          cleanup
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %.sroa.0.1.i2 = phi i64 [ %i.c, %bb.d ], [ %.lcssa, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #50
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCslLGyqsphxMB_10widestring9utfstring11Utf32Stringj1_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body.i:                                          ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCskOHnqPTvc0z_3lru8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB22_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsa_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalEB3I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown3map7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtB2_8non_null7NonNullINtB1j_8LruEntryB1I_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEEB3p_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalEB3I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 16, i64 noundef 16)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown3map7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtB2_8non_null7NonNullINtB1j_8LruEntryB1I_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEEB3p_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.a = load i64, ptr %0, align 8, !range !12, !alias.scope !592, !noundef !10
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !592, !noundef !10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !592 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !10, !noalias !592 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.f, !noalias !592

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !16, !invariant.load !10, !noalias !592 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs8frGy5WneL6_4fish.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !17, !invariant.load !10, !noalias !592
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.h, i64 noundef range(i64 1, 536870913) %i.k) #48, !noalias !592
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !16, !invariant.load !10, !noalias !592 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !17, !invariant.load !10, !noalias !592
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, 536870913) %i.q) #48, !noalias !592
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f
  resume { ptr, i32 } %i.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function6FnOnceTQL1_INtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderL0_EEEp6OutputuNtNtB4_6marker4SendEL_EEEB2g_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function6FnOnceTQL1_INtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderL0_EEEp6OutputuNtNtB4_6marker4SendEL_EEB1U_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function6FnOnceTQL1_INtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderL0_EEEp6OutputuNtNtB4_6marker4SendEL_EEB1U_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function6FnOnceTQL1_INtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderL0_EEEp6OutputuNtNtB4_6marker4SendEL_EEB1U_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, 536870913) %i.g) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function6FnOnceTQL1_INtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderL0_EEEp6OutputuNtNtB4_6marker4SendEL_EEB1U_.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTQL1_INtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderL0_EEEp6OutputuNtNtBS_6marker4SendEL_ENtNtBQ_4drop4Drop4dropB1H_.exit5.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !17, !invariant.load !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, 536870913) %i.m) #48
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTQL1_INtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderL0_EEEp6OutputuNtNtBS_6marker4SendEL_ENtNtBQ_4drop4Drop4dropB1H_.exit5.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTQL1_INtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderL0_EEEp6OutputuNtNtBS_6marker4SendEL_ENtNtBQ_4drop4Drop4dropB1H_.exit5.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs8frGy5WneL6_4fish(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, 536870913) %i.g) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !17, !invariant.load !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, 536870913) %i.m) #48
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish:bb.a

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !17, !invariant.load !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, 536870913) %i.l) #48
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, 536870913) %i.f) #48
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !17, !invariant.load !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, 536870913) %i.l) #48
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtB1f_8DebounceIBC_DG0_INtNtNtB4_3ops8function6FnOnceTQL1_INtNtNtB1j_6reader6reader6ReaderL0_EEEp6OutputuNtNtB4_6marker4SendEL_EE13perform_inner0EEB1j_(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.a = load ptr, ptr %.0.val, align 8, !alias.scope !602, !nonnull !10, !noundef !10
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !602
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBG_8DebounceINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function6FnOnceTQL1_INtNtNtBK_6reader6reader6ReaderL0_EEEp6OutputuNtNtB4_6marker4SendEL_EE13perform_inner0EBK_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataINtNtB7_5boxed3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTQL1_INtNtNtB1C_6reader6reader6ReaderL0_EEEp6OutputuNtNtB2T_6marker4SendEL_EEEE9drop_slowB1C_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.0.val) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBG_8DebounceINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function6FnOnceTQL1_INtNtNtBK_6reader6reader6ReaderL0_EEEp6OutputuNtNtB4_6marker4SendEL_EE13perform_inner0EBK_.exit unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBG_8DebounceINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function6FnOnceTQL1_INtNtNtBK_6reader6reader6ReaderL0_EEEp6OutputuNtNtB4_6marker4SendEL_EE13perform_inner0EBK_.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #48
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #48
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtB1f_8DebounceNtNtNtB1j_6reader6reader15HighlightResultE13perform_inner0EEB1j_(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.a = load ptr, ptr %.0.val, align 8, !alias.scope !612, !nonnull !10, !noundef !10
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !612
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBG_8DebounceNtNtNtBK_6reader6reader15HighlightResultE13perform_inner0EBK_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1C_6reader6reader15HighlightResultEEE9drop_slowB1C_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.0.val) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBG_8DebounceNtNtNtBK_6reader6reader15HighlightResultE13perform_inner0EBK_.exit unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBG_8DebounceNtNtNtBK_6reader6reader15HighlightResultE13perform_inner0EBK_.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #48
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #48
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtB1f_8DebounceNtNtNtB1j_6reader6reader20AutosuggestionResultE13perform_inner0EEB1j_(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.a = load ptr, ptr %.0.val, align 8, !alias.scope !622, !nonnull !10, !noundef !10
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !622
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBG_8DebounceNtNtNtBK_6reader6reader20AutosuggestionResultE13perform_inner0EBK_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1C_6reader6reader20AutosuggestionResultEEE9drop_slowB1C_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.0.val) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBG_8DebounceNtNtNtBK_6reader6reader20AutosuggestionResultE13perform_inner0EBK_.exit unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBG_8DebounceNtNtNtBK_6reader6reader20AutosuggestionResultE13perform_inner0EBK_.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #48
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #48
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNCNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB1i_7History31add_pending_with_file_detection0EEB1m_(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtBJ_7History31add_pending_with_file_detection0EBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 144, i64 noundef 8) #48
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 144, i64 noundef 8) #48
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNCNvNtCs8frGy5WneL6_4fish4exec20run_internal_process0EEB1g_(ptr nonnull captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtCs8frGy5WneL6_4fish4exec20run_internal_process0EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 8, i64 noundef 8) #48
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 8, i64 noundef 8) #48
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5, label %.lr.ph67

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit
  %.sroa.0.0.i66 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [224 x i8], ptr %i.a, i64 %.sroa.0.0.i66 ; 6 uses
  %i.f = add nuw i64 %.sroa.0.0.i66, 1            ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.g)
          to label %bb.c unwind label %bb.b, !inline_history !623

bb.b:                                             ; preds = %.lr.ph67
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #50
          to label %.body unwind label %bb.f, !inline_history !623

bb.c:                                             ; preds = %.lr.ph67
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !635, !nonnull !10, !noundef !10 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !635, !noundef !10 ; 6 uses
  %cond72 = icmp eq i64 %i.m, 0
  br i1 %cond72, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i: ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.m
  br i1 %i.n, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i
  %.sroa.0.0.i.i65 = phi i64 [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %.sroa.0.0.i.i65
  %i.p = add nuw i64 %.sroa.0.0.i.i65, 1          ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i unwind label %bb.d, !noalias !635, !inline_history !628

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i: ; preds = %.lr.ph69
  %i.q = add nuw i64 %.sroa.0.1.i.i68, 1          ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i, label %.lr.ph69

bb.d:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.m
  br i1 %i.t, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i
  %.sroa.0.1.i.i68 = phi i64 [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %.sroa.0.1.i.i68
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i unwind label %bb.e, !noalias !635, !inline_history !628

bb.e:                                             ; preds = %.lr.ph69
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !635, !inline_history !629
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i, %bb.d
  %i.w = mul nuw nsw i64 %i.m, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.w, i64 noundef 8) #48, !noalias !635, !inline_history !630
  br label %.body

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i
  %i.x = mul nuw nsw i64 %i.m, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.x, i64 noundef 8) #48, !noalias !635, !inline_history !630
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i

.body:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.s, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.y) #50
          to label %.body6 unwind label %bb.f, !inline_history !623

bb.f:                                             ; preds = %.body, %bb.b
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !623
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit unwind label %bb.h, !inline_history !631

bb.g:                                             ; preds = %.lr.ph71
  %i.ab = add nuw i64 %.sroa.0.1.i70, 1           ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.c
  br i1 %i.ac, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph71

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body6

.body6:                                           ; preds = %.body, %bb.h
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %.pn.i.i, %.body ]
  %i.ae = icmp eq i64 %i.f, %i.c
  br i1 %i.ae, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph71

.lr.ph71:                                         ; preds = %.body6, %bb.g
  %.sroa.0.1.i70 = phi i64 [ %i.ab, %bb.g ], [ %i.f, %.body6 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [224 x i8], ptr %i.a, i64 %.sroa.0.1.i70
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.af) #50
          to label %bb.g unwind label %bb.i, !inline_history !632

bb.i:                                             ; preds = %.lr.ph71
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !632
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.g, %.body6
  %i.ah = mul nuw nsw i64 %i.c, 224
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.ah, i64 noundef 8) #48
  resume { ptr, i32 } %eh.lpad-body7

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit
  %i.ai = mul nuw nsw i64 %i.c, 224
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.ai, i64 noundef 8) #48
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit
  %.sroa.0.0.i6 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.sroa.0.0.i6 ; 3 uses
  %i.f = add nuw i64 %.sroa.0.0.i6, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.g = getelementptr i8, ptr %i.e, i64 72
  %.val1.i = load i64, ptr %i.g, align 8, !alias.scope !640, !noundef !10 ; 2 uses
  %i.h = icmp eq i64 %.val1.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !640, !nonnull !10, !noundef !10
  %i.j = mul nuw nsw i64 %.val1.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef 4) #48, !noalias !640, !inline_history !638
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit unwind label %bb.c, !inline_history !638

bb.b:                                             ; preds = %.lr.ph8
  %i.l = add nuw i64 %.sroa.0.1.i7, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.c
  br i1 %i.m, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.f, %i.c
  br i1 %i.o, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.c, %bb.b
  %.sroa.0.1.i7 = phi i64 [ %i.l, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.sroa.0.1.i7
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p) #50
          to label %bb.b unwind label %bb.d, !inline_history !639

bb.d:                                             ; preds = %.lr.ph8
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !639
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.b, %bb.c
  %i.r = mul nuw nsw i64 %i.c, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.r, i64 noundef 8) #48
  resume { ptr, i32 } %i.n

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit
  %i.s = mul nuw nsw i64 %i.c, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef 8) #48
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit
  %.sroa.0.0.i20 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %.sroa.0.0.i20 ; 5 uses
  %i.f = add nuw i64 %.sroa.0.0.i20, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.g = getelementptr i8, ptr %i.e, i64 104
  %.val2.i.i = load i64, ptr %i.g, align 8, !alias.scope !650, !noundef !10 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !650, !nonnull !10, !noundef !10
  %i.j = mul nuw nsw i64 %.val2.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.j, i64 noundef 4) #48, !noalias !650
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i unwind label %bb.b, !inline_history !645

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) #50
          to label %.body6 unwind label %bb.c, !inline_history !645

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !645
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit unwind label %bb.e, !inline_history !646

bb.d:                                             ; preds = %.lr.ph22
  %i.p = add nuw i64 %.sroa.0.1.i21, 1            ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph22

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body6

.body6:                                           ; preds = %bb.b, %bb.e
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.l, %bb.b ]
  %i.s = icmp eq i64 %i.f, %i.c
  br i1 %i.s, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph22

.lr.ph22:                                         ; preds = %.body6, %bb.d
  %.sroa.0.1.i21 = phi i64 [ %i.p, %bb.d ], [ %i.f, %.body6 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %.sroa.0.1.i21
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.t) #50
          to label %bb.d unwind label %bb.f, !inline_history !647

bb.f:                                             ; preds = %.lr.ph22
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !647
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.d, %.body6
  %i.v = mul nuw nsw i64 %i.c, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.v, i64 noundef 8) #48
  resume { ptr, i32 } %eh.lpad-body7

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit
  %i.w = mul nuw nsw i64 %i.c, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.w, i64 noundef 8) #48
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6
  %.sroa.0.0.i7 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6 ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.0.i7
  %i.f = add nuw i64 %.sroa.0.0.i7, 1             ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6 unwind label %bb.b, !inline_history !651

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit: ; preds = %.lr.ph9
  %i.g = add nuw i64 %.sroa.0.1.i8, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph9

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit
  %.sroa.0.1.i8 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.1.i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit unwind label %bb.c, !inline_history !651

bb.c:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !652
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit, %bb.b
  %i.m = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.m, i64 noundef 8) #48
  resume { ptr, i32 } %i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6
  %i.n = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef 8) #48
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit5: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB7_3vec3VecBJ_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit5, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.0.i1
  %i.c = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.d = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.e = icmp eq i64 %i.d, %.8.val
  br i1 %i.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.d, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #50
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph3
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c, %bb.d
  %i.j = mul nuw nsw i64 %.8.val, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef 8) #48
  resume { ptr, i32 } %i.f

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.b
  %i.k = mul nuw nsw i64 %.8.val, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.k, i64 noundef 8) #48
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB7_3vec3VecBJ_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB7_3vec3VecBJ_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit5: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB4_7DropperNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.b = icmp eq i64 %i.d, %.8.val
  br i1 %i.b, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB4_7DropperNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph15
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i14, 1      ; 2 uses
  %i.h = icmp eq i64 %i.g, %.8.val
  br i1 %i.h, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.b ]
  %i.j = icmp eq i64 %i.d, %.8.val
  br i1 %i.j, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.d
  %.sroa.0.1.i.i14 = phi i64 [ %i.g, %bb.d ], [ %i.d, %.body.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i14
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #50
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.f:                                             ; preds = %.lr.ph15
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB4_7DropperNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1D_(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB4_7DropperNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB19_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %.8.val
  br i1 %i.b, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB4_7DropperNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB19_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.e = add nuw nsw i64 %.sroa.0.1.i.i2, 1       ; 2 uses
  %i.f = icmp eq i64 %i.e, %.8.val
  br i1 %i.f, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %.8.val
  br i1 %i.h, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #50
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph3
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB4_7DropperNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB19_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc2io4util5SplitINtNtNtBG_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !655, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEECs8frGy5WneL6_4fish.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !655, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #48, !noalias !655
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i = load i32, ptr %i.c, align 8, !range !28, !alias.scope !655, !noundef !10
  %i.d = tail call noundef i32 @close(i32 noundef %.val2.i) #48, !noalias !655 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DraincEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !658, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !658, !nonnull !10, !noundef !10
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8, !alias.scope !658
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8, !alias.scope !658
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !658, !noundef !10 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0               ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DraincENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !658, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !658, !noundef !10 ; 4 uses
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !658, !noundef !10 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8, !noalias !658
  br label %_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DraincENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !658, !nonnull !10, !noundef !10 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.j
  %i.s = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.q, i64 %i.s, i1 false), !noalias !658
  br label %bb.d

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DraincENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !658, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noalias !658, !noundef !10 ; 4 uses
  %i.x = icmp ult i64 %i.w, 2305843009213693952
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !658, !noundef !10 ; 2 uses
  %.not3.i.i9.i = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i9.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8, !noalias !658
  br label %_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DraincENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !658, !nonnull !10, !noundef !10 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.w
  %i.af = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr nonnull align 4 %i.ad, i64 %i.af, i1 false), !noalias !658
  br label %bb.h

_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DraincENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs8frGy5WneL6_4fish5input7binding16EventQueuePeekerNtNtNtBI_6reader6reader6ReaderEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !661, !noundef !10
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !661
  %i.g = icmp eq i64 %i.f, 0
  %or.cond.i = select i1 %i.d, i1 %i.g, i1 false, !prof !30
  br i1 %or.cond.i, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !661, !nonnull !10, !align !14, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !661
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  invoke void @_RINvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB9_5input5input16InputEventQueuer12insert_frontINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtBP_9CharEventEEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @656, ptr noundef nonnull inttoptr (i64 109 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @657) #53
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %.noexc, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #50
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !661
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1e_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1e_.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.h:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionNtNtCs1HV6ixfL8cZ_11fish_printf6locale6LocaleEEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10 ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !927
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !10, !align !14, !noundef !10
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish(ptr %.val2, ptr nonnull %.val3) #50
          to label %common.resume unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !10, !align !14, !noundef !10 ; 5 uses
  %i.k = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.k(ptr noundef nonnull %.val)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !17, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, 536870913) %i.p) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !17, !invariant.load !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, 536870913) %i.v) #48
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.q, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish.exit: ; preds = %bb.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i
  ret void

bb.h:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1B_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1B_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !934, !nonnull !10, !noundef !10 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !934, !noundef !10 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit unwind label %bb.b, !noalias !934, !inline_history !0

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit2, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1: ; preds = %bb.b
  %i.g = mul nuw nsw i64 %i.d, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.g, i64 noundef 8) #48, !noalias !934
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit2

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit2: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, %bb.b
  resume { ptr, i32 } %i.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit: ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit
  %i.i = mul nuw nsw i64 %i.d, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef 8) #48, !noalias !934
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val2 = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.d = mul nuw nsw i64 %.val2, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.d, i64 noundef 4) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit unwind label %bb.d, !inline_history !935

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !inline_history !935
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !940, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !940, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %.sroa.0.0.i3 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.0.i3
  %i.f = add nuw i64 %.sroa.0.0.i3, 1             ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i unwind label %bb.b, !noalias !940, !inline_history !938

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i: ; preds = %.lr.ph5
  %i.g = add nuw i64 %.sroa.0.1.i4, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph5

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i
  %.sroa.0.1.i4 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.1.i4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i unwind label %bb.c, !noalias !940, !inline_history !938

bb.c:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !940, !inline_history !939
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i, %bb.b
  %i.m = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.m, i64 noundef 8) #48, !noalias !940
  resume { ptr, i32 } %i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %i.n = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef 8) #48, !noalias !940
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.a)
          to label %bb.c unwind label %bb.b, !inline_history !941

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #50
          to label %.body unwind label %bb.f, !inline_history !941

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !950, !nonnull !10, !noundef !10 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !950, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.g, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i: ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.g
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %.sroa.0.0.i5 = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.0.i5
  %i.j = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i unwind label %bb.d, !noalias !950, !inline_history !946

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i: ; preds = %.lr.ph7
  %i.k = add nuw i64 %.sroa.0.1.i6, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.g
  br i1 %i.l, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.g
  br i1 %i.n, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i
  %.sroa.0.1.i6 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i unwind label %bb.e, !noalias !950, !inline_history !946

bb.e:                                             ; preds = %.lr.ph7
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !950, !inline_history !947
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i, %bb.d
  %i.q = mul nuw nsw i64 %i.g, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.q, i64 noundef 8) #48, !noalias !950
  br label %.body

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %i.r = mul nuw nsw i64 %i.g, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.r, i64 noundef 8) #48, !noalias !950
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit

.body:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.m, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.s) #50
          to label %bb.g unwind label %bb.f, !inline_history !941

bb.f:                                             ; preds = %.body, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !941
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %.pn.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.u), !inline_history !941
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !961, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !961, !nonnull !10, !noundef !10
  %i.d = mul nuw nsw i64 %.val2.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.d, i64 noundef 4) #48, !noalias !961
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e)
          to label %bb.c unwind label %bb.b, !inline_history !32

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #50
          to label %.body unwind label %bb.g, !inline_history !32

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !964, !nonnull !10, !noundef !10 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !964, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.k, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.l = icmp eq i64 %i.n, %i.k
  br i1 %i.l, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %.sroa.0.0.i9 = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %.sroa.0.0.i9 ; 3 uses
  %i.n = add nuw i64 %.sroa.0.0.i9, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965), !noalias !964
  %i.o = getelementptr i8, ptr %i.m, i64 72
  %.val1.i.i6 = load i64, ptr %i.o, align 8, !alias.scope !966, !noalias !964, !noundef !10 ; 2 uses
  %i.p = icmp eq i64 %.val1.i.i6, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.val.i.i5 = load ptr, ptr %i.q, align 8, !alias.scope !966, !noalias !964, !nonnull !10, !noundef !10
  %i.r = mul nuw nsw i64 %.val1.i.i6, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i5, i64 noundef %i.r, i64 noundef 4) #48, !noalias !967, !inline_history !1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i unwind label %bb.e, !noalias !964, !inline_history !2

bb.d:                                             ; preds = %.lr.ph11
  %i.t = add nuw i64 %.sroa.0.1.i10, 1            ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i3, label %.lr.ph11

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = icmp eq i64 %i.n, %i.k
  br i1 %i.w, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i3, label %.lr.ph11

.lr.ph11:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i10 = phi i64 [ %i.t, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %.sroa.0.1.i10
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.x) #50
          to label %bb.d unwind label %bb.f, !noalias !964, !inline_history !1

bb.f:                                             ; preds = %.lr.ph11
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !964, !inline_history !1
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i3: ; preds = %bb.d, %bb.e
  %i.z = mul nuw nsw i64 %i.k, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.z, i64 noundef 8) #48, !noalias !964
  br label %.body

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %i.aa = mul nuw nsw i64 %i.k, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.aa, i64 noundef 8) #48, !noalias !964
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !32
  unreachable

.body:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i3, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.v, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i3 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_.exit unwind label %bb.h, !inline_history !968

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ad), !inline_history !968
  ret void

bb.h:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1 = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.d = mul nuw nsw i64 %.val1, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.d, i64 noundef 4) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !977, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !977, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %.sroa.0.0.i3 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.sroa.0.0.i3 ; 3 uses
  %i.f = add nuw i64 %.sroa.0.0.i3, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978), !noalias !977
  %i.g = getelementptr i8, ptr %i.e, i64 72
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !979, !noalias !977, !noundef !10 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !979, !noalias !977, !nonnull !10, !noundef !10
  %i.j = mul nuw nsw i64 %.val1.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.j, i64 noundef 4) #48, !noalias !980
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i unwind label %.body.i, !noalias !977, !inline_history !975

bb.b:                                             ; preds = %.lr.ph5
  %i.l = add nuw i64 %.sroa.0.1.i4, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.c
  br i1 %i.m, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph5

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.f, %i.c
  br i1 %i.o, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph5

.lr.ph5:                                          ; preds = %.body.i, %bb.b
  %.sroa.0.1.i4 = phi i64 [ %i.l, %bb.b ], [ %i.f, %.body.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.sroa.0.1.i4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p) #50
          to label %bb.b unwind label %bb.c, !noalias !977, !inline_history !976

bb.c:                                             ; preds = %.lr.ph5
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !977, !inline_history !976
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1: ; preds = %bb.b, %.body.i
  %i.r = mul nuw nsw i64 %i.c, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.r, i64 noundef 8) #48, !noalias !977
  resume { ptr, i32 } %i.n

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %i.s = mul nuw nsw i64 %i.c, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef 8) #48, !noalias !977
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast25ArgumentOrRedirectionListEBF_(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEEB1f_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i32, ptr %i.b, align 8, !range !33, !alias.scope !983, !noundef !10
  %i.d = icmp eq i32 %.val8.i.i, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val9.i.i = load ptr, ptr %i.e, align 8, !alias.scope !983, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef 32, i64 noundef 4) #48, !noalias !983
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.f = icmp eq i64 %i.c, %.8.val
  br i1 %i.f, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i
  %i.g = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.g, i64 noundef 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEEB1f_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEEB1f_.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !994, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !994, !nonnull !10, !noundef !10
  %i.d = mul nuw nsw i64 %.val2.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.d, i64 noundef 4) #48, !noalias !994
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit unwind label %bb.b, !inline_history !32

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #50
          to label %common.resume unwind label %bb.c, !inline_history !32

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !32
  unreachable

common.resume:                                    ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.w, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !997, !nonnull !10, !noundef !10 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !997, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.l, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.m = icmp eq i64 %i.o, %i.l
  br i1 %i.m, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %.sroa.0.0.i5 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %.sroa.0.0.i5 ; 3 uses
  %i.o = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998), !noalias !997
  %i.p = getelementptr i8, ptr %i.n, i64 72
  %.val1.i.i4 = load i64, ptr %i.p, align 8, !alias.scope !999, !noalias !997, !noundef !10 ; 2 uses
  %i.q = icmp eq i64 %.val1.i.i4, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.val.i.i3 = load ptr, ptr %i.r, align 8, !alias.scope !999, !noalias !997, !nonnull !10, !noundef !10
  %i.s = mul nuw nsw i64 %.val1.i.i4, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i3, i64 noundef %i.s, i64 noundef 4) #48, !noalias !1000, !inline_history !1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i unwind label %bb.e, !noalias !997, !inline_history !2

bb.d:                                             ; preds = %.lr.ph7
  %i.u = add nuw i64 %.sroa.0.1.i6, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.l
  br i1 %i.v, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph7

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = icmp eq i64 %i.o, %i.l
  br i1 %i.x, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i6 = phi i64 [ %i.u, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.y) #50
          to label %bb.d unwind label %bb.f, !noalias !997, !inline_history !1

bb.f:                                             ; preds = %.lr.ph7
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !997, !inline_history !1
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1: ; preds = %bb.d, %bb.e
  %i.aa = mul nuw nsw i64 %i.l, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.aa, i64 noundef 8) #48, !noalias !997
  br label %common.resume

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %i.ab = mul nuw nsw i64 %i.l, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.ab, i64 noundef 8) #48, !noalias !997
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1009, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1009, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit.i: ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit.i
  %.sroa.0.0.i19 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %.sroa.0.0.i19 ; 5 uses
  %i.f = add nuw i64 %.sroa.0.0.i19, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.g = getelementptr i8, ptr %i.e, i64 104
  %.val2.i4 = load i64, ptr %i.g, align 8, !alias.scope !1010, !noalias !1009, !noundef !10 ; 2 uses
  %i.h = icmp eq i64 %.val2.i4, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val.i3 = load ptr, ptr %i.i, align 8, !alias.scope !1010, !noalias !1009, !nonnull !10, !noundef !10
  %i.j = mul nuw nsw i64 %.val2.i4, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3, i64 noundef %i.j, i64 noundef 4) #48, !noalias !1011, !inline_history !1005
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
          to label %bb.c unwind label %bb.b, !noalias !1009, !inline_history !1005

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.body5 unwind label %bb.d, !noalias !1009, !inline_history !1006

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit.i unwind label %bb.e, !inline_history !1005

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1009, !inline_history !1005
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i: ; preds = %.lr.ph21
  %i.p = add nuw i64 %.sroa.0.1.i20, 1            ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph21

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body5

.body5:                                           ; preds = %bb.b, %bb.e
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.l, %bb.b ]
  %i.s = icmp eq i64 %i.f, %i.c
  br i1 %i.s, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph21

.lr.ph21:                                         ; preds = %.body5, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i
  %.sroa.0.1.i20 = phi i64 [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i ], [ %i.f, %.body5 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %.sroa.0.1.i20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i unwind label %bb.f, !noalias !1009, !inline_history !1007

bb.f:                                             ; preds = %.lr.ph21
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1009, !inline_history !1008
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i, %.body5
  %i.w = mul nuw nsw i64 %i.c, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.w, i64 noundef 8) #48, !noalias !1009
  resume { ptr, i32 } %eh.lpad-body6

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit.i
  %i.x = mul nuw nsw i64 %i.c, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.x, i64 noundef 8) #48, !noalias !1009
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast6ExtrasEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #50
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast6ExtrasEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast6ExtrasEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #50
          to label %.body3 unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body3 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit5 unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body3:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #50
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit5: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit7 unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit5
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body3, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.j ], [ %.pn, %.body3 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit7: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit5
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.l:                                             ; preds = %.body3, %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1020, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1020, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit.i
  %.sroa.0.0.i27 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.0.i27 ; 7 uses
  %i.f = add nuw i64 %.sroa.0.0.i27, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.g = getelementptr i8, ptr %i.e, i64 104
  %.val2.i4 = load i64, ptr %i.g, align 8, !alias.scope !1021, !noalias !1020, !noundef !10 ; 2 uses
  %i.h = icmp eq i64 %.val2.i4, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val.i3 = load ptr, ptr %i.i, align 8, !alias.scope !1021, !noalias !1020, !nonnull !10, !noundef !10
  %i.j = mul nuw nsw i64 %.val2.i4, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3, i64 noundef %i.j, i64 noundef 4) #48, !noalias !1022, !inline_history !1016
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k)
          to label %bb.c unwind label %bb.b, !noalias !1020, !inline_history !1016

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.body5 unwind label %bb.d, !noalias !1020, !inline_history !1017

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit unwind label %bb.e, !inline_history !1016

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1020, !inline_history !1016
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body5

.body5:                                           ; preds = %bb.b, %bb.e
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.l, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.q) #50
          to label %.body.i unwind label %bb.f, !noalias !1020, !inline_history !1018

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit.i unwind label %bb.h, !noalias !1020, !inline_history !1018

bb.f:                                             ; preds = %.body5
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1020, !inline_history !1018
  unreachable

bb.g:                                             ; preds = %.lr.ph29
  %i.t = add nuw i64 %.sroa.0.1.i28, 1            ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.c
  br i1 %i.u, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph29

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body5, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.h ], [ %eh.lpad-body6, %.body5 ]
  %i.w = icmp eq i64 %i.f, %i.c
  br i1 %i.w, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1, label %.lr.ph29

.lr.ph29:                                         ; preds = %.body.i, %bb.g
  %.sroa.0.1.i28 = phi i64 [ %i.t, %bb.g ], [ %i.f, %.body.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.1.i28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.x) #50
          to label %bb.g unwind label %bb.i, !noalias !1020, !inline_history !1019

bb.i:                                             ; preds = %.lr.ph29
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1020, !inline_history !1019
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1: ; preds = %bb.g, %.body.i
  %i.z = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.z, i64 noundef 8) #48, !noalias !1020
  resume { ptr, i32 } %eh.lpad-body.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit.i
  %i.aa = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.aa, i64 noundef 8) #48, !noalias !1020
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.d = mul nuw nsw i64 %.val1, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.d, i64 noundef 4) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1029, !nonnull !10, !noundef !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1029, !noundef !10 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.f, i64 noundef %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit unwind label %bb.b, !noalias !1029, !inline_history !0

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit3, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i2

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i2: ; preds = %bb.b
  %i.k = mul nuw nsw i64 %i.h, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8) #48, !noalias !1029
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit3

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit3: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i2, %bb.b
  resume { ptr, i32 } %i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit
  %i.m = mul nuw nsw i64 %i.h, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8) #48, !noalias !1029
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !34, !noundef !10 ; 2 uses
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = select i1 %i.b, i64 %i.d, i64 0
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.g
    i64 1, label %bb.i
    i64 2, label %bb.k
    i64 3, label %bb.w
    i64 4, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1118, !nonnull !10, !noundef !10 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1119, !noalias !1118, !nonnull !10, !noundef !10 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1119, !noalias !1118, !noundef !10 ; 6 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit89
  %.sroa.0.0.i.i94 = phi i64 [ %i.n, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit89 ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.0.0.i.i94 ; 4 uses
  %i.n = add nuw i64 %.sroa.0.0.i.i94, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120), !noalias !1118
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val1.i.i61 = load i64, ptr %i.o, align 8, !alias.scope !1120, !noalias !1121, !noundef !10 ; 2 uses
  %i.p = icmp eq i64 %.val1.i.i61, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.val.i.i60 = load ptr, ptr %i.q, align 8, !alias.scope !1120, !noalias !1121, !nonnull !10, !noundef !10
  %i.r = mul nuw nsw i64 %.val1.i.i61, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i60, i64 noundef %i.r, i64 noundef 4) #48, !noalias !1122, !inline_history !1036
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123), !noalias !1118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124), !noalias !1118
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1125, !noalias !1121, !nonnull !10, !noundef !10 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1125, !noalias !1121, !noundef !10 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_.exit.i unwind label %bb.c, !noalias !1126, !inline_history !1041

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit91, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i90

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i90: ; preds = %bb.c
  %i.y = mul nuw nsw i64 %i.v, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.y, i64 noundef 8) #48, !noalias !1126
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit91

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit91: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i90, %bb.c
  %i.z = icmp eq i64 %i.n, %i.k
  br i1 %i.z, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph181

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit89, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i88

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i88: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_.exit.i
  %i.ab = mul nuw nsw i64 %i.v, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.ab, i64 noundef 8) #48, !noalias !1126
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit89

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit89: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_.exit.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i88
  %i.ac = icmp eq i64 %i.n, %i.k
  br i1 %i.ac, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph181
  %i.ad = add nuw i64 %.sroa.0.1.i.i180, 1        ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.k
  br i1 %i.ae, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph181

.lr.ph181:                                        ; preds = %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit91, %bb.d
  %.sroa.0.1.i.i180 = phi i64 [ %i.ad, %bb.d ], [ %i.n, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit91 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.0.1.i.i180
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.af) #50
          to label %bb.d unwind label %bb.e, !noalias !1121, !inline_history !1042

bb.e:                                             ; preds = %.lr.ph181
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1121, !inline_history !1042
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit91
  %i.ah = shl nuw nsw i64 %i.k, 6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.ah, i64 noundef 8) #48, !noalias !1121, !inline_history !1043
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.val2.i = load ptr, ptr %i.ai, align 8, !alias.scope !1127, !noalias !1118, !nonnull !10, !noundef !10
  %i.aj = getelementptr i8, ptr %i.g, i64 72
  %.val3.i = load i64, ptr %i.aj, align 8, !alias.scope !1127, !noalias !1118, !noundef !10
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast25ArgumentOrRedirectionListEBF_(ptr nonnull %.val2.i, i64 %.val3.i) #50, !noalias !1118, !inline_history !1046
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 96, i64 noundef 8) #48, !noalias !1118
  br label %common.resume

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit89
  %i.ak = shl nuw nsw i64 %i.k, 6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.ak, i64 noundef 8) #48, !noalias !1121, !inline_history !1043
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i: ; preds = %bb.b, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.val.i10 = load ptr, ptr %i.al, align 8, !alias.scope !1127, !noalias !1118, !nonnull !10, !noundef !10 ; 2 uses
  %i.am = getelementptr i8, ptr %i.g, i64 72
  %.val1.i11 = load i64, ptr %i.am, align 8, !alias.scope !1127, !noalias !1118, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128), !noalias !1118
  %i.an = icmp eq i64 %.val1.i11, 0
  br i1 %i.an, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast15SwitchStatementEEB1e_.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i16
  %.sroa.0.011.i.i.i.i13 = phi i64 [ %i.ap, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i16 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.val.i10, i64 %.sroa.0.011.i.i.i.i13 ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.0.011.i.i.i.i13, 1 ; 2 uses
  %.val8.i.i.i.i14 = load i32, ptr %i.ao, align 8, !range !33, !alias.scope !1128, !noalias !1118, !noundef !10
  %i.aq = icmp eq i32 %.val8.i.i.i.i14, 0
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i16, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i12
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %.val9.i.i.i.i15 = load ptr, ptr %i.ar, align 8, !alias.scope !1128, !noalias !1118, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i15, i64 noundef 32, i64 noundef 4) #48, !noalias !1129, !inline_history !1046
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i16

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i16: ; preds = %bb.f, %.lr.ph.i.i.i.i12
  %i.as = icmp eq i64 %i.ap, %.val1.i11
  br i1 %i.as, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i17, label %.lr.ph.i.i.i.i12

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i17: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i16
  %i.at = shl nuw nsw i64 %.val1.i11, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10, i64 noundef %i.at, i64 noundef 8) #48, !noalias !1118, !inline_history !1046
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast15SwitchStatementEEB1e_.exit

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71, %bb.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i ], [ %i.bk, %bb.j ], [ %.pn.i, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71 ], [ %i.ds, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79 ], [ %.pn2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast15SwitchStatementEEB1e_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i17, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 96, i64 noundef 8) #48, !noalias !1118
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

bb.g:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.au, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load i64, ptr %i.av, align 8, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.aw = icmp eq i64 %.val1, 0
  br i1 %i.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.ay, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i32, ptr %i.ax, align 8, !range !33, !alias.scope !1130, !noundef !10
  %i.az = icmp eq i32 %.val8.i.i.i.i, 0
  br i1 %i.az, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr i8, ptr %i.ax, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !1130, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef 32, i64 noundef 4) #48, !noalias !1130
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.bb = icmp eq i64 %i.ay, %.val1
  br i1 %i.bb, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, label %.lr.ph.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i
  %i.bc = shl nuw nsw i64 %.val1, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bc, i64 noundef 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

bb.i:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1131, !nonnull !10, !noundef !10 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.bf = getelementptr i8, ptr %i.be, i64 88
  %.val1.i19 = load i64, ptr %i.bf, align 8, !alias.scope !1132, !noalias !1131, !noundef !10 ; 2 uses
  %i.bg = icmp eq i64 %.val1.i19, 0
  br i1 %i.bg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %.val.i18 = load ptr, ptr %i.bh, align 8, !alias.scope !1132, !noalias !1131, !nonnull !10, !noundef !10
  %i.bi = mul nuw nsw i64 %.val1.i19, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i18, i64 noundef %i.bi, i64 noundef 4) #48, !noalias !1133, !inline_history !1055
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast12NotStatementEEB1e_.exit unwind label %bb.j, !inline_history !1055

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef 96, i64 noundef 8) #48, !noalias !1131
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast12NotStatementEEB1e_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef 96, i64 noundef 8) #48, !noalias !1131
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

bb.k:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !1134, !nonnull !10, !noundef !10 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136), !noalias !1134
  %i.bo = load i32, ptr %i.bn, align 8, !range !1137, !alias.scope !1138, !noalias !1134, !noundef !10 ; 3 uses
  %i.bp = icmp ne i32 %i.bo, 4
  tail call void @llvm.assume(i1 %i.bp), !noalias !1134
  %i.bq = add nsw i32 %i.bo, -2
  %.inv.i.i = icmp samesign ult i32 %i.bo, 2
  %narrow.i.i = select i1 %.inv.i.i, i32 2, i32 %i.bq
  switch i32 %narrow.i.i, label %bb.l [
    i32 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr i8, ptr %i.bm, i64 64
  %.val1.i.i = load i64, ptr %i.br, align 8, !alias.scope !1138, !noalias !1134, !noundef !10 ; 2 uses
  %i.bs = icmp eq i64 %.val1.i.i, 0
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i.sink.split

bb.m:                                             ; preds = %bb.k
  %i.bt = getelementptr i8, ptr %i.bm, i64 96
  %.val3.i.i = load i64, ptr %i.bt, align 8, !alias.scope !1138, !noalias !1134, !noundef !10 ; 2 uses
  %i.bu = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i.sink.split

bb.n:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.bv)
          to label %bb.p unwind label %bb.o, !noalias !1134, !inline_history !1062

bb.o:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 192
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bx)
          to label %.body72 unwind label %bb.s, !noalias !1134, !inline_history !1063

bb.p:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !1139, !nonnull !10, !noundef !10 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 200
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1139, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.cb, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i, label %.lr.ph177

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6.i: ; preds = %.lr.ph177
  %i.cc = icmp eq i64 %i.ce, %i.cb
  br i1 %i.cc, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i121, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6.i
  %.sroa.0.0.i.i176 = phi i64 [ %i.ce, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6.i ], [ 0, %bb.p ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [160 x i8], ptr %i.bz, i64 %.sroa.0.0.i.i176
  %i.ce = add nuw i64 %.sroa.0.0.i.i176, 1        ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.cd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6.i unwind label %bb.q, !noalias !1139, !inline_history !1066

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i: ; preds = %.lr.ph179
  %i.cf = add nuw i64 %.sroa.0.1.i.i119178, 1     ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i120, label %.lr.ph179

bb.q:                                             ; preds = %.lr.ph177
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = icmp eq i64 %i.ce, %i.cb
  br i1 %i.ci, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i120, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %.sroa.0.1.i.i119178 = phi i64 [ %i.cf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i ], [ %i.ce, %bb.q ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [160 x i8], ptr %i.bz, i64 %.sroa.0.1.i.i119178
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.cj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i unwind label %bb.r, !noalias !1139, !inline_history !1066

bb.r:                                             ; preds = %.lr.ph179
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1139, !inline_history !1067
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i120: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i, %bb.q
  %i.cl = mul nuw nsw i64 %i.cb, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.cl, i64 noundef 8) #48, !noalias !1139, !inline_history !1068
  br label %.body72

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i121: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit6.i
  %i.cm = mul nuw nsw i64 %i.cb, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.cm, i64 noundef 8) #48, !noalias !1139, !inline_history !1068
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i

bb.s:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1134, !inline_history !1062
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i.sink.split: ; preds = %bb.m, %bb.l
  %.sink118 = phi i64 [ 56, %bb.l ], [ 88, %bb.m ]
  %.val3.i.i.sink = phi i64 [ %.val1.i.i, %bb.l ], [ %.val3.i.i, %bb.m ]
  %i.co = getelementptr i8, ptr %i.bm, i64 %.sink118
  %.val2.i.i = load ptr, ptr %i.co, align 8, !alias.scope !1138, !noalias !1134, !nonnull !10, !noundef !10
  %i.cp = mul nuw nsw i64 %.val3.i.i.sink, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.cp, i64 noundef 4) #48, !noalias !1140
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i: ; preds = %bb.p, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i121, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i.sink.split, %bb.m, %bb.l, %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141), !noalias !1134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142), !noalias !1134
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !1143, !noalias !1134, !nonnull !10, !noundef !10 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 216
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !1143, !noalias !1134, !noundef !10 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef %i.ct)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i unwind label %bb.t, !noalias !1144, !inline_history !1073

.body72:                                          ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i120, %bb.o
  %eh.lpad-body73 = phi { ptr, i32 } [ %i.bw, %bb.o ], [ %i.ch, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i120 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.cu) #50
          to label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71 unwind label %bb.v, !noalias !1134, !inline_history !1074

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = icmp eq i64 %i.ct, 0
  br i1 %i.cw, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i70

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i70: ; preds = %bb.t
  %i.cx = mul nuw nsw i64 %i.ct, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cr, i64 noundef %i.cx, i64 noundef 8) #48, !noalias !1144
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i
  %i.cy = icmp eq i64 %i.ct, 0
  br i1 %i.cy, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i
  %i.cz = mul nuw nsw i64 %i.ct, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cr, i64 noundef %i.cz, i64 noundef 8) #48, !noalias !1144
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.bm, i64 224
  %.val.i21 = load ptr, ptr %i.da, align 8, !alias.scope !1135, !noalias !1134, !nonnull !10, !noundef !10 ; 2 uses
  %i.db = getelementptr i8, ptr %i.bm, i64 232
  %.val2.i22 = load i64, ptr %i.db, align 8, !alias.scope !1135, !noalias !1134, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145), !noalias !1134
  %i.dc = icmp eq i64 %.val2.i22, 0
  br i1 %i.dc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BlockStatementEEB1e_.exit, label %.lr.ph.i.i.i.i23

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71: ; preds = %bb.t, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i70, %.body72
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body73, %.body72 ], [ %i.cv, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i70 ], [ %i.cv, %bb.t ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 224
  %.val3.i20 = load ptr, ptr %i.dd, align 8, !alias.scope !1135, !noalias !1134, !nonnull !10, !noundef !10
  %i.de = getelementptr i8, ptr %i.bm, i64 232
  %.val4.i = load i64, ptr %i.de, align 8, !alias.scope !1135, !noalias !1134, !noundef !10
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast25ArgumentOrRedirectionListEBF_(ptr nonnull %.val3.i20, i64 %.val4.i) #50, !noalias !1134, !inline_history !1074
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 240, i64 noundef 8) #48, !noalias !1134
  br label %common.resume

.lr.ph.i.i.i.i23:                                 ; preds = %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i27
  %.sroa.0.011.i.i.i.i24 = phi i64 [ %i.dg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i27 ], [ 0, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit ] ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.val.i21, i64 %.sroa.0.011.i.i.i.i24 ; 2 uses
  %i.dg = add nuw nsw i64 %.sroa.0.011.i.i.i.i24, 1 ; 2 uses
  %.val8.i.i.i.i25 = load i32, ptr %i.df, align 8, !range !33, !alias.scope !1145, !noalias !1134, !noundef !10
  %i.dh = icmp eq i32 %.val8.i.i.i.i25, 0
  br i1 %i.dh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i27, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i23
  %i.di = getelementptr i8, ptr %i.df, i64 8
  %.val9.i.i.i.i26 = load ptr, ptr %i.di, align 8, !alias.scope !1145, !noalias !1134, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i26, i64 noundef 32, i64 noundef 4) #48, !noalias !1146, !inline_history !1074
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i27

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i27: ; preds = %bb.u, %.lr.ph.i.i.i.i23
  %i.dj = icmp eq i64 %i.dg, %.val2.i22
  br i1 %i.dj, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i28, label %.lr.ph.i.i.i.i23

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i28: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i27
  %i.dk = shl nuw nsw i64 %.val2.i22, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i21, i64 noundef %i.dk, i64 noundef 8) #48, !noalias !1134, !inline_history !1074
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BlockStatementEEB1e_.exit

bb.v:                                             ; preds = %.body72
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1134, !inline_history !1074
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BlockStatementEEB1e_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i28, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 240, i64 noundef 8) #48, !noalias !1134
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

bb.w:                                             ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !1147, !nonnull !10, !noundef !10 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149), !noalias !1147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150), !noalias !1147
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !1151, !noalias !1147, !nonnull !10, !noundef !10 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !1151, !noalias !1147, !noundef !10 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.dp, i64 noundef %i.dr)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i35 unwind label %bb.x, !noalias !1152, !inline_history !1085

bb.x:                                             ; preds = %bb.w
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i78

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i78: ; preds = %bb.x
  %i.du = mul nuw nsw i64 %i.dr, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %i.du, i64 noundef 8) #48, !noalias !1152
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i78, %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %.val2.i33 = load ptr, ptr %i.dv, align 8, !alias.scope !1148, !noalias !1147, !nonnull !10, !noundef !10
  %i.dw = getelementptr i8, ptr %i.dn, i64 56
  %.val3.i34 = load i64, ptr %i.dw, align 8, !alias.scope !1148, !noalias !1147, !noundef !10
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast25ArgumentOrRedirectionListEBF_(ptr nonnull %.val2.i33, i64 %.val3.i34) #50, !noalias !1153, !inline_history !1086
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef 64, i64 noundef 8) #48, !noalias !1147
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i35: ; preds = %bb.w
  %i.dx = icmp eq i64 %i.dr, 0
  br i1 %i.dx, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit77, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i76

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i76: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i35
  %i.dy = mul nuw nsw i64 %i.dr, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %i.dy, i64 noundef 8) #48, !noalias !1152
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit77

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit77: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i35, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i76
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %.val.i38 = load ptr, ptr %i.dz, align 8, !alias.scope !1148, !noalias !1147, !nonnull !10, !noundef !10 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dn, i64 56
  %.val1.i39 = load i64, ptr %i.ea, align 8, !alias.scope !1148, !noalias !1147, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154), !noalias !1147
  %i.eb = icmp eq i64 %.val1.i39, 0
  br i1 %i.eb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BraceStatementEEB1e_.exit, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit77, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i44
  %.sroa.0.011.i.i.i.i41 = phi i64 [ %i.ed, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i44 ], [ 0, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit77 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %.val.i38, i64 %.sroa.0.011.i.i.i.i41 ; 2 uses
  %i.ed = add nuw nsw i64 %.sroa.0.011.i.i.i.i41, 1 ; 2 uses
  %.val8.i.i.i.i42 = load i32, ptr %i.ec, align 8, !range !33, !alias.scope !1154, !noalias !1153, !noundef !10
  %i.ee = icmp eq i32 %.val8.i.i.i.i42, 0
  br i1 %i.ee, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i44, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.ef = getelementptr i8, ptr %i.ec, i64 8
  %.val9.i.i.i.i43 = load ptr, ptr %i.ef, align 8, !alias.scope !1154, !noalias !1153, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i43, i64 noundef 32, i64 noundef 4) #48, !noalias !1155, !inline_history !1086
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i44

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i44: ; preds = %bb.y, %.lr.ph.i.i.i.i40
  %i.eg = icmp eq i64 %i.ed, %.val1.i39
  br i1 %i.eg, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i45, label %.lr.ph.i.i.i.i40

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i45: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i44
  %i.eh = shl nuw nsw i64 %.val1.i39, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i38, i64 noundef %i.eh, i64 noundef 8) #48, !noalias !1153, !inline_history !1086
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BraceStatementEEB1e_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BraceStatementEEB1e_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i45, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit77
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef 64, i64 noundef 8) #48, !noalias !1147
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

bb.z:                                             ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !1156, !nonnull !10, !noundef !10 ; 18 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.ek)
          to label %bb.ab unwind label %bb.aa, !noalias !1156, !inline_history !1091

bb.aa:                                            ; preds = %bb.z
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 176
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.em) #50
          to label %.body126 unwind label %bb.ae, !noalias !1156, !inline_history !1091

bb.ab:                                            ; preds = %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158), !noalias !1156
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !1159, !noalias !1156, !nonnull !10, !noundef !10 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 184
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !1159, !noalias !1156, !noundef !10 ; 6 uses
  %cond182 = icmp eq i64 %i.eq, 0
  br i1 %cond182, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit, label %.lr.ph173

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i: ; preds = %.lr.ph173
  %i.er = icmp eq i64 %i.et, %i.eq
  br i1 %i.er, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i125, label %.lr.ph173

.lr.ph173:                                        ; preds = %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i
  %.sroa.0.0.i.i122172 = phi i64 [ %i.et, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i ], [ 0, %bb.ab ] ; 2 uses
  %i.es = getelementptr inbounds nuw [160 x i8], ptr %i.eo, i64 %.sroa.0.0.i.i122172
  %i.et = add nuw i64 %.sroa.0.0.i.i122172, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.es)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i unwind label %bb.ac, !noalias !1160, !inline_history !1096

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i: ; preds = %.lr.ph175
  %i.eu = add nuw i64 %.sroa.0.1.i.i123174, 1     ; 2 uses
  %i.ev = icmp eq i64 %i.eu, %i.eq
  br i1 %i.ev, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i124, label %.lr.ph175

bb.ac:                                            ; preds = %.lr.ph173
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = icmp eq i64 %i.et, %i.eq
  br i1 %i.ex, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i124, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i
  %.sroa.0.1.i.i123174 = phi i64 [ %i.eu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i ], [ %i.et, %bb.ac ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [160 x i8], ptr %i.eo, i64 %.sroa.0.1.i.i123174
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ey)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i unwind label %bb.ad, !noalias !1160, !inline_history !1096

bb.ad:                                            ; preds = %.lr.ph175
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1160, !inline_history !1097
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i124: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i, %bb.ac
  %i.fa = mul nuw nsw i64 %i.eq, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.fa, i64 noundef 8) #48, !noalias !1160, !inline_history !1098
  br label %.body126

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i125: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i
  %i.fb = mul nuw nsw i64 %i.eq, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.fb, i64 noundef 8) #48, !noalias !1160, !inline_history !1098
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit

.body126:                                         ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i124, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.el, %bb.aa ], [ %i.ew, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i124 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ej, i64 192
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.fc) #50
          to label %.body.i unwind label %bb.ae, !noalias !1156, !inline_history !1091

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit: ; preds = %bb.ab, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i125
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 192
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.fd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i unwind label %bb.af, !noalias !1156, !inline_history !1091

bb.ae:                                            ; preds = %.body126, %bb.aa
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1156, !inline_history !1091
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ej, i64 272
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit7.i unwind label %bb.ah, !noalias !1156, !inline_history !1099

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body126, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fg, %bb.af ], [ %.pn.i.i, %.body126 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ej, i64 272
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i unwind label %bb.al, !noalias !1156, !inline_history !1099

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit7.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ej, i64 224
  %i.fj = load i32, ptr %i.fi, align 8, !range !1161, !alias.scope !1162, !noalias !1156, !noundef !10
  %i.fk = icmp eq i32 %i.fj, 2
  br i1 %i.fk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit9.i, label %bb.ai

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i: ; preds = %.body.i, %bb.ah
  %.pn.i48 = phi { ptr, i32 } [ %i.fo, %bb.ah ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ej, i64 224 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8, !range !1161, !alias.scope !1163, !noalias !1156, !noundef !10
  %i.fn = icmp eq i32 %i.fm, 2
  br i1 %i.fn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i unwind label %bb.al, !noalias !1156, !inline_history !1106

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i

bb.ai:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit7.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ej, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165), !noalias !1156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166), !noalias !1156
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !1167, !noalias !1156, !nonnull !10, !noundef !10 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ej, i64 264
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !1167, !noalias !1156, !noundef !10 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.fq, i64 noundef %i.fs)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i82 unwind label %bb.aj, !noalias !1168, !inline_history !1113

bb.aj:                                            ; preds = %bb.ai
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = icmp eq i64 %i.fs, 0
  br i1 %i.fu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i: ; preds = %bb.aj
  %i.fv = mul nuw nsw i64 %i.fs, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fq, i64 noundef %i.fv, i64 noundef 8) #48, !noalias !1168, !inline_history !1114
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i82: ; preds = %bb.ai
  %i.fw = icmp eq i64 %i.fs, 0
  br i1 %i.fw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit9.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i85

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i85: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i82
  %i.fx = mul nuw nsw i64 %i.fs, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fq, i64 noundef %i.fx, i64 noundef 8) #48, !noalias !1168, !inline_history !1114
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit9.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit9.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i82, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i85, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit7.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ej, i64 288
  %.val.i50 = load ptr, ptr %i.fy, align 8, !alias.scope !1169, !noalias !1156, !nonnull !10, !noundef !10 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.ej, i64 296
  %.val4.i51 = load i64, ptr %i.fz, align 8, !alias.scope !1169, !noalias !1156, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170), !noalias !1156
  %i.ga = icmp eq i64 %.val4.i51, 0
  br i1 %i.ga, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast11IfStatementEEB1e_.exit, label %.lr.ph.i.i.i.i52

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i, %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i, %bb.ag
  %.pn2.i = phi { ptr, i32 } [ %.pn.i48, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i ], [ %.pn.i48, %bb.ag ], [ %i.ft, %bb.aj ], [ %i.ft, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i1.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ej, i64 288
  %.val5.i = load ptr, ptr %i.gb, align 8, !alias.scope !1169, !noalias !1156, !nonnull !10, !noundef !10
  %i.gc = getelementptr i8, ptr %i.ej, i64 296
  %.val6.i = load i64, ptr %i.gc, align 8, !alias.scope !1169, !noalias !1156, !noundef !10
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast25ArgumentOrRedirectionListEBF_(ptr nonnull %.val5.i, i64 %.val6.i) #50, !noalias !1156, !inline_history !1117
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef 304, i64 noundef 8) #48, !noalias !1156
  br label %common.resume

.lr.ph.i.i.i.i52:                                 ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit9.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i56
  %.sroa.0.011.i.i.i.i53 = phi i64 [ %i.ge, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i56 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit9.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %.val.i50, i64 %.sroa.0.011.i.i.i.i53 ; 2 uses
  %i.ge = add nuw nsw i64 %.sroa.0.011.i.i.i.i53, 1 ; 2 uses
  %.val8.i.i.i.i54 = load i32, ptr %i.gd, align 8, !range !33, !alias.scope !1170, !noalias !1156, !noundef !10
  %i.gf = icmp eq i32 %.val8.i.i.i.i54, 0
  br i1 %i.gf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i56, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i52
  %i.gg = getelementptr i8, ptr %i.gd, i64 8
  %.val9.i.i.i.i55 = load ptr, ptr %i.gg, align 8, !alias.scope !1170, !noalias !1156, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i55, i64 noundef 32, i64 noundef 4) #48, !noalias !1171, !inline_history !1117
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i56

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i56: ; preds = %bb.ak, %.lr.ph.i.i.i.i52
  %i.gh = icmp eq i64 %i.ge, %.val4.i51
  br i1 %i.gh, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i57, label %.lr.ph.i.i.i.i52

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i57: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i56
  %i.gi = shl nuw nsw i64 %.val4.i51, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i50, i64 noundef %i.gi, i64 noundef 8) #48, !noalias !1156, !inline_history !1117
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast11IfStatementEEB1e_.exit

bb.al:                                            ; preds = %bb.ag, %.body.i
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1156, !inline_history !1117
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast11IfStatementEEB1e_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i57, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit9.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef 304, i64 noundef 8) #48, !noalias !1156
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast11IfStatementEEB1e_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BraceStatementEEB1e_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BlockStatementEEB1e_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast12NotStatementEEB1e_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast15SwitchStatementEEB1e_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_2
begin_hunk_3_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEBH_:bb.a

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1w_6marker4SendEL_EE12slice_rangesNtNtB1u_5range9RangeFullECs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %.noexc.i.i.i.i
  %.sroa.07.0.i.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i.i, %bb.d ], [ %.sroa.04.0.i.i.i.i.i.i, %bb.c ], [ 0, %.noexc.i.i.i.i ] ; 2 uses
  %.sroa.58.0.i.i.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.val.i.i.i.i.i, %bb.c ], [ 0, %.noexc.i.i.i.i ]
  %.sroa.11.0.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.m, %bb.c ], [ 0, %.noexc.i.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1302, !nonnull !10, !noundef !10 ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.07.0.i.i.i.i.i
  %i.r = sub i64 %.sroa.58.0.i.i.i.i.i, %.sroa.07.0.i.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.r)
          to label %bb.f unwind label %bb.e, !noalias !1302

bb.e:                                             ; preds = %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1w_6marker4SendEL_EE12slice_rangesNtNtB1u_5range9RangeFullECs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 %i.p, i64 noundef %.sroa.11.0.i.i.i.i.i)
          to label %.body.i.i.i.i unwind label %bb.g, !noalias !1302

bb.f:                                             ; preds = %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1w_6marker4SendEL_EE12slice_rangesNtNtB1u_5range9RangeFullECs8frGy5WneL6_4fish.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 %i.p, i64 noundef %.sroa.11.0.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtCs8frGy5WneL6_4fish7threads7threads19ThreadPoolProtectedEEB1w_.exit unwind label %bb.h, !noalias !1303

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1302
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.s, %bb.e ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %.body.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtCs8frGy5WneL6_4fish7threads7threads19ThreadPoolProtectedEEB1w_.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11PerprocDataEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #50
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.010 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  %.val8 = load ptr, ptr %i.b, align 8            ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9 = load ptr, ptr %i.d, align 8, !nonnull !10, !align !14, !noundef !10 ; 5 uses
  %i.e = load ptr, ptr %.val9, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.e(ptr noundef nonnull %.val8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !17, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.g, i64 noundef range(i64 1, 536870913) %i.j) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !16, !invariant.load !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !17, !invariant.load !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.m, i64 noundef range(i64 1, 536870913) %i.p) #48
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i
  %i.q = icmp eq i64 %i.c, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph25
  %i.r = add nuw nsw i64 %.sroa.0.124, 1          ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge26, label %.lr.ph25

.body:                                            ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.t = icmp eq i64 %i.c, %1
  br i1 %i.t, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.body, %bb.e
  %.sroa.0.124 = phi i64 [ %i.r, %bb.e ], [ %i.c, %.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.124 ; 2 uses
  %.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val7 = load ptr, ptr %i.v, align 8, !nonnull !10, !align !14, !noundef !10
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs8frGy5WneL6_4fish(ptr %.val, ptr nonnull %.val7) #50
          to label %bb.e unwind label %bb.f

._crit_edge26:                                    ; preds = %bb.e, %.body
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %.lr.ph25
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 57646075230342349) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit
  %.sroa.0.072 = phi i64 [ %i.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.0.072 ; 8 uses
  %i.c = add nuw nsw i64 %.sroa.0.072, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.d = getelementptr i8, ptr %i.b, i64 104
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !1331, !noundef !10 ; 2 uses
  %i.e = icmp eq i64 %.val2.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %.lr.ph73
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !1331, !nonnull !10, !noundef !10
  %i.g = mul nuw nsw i64 %.val2.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.g, i64 noundef 4) #48, !noalias !1331, !inline_history !1332
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph73
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h)
          to label %bb.c unwind label %bb.b, !inline_history !1332

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.body9 unwind label %bb.d, !inline_history !1333

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit unwind label %bb.e, !inline_history !1332

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !1332
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body9

.body9:                                           ; preds = %bb.b, %bb.e
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.i, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.n) #50
          to label %.body unwind label %bb.o, !inline_history !1334

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1337, !nonnull !10, !noundef !10 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1337, !noundef !10 ; 6 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %.sroa.0.0.i67 = phi i64 [ %i.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %.sroa.0.0.i67 ; 8 uses
  %i.u = add nuw i64 %.sroa.0.0.i67, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338), !noalias !1337
  %i.v = getelementptr i8, ptr %i.t, i64 104
  %.val2.i.i14 = load i64, ptr %i.v, align 8, !alias.scope !1339, !noalias !1337, !noundef !10 ; 2 uses
  %i.w = icmp eq i64 %.val2.i.i14, 0
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %.val.i.i13 = load ptr, ptr %i.x, align 8, !alias.scope !1339, !noalias !1337, !nonnull !10, !noundef !10
  %i.y = mul nuw nsw i64 %.val2.i.i14, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13, i64 noundef %i.y, i64 noundef 4) #48, !noalias !1340, !inline_history !1314
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.z)
          to label %bb.g unwind label %bb.f, !noalias !1337, !inline_history !1314

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %.body.i unwind label %bb.j, !noalias !1337, !inline_history !1315

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1341, !noalias !1337, !nonnull !10, !noundef !10 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1341, !noalias !1337, !noundef !10 ; 5 uses
  %cond = icmp eq i64 %i.af, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i, label %.lr.ph171

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i28
  %i.ag = icmp eq i64 %i.ai, %i.af
  br i1 %i.ag, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %.sroa.0.0.i.i169 = phi i64 [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i ], [ 0, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %.sroa.0.0.i.i169 ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.0.i.i169, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342), !noalias !1337
  %i.aj = getelementptr i8, ptr %i.ah, i64 72
  %.val1.i.i26 = load i64, ptr %i.aj, align 8, !alias.scope !1342, !noalias !1343, !noundef !10 ; 2 uses
  %i.ak = icmp eq i64 %.val1.i.i26, 0
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i28, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i27

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i27: ; preds = %.lr.ph171
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.val.i.i25 = load ptr, ptr %i.al, align 8, !alias.scope !1342, !noalias !1343, !nonnull !10, !noundef !10
  %i.am = mul nuw nsw i64 %.val1.i.i26, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i25, i64 noundef %i.am, i64 noundef 4) #48, !noalias !1344, !inline_history !1320
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i28

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i28: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i27, %.lr.ph171
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.an)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i unwind label %bb.h, !noalias !1343, !inline_history !1320

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i38
  %i.ao = icmp eq i64 %i.au, %i.af
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge, label %.lr.ph174

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i28
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.as = icmp eq i64 %i.ai, %i.af
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit
  %.sroa.0.1.i.i172 = phi i64 [ %i.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit ], [ %i.ai, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %.sroa.0.1.i.i172 ; 3 uses
  %i.au = add nuw i64 %.sroa.0.1.i.i172, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.av = getelementptr i8, ptr %i.at, i64 72
  %.val1.i36 = load i64, ptr %i.av, align 8, !alias.scope !1345, !noalias !1343, !noundef !10 ; 2 uses
  %i.aw = icmp eq i64 %.val1.i36, 0
  br i1 %i.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i38, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i37

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i37: ; preds = %.lr.ph174
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %.val.i35 = load ptr, ptr %i.ax, align 8, !alias.scope !1345, !noalias !1343, !nonnull !10, !noundef !10
  %i.ay = mul nuw nsw i64 %.val1.i36, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i35, i64 noundef %i.ay, i64 noundef 4) #48, !noalias !1346, !inline_history !1323
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i38

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i38: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i37, %.lr.ph174
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit unwind label %bb.i, !inline_history !1323

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit, %bb.h
  %.val3.i = load i64, ptr %i.ar, align 8, !alias.scope !1341, !noalias !1337, !noundef !10 ; 2 uses
  %i.ba = icmp eq i64 %.val3.i, 0
  br i1 %i.ba, label %.body.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i38
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1343, !inline_history !1324
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge
  %.val2.i31 = load ptr, ptr %i.aq, align 8, !alias.scope !1341, !noalias !1337, !nonnull !10, !noundef !10
  %i.bc = mul nuw nsw i64 %.val3.i, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i31, i64 noundef %i.bc, i64 noundef 8) #48, !noalias !1343, !inline_history !1325
  br label %.body.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %i.bd = mul nuw nsw i64 %i.af, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.bd, i64 noundef 8) #48, !noalias !1343, !inline_history !1325
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i

bb.j:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1337, !inline_history !1314
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i: ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.bf = icmp eq i64 %i.u, %i.r
  br i1 %i.bf, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i: ; preds = %bb.l
  %i.bg = icmp eq i64 %i.bj, %i.r
  br i1 %i.bg, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i11, label %.lr.ph176

.body.i:                                          ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ap, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge ], [ %i.ap, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i ]
  %i.bh = icmp eq i64 %i.u, %i.r
  br i1 %i.bh, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i11, label %.lr.ph176

.lr.ph176:                                        ; preds = %.body.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i
  %.sroa.0.1.i175 = phi i64 [ %i.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i ], [ %i.u, %.body.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %.sroa.0.1.i175 ; 5 uses
  %i.bj = add nuw i64 %.sroa.0.1.i175, 1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %i.bk = getelementptr i8, ptr %i.bi, i64 104
  %.val2.i18 = load i64, ptr %i.bk, align 8, !alias.scope !1347, !noalias !1337, !noundef !10 ; 2 uses
  %i.bl = icmp eq i64 %.val2.i18, 0
  br i1 %i.bl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i20, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i19

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i19: ; preds = %.lr.ph176
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %.val.i17 = load ptr, ptr %i.bm, align 8, !alias.scope !1347, !noalias !1337, !nonnull !10, !noundef !10
  %i.bn = mul nuw nsw i64 %.val2.i18, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17, i64 noundef %i.bn, i64 noundef 4) #48, !noalias !1348, !inline_history !1328
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i20

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i20: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i19, %.lr.ph176
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bo)
          to label %bb.l unwind label %bb.k, !noalias !1337, !inline_history !1328

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i20
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %.body22 unwind label %bb.m, !noalias !1337, !inline_history !1329

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.br)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i unwind label %bb.n, !inline_history !1328

bb.m:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1337, !inline_history !1328
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body22

.body22:                                          ; preds = %bb.k, %bb.n
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1337, !inline_history !1330
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i11: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i, %.body.i
  %i.bu = mul nuw nsw i64 %i.r, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.bu, i64 noundef 8) #48, !noalias !1337
  br label %.body

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %i.bv = mul nuw nsw i64 %i.r, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.bv, i64 noundef 8) #48, !noalias !1337
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit

bb.o:                                             ; preds = %.body9
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !1334
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  %i.bx = icmp eq i64 %i.c, %1
  br i1 %i.bx, label %._crit_edge, label %.lr.ph73

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit, %bb.a
  ret void

bb.p:                                             ; preds = %.lr.ph178
  %i.by = add nuw nsw i64 %.sroa.0.1177, 1        ; 2 uses
  %i.bz = icmp eq i64 %i.by, %1
  br i1 %i.bz, label %._crit_edge179, label %.lr.ph178

.body:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i11, %.body9
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body10, %.body9 ], [ %eh.lpad-body.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i11 ]
  %i.ca = icmp eq i64 %i.c, %1
  br i1 %i.ca, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %.body, %bb.p
  %.sroa.0.1177 = phi i64 [ %i.by, %bb.p ], [ %i.c, %.body ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.0.1177
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.cb) #50
          to label %bb.p unwind label %bb.q

._crit_edge179:                                   ; preds = %bb.p, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.q:                                             ; preds = %.lr.ph178
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #50
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs11remove_fileNtNtNtB4_3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !10
  %i.c = invoke noundef ptr @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs11remove_file(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #50
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %i.c

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs12canonicalizeRNtNtB4_4path4PathECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs12canonicalize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs12canonicalizeRNtNtNtB4_3ffi6os_str5OsStrECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs12canonicalize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs12canonicalizeReECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs12canonicalize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs16symlink_metadataNtNtNtB4_3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !10
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #50
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !range !29, !noundef !10
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RINvNtNtCs8frGy5WneL6_4fish7threads7threads5spawnNCNvMs2_NtB6_10fd_monitorNtBT_9FdMonitor3add0EB6_:bb.a
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.bt, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.bv = load i64, ptr %i.bu, align 8, !range !22, !noundef !10
  br label %.invoke

bb.z:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.by = load i64, ptr %i.bu, align 8, !range !16, !noundef !10 ; 2 uses
  %i.bz = icmp samesign ugt i64 %i.by, 10
  call void @llvm.assume(i1 %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bx, ptr noundef nonnull align 1 dereferenceable(11) @44, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 11
  store ptr %i.bx, ptr %i.k, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.by, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bx, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.ca, ptr %i.cd, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.aa unwind label %bb.q

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ce = load i64, ptr %i.av, align 8, !alias.scope !1427, !noundef !10 ; 3 uses
  %i.cf = load i64, ptr %i.w, align 8, !range !16, !alias.scope !1427, !noundef !10
  %i.cg = icmp eq i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.ac unwind label %bb.q

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.ch = load ptr, ptr %i.au, align 8, !alias.scope !1427, !nonnull !10, !noundef !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ce
  store i8 32, ptr %i.ci, align 1
  %i.cj = add i64 %i.ce, 1
  store i64 %i.cj, ptr %i.av, align 8, !alias.scope !1427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8, !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1428
  store ptr %i.e, ptr %i.d, align 8, !noalias !1428
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdNtB6_5Debug3fmtBC_, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1428
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @748, ptr noundef nonnull %i.d)
          to label %bb.ad unwind label %bb.q

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.cm = load i64, ptr %i.u, align 8, !range !16, !noundef !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noundef !10 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  store ptr %i.cl, ptr %i.j, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.cm, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cl, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.cq, ptr %i.ct, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.ae unwind label %bb.q

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.cu = load i64, ptr %i.av, align 8, !alias.scope !1429, !noundef !10 ; 3 uses
  %i.cv = load i64, ptr %i.w, align 8, !range !16, !alias.scope !1429, !noundef !10
  %i.cw = icmp eq i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.ag unwind label %bb.q

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.cx = load ptr, ptr %i.au, align 8, !alias.scope !1429, !nonnull !10, !noundef !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu
  store i8 32, ptr %i.cy, align 1
  %i.cz = add i64 %i.cu, 1
  store i64 %i.cz, ptr %i.av, align 8, !alias.scope !1429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ah unwind label %bb.q

bb.ah:                                            ; preds = %bb.ag
  %i.da = load i64, ptr %i.i, align 8, !range !12, !noundef !10
  %i.db = trunc nuw i64 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.db, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.dd = load i64, ptr %i.dc, align 8, !range !22, !noundef !10
  br label %.invoke

.invoke:                                          ; preds = %bb.y, %bb.ai
  %.sink68.sroa.phi = phi ptr [ %.sink68.sroa.gep, %bb.y ], [ %.sink68.sroa.gep72, %bb.ai ]
  %i.de = phi i64 [ %i.bv, %bb.y ], [ %i.dd, %bb.ai ]
  %i.df = load i64, ptr %.sink68.sroa.phi, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.de, i64 %i.df) #49
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.di = load i64, ptr %i.dc, align 8, !range !16, !noundef !10 ; 2 uses
  %i.dj = icmp samesign ugt i64 %i.di, 6
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dh, ptr noundef nonnull align 1 dereferenceable(7) @45, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 7
  store ptr %i.dh, ptr %i.h, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.di, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.dh, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.dk, ptr %i.dn, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.ak unwind label %bb.q

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.do = load i64, ptr %i.av, align 8, !alias.scope !1430, !noundef !10 ; 3 uses
  %i.dp = load i64, ptr %i.w, align 8, !range !16, !alias.scope !1430, !noundef !10
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.am unwind label %bb.q

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.dr = load ptr, ptr %i.au, align 8, !alias.scope !1430, !nonnull !10, !noundef !10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do
  store i8 10, ptr %i.ds, align 1
  %i.dt = add i64 %i.do, 1                        ; 2 uses
  store i64 %i.dt, ptr %i.av, align 8, !alias.scope !1430
  %i.du = load ptr, ptr %i.au, align 8, !nonnull !10, !noundef !10
  %i.dv = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !1431 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1431
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef range(i64 0, -9223372036854775808) %i.dt, i32 noundef %i.dv)
          to label %.noexc29 unwind label %bb.q

.noexc29:                                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1431
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit:    ; preds = %.noexc29, %bb.am
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.thread47 unwind label %bb.aq

bb.ap:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %.thread58

bb.aq:                                            ; preds = %bb.ao
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.o

bb.ar:                                            ; preds = %bb.bd, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dz = call noundef i32 @_RNvMsJ_NtNtCse7JGOylGlDZ_3nix3sys6signalNtB5_6SigSet15thread_set_mask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ae) ; 2 uses
  %.not.i = icmp eq i32 %i.dz, -1
  br i1 %.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCse7JGOylGlDZ_3nix5errno6consts5ErrnoE6expectCs8frGy5WneL6_4fish.exit, label %.noexc38, !prof !21

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.at, %bb.be, %.body34, %bb.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.thread47, %bb.q
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.thread47:                                        ; preds = %bb.ao, %bb.q, %.thread58
  %.pn50 = phi { ptr, i32 } [ %i.aw, %bb.q ], [ %lpad.thr_comm56, %.thread58 ], [ %i.dx, %bb.ao ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #50
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.at, %.loopexit.split-lp62.loopexit.split-lp.loopexit.split-lp
  %.pn12 = phi { ptr, i32 } [ %lpad.loopexit.split-lp71, %.loopexit.split-lp62.loopexit.split-lp.loopexit.split-lp ], [ %i.ea, %bb.at ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #50
          to label %.body34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp62.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc32.preheader, %bb.l
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.as:                                            ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 30, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef 1)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.av, %bb.as
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.eb = load i8, ptr %i.p, align 8, !range !15, !alias.scope !1432, !noundef !10
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.av, label %.noexc32.preheader, !prof !13

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1433
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !range !37, !alias.scope !1432, !noundef !10
  store i8 %i.ee, ptr %i.g, align 1, !noalias !1433
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #53
          to label %.noexc unwind label %bb.at

.noexc:                                           ; preds = %bb.av
  unreachable

.noexc32.preheader:                               ; preds = %bb.au
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33 unwind label %.loopexit.split-lp62.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33: ; preds = %.noexc32.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ef = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, i32 noundef 2)
          to label %bb.ax unwind label %bb.aw     ; 0 uses

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #50
          to label %.body34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body34 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ax
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.ba

.body34:                                          ; preds = %bb.ba, %bb.ay, %bb.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn14 = phi { ptr, i32 } [ %.pn12, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.eg, %bb.aw ], [ %i.ej, %bb.ba ], [ %i.eh, %bb.ay ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #50
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body34

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1434
  %i.ek = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.el = and i64 %i.ek, 3
  switch i64 %i.el, label %default.unreachable [
    i64 2, label %bb.bd
    i64 3, label %bb.bb
    i64 0, label %bb.bd
    i64 1, label %bb.bc
  ], !prof !27

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  unreachable

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.em = icmp ult ptr %i.ar, inttoptr (i64 188978561024 to ptr)
  %i.en = and i64 %i.ek, 1095216660480
  %i.eo = icmp ne i64 %i.en, 1095216660480
  call void @llvm.assume(i1 %i.em)
  call void @llvm.assume(i1 %i.eo)
  br label %bb.bd

bb.bc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.ep = getelementptr i8, ptr %i.ar, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ep, ptr %i.eq, align 8, !alias.scope !1435, !noalias !1434
  store i8 3, ptr %i.b, align 8, !alias.scope !1435, !noalias !1434
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eq)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ar

.noexc38:                                         ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.dz, ptr %i.a, align 4
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 37, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #53
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCse7JGOylGlDZ_3nix5errno6consts5ErrnoE6expectCs8frGy5WneL6_4fish.exit: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  ret i1 %i.ap

.thread:                                          ; preds = %.thread47, %.body34, %bb.be
  %.pn1641 = phi { ptr, i32 } [ %.pn14, %.body34 ], [ %lpad.thr_comm, %bb.be ], [ %.pn50, %.thread47 ]
  resume { ptr, i32 } %.pn1641

bb.be:                                            ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs2_NtCs8frGy5WneL6_4fish10fd_monitorNtBJ_9FdMonitor3add0EBL_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.af) #50
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2i_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtCs1xwejQucwHj_5alloc3vec3VecBJ_EECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !1442
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !1442, !nonnull !10, !noundef !10 ; 6 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1442 ; 3 uses
  %i.d = icmp ult i64 %.sroa.55.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.d)
  %.idx = mul nuw nsw i64 %.sroa.55.0.copyload.i, 24
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 %.idx
  store ptr %.sroa.44.0.copyload.i, ptr %i.c, align 8, !alias.scope !1441
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %i.f, align 8, !alias.scope !1441
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.44.0.copyload.i, ptr %i.g, align 8, !alias.scope !1441
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.e, ptr %i.h, align 8, !alias.scope !1441
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.i = icmp eq i64 %.sroa.55.0.copyload.i, 0
  br i1 %i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 24
  store ptr %i.j, ptr %i.g, align 8, !alias.scope !1443
  %.sroa.0.0.copyload3 = load i64, ptr %.sroa.44.0.copyload.i, align 8, !noalias !1443 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload3, -1
  br i1 %.not, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0.copyload3, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1P_8for_each4callBX_NCINvXs1Y_BZ_BX_INtNtB1T_7collect6ExtendBX_E6extendBI_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
end_hunk_4
begin_hunk_5_@_RNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB5_10ThreadPool12spawn_thread:bb.a
bb.y:                                             ; preds = %bb.x
  %i.bu = load i64, ptr %i.l, align 8, !range !12, !noundef !10
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.bv, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bx = load i64, ptr %i.bw, align 8, !range !22, !noundef !10
  br label %.invoke.i

bb.aa:                                            ; preds = %bb.y
  %i.by = load ptr, ptr %.sink69.i.sroa.gep, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.bz = load i64, ptr %i.bw, align 8, !range !16, !noundef !10 ; 2 uses
  %i.ca = icmp samesign ugt i64 %i.bz, 10
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.by, ptr noundef nonnull align 1 dereferenceable(11) @44, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  store ptr %i.by, ptr %i.k, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.bz, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.by, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.cb, ptr %i.ce, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cf = load i64, ptr %i.ax, align 8, !alias.scope !2149, !noundef !10 ; 3 uses
  %i.cg = load i64, ptr %i.w, align 8, !range !16, !alias.scope !2149, !noundef !10
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.ad unwind label %bb.r

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ci = load ptr, ptr %i.aw, align 8, !alias.scope !2149, !nonnull !10, !noundef !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf
  store i8 32, ptr %i.cj, align 1
  %i.ck = add i64 %i.cf, 1
  store i64 %i.ck, ptr %i.ax, align 8, !alias.scope !2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8, !noalias !2150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2150
  store ptr %i.e, ptr %i.d, align 8, !noalias !2150
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdNtB6_5Debug3fmtBC_, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !2150
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @748, ptr noundef nonnull %i.d)
          to label %bb.ae unwind label %bb.r

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.cn = load i64, ptr %i.u, align 8, !range !16, !noundef !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noundef !10 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  store ptr %i.cm, ptr %i.j, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.cn, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cm, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.cr, ptr %i.cu, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.af unwind label %bb.r

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.cv = load i64, ptr %i.ax, align 8, !alias.scope !2151, !noundef !10 ; 3 uses
  %i.cw = load i64, ptr %i.w, align 8, !range !16, !alias.scope !2151, !noundef !10
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.ah unwind label %bb.r

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cy = load ptr, ptr %i.aw, align 8, !alias.scope !2151, !nonnull !10, !noundef !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cv
  store i8 32, ptr %i.cz, align 1
  %i.da = add i64 %i.cv, 1
  store i64 %i.da, ptr %i.ax, align 8, !alias.scope !2151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ai unwind label %bb.r

bb.ai:                                            ; preds = %bb.ah
  %i.db = load i64, ptr %i.i, align 8, !range !12, !noundef !10
  %i.dc = trunc nuw i64 %i.db to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.dc, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.de = load i64, ptr %i.dd, align 8, !range !22, !noundef !10
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.aj, %bb.z
  %.sink69.i.sroa.phi = phi ptr [ %.sink69.i.sroa.gep, %bb.z ], [ %.sink69.i.sroa.gep1, %bb.aj ]
  %i.df = phi i64 [ %i.bx, %bb.z ], [ %i.de, %bb.aj ]
  %i.dg = load i64, ptr %.sink69.i.sroa.phi, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #49
          to label %.cont.i unwind label %bb.r

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dh = load ptr, ptr %.sink69.i.sroa.gep1, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.di = load i64, ptr %i.dd, align 8, !range !16, !noundef !10 ; 2 uses
  %i.dj = icmp samesign ugt i64 %i.di, 6
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dh, ptr noundef nonnull align 1 dereferenceable(7) @45, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 7
  store ptr %i.dh, ptr %i.h, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.di, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.dh, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.dk, ptr %i.dn, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.al unwind label %bb.r

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.do = load i64, ptr %i.ax, align 8, !alias.scope !2152, !noundef !10 ; 3 uses
  %i.dp = load i64, ptr %i.w, align 8, !range !16, !alias.scope !2152, !noundef !10
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.an unwind label %bb.r

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dr = load ptr, ptr %i.aw, align 8, !alias.scope !2152, !nonnull !10, !noundef !10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do
  store i8 10, ptr %i.ds, align 1
  %i.dt = add i64 %i.do, 1                        ; 2 uses
  store i64 %i.dt, ptr %i.ax, align 8, !alias.scope !2152
  %i.du = load ptr, ptr %i.aw, align 8, !nonnull !10, !noundef !10
  %i.dv = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !2153 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2153
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef range(i64 0, -9223372036854775808) %i.dt, i32 noundef %i.dv)
          to label %.noexc29.i unwind label %bb.r

.noexc29.i:                                       ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2153
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i:  ; preds = %.noexc29.i, %bb.an
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.thread48.i unwind label %bb.ar

bb.aq:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %.thread59.i

bb.ar:                                            ; preds = %bb.ap
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.p

bb.as:                                            ; preds = %bb.be, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dz = call noundef i32 @_RNvMsJ_NtNtCse7JGOylGlDZ_3nix3sys6signalNtB5_6SigSet15thread_set_mask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ae) ; 2 uses
  %.not.i.i = icmp eq i32 %i.dz, -1
  br i1 %.not.i.i, label %_RINvNtNtCs8frGy5WneL6_4fish7threads7threads5spawnNCNvMs1_B2_NtB2_10ThreadPool12spawn_thread0EB6_.exit, label %.noexc38.i, !prof !21

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bg, %.body34.i, %bb.ax, %bb.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.thread48.i, %bb.r
  %lpad.loopexit.split-lp7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.thread48.i:                                      ; preds = %bb.ap, %bb.r, %.thread59.i
  %.pn51.i = phi { ptr, i32 } [ %i.ay, %bb.r ], [ %lpad.thr_comm57.i, %.thread59.i ], [ %i.dx, %bb.ap ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #50
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtBJ_10ThreadPool12spawn_thread0EBN_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.au, %.loopexit.split-lp63.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn12.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp9, %.loopexit.split-lp63.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ea, %bb.au ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #50
          to label %.body34.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp63.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc32.i.preheader, %bb.m
  %lpad.loopexit.split-lp9 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

bb.at:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 30, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef 1)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  %i.eb = load i8, ptr %i.p, align 8, !range !15, !alias.scope !2154, !noundef !10
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.aw, label %.noexc32.i.preheader, !prof !13

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2155
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !range !37, !alias.scope !2154, !noundef !10
  store i8 %i.ee, ptr %i.g, align 1, !noalias !2155
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #53
          to label %.noexc.i unwind label %bb.au

.noexc.i:                                         ; preds = %bb.aw
  unreachable

.noexc32.i.preheader:                             ; preds = %bb.av
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33.i unwind label %.loopexit.split-lp63.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33.i: ; preds = %.noexc32.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ef = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, i32 noundef 2)
          to label %bb.ay unwind label %bb.ax     ; 0 uses

bb.ax:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #50
          to label %.body34.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body34.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.bb

.body34.i:                                        ; preds = %bb.bb, %bb.az, %bb.ax, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i
  %.pn14.i = phi { ptr, i32 } [ %.pn12.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %i.eg, %bb.ax ], [ %i.ej, %bb.bb ], [ %i.eh, %bb.az ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #50
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtBJ_10ThreadPool12spawn_thread0EBN_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2156
  %i.ek = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.el = and i64 %i.ek, 3
  switch i64 %i.el, label %default.unreachable [
    i64 2, label %bb.be
    i64 3, label %bb.bc
    i64 0, label %bb.be
    i64 1, label %bb.bd
  ], !prof !27

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  unreachable

bb.bc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.em = icmp ult ptr %i.at, inttoptr (i64 188978561024 to ptr)
  %i.en = and i64 %i.ek, 1095216660480
  %i.eo = icmp ne i64 %i.en, 1095216660480
  call void @llvm.assume(i1 %i.em)
  call void @llvm.assume(i1 %i.eo)
  br label %bb.be

bb.bd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.ep = getelementptr i8, ptr %i.at, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ep, ptr %i.eq, align 8, !alias.scope !2157, !noalias !2156
  store i8 3, ptr %i.b, align 8, !alias.scope !2157, !noalias !2156
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eq)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.as

.noexc38.i:                                       ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.dz, ptr %i.a, align 4
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 37, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #53
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtBJ_10ThreadPool12spawn_thread0EBN_.exit.i: ; preds = %bb.bg, %bb.bf, %.body34.i, %.thread48.i
  %.pn1642.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.bf ], [ %.pn14.i, %.body34.i ], [ %lpad.thr_comm.i, %bb.bg ], [ %.pn51.i, %.thread48.i ]
  resume { ptr, i32 } %.pn1642.i

bb.bf:                                            ; preds = %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !2158
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.bg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtBJ_10ThreadPool12spawn_thread0EBN_.exit.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.af) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtBJ_10ThreadPool12spawn_thread0EBN_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtCs8frGy5WneL6_4fish7threads7threads5spawnNCNvMs1_B2_NtB2_10ThreadPool12spawn_thread0EB6_.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  ret i1 %i.ar

bb.bh:                                            ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB5_10ThreadPool3new(i64 noundef %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i32 0, ptr %i.c, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  %.sroa.0.sroa.5.sroa.0.sroa.4.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.0.sroa.5.sroa.0.sroa.4.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.0.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.5.sroa.0.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.0.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.sroa.0.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 32, i1 false)
  store i64 %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !2161
  %i.d = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !2161 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEE3newB16_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #49
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_RNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderE4nextB9_:bb.a
bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !10, !align !14, !noundef !10
  call void @_RNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB8_5input5input16InputEventQueuer6readchB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
  %i.n = load i64, ptr %i.h, align 8, !alias.scope !2427, !noundef !10 ; 3 uses
  %i.o = load i64, ptr %1, align 8, !range !16, !alias.scope !2427, !noundef !10
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.g, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE8push_mutBL_.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE8push_mutBL_.exit unwind label %bb.h, !noalias !2428

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #50
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.aw, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE8push_mutBL_.exit: ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2427, !nonnull !10, !noundef !10
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.v = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.v, ptr %i.h, align 8, !alias.scope !2427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i64, ptr %i.f, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE8push_mutBL_.exit
  %i.w = phi i64 [ %i.i, %bb.e ], [ %i.v, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE8push_mutBL_.exit ] ; 2 uses
  %i.x = phi i64 [ %i.g, %bb.e ], [ %.pre, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE8push_mutBL_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = icmp ult i64 %i.x, %i.w
  br i1 %i.y, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !10, !noundef !10
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.x ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2430)
  %i.ac = load i64, ptr %i.ab, align 8, !range !35, !alias.scope !2430, !noundef !10 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 0
  %i.ae = add i64 %i.ac, -9223372036854775807
  %i.af = select i1 %i.ad, i64 %i.ae, i64 0
  switch i64 %i.af, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !noalias !2431
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.ag, i64 20, i1 false), !noalias !2429
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ai = load i8, ptr %i.ah, align 4, !range !15, !alias.scope !2430, !noundef !10
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab), !noalias !2429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i, i64 44, i1 false), !noalias !2430
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i8 %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !2429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !noalias !2431
  br label %_RNvXss_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_9CharEventNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !range !44, !alias.scope !2430, !noundef !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %i.al, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2429
  store i64 -9223372036854775808, ptr %i.a, align 8, !alias.scope !2429
  br label %_RNvXss_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_9CharEventNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
  store i64 -9223372036854775807, ptr %i.a, align 8, !alias.scope !2429
  br label %_RNvXss_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_9CharEventNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !alias.scope !2431
  store i64 -9223372036854775806, ptr %i.a, align 8, !alias.scope !2429
  br label %_RNvXss_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_9CharEventNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !alias.scope !2431
  store i64 -9223372036854775805, ptr %i.a, align 8, !alias.scope !2429
  br label %_RNvXss_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_9CharEventNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

_RNvXss_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_9CharEventNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %i.at = load i64, ptr %i.f, align 8, !noundef !10 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.j
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #53
  unreachable

bb.s:                                             ; preds = %_RNvXss_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_9CharEventNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  %i.av = add nuw i64 %i.at, 1
  store i64 %i.av, ptr %i.f, align 8
  store i64 0, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.t:                                             ; preds = %_RNvXss_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_9CharEventNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #49
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #50
          to label %common.resume unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderE7consumeB9_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !align !14, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.q, %bb.g ], [ %i.q, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs8frGy5WneL6_4fish5input7binding16EventQueuePeekerNtNtNtBI_6reader6reader6ReaderEEBI_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) #50
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB9_5input5input16InputEventQueuer12insert_frontINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtBP_9CharEventEEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 4 uses
  store i64 0, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.n, %i.j
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.0.0.i1 = phi i64 [ %i.n, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.sroa.0.0.i1
  %i.n = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m)
          to label %bb.e unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph3
  %i.o = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %.body, label %.lr.ph3

bb.g:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq i64 %i.n, %i.j
  br i1 %i.r, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.g, %bb.f
  %.sroa.0.1.i2 = phi i64 [ %i.o, %bb.f ], [ %i.n, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.s) #50
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph3
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit: ; preds = %bb.e, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs8frGy5WneL6_4fish5input7binding16EventQueuePeekerNtNtNtBI_6reader6reader6ReaderEEBI_(ptr noalias nofree noundef align 8 dereferenceable(56) %0)
  ret void

bb.i:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl13item_at_index(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(280) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = add i64 %2, -1                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 5 uses
  %i.f = icmp ult i64 %i.e, 104811045873349726
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.h = load i8, ptr %i.g, align 4, !range !15, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp ne i64 %i.e, 0
  %or.cond = and i1 %i.j, %i.i
  %i.k = sext i1 %or.cond to i64
  %spec.select = add nsw i64 %i.e, %i.k           ; 3 uses
  %i.l = icmp ult i64 %i.c, %spec.select
  br i1 %i.l, label %bb.m, label %bb.e

bb.d:                                             ; preds = %bb.l, %bb.n, %bb.f, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw i64 %i.c, %spec.select           ; 2 uses
  %i.n = tail call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl18load_old_if_needed(ptr noalias nofree noundef align 8 dereferenceable(280) %1) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noundef !10 ; 4 uses
  %i.s = icmp ult i64 %i.m, %i.r
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.t = xor i64 %i.m, -1
  %i.u = add i64 %i.r, %i.t                       ; 3 uses
  %i.v = icmp ult i64 %i.u, %i.r
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtNtCs8frGy5WneL6_4fish7history4fileNtB5_11HistoryFile11decode_item(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, i64 noundef %i.x)
  %i.y = load i64, ptr %i.a, align 8, !range !26, !noundef !10
  %.not = icmp eq i64 %i.y, -1
  br i1 %.not, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #53
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store i64 -2, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.m:                                             ; preds = %bb.c
  %i.z = sub nuw nsw i64 %spec.select, %2         ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.e
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !10, !noundef !10
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %i.ac, i64 %i.z
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17history_file_path(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 5 uses
  %i.i = icmp ult i64 %i.h, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !26, !noundef !10
  %.not = icmp eq i64 %i.l, -1                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2442
  %.pre21 = load i64, ptr %i.f, align 8, !range !16, !alias.scope !2442
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtCs8frGy5WneL6_4fish4path13path_get_data(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e)
  %i.m = load ptr, ptr %i.e, align 8, !nonnull !10, !align !31, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !10 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !15, !noundef !10
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.r, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.m, %bb.d
  %i.s = phi i64 [ %i.ab, %bb.m ], [ %.pre21, %bb.d ]
  %i.t = phi i64 [ %i.o, %bb.m ], [ %.pre, %bb.d ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  %i.v = icmp eq i64 %i.t, %i.s
  br i1 %i.v, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #52
          to label %bb.p unwind label %bb.o

bb.h:                                             ; preds = %bb.e
  %i.w = tail call noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 42) #52
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.o, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.y = load i64, ptr %i.a, align 8, !range !12, !noundef !10
  %i.z = trunc nuw i64 %i.y to i1
end_hunk_6
begin_hunk_7_@_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl18load_old_if_needed:bb.a
  %i.cm = load ptr, ptr %i.br, align 8, !alias.scope !2492, !nonnull !10, !noundef !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cj
  store i8 32, ptr %i.cn, align 1
  %i.co = add i64 %i.ce, 2
  store i64 %i.co, ptr %i.bs, align 8, !alias.scope !2492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !10 ; 2 uses
  store i64 4, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.cq, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 19, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.r, i64 noundef 1)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  %i.cs = load i8, ptr %i.s, align 8, !range !15, !alias.scope !2493, !noundef !10
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.y, label %.noexc48.preheader, !prof !13

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2494
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !range !37, !alias.scope !2493, !noundef !10
  store i8 %i.cv, ptr %i.h, align 1, !noalias !2494
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #53
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.y
  unreachable

.noexc48.preheader:                               ; preds = %bb.x
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit49 unwind label %bb.z

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.w, %bb.z
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.z ], [ %i.cr, %bb.w ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #50
          to label %.body51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %.noexc48.preheader
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit49: ; preds = %.noexc48.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit49, %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #50
          to label %.body51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.da = load i64, ptr %i.v, align 8, !range !16, !noundef !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noundef !10 ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dc
  store ptr %i.cz, ptr %i.m, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.da, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.cz, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.de, ptr %i.dh, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.ab unwind label %bb.aa

bb.ab:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body51 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.dk = load i64, ptr %i.bs, align 8, !alias.scope !2495, !noundef !10 ; 3 uses
  %i.dl = load i64, ptr %i.x, align 8, !range !16, !alias.scope !2495, !noundef !10
  %i.dm = icmp eq i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #52
          to label %bb.af unwind label %bb.p

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.ae
  %i.dn = load ptr, ptr %i.br, align 8, !alias.scope !2495, !nonnull !10, !noundef !10
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dk
  store i8 10, ptr %i.do, align 1
  %i.dp = add i64 %i.dk, 1                        ; 2 uses
  store i64 %i.dp, ptr %i.bs, align 8, !alias.scope !2495
  %i.dq = load ptr, ptr %i.br, align 8, !nonnull !10, !noundef !10
  %i.dr = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !2496 ; 2 uses
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2496
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef range(i64 0, -9223372036854775808) %i.dp, i32 noundef %i.dr)
          to label %.noexc56 unwind label %bb.p

.noexc56:                                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2496
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit:    ; preds = %.noexc56, %bb.af
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body58 unwind label %bb.aj

bb.ai:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.l

bb.aj:                                            ; preds = %bb.ah
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.bs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43
  %.sroa.6119.0 = phi i64 [ 0, %bb.bs ], [ %.sroa.6119.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43 ] ; 2 uses
  %.sroa.5114.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.bs ], [ %.sroa.5114.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43 ] ; 2 uses
  %.sroa.4109.0 = phi i64 [ 0, %bb.bs ], [ %.sroa.4109.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43 ] ; 2 uses
  %.sroa.0103.0 = phi i64 [ 0, %bb.bs ], [ %.sroa.0103.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history4file11HistoryFileEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %bb.bt unwind label %bb.al, !noalias !2497

bb.al:                                            ; preds = %bb.ak
  %i.dv = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0103.0, ptr %i.af, align 8, !alias.scope !2498
  %.sroa.4.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx107, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !alias.scope !2498
  %.sroa.4109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.4109.0, ptr %.sroa.4109.0..sroa_idx110, align 8, !alias.scope !2498
  %.sroa.5114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.5114.0, ptr %.sroa.5114.0..sroa_idx115, align 8, !alias.scope !2498
  %.sroa.6119.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.6119.0, ptr %.sroa.6119.0..sroa_idx120, align 8, !alias.scope !2498
  br label %.body60

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.w, %bb.j, %.body60, %.body71, %.body79, %bb.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body51, %.body58, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.am:                                            ; preds = %bb.g
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtCs8frGy5WneL6_4fish7history4fileNtB5_10MmapRegionNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %.body60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body79:                                          ; preds = %bb.bp, %bb.an, %.body71
  %.pn30 = phi { ptr, i32 } [ %eh.lpad-body72, %.body71 ], [ %i.dx, %bb.an ], [ %i.gs, %bb.bp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #50
          to label %.body60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.bq
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body79

bb.ao:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.dy = load ptr, ptr %i.aw, align 8, !nonnull !10, !noundef !10 ; 4 uses
  store ptr %i.dy, ptr %i.q, align 8
  %i.dz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories12history_file, i64 40) monotonic, align 8
  %.not29 = icmp eq i8 %i.dz, 0
  br i1 %.not29, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit81, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2499
  %i.ea = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.eb = and i64 %i.ea, 3
  switch i64 %i.eb, label %default.unreachable [
    i64 2, label %bb.bs
    i64 3, label %bb.aq
    i64 0, label %bb.bs
    i64 1, label %bb.ar
  ], !prof !27

default.unreachable:                              ; preds = %bb.by, %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.ec = icmp ult ptr %i.dy, inttoptr (i64 188978561024 to ptr)
  %i.ed = and i64 %i.ea, 1095216660480
  %i.ee = icmp ne i64 %i.ed, 1095216660480
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.assume(i1 %i.ee)
  br label %bb.bs

bb.ar:                                            ; preds = %bb.ap
  %i.ef = getelementptr i8, ptr %i.dy, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ef, ptr %i.eg, align 8, !alias.scope !2500, !noalias !2499
  store i8 3, ptr %i.f, align 8, !alias.scope !2500, !noalias !2499
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %bb.bs unwind label %bb.h

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 8 uses
  store i64 0, ptr %i.ei, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories12history_file, i64 24))
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.bo, %bb.bm, %bb.be, %bb.ay, %bb.aw, %bb.bk, %bb.bc, %bb.bb, %bb.az, %bb.au, %bb.as
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.body71:                                          ; preds = %bb.bg, %bb.at
  %eh.lpad-body72 = phi { ptr, i32 } [ %i.ej, %bb.at ], [ %i.gc, %bb.bg ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #50
          to label %.body79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.em = load i64, ptr %i.o, align 8, !range !16, !noundef !10
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !noundef !10 ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, -1
  call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eo
  store ptr %i.el, ptr %i.l, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.em, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.el, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.eq, ptr %i.et, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.av unwind label %bb.at

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.eu = load i64, ptr %i.ei, align 8, !alias.scope !2501, !noundef !10 ; 4 uses
  %i.ev = load i64, ptr %i.p, align 8, !range !16, !alias.scope !2501, !noundef !10
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #52
          to label %bb.ax unwind label %bb.at

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.ex = load ptr, ptr %i.eh, align 8, !alias.scope !2501, !nonnull !10, !noundef !10
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eu
  store i8 58, ptr %i.ey, align 1
  %i.ez = add i64 %i.eu, 1                        ; 3 uses
  store i64 %i.ez, ptr %i.ei, align 8, !alias.scope !2501
  %i.fa = load i64, ptr %i.p, align 8, !range !16, !alias.scope !2502, !noundef !10
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #52
          to label %bb.az unwind label %bb.at

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.fc = load ptr, ptr %i.eh, align 8, !alias.scope !2502, !nonnull !10, !noundef !10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ez
  store i8 32, ptr %i.fd, align 1
  %i.fe = add i64 %i.eu, 2
  store i64 %i.fe, ptr %i.ei, align 8, !alias.scope !2502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ba unwind label %bb.at

bb.ba:                                            ; preds = %bb.az
  %i.ff = load i64, ptr %i.k, align 8, !range !12, !noundef !10
  %i.fg = trunc nuw i64 %i.ff to i1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %i.fg, label %bb.bb, label %bb.bc, !prof !13

bb.bb:                                            ; preds = %bb.ba
  %i.fi = load i64, ptr %i.fh, align 8, !range !22, !noundef !10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fk = load i64, ptr %i.fj, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.fi, i64 %i.fk) #49
          to label %bb.bx unwind label %bb.at

bb.bc:                                            ; preds = %bb.ba
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.fn = load i64, ptr %i.fh, align 8, !range !16, !noundef !10 ; 2 uses
  %i.fo = icmp samesign ugt i64 %i.fn, 31
  call void @llvm.assume(i1 %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fm, ptr noundef nonnull align 1 dereferenceable(32) @235, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store ptr %i.fm, ptr %i.j, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.fn, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.fm, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.fp, ptr %i.fs, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.bd unwind label %bb.at

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ft = load i64, ptr %i.ei, align 8, !alias.scope !2503, !noundef !10 ; 3 uses
  %i.fu = load i64, ptr %i.p, align 8, !range !16, !alias.scope !2503, !noundef !10
  %i.fv = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #52
          to label %bb.bf unwind label %bb.at

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.fw = load ptr, ptr %i.eh, align 8, !alias.scope !2503, !nonnull !10, !noundef !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ft
  store i8 32, ptr %i.fx, align 1
  %i.fy = add i64 %i.ft, 1
  store i64 %i.fy, ptr %i.ei, align 8, !alias.scope !2503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2504
  store i64 0, ptr %i.e, align 8, !noalias !2504
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2504
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2504
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.fz, align 8, !noalias !2504
  store ptr %i.e, ptr %i.d, align 8, !noalias !2504
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @672, ptr %i.ga, align 8, !noalias !2504
  %i.gb = invoke noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
end_hunk_7
begin_hunk_8_@_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl4save:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2822
  %i.es = load i64, ptr %i.cb, align 8, !alias.scope !2821, !noundef !10 ; 3 uses
  %i.et = icmp ult i64 %i.es, 104811045873349726
  call void @llvm.assume(i1 %i.et)
  %i.eu = load i64, ptr %i.bz, align 8, !alias.scope !2821, !noundef !10 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ew = sub nuw nsw i64 %i.es, %i.eu
  store i64 4, ptr %i.ar, align 8, !noalias !2822
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ew, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2822
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 27, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.ar, i64 noundef 1)
          to label %bb.ah unwind label %bb.ag, !noalias !2822

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #49
          to label %bb.af unwind label %.loopexit.split-lp28.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2822

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ag, %.loopexit.split-lp28.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp221, %.loopexit.split-lp28.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ex, %bb.ag ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at) #50
          to label %.body.i unwind label %.loopexit.split-lp.loopexit.split-lp.i36.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2822

.loopexit.split-lp28.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc20.i.preheader, %bb.ae
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ai, %bb.ad
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i36.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2822

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  %i.ey = load i8, ptr %i.as, align 8, !range !15, !alias.scope !2825, !noalias !2822, !noundef !10
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ai, label %.noexc20.i.preheader, !prof !13

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2826
  %i.fa = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !range !37, !alias.scope !2825, !noalias !2822, !noundef !10
  store i8 %i.fb, ptr %i.an, align 1, !noalias !2826
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #53
          to label %.noexc.i unwind label %bb.ag, !noalias !2822

.noexc.i:                                         ; preds = %bb.ai
  unreachable

.noexc20.i.preheader:                             ; preds = %bb.ah
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit21.i unwind label %.loopexit.split-lp28.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2822

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit21.i: ; preds = %.noexc20.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !2822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2822
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i unwind label %bb.aj, !noalias !2822

bb.aj:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit21.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au) #50
          to label %.body.i unwind label %.loopexit.split-lp.loopexit.split-lp.i36.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2822

_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit21.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2822
  %i.fd = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !2822, !nonnull !10, !noundef !10 ; 3 uses
  %i.ff = load i64, ptr %i.av, align 8, !range !16, !noalias !2822, !noundef !10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !2822, !noundef !10 ; 2 uses
  %i.fi = icmp sgt i64 %i.fh, -1
  call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fh
  store ptr %i.fe, ptr %i.ao, align 8, !noalias !2822
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.ff, ptr %i.fk, align 8, !noalias !2822
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.fe, ptr %i.fl, align 8, !noalias !2822
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.fj, ptr %i.fm, align 8, !noalias !2822
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ao)
          to label %bb.ak unwind label %bb.aj, !noalias !2822

bb.ak:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2822
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.al, !noalias !2822

bb.al:                                            ; preds = %bb.ak
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body.i unwind label %bb.am, !noalias !2822

bb.am:                                            ; preds = %bb.al
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2822
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.w, !noalias !2822

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2822
  %i.fp = load i64, ptr %i.dv, align 8, !alias.scope !2827, !noalias !2822, !noundef !10 ; 3 uses
  %i.fq = load i64, ptr %i.ax, align 8, !range !16, !alias.scope !2827, !noalias !2822, !noundef !10
  %i.fr = icmp eq i64 %i.fp, %i.fq
  br i1 %i.fr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #52
          to label %bb.ao unwind label %bb.w, !noalias !2822

bb.ao:                                            ; preds = %bb.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.fs = load ptr, ptr %i.du, align 8, !alias.scope !2827, !noalias !2822, !nonnull !10, !noundef !10
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fp
  store i8 10, ptr %i.ft, align 1, !noalias !2822
  %i.fu = add i64 %i.fp, 1                        ; 2 uses
  store i64 %i.fu, ptr %i.dv, align 8, !alias.scope !2827, !noalias !2822
  %i.fv = load ptr, ptr %i.du, align 8, !noalias !2822, !nonnull !10, !noundef !10
  %i.fw = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !2828 ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2828
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fv, i64 noundef range(i64 0, -9223372036854775808) %i.fu, i32 noundef %i.fw)
          to label %.noexc26.i unwind label %bb.w, !noalias !2822

.noexc26.i:                                       ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2828
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i:  ; preds = %.noexc26.i, %bb.ao
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.aq, !noalias !2822

bb.aq:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body unwind label %bb.ar, !noalias !2822

bb.ar:                                            ; preds = %bb.aq
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2822
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.noexc37.a unwind label %bb.dw

.noexc37.a:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2822
  br label %bb.u

bb.as:                                            ; preds = %.noexc
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.0..sroa_idx.i, i64 48, i1 false), !noalias !2829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2822
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.dt, ptr %i.ga, align 8, !alias.scope !2821
  %i.gb = load i64, ptr %i.cb, align 8, !alias.scope !2821, !noundef !10 ; 2 uses
  %i.gc = icmp ult i64 %i.gb, 104811045873349726
  call void @llvm.assume(i1 %i.gc)
  store i64 %i.gb, ptr %i.bz, align 8, !alias.scope !2821
  invoke void @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeEE5clearB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cf)
          to label %.noexc38 unwind label %bb.dw

.noexc38:                                         ; preds = %bb.as
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history4file11HistoryFileEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.gd)
          to label %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl25save_internal_via_rewrite.exit.thread unwind label %bb.at

bb.at:                                            ; preds = %.noexc38
  %i.ge = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.gd, align 8, !alias.scope !2830
  br label %.body

_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl25save_internal_via_rewrite.exit.thread: ; preds = %.noexc38
  store i64 2, ptr %i.gd, align 8, !alias.scope !2830
  br label %bb.fg

.loopexit.split-lp.loopexit.split-lp.i36.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.body.i
  %lpad.loopexit.split-lp219 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2822
  unreachable

bb.au:                                            ; preds = %bb.r
  %i.gf = load ptr, ptr %.sroa.5.0..sroa_idx9, align 8, !nonnull !10, !noundef !10
  %i.gg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  %i.gi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7history, i64 40) monotonic, align 8, !noalias !2832
  %.not.i39 = icmp eq i8 %i.gi, 0
  br i1 %.not.i39, label %.thread, label %bb.aw

bb.av:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2832
  %.pre = load i64, ptr %i.cg, align 8, !alias.scope !2831
  %i.gj = icmp eq i64 %.pre, 0
  br i1 %i.gj, label %.thread, label %bb.bt, !prof !2833

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2832
  store i64 0, ptr %i.al, align 8, !noalias !2832
  %i.gk = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.gk, align 8, !noalias !2832
  %i.gl = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 6 uses
  store i64 0, ptr %i.gl, align 8, !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2832
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7history, i64 24))
          to label %bb.ay unwind label %bb.ax

.body38.i:                                        ; preds = %bb.bm, %bb.bk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i43, %bb.ax
  %.pn22.pn.i = phi { ptr, i32 } [ %.pn22.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i43 ], [ %i.hs, %bb.bk ], [ %i.gm, %bb.ax ], [ %i.id, %bb.bm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #50
          to label %.body unwind label %.loopexit.split-lp111.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.bq, %bb.bo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i45, %bb.bc, %bb.ba, %bb.ay, %bb.aw
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body38.i

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2832
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !2832, !nonnull !10, !noundef !10 ; 3 uses
  %i.gp = load i64, ptr %i.ak, align 8, !range !16, !noalias !2832, !noundef !10
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !2832, !noundef !10 ; 2 uses
  %i.gs = icmp sgt i64 %i.gr, -1
  call void @llvm.assume(i1 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gr
  store ptr %i.go, ptr %i.ab, align 8, !noalias !2832
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.gp, ptr %i.gu, align 8, !noalias !2832
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.go, ptr %i.gv, align 8, !noalias !2832
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.gt, ptr %i.gw, align 8, !noalias !2832
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ab)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2832
  %i.gx = load i64, ptr %i.gl, align 8, !alias.scope !2834, !noalias !2832, !noundef !10 ; 4 uses
  %i.gy = load i64, ptr %i.al, align 8, !range !16, !alias.scope !2834, !noalias !2832, !noundef !10
  %i.gz = icmp eq i64 %i.gx, %i.gy
  br i1 %i.gz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #52
          to label %bb.bb unwind label %bb.ax

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ha = load ptr, ptr %i.gk, align 8, !alias.scope !2834, !noalias !2832, !nonnull !10, !noundef !10
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gx
  store i8 58, ptr %i.hb, align 1
  %i.hc = add i64 %i.gx, 1                        ; 3 uses
  store i64 %i.hc, ptr %i.gl, align 8, !alias.scope !2834, !noalias !2832
  %i.hd = load i64, ptr %i.al, align 8, !range !16, !alias.scope !2835, !noalias !2832, !noundef !10
  %i.he = icmp eq i64 %i.hc, %i.hd
  br i1 %i.he, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #52
          to label %bb.bd unwind label %bb.ax

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hf = load ptr, ptr %i.gk, align 8, !alias.scope !2835, !noalias !2832, !nonnull !10, !noundef !10
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hc
  store i8 32, ptr %i.hg, align 1
  %i.hh = add i64 %i.gx, 2
  store i64 %i.hh, ptr %i.gl, align 8, !alias.scope !2835, !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2832
  store i64 0, ptr %i.ah, align 8, !noalias !2832
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !2832
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2832
  %i.hi = load i64, ptr %i.cb, align 8, !alias.scope !2831, !noundef !10 ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 104811045873349726
  call void @llvm.assume(i1 %i.hj)
  %i.hk = load i64, ptr %i.bz, align 8, !alias.scope !2831, !noundef !10 ; 2 uses
  %i.hl = icmp ult i64 %i.hi, %i.hk
  br i1 %i.hl, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hm = sub nuw nsw i64 %i.hi, %i.hk
  store i64 4, ptr %i.af, align 8, !noalias !2832
  %.sroa.4.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.hm, ptr %.sroa.4.0..sroa_idx.i42, align 8, !noalias !2832
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 29, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.af, i64 noundef 1)
          to label %bb.bi unwind label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #49
          to label %bb.bg unwind label %.loopexit.split-lp115.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i43: ; preds = %bb.bh, %.loopexit.split-lp115.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn22.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp230, %.loopexit.split-lp115.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.hn, %bb.bh ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #50
          to label %.body38.i unwind label %.loopexit.split-lp111.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp115.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc35.i.preheader, %bb.bf
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i43

bb.bg:                                            ; preds = %bb.bf
  unreachable

bb.bh:                                            ; preds = %bb.bj, %bb.be
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i43 unwind label %.loopexit.split-lp111.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  %i.ho = load i8, ptr %i.ag, align 8, !range !15, !alias.scope !2836, !noalias !2832, !noundef !10
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bj, label %.noexc35.i.preheader, !prof !13

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2837
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !range !37, !alias.scope !2836, !noalias !2832, !noundef !10
  store i8 %i.hr, ptr %i.z, align 1, !noalias !2837
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #53
          to label %.noexc.i56 unwind label %bb.bh

.noexc.i56:                                       ; preds = %bb.bj
  unreachable

.noexc35.i.preheader:                             ; preds = %bb.bi
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit36.i unwind label %.loopexit.split-lp115.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit36.i: ; preds = %.noexc35.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2832
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i44 unwind label %bb.bk

bb.bk:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i44, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit36.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #50
          to label %.body38.i unwind label %.loopexit.split-lp111.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i44: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit36.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2832
  %i.ht = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !2832, !nonnull !10, !noundef !10 ; 3 uses
  %i.hv = load i64, ptr %i.aj, align 8, !range !16, !noalias !2832, !noundef !10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !2832, !noundef !10 ; 2 uses
  %i.hy = icmp sgt i64 %i.hx, -1
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hx
  store ptr %i.hu, ptr %i.aa, align 8, !noalias !2832
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.hv, ptr %i.ia, align 8, !noalias !2832
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.hu, ptr %i.ib, align 8, !noalias !2832
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.hz, ptr %i.ic, align 8, !noalias !2832
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.bl unwind label %bb.bk

bb.bl:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2832
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
end_hunk_8
begin_hunk_9_@_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl4save:bb.a
bb.cv:                                            ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit51.i.i
  store i64 %i.mw, ptr %i.r, align 8, !noalias !2853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2853
  store <2 x ptr> <ptr @32, ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish>, ptr %i.q, align 16, !noalias !2853
  store ptr %i.r, ptr %i.kx, align 16, !noalias !2853
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !2853
  %i.mx = invoke noundef ptr @_RNvYINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull @33, ptr noundef nonnull %i.q)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2852 ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %.not.i72.i = icmp eq ptr %i.mx, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2853
  br i1 %.not.i72.i, label %bb.cx, label %bb.do

bb.cx:                                            ; preds = %bb.cw
  %i.my = icmp eq i64 %i.mt, %i.mp
  %.not46.i.i = icmp eq i32 %i.mv, %i.mr
  %or.cond.i.i = and i1 %i.my, %.not46.i.i
  br i1 %or.cond.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2853
  %i.mz = invoke noundef i64 @_RNvNtNtCs8frGy5WneL6_4fish7history4file15time_to_seconds(i64 noundef %i.mt, i32 noundef %i.mv)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2852

bb.cz:                                            ; preds = %bb.db, %bb.cx
  %i.na = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.nb = load ptr, ptr %i.na, align 8, !alias.scope !2852, !nonnull !10, !noundef !10 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.nd = load i64, ptr %i.nc, align 8, !alias.scope !2852, !noundef !10 ; 2 uses
  %i.ne = icmp eq i64 %i.nd, 0
  br i1 %i.ne, label %.loopexit.i.i, label %bb.de

bb.da:                                            ; preds = %bb.cy
  store i64 %i.mz, ptr %i.p, align 8, !noalias !2853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2853
  store <2 x ptr> <ptr @35, ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish>, ptr %i.o, align 16, !noalias !2853
  store ptr %i.p, ptr %i.ky, align 16, !noalias !2853
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !2853
  %i.nf = invoke noundef ptr @_RNvYINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull @33, ptr noundef nonnull %i.o)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2852 ; 2 uses

bb.db:                                            ; preds = %bb.da
  %.not47.i.i = icmp eq ptr %i.nf, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2853
  br i1 %.not47.i.i, label %bb.cz, label %bb.do

.loopexit.i.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit56.i.i, %bb.cz
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit58.i.i unwind label %bb.dc, !noalias !2852

bb.dc:                                            ; preds = %.loopexit.i.i
  %i.ng = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i53 unwind label %bb.dd, !noalias !2852

bb.dd:                                            ; preds = %bb.dc
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2852
  unreachable

bb.de:                                            ; preds = %bb.cz
  %i.ni = invoke noundef ptr @_RNvYINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 19 to ptr))
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2852 ; 2 uses

bb.df:                                            ; preds = %bb.de
  %.not48.i.i = icmp eq ptr %i.ni, null
  br i1 %.not48.i.i, label %.lr.ph.i.i, label %bb.do

.lr.ph.i.i:                                       ; preds = %bb.df
  %.idx.i.i = mul nuw nsw i64 %i.nd, 24
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 %.idx.i.i
  br label %bb.dg

bb.dg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit56.i.i, %.lr.ph.i.i
  %.sroa.019.060.i.i = phi ptr [ %i.nb, %.lr.ph.i.i ], [ %i.nk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit56.i.i ] ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.019.060.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2853
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.019.060.i.i)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2852

bb.dh:                                            ; preds = %bb.dg
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend20escape_yaml_fish_2_0(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.dj unwind label %bb.di, !noalias !2852

bb.di:                                            ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit53.i.i, %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit52.i.i, %bb.dj, %bb.dh
  %i.nl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #50
          to label %.body.i.i unwind label %bb.dn, !noalias !2852

bb.dj:                                            ; preds = %bb.dh
  invoke void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 6)
          to label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit52.i.i unwind label %bb.di, !noalias !2852

_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit52.i.i: ; preds = %bb.dj
  %i.nm = load ptr, ptr %i.kz, align 8, !noalias !2853, !nonnull !10, !noundef !10
  %i.nn = load i64, ptr %i.la, align 8, !noalias !2853, !noundef !10
  invoke void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nm, i64 noundef range(i64 0, -9223372036854775808) %i.nn)
          to label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit53.i.i unwind label %bb.di, !noalias !2852

_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit53.i.i: ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit52.i.i
  invoke void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 1)
          to label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit54.i.i unwind label %bb.di, !noalias !2852

_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit54.i.i: ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit53.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.dl unwind label %bb.dk, !noalias !2852

bb.dk:                                            ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit54.i.i
  %i.no = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i.i unwind label %bb.dm, !noalias !2852

bb.dl:                                            ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit54.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit56.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2852

bb.dm:                                            ; preds = %bb.dk
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2852
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit56.i.i: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2853
  %i.nq = icmp eq ptr %i.nk, %i.nj
  br i1 %i.nq, label %.loopexit.i.i, label %bb.dg

bb.dn:                                            ; preds = %bb.di, %.body.i.i
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2852
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit58.i.i: ; preds = %bb.do, %.loopexit.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.2.i.i, %bb.do ], [ null, %.loopexit.i.i ] ; 2 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp.i51.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %bb.df, %bb.db, %bb.cw
  %.sroa.0.2.i.i = phi ptr [ %i.ni, %bb.df ], [ %i.mx, %bb.cw ], [ %i.nf, %bb.db ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit58.i.i unwind label %bb.dp, !noalias !2852

bb.dp:                                            ; preds = %bb.do
  %i.ns = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i53 unwind label %bb.dq, !noalias !2852

bb.dq:                                            ; preds = %bb.dp
  %i.nt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2852
  unreachable

bb.dr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit58.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2853
  %.not.i.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i.i, label %._RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit_crit_edge.i, label %bb.ds, !prof !21

._RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit_crit_edge.i: ; preds = %bb.dr
  %.pre.i = load i64, ptr %i.cb, align 8, !alias.scope !2831
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit.i

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2832
  store ptr %.sroa.0.1.i.i, ptr %i.y, align 8, !noalias !2832
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #49
          to label %bb.du unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.nu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #50
          to label %.body.i53 unwind label %bb.dv

bb.du:                                            ; preds = %bb.ds
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %i.nv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit.i: ; preds = %._RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit_crit_edge.i, %bb.cs
  %i.nw = phi i64 [ %.pre.i, %._RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit_crit_edge.i ], [ %i.mc, %bb.cs ] ; 3 uses
  %i.nx = add nuw nsw i64 %.sroa.04.0127.i, 1     ; 3 uses
  %i.ny = icmp ult i64 %i.nw, 104811045873349726
  call void @llvm.assume(i1 %i.ny)
  %i.nz = icmp ult i64 %i.nx, %i.nw
  br i1 %i.nz, label %bb.cs, label %._crit_edge.loopexit.i

.loopexit.split-lp111.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.body.i53, %bb.bk, %bb.bh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i43, %.body38.i
  %lpad.loopexit.split-lp228 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.at, %bb.aq, %.body.i, %.body38.i, %bb.br, %.body46.i, %bb.dw, %.body104, %.body79
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %.body79 ], [ %.pn, %.body104 ], [ %.pn.pn.i, %.body.i ], [ %i.fy, %bb.aq ], [ %i.ge, %bb.at ], [ %i.oa, %bb.dw ], [ %i.io, %bb.br ], [ %.pn22.pn.i, %.body38.i ], [ %.pn.i49, %.body46.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by) #50
          to label %common.resume unwind label %bb.ff

bb.dw:                                            ; preds = %bb.fn, %bb.ec, %.thread, %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i48, %bb.as, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i, %bb.u
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dx:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2832
  %.val27.i = load i32, ptr %i.ae, align 8, !range !28, !noalias !2832, !noundef !10
  %.val28.i = load i32, ptr %i.iv, align 4, !noalias !2832
  %i.ob = call noundef i32 @close(i32 noundef %.val27.i) #48 ; 0 uses
  %i.oc = call noundef i32 @close(i32 noundef %.val28.i) #48 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2832
  br label %bb.fg

.body79:                                          ; preds = %bb.fa, %bb.dy, %.body73
  %.pn28 = phi { ptr, i32 } [ %eh.lpad-body74, %.body73 ], [ %i.od, %bb.dy ], [ %i.qx, %bb.fa ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt) #50
          to label %.body unwind label %bb.ff

bb.dy:                                            ; preds = %bb.fb
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body79

bb.dz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit71.i, %bb.bu
  %.sroa.0.0.i54.ph = phi ptr [ %.sroa.0.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit71.i ], [ %i.it, %bb.bu ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr %.sroa.0.0.i54.ph, ptr %i.bt, align 8
  %i.oe = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7history, i64 40) monotonic, align 8
  %.not24 = icmp eq i8 %i.oe, 0
  br i1 %.not24, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2854
  %i.of = ptrtoint ptr %.sroa.0.0.i54.ph to i64   ; 2 uses
  %i.og = and i64 %i.of, 3
  switch i64 %i.og, label %default.unreachable [
    i64 2, label %bb.fd
    i64 3, label %bb.eb
    i64 0, label %bb.fd
    i64 1, label %bb.ec
  ], !prof !27

bb.eb:                                            ; preds = %bb.ea
  %i.oh = icmp ult ptr %.sroa.0.0.i54.ph, inttoptr (i64 188978561024 to ptr)
  %i.oi = and i64 %i.of, 1095216660480
  %i.oj = icmp ne i64 %i.oi, 1095216660480
  call void @llvm.assume(i1 %i.oh)
  call void @llvm.assume(i1 %i.oj)
  br label %bb.fd

bb.ec:                                            ; preds = %bb.ea
  %i.ok = getelementptr i8, ptr %.sroa.0.0.i54.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ok) ]
  %i.ol = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ok, ptr %i.ol, align 8, !alias.scope !2855, !noalias !2854
  store i8 3, ptr %i.m, align 8, !alias.scope !2855, !noalias !2854
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ol)
          to label %bb.fd unwind label %bb.dw

bb.ed:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store i64 0, ptr %i.bs, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.om, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 8 uses
  store i64 0, ptr %i.on, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7history, i64 24))
          to label %bb.ef unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ez, %bb.ex, %bb.ep, %bb.ej, %bb.eh, %bb.ev, %bb.en, %bb.em, %bb.ek, %bb.ef, %bb.ed
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.body73:                                          ; preds = %bb.er, %bb.ee
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.oo, %bb.ee ], [ %i.qh, %bb.er ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs) #50
          to label %.body79 unwind label %bb.ff

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.op = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.or = load i64, ptr %i.br, align 8, !range !16, !noundef !10
  %i.os = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ot = load i64, ptr %i.os, align 8, !noundef !10 ; 2 uses
  %i.ou = icmp sgt i64 %i.ot, -1
  call void @llvm.assume(i1 %i.ou)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ot
  store ptr %i.oq, ptr %i.bj, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %i.or, ptr %i.ow, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.oq, ptr %i.ox, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.ov, ptr %i.oy, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bj)
          to label %bb.eg unwind label %bb.ee

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.oz = load i64, ptr %i.on, align 8, !alias.scope !2856, !noundef !10 ; 4 uses
  %i.pa = load i64, ptr %i.bs, align 8, !range !16, !alias.scope !2856, !noundef !10
  %i.pb = icmp eq i64 %i.oz, %i.pa
  br i1 %i.pb, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #52
          to label %bb.ei unwind label %bb.ee

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  %i.pc = load ptr, ptr %i.om, align 8, !alias.scope !2856, !nonnull !10, !noundef !10
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.oz
  store i8 58, ptr %i.pd, align 1
  %i.pe = add i64 %i.oz, 1                        ; 3 uses
  store i64 %i.pe, ptr %i.on, align 8, !alias.scope !2856
  %i.pf = load i64, ptr %i.bs, align 8, !range !16, !alias.scope !2857, !noundef !10
  %i.pg = icmp eq i64 %i.pe, %i.pf
  br i1 %i.pg, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #52
          to label %bb.ek unwind label %bb.ee

bb.ek:                                            ; preds = %bb.ei, %bb.ej
  %i.ph = load ptr, ptr %i.om, align 8, !alias.scope !2857, !nonnull !10, !noundef !10
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pe
  store i8 32, ptr %i.pi, align 1
  %i.pj = add i64 %i.oz, 2
  store i64 %i.pj, ptr %i.on, align 8, !alias.scope !2857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.el unwind label %bb.ee

bb.el:                                            ; preds = %bb.ek
  %i.pk = load i64, ptr %i.bi, align 8, !range !12, !noundef !10
  %i.pl = trunc nuw i64 %i.pk to i1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  br i1 %i.pl, label %bb.em, label %bb.en, !prof !13

bb.em:                                            ; preds = %bb.el
  %i.pn = load i64, ptr %i.pm, align 8, !range !22, !noundef !10
  %i.po = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.pp = load i64, ptr %i.po, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.pn, i64 %i.pp) #49
          to label %bb.fe unwind label %bb.ee

bb.en:                                            ; preds = %bb.el
  %i.pq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.ps = load i64, ptr %i.pm, align 8, !range !16, !noundef !10 ; 2 uses
  %i.pt = icmp samesign ugt i64 %i.ps, 27
  call void @llvm.assume(i1 %i.pt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.pr, ptr noundef nonnull align 1 dereferenceable(28) @253, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 28
  store ptr %i.pr, ptr %i.bh, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.ps, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.pr, ptr %i.pw, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr %i.pu, ptr %i.px, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bh)
          to label %bb.eo unwind label %bb.ee

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.py = load i64, ptr %i.on, align 8, !alias.scope !2858, !noundef !10 ; 3 uses
  %i.pz = load i64, ptr %i.bs, align 8, !range !16, !alias.scope !2858, !noundef !10
  %i.qa = icmp eq i64 %i.py, %i.pz
  br i1 %i.qa, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #52
          to label %bb.eq unwind label %bb.ee

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %i.qb = load ptr, ptr %i.om, align 8, !alias.scope !2858, !nonnull !10, !noundef !10
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.py
  store i8 32, ptr %i.qc, align 1
  %i.qd = add i64 %i.py, 1
  store i64 %i.qd, ptr %i.on, align 8, !alias.scope !2858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2859
  store i64 0, ptr %i.l, align 8, !noalias !2859
end_hunk_9
begin_hunk_10_@_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE4growB1b_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2901, !nonnull !10, !noundef !10 ; 2 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %i.a
  %i.u = mul nuw nsw i64 %i.i, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !2901
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_.exit

_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE4iterB1b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %.val = load i64, ptr %1, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8frGy5WneL6_4fish(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !2904 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val2                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.5.0
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.11.0
  store ptr %i.p, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.u, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveB1b_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 5 uses
  %i.c = add i64 %i.b, %1                         ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !16, !noundef !10 ; 7 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.d, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @263, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #53
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = sub i64 %i.e, %i.b                       ; 2 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.i, label %bb.e, !prof !13

_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_.exit: ; preds = %bb.h, %bb.g, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.i, %bb.d
  %.pre-phi = phi i64 [ %.pre8, %bb.i ], [ %i.g, %bb.d ]
  %i.i = phi i64 [ %.pre7, %bb.i ], [ %i.b, %bb.d ]
  %i.j = phi i64 [ %.pre, %bb.i ], [ %i.e, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2907, !noundef !10 ; 3 uses
  %.not.i = icmp ugt i64 %i.l, %.pre-phi
  br i1 %.not.i, label %bb.f, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = sub i64 %i.e, %i.l                       ; 4 uses
  %i.n = sub i64 %i.i, %i.m                       ; 3 uses
  %i.o = icmp ule i64 %i.m, %i.n
  %i.p = sub nsw i64 %i.j, %i.e
  %.not2.i = icmp ult i64 %i.p, %i.n
  %or.cond.i = select i1 %i.o, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = sub i64 %i.j, %i.m                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2907, !nonnull !10, !noundef !10 ; 2 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %i.l
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %i.q
  %i.v = mul nuw nsw i64 %i.m, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.v, i1 false), !noalias !2907
  store i64 %i.q, ptr %i.k, align 8, !alias.scope !2907
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2907, !nonnull !10, !noundef !10 ; 2 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.e
  %i.z = mul nuw nsw i64 %i.n, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.x, i64 %i.z, i1 false), !noalias !2907
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_.exit

bb.i:                                             ; preds = %bb.d
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 48)
  %.pre = load i64, ptr %0, align 8, !range !16, !alias.scope !2907
  %.pre7 = load i64, ptr %i.a, align 8, !alias.scope !2907 ; 2 uses
  %.pre8 = sub i64 %i.e, %.pre7
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE8truncateB1b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not = icmp ult i64 %1, %i.b
  br i1 %.not, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8frGy5WneL6_4fish(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !2910 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.e, %.val2                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.011.0 = phi i64 [ %.sroa.04.0.i, %bb.e ], [ %.sroa.04.0.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.512.0 = phi i64 [ %i.m, %bb.e ], [ %.val, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0 = phi i64 [ 0, %bb.e ], [ %i.l, %bb.d ], [ 0, %bb.b ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.p = sub i64 %.sroa.512.0, %.sroa.011.0       ; 4 uses
  %i.q = icmp ugt i64 %1, %i.p
  store i64 %1, ptr %i.a, align 8
  br i1 %i.q, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit
  %i.r = sub nuw i64 %1, %i.p                     ; 3 uses
  %i.s = sub nuw i64 %.sroa.11.0, %i.r            ; 3 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.u = icmp eq i64 %.sroa.11.0, %i.r
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %.lr.ph45

bb.g:                                             ; preds = %.lr.ph45
  %i.v = icmp eq i64 %i.x, %i.s
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.i44 = phi i64 [ %i.x, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.sroa.0.0.i44
  %i.x = add nuw nsw i64 %.sroa.0.0.i44, 1        ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w)
          to label %bb.g unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph47
  %i.y = add nuw nsw i64 %.sroa.0.1.i46, 1        ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.s
  br i1 %i.z, label %common.resume, label %.lr.ph47

bb.i:                                             ; preds = %.lr.ph45
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %i.x, %i.s
  br i1 %i.ab, label %common.resume, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i46 = phi i64 [ %i.y, %bb.h ], [ %i.x, %bb.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.sroa.0.1.i46
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac) #50
          to label %bb.h unwind label %bb.j

common.resume:                                    ; preds = %bb.p, %bb.h, %bb.q, %bb.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.ao, %.body ], [ %i.ax, %bb.q ], [ %i.aa, %bb.h ], [ %i.ax, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %.lr.ph47
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.k:                                             ; preds = %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.011.0
  %i.af = sub nuw i64 %i.p, %1                    ; 3 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %1 ; 2 uses
  %i.ah = icmp eq i64 %i.p, %1
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9.preheader, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.ai = icmp eq i64 %i.al, %i.af
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9.preheader, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9.preheader: ; preds = %bb.l, %bb.k
  %i.aj = icmp eq i64 %.sroa.11.0, 0
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %.lr.ph41

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.sroa.0.0.i737 = phi i64 [ %i.al, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %.sroa.0.0.i737
  %i.al = add nuw nsw i64 %.sroa.0.0.i737, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.l unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph39
  %i.am = add nuw nsw i64 %.sroa.0.1.i838, 1      ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.af
  br i1 %i.an, label %.body, label %.lr.ph39

bb.n:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = icmp eq i64 %i.al, %i.af
  br i1 %i.ap, label %.body, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.n, %bb.m
  %.sroa.0.1.i838 = phi i64 [ %i.am, %bb.m ], [ %i.al, %bb.n ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %.sroa.0.1.i838
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aq) #50
          to label %bb.m unwind label %bb.o

bb.o:                                             ; preds = %.lr.ph39
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.m, %bb.n
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1D_(ptr nonnull %i.o, i64 %.sroa.11.0) #50
          to label %common.resume unwind label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9: ; preds = %.lr.ph41
  %i.as = icmp eq i64 %i.au, %.sroa.11.0
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %.lr.ph41

.lr.ph41:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9.preheader, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9
  %.sroa.0.0.i.i.i40 = phi i64 [ %i.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i40
  %i.au = add nuw nsw i64 %.sroa.0.0.i.i.i40, 1   ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.at)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9 unwind label %bb.q

bb.p:                                             ; preds = %.lr.ph43
  %i.av = add nuw nsw i64 %.sroa.0.1.i.i.i42, 1   ; 2 uses
  %i.aw = icmp eq i64 %i.av, %.sroa.11.0
  br i1 %i.aw, label %common.resume, label %.lr.ph43

bb.q:                                             ; preds = %.lr.ph41
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = icmp eq i64 %i.au, %.sroa.11.0
  br i1 %i.ay, label %common.resume, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.q, %bb.p
  %.sroa.0.1.i.i.i42 = phi i64 [ %i.av, %bb.p ], [ %i.au, %bb.q ] ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i42
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.az) #50
          to label %bb.p unwind label %bb.r

bb.r:                                             ; preds = %.lr.ph43
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.s:                                             ; preds = %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit9.preheader, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE9pop_frontB1b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !16, !noundef !10 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.0.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.0.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE4iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %.val = load i64, ptr %1, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8frGy5WneL6_4fish(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !2913 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val2                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.5.0
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.11.0
  store ptr %i.p, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.u, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8pop_backCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1                         ; 3 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = load i64, ptr %0, align 8, !range !16, !noundef !10 ; 3 uses
  %i.f = icmp ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !10
  %i.i = add i64 %i.h, %i.d                       ; 2 uses
  %.not = icmp ult i64 %i.i, %i.e
  %i.j = select i1 %.not, i64 0, i64 %i.e
  %.sroa.04.0 = sub nuw i64 %i.i, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.04.0 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !10, !align !31, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.p, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %i.q = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.r = insertvalue { ptr, i64 } %i.q, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.r
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History10is_default(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplE4lockB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  %i.c = load i64, ptr %i.b, align 8, !range !12, !alias.scope !2916, !noundef !10
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2916
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2916, !nonnull !10, !align !14, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !15, !alias.scope !2916, !noundef !10
  store ptr %i.f, ptr %i.a, align 8, !noalias !2916
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !2916
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #49
          to label %bb.d unwind label %bb.c, !noalias !2916

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEEB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #50
          to label %bb.f unwind label %bb.e, !noalias !2916

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2916
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2916, !nonnull !10, !align !14, !noundef !10 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !15, !alias.scope !2916, !noundef !10
end_hunk_10
begin_hunk_11_@_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History11get_history:bb.a
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #50
          to label %.body43.i unwind label %bb.az, !noalias !2932

bb.az:                                            ; preds = %bb.ay
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2932
  unreachable

bb.ba:                                            ; preds = %bb.av
  %i.ev = shl nuw nsw i64 %i.eh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eo, ptr nonnull align 4 %i.eg, i64 %i.ev, i1 false), !noalias !2932
  br label %bb.aw

bb.bb:                                            ; preds = %bb.ax, %bb.aw
  %i.ew = load ptr, ptr %i.ad, align 8, !alias.scope !2935, !noalias !2931, !nonnull !10, !noundef !10
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2932
  %i.ey = add i64 %i.eq, 1
  store i64 %i.ey, ptr %i.ae, align 8, !alias.scope !2935, !noalias !2931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2931
  br label %bb.as

bb.bc:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2931
  br label %.backedge.i

bb.bd:                                            ; preds = %.thread.i, %.body43.i, %.body.i
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2932
  unreachable

.thread.i:                                        ; preds = %.body.i, %.thread50.i
  %.pn4049.i = phi { ptr, i32 } [ %i.ai, %.thread50.i ], [ %.pn.i, %.body.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #50
          to label %.body unwind label %bb.bd, !noalias !2932

bb.be:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit42.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.be
  %eh.lpad-body = phi { ptr, i32 } [ %i.fa, %bb.be ], [ %.pn4049.i, %.thread.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_(ptr nonnull %i.y, i8 %i.aa) #50
          to label %common.resume unwind label %bb.bk

bb.bf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2931
  %i.fb = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  br i1 %i.ab, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fc = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fd = and i64 %i.fc, 9223372036854775807
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bh, !prof !21

bb.bh:                                            ; preds = %bb.bg
  %i.ff = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #52
  br i1 %i.ff, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store atomic i8 1, ptr %i.fb monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.fg = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.fh = icmp eq i32 %i.fg, 2
  br i1 %i.fh, label %bb.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit, !prof !13

bb.bj:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.bj
  ret void

bb.bk:                                            ; preds = %.body
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History13clear_session(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplE4lockB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  %i.e = load i64, ptr %i.d, align 8, !range !12, !alias.scope !2941, !noundef !10
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2941
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2941, !nonnull !10, !align !14, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !15, !alias.scope !2941, !noundef !10
  store ptr %i.h, ptr %i.c, align 8, !noalias !2941
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.j, ptr %i.k, align 8, !noalias !2941
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #49
          to label %bb.d unwind label %bb.c, !noalias !2941

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEEB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #50
          to label %common.resume unwind label %bb.e, !noalias !2941

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2941
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !2941, !nonnull !10, !align !14, !noundef !10 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !15, !alias.scope !2941, !noundef !10 ; 2 uses
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !2942)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2942, !nonnull !10, !noundef !10 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2942, !noundef !10 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.v, 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  br label %bb.f

bb.f:                                             ; preds = %.noexc5, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.ab, %.noexc5 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2942
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !10, !noundef !10
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2942
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.af, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %i.ag = load i64, ptr %i.a, align 8, !range !12, !noalias !2942, !noundef !10
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = load i64, ptr %i.y, align 8, !range !22, !noalias !2942, !noundef !10 ; 3 uses
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !13

._crit_edge.loopexit.i:                           ; preds = %.noexc5
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !2942
  %.pre4.i = load i64, ptr %i.u, align 8, !alias.scope !2942
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit
  %i.aj = phi i64 [ %.pre4.i, %._crit_edge.loopexit.i ], [ 0, %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit ] ; 4 uses
  %i.ak = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.t, %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit ] ; 2 uses
  store i64 0, ptr %i.u, align 8, !alias.scope !2942
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.am = icmp eq i64 %i.ao, %i.aj
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.g
  %.sroa.0.0.i.i18 = phi i64 [ %i.ao, %bb.g ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [88 x i8], ptr %i.ak, i64 %.sroa.0.0.i.i18
  %i.ao = add nuw nsw i64 %.sroa.0.0.i.i18, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.an)
          to label %bb.g unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph21
  %i.ap = add nuw nsw i64 %.sroa.0.1.i.i19, 1     ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %i.aj
  br i1 %i.aq, label %.body, label %.lr.ph21

bb.i:                                             ; preds = %.lr.ph
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = icmp eq i64 %i.ao, %i.aj
  br i1 %i.as, label %.body, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i19 = phi i64 [ %i.ap, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [88 x i8], ptr %i.ak, i64 %.sroa.0.1.i.i19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.at) #50
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph21
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.k:                                             ; preds = %.noexc
  %i.av = load i64, ptr %i.z, align 8, !noalias !2942
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.av) #49
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc
  %i.aw = load ptr, ptr %i.z, align 8, !noalias !2942, !nonnull !10, !noundef !10 ; 2 uses
  %i.ax = icmp ule i64 %i.af, %i.ai
  call void @llvm.assume(i1 %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2942
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  store i64 %i.ai, ptr %i.b, align 8, !noalias !2942
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2942
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2942
  %i.ay = invoke noundef i8 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i1 noundef zeroext false)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc5:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2942
  %i.az = icmp eq ptr %i.ab, %i.w
  br i1 %i.az, label %._crit_edge.loopexit.i, label %bb.f

bb.n:                                             ; preds = %bb.l
  %i.ba = shl nuw nsw i64 %i.af, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr nonnull align 4 %i.ad, i64 %i.ba, i1 false)
  br label %bb.m

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.f, %bb.k
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp23, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ar, %bb.i ], [ %i.ar, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_(ptr nonnull %i.o, i8 %i.q) #50
          to label %common.resume unwind label %bb.s

._crit_edge:                                      ; preds = %bb.g, %._crit_edge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  store i64 0, ptr %i.bb, align 8, !alias.scope !2942
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br i1 %i.r, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bd = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.be = and i64 %i.bd, 9223372036854775807
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.bg = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #52
  br i1 %i.bg, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.bc monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %._crit_edge
  %i.bh = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit, !prof !13

bb.r:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.o)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.r
  ret void

bb.s:                                             ; preds = %.body
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History13item_at_index(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.617.sroa.5 = alloca [24 x i8], align 8   ; 5 uses
  %.sroa.617.sroa.6 = alloca [32 x i8], align 8   ; 5 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplE4lockB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  %i.f = load i64, ptr %i.d, align 8, !range !12, !alias.scope !2948, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2948
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2948, !nonnull !10, !align !14, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !15, !alias.scope !2948, !noundef !10
  store ptr %i.i, ptr %i.c, align 8, !noalias !2948
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.k, ptr %i.l, align 8, !noalias !2948
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #49
          to label %bb.d unwind label %bb.c, !noalias !2948

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEEB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #50
          to label %common.resume unwind label %bb.e, !noalias !2948

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2948
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.c ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2948, !nonnull !10, !align !14, !noundef !10 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !15, !alias.scope !2948, !noundef !10 ; 2 uses
  %i.s = trunc nuw i8 %i.r to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke void @_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl13item_at_index(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.t, i64 noundef %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.p, %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ae, %bb.q ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_(ptr nonnull %i.p, i8 %i.r) #50
          to label %common.resume unwind label %bb.t

bb.g:                                             ; preds = %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit
  %i.v = load i64, ptr %i.e, align 8, !range !25, !noundef !10 ; 3 uses
  %.not = icmp eq i64 %i.v, -2
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.6.sroa.4.0.copyload = load i8, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %.not7 = icmp eq i64 %i.v, -1
  br i1 %.not7, label %bb.p, label %bb.o

bb.i:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.s, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br i1 %i.s, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_11
begin_hunk_12_@_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History22remove_ephemeral_items:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2965, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !range !16, !alias.scope !2965
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_.exit.i, %.lr.ph.i
  %i.w = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_.exit.i ] ; 4 uses
  %i.x = getelementptr [88 x i8], ptr %i.u, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = load i8, ptr %i.y, align 8, !range !23, !noalias !2965, !noundef !10
  %i.aa = icmp eq i8 %i.z, 2
  br i1 %i.aa, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2965
  %i.ab = add nsw i64 %i.w, -1                    ; 5 uses
  store i64 %i.ab, ptr %i.r, align 8, !alias.scope !2965
  %i.ac = icmp samesign ult i64 %i.ab, %i.v
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp ult i64 %i.w, 104811045873349727
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.ae, i64 88, i1 false), !noalias !2965
  %i.af = load i64, ptr %i.a, align 8, !range !26, !alias.scope !2966, !noalias !2965, !noundef !10
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_.exit.i unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2965
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %.loopexit, label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_(ptr nonnull %i.n, i8 %i.p) #50
          to label %common.resume unwind label %bb.n

.loopexit:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_.exit.i, %bb.f, %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit
  %.lcssa.i = phi i64 [ 0, %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit ], [ %i.w, %bb.f ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_.exit.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 216 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !2965, !noundef !10
  %i.ak = icmp ult i64 %.lcssa.i, 104811045873349726
  call void @llvm.assume(i1 %i.ak)
  %..i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.lcssa.i, i64 %i.aj)
  store i64 %..i.i, ptr %i.ai, align 8, !alias.scope !2965
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br i1 %i.q, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.am = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.ap = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #52
  br i1 %i.ap, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %.loopexit
  %i.aq = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit, !prof !13

bb.m:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.n)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.m
  ret void

bb.n:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History28incorporate_external_changes(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplE4lockB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !2973)
  %i.c = load i64, ptr %i.b, align 8, !range !12, !alias.scope !2973, !noundef !10
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2973
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2973, !nonnull !10, !align !14, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !15, !alias.scope !2973, !noundef !10
  store ptr %i.f, ptr %i.a, align 8, !noalias !2973
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !2973
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #49
          to label %bb.d unwind label %bb.c, !noalias !2973

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEEB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #50
          to label %common.resume unwind label %bb.e, !noalias !2973

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2973
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2973, !nonnull !10, !align !14, !noundef !10 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !15, !alias.scope !2973, !noundef !10 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = invoke { i64, i32 } @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime3now()
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit
  %i.s = extractvalue { i64, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { i64, i32 } %i.r, 1        ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2974, !noundef !10 ; 2 uses
  %i.w = icmp eq i64 %i.s, %i.v
  br i1 %i.w, label %.split.i, label %bb.f

.split.i:                                         ; preds = %.noexc
  %i.x = icmp ult i32 %i.t, 1000000000
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.z = load i32, ptr %i.y, align 8, !range !18, !alias.scope !2974, !noundef !10
  %i.aa = icmp samesign ugt i32 %i.t, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl28incorporate_external_changes.exit

bb.f:                                             ; preds = %.noexc
  %i.ab = icmp sgt i64 %i.s, %i.v
  br i1 %i.ab, label %bb.g, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl28incorporate_external_changes.exit

bb.g:                                             ; preds = %bb.f, %.split.i
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !2974
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  store i32 %i.t, ptr %i.ac, align 8, !alias.scope !2974
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history4file11HistoryFileEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad)
          to label %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.ad, align 8, !alias.scope !2975
  br label %.body

_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state.exit.i: ; preds = %bb.g
  store i64 2, ptr %i.ad, align 8, !alias.scope !2975
  invoke fastcc void @_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl4save(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.q, i1 noundef zeroext false)
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2974, !nonnull !10, !noundef !10 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !2974, !noundef !10 ; 4 uses
  store i64 0, ptr %i.ah, align 8, !alias.scope !2974
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_.exit.i, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.ak = icmp eq i64 %i.am, %i.ai
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc4, %bb.i
  %.sroa.0.0.i.i8 = phi i64 [ %i.am, %bb.i ], [ 0, %.noexc4 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %.sroa.0.0.i.i8
  %i.am = add nuw nsw i64 %.sroa.0.0.i.i8, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.al)
          to label %bb.i unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph10
  %i.an = add nuw nsw i64 %.sroa.0.1.i.i9, 1      ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.ai
  br i1 %i.ao, label %.body, label %.lr.ph10

bb.k:                                             ; preds = %.lr.ph
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = icmp eq i64 %i.am, %i.ai
  br i1 %i.aq, label %.body, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.k, %bb.j
  %.sroa.0.1.i.i9 = phi i64 [ %i.an, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %.sroa.0.1.i.i9
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ar) #50
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %.lr.ph10
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_.exit.i: ; preds = %bb.i, %.noexc4
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  store i64 0, ptr %i.at, align 8, !alias.scope !2974
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl28incorporate_external_changes.exit

bb.m:                                             ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state.exit.i, %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.h, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.ae, %bb.h ], [ %i.ap, %bb.k ], [ %i.ap, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_(ptr nonnull %i.m, i8 %i.o) #50
          to label %common.resume unwind label %bb.r

_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl28incorporate_external_changes.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_.exit.i, %bb.f, %.split.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl28incorporate_external_changes.exit
  %i.aw = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ax = and i64 %i.aw, 9223372036854775807
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  %i.az = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #52
  br i1 %i.az, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.av monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl28incorporate_external_changes.exit
  %i.ba = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit, !prof !13

bb.q:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.q
  ret void

bb.r:                                             ; preds = %.body
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History31add_pending_with_file_detection(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull align 8 %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [20 x i8], align 1                ; 3 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 17 uses
  %i.x = alloca [8 x i8], align 8                 ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 20 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 23 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [88 x i8], align 8               ; 4 uses
  %i.am = alloca [144 x i8], align 8              ; 10 uses
  %i.an = alloca [8 x i8], align 8                ; 6 uses
  %i.ao = alloca [88 x i8], align 8               ; 4 uses
  %i.ap = alloca [88 x i8], align 8               ; 8 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [88 x i8], align 8               ; 13 uses
  %i.at = alloca [64 x i8], align 8               ; 11 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 11 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %i.ba = alloca [24 x i8], align 8               ; 2 uses
  %i.bb = alloca [24 x i8], align 8               ; 12 uses
  %i.bc = alloca [96 x i8], align 8               ; 8 uses
  %i.bd = icmp eq i64 %2, 0
  %.sink123.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sink123.i.sroa.gep91 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sink123.i.sroa.gep92 = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.fp, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @_RNvNtCs8frGy5WneL6_4fish3ast5parse(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i48 0, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  store i64 0, ptr %i.bf, align 8
  invoke void @_RNvMsz_NtCs8frGy5WneL6_4fish3astNtB5_3Ast4walkB7_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bc)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.q
  br i1 %i.eg, label %.thread, label %.body50

bb.d:                                             ; preds = %bb.ae, %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  br label %.outer

.outer:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, %bb.e
  %.sroa.0.0.ph = phi i1 [ %...sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit ], [ false, %bb.e ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %.outer
  %i.bv = invoke { ptr, ptr } @_RNvXsx_NtCs8frGy5WneL6_4fish3astNtB5_9TraversalNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

.body75:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.gq, %bb.ge, %bb.gn
  %.pn33 = phi { ptr, i32 } [ %i.sg, %bb.gn ], [ %i.rp, %bb.ge ], [ %i.sk, %bb.gq ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #50
          to label %.thread unwind label %bb.fq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.gb, %bb.f, %bb.h, %bb.fv, %bb.fw, %bb.fz, %bb.fy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.gl, %bb.gk, %bb.gi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body75

bb.g:                                             ; preds = %bb.f
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0      ; 3 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %bb.i, label %bb.h
end_hunk_12
begin_hunk_13_@_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History4save:bb.a
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History4size(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplE4lockB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !3165)
  %i.c = load i64, ptr %i.b, align 8, !range !12, !alias.scope !3165, !noundef !10
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3165
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3165, !nonnull !10, !align !14, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !15, !alias.scope !3165, !noundef !10
  store ptr %i.f, ptr %i.a, align 8, !noalias !3165
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !3165
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #49
          to label %bb.d unwind label %bb.c, !noalias !3165

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEEB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #50
          to label %common.resume unwind label %bb.e, !noalias !3165

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !3165
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.ae, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3165, !nonnull !10, !align !14, !noundef !10 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !15, !alias.scope !3165, !noundef !10 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3166, !noundef !10 ; 3 uses
  %i.t = icmp ult i64 %i.s, 104811045873349726
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 284
  %i.v = load i8, ptr %i.u, align 4, !range !15, !alias.scope !3166, !noundef !10
  %i.w = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl18load_old_if_needed(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.q)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit
  %i.x = icmp ne i64 %i.s, 0
  %i.y = trunc nuw i8 %i.v to i1
  %or.cond.i = and i1 %i.x, %i.y
  %i.z = sext i1 %or.cond.i to i64
  %spec.select.i = add nsw i64 %i.s, %i.z         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !10
  %i.ac = add i64 %i.ab, %spec.select.i           ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %spec.select.i
  br i1 %i.ad, label %bb.f, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl4size.exit

bb.f:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #53
          to label %.noexc4 unwind label %bb.g

.noexc4:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_(ptr nonnull %i.m, i8 %i.o) #50
          to label %common.resume unwind label %bb.l

_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl4size.exit: ; preds = %.noexc
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl4size.exit
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.aj = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #52
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl4size.exit
  %i.ak = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit, !prof !13

bb.k:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.k
  ret i64 %i.ac

bb.l:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History5clear(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplE4lockB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !3183)
  %i.g = load i64, ptr %i.f, align 8, !range !12, !alias.scope !3183, !noundef !10
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3183
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3183, !nonnull !10, !align !14, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !15, !alias.scope !3183, !noundef !10
  store ptr %i.j, ptr %i.e, align 8, !noalias !3183
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %i.l, ptr %i.m, align 8, !noalias !3183
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #49
          to label %bb.d unwind label %bb.c, !noalias !3183

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEEB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #50
          to label %common.resume unwind label %bb.e, !noalias !3183

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !3183
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.c ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !3183, !nonnull !10, !align !14, !noundef !10 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !15, !alias.scope !3183, !noundef !10 ; 2 uses
  %i.t = trunc nuw i8 %i.s to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3184)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !3184, !nonnull !10, !noundef !10 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !3184, !noundef !10 ; 4 uses
  store i64 0, ptr %i.x, align 8, !alias.scope !3184
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_.exit.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.aa = icmp eq i64 %i.ac, %i.y
  br i1 %i.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit, %bb.f
  %.sroa.0.0.i.i10 = phi i64 [ %i.ac, %bb.f ], [ 0, %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %.sroa.0.0.i.i10
  %i.ac = add nuw nsw i64 %.sroa.0.0.i.i10, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ab)
          to label %bb.f unwind label %bb.h, !noalias !3184

bb.g:                                             ; preds = %.lr.ph12
  %i.ad = add nuw nsw i64 %.sroa.0.1.i.i11, 1     ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.y
  br i1 %i.ae, label %.body, label %.lr.ph12

bb.h:                                             ; preds = %.lr.ph
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq i64 %i.ac, %i.y
  br i1 %i.ag, label %.body, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i11 = phi i64 [ %i.ad, %bb.g ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %.sroa.0.1.i.i11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ah) #50
          to label %bb.g unwind label %bb.i, !noalias !3184

bb.i:                                             ; preds = %.lr.ph12
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !3184
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_.exit.i: ; preds = %bb.f, %_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3imp.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  invoke void @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeEE5clearB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  store i64 0, ptr %i.ak, align 8, !alias.scope !3184
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history4file11HistoryFileEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.al)
          to label %bb.j unwind label %common.resume.sink.split.i

bb.j:                                             ; preds = %.noexc
  store i64 2, ptr %i.al, align 8, !alias.scope !3184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3184
  invoke fastcc void @_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17history_file_path(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.u)
          to label %.noexc4 unwind label %bb.y

.noexc4:                                          ; preds = %bb.j
  %i.am = load i64, ptr %i.d, align 8, !range !25, !noalias !3184, !noundef !10 ; 2 uses
  %switch.i = icmp ugt i64 %i.am, -3
  br i1 %switch.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc4
  %i.an = icmp eq i64 %i.am, -2
  br i1 %i.an, label %bb.v, label %bb.t

bb.l:                                             ; preds = %.noexc4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3184
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !3184, !nonnull !10, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !3184, !noundef !10
  %i.as = invoke noundef ptr @_RNvNtCs8frGy5WneL6_4fish5wutil7wunlink(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ap, i64 noundef %i.ar)
          to label %bb.n unwind label %bb.m       ; 4 uses

bb.m:                                             ; preds = %bb.q, %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #50
          to label %.body unwind label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.au = icmp eq ptr %i.as, null
  br i1 %i.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3185
  %i.av = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i
    i64 1, label %bb.q
  ], !prof !27

default.unreachable:                              ; preds = %bb.v, %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp ult ptr %i.as, inttoptr (i64 188978561024 to ptr)
  %i.ay = and i64 %i.av, 1095216660480
  %i.az = icmp ne i64 %i.ay, 1095216660480
  call void @llvm.assume(i1 %i.ax)
  call void @llvm.assume(i1 %i.az)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ba = getelementptr i8, ptr %i.as, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !3186, !noalias !3185
  store i8 3, ptr %i.b, align 8, !alias.scope !3186, !noalias !3185
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3185
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i, %bb.n
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc5 unwind label %bb.y

.noexc5:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3184
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit15.i, %.noexc5, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3184
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history4file11HistoryFileEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.al)
          to label %bb.z unwind label %common.resume.sink.split.i

common.resume.sink.split.i:                       ; preds = %bb.t, %.noexc
  %i.be = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.al, align 8, !alias.scope !3184
  br label %.body

bb.u:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.v:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !3187)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3188)
  %.val.i.i10.i = load ptr, ptr %i.bg, align 8, !alias.scope !3189, !noalias !3184, !nonnull !10, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3190
  %i.bh = ptrtoint ptr %.val.i.i10.i to i64       ; 2 uses
  %i.bi = and i64 %i.bh, 3
  switch i64 %i.bi, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit15.i
    i64 3, label %bb.w
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit15.i
    i64 1, label %bb.x
  ], !prof !27

bb.w:                                             ; preds = %bb.v
  %i.bj = icmp ult ptr %.val.i.i10.i, inttoptr (i64 188978561024 to ptr)
  %i.bk = and i64 %i.bh, 1095216660480
  %i.bl = icmp ne i64 %i.bk, 1095216660480
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.assume(i1 %i.bl)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit15.i

bb.x:                                             ; preds = %bb.v
  %i.bm = getelementptr i8, ptr %.val.i.i10.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !3191, !noalias !3190
  store i8 3, ptr %i.a, align 8, !alias.scope !3191, !noalias !3190
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit15.i unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit15.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3190
  br label %bb.t

bb.y:                                             ; preds = %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.m, %bb.r, %common.resume.sink.split.i, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.y ], [ %i.at, %bb.m ], [ %i.be, %common.resume.sink.split.i ], [ %i.bc, %bb.r ], [ %i.af, %bb.h ], [ %i.af, %bb.g ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEEB1C_(ptr nonnull %i.q, i8 %i.s) #50
          to label %common.resume unwind label %bb.ae

bb.z:                                             ; preds = %bb.t
  store i64 2, ptr %i.al, align 8, !alias.scope !3192
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  br i1 %i.t, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ab, !prof !21
end_hunk_13
begin_hunk_14_@_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch15handle_deletion:bb.a
bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.p)
          to label %_RNvMs5_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_13HistorySearch32prepare_to_search_after_deletion.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.p, align 8, !alias.scope !3444
  br label %common.resume

_RNvMs5_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_13HistorySearch32prepare_to_search_after_deletion.exit: ; preds = %bb.i, %bb.j
  store i64 -1, ptr %i.p, align 8, !alias.scope !3444
  %i.t = call fastcc noundef zeroext i1 @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch14move_backwards(ptr noalias nofree noundef align 8 dereferenceable(304) %0) ; 0 uses
  ret void

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch17move_in_direction(ptr noalias nofree noundef align 8 dereferenceable(304) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef zeroext i1 @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch14move_backwards(ptr noalias nofree noundef align 8 dereferenceable(304) %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add i64 %i.c, -1
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch19search_result_range(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(304) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i8, ptr %i.a, align 8, !range !46, !noundef !10
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @303, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 2 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 2 uses
  %i.o = icmp ult i64 %i.n, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %i.n, %i.d                       ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.d
  br i1 %i.q, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #53
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = insertvalue { i64, i64 } poison, i64 %i.d, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %i.p, 1
  ret { i64, i64 } %i.s

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch22search_range_if_active(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(304) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load i8, ptr %i.a, align 8, !range !46, !noundef !10
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 2 uses
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.m = load i64, ptr %i.l, align 8, !noundef !10 ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !10
  %i.q = add i64 %i.p, %i.m                       ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.m
  br i1 %i.r, label %bb.g, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #53
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3451)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !range !26, !alias.scope !3452, !noundef !10
  %.not.i.i = icmp eq i64 %i.t, -1
  br i1 %.not.i.i, label %bb.f, label %_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch13search_string.exit, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #53, !noalias !3452
  unreachable

_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch13search_string.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !3450, !noundef !10
  %i.w = tail call { i32, i32 } @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3new(i64 noundef %i.q, i64 noundef %i.v) ; 2 uses
  %i.x = extractvalue { i32, i32 } %i.w, 0
  %i.y = extractvalue { i32, i32 } %i.w, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.x, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.y, ptr %i.aa, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @308) #53
  unreachable

bb.h:                                             ; preds = %bb.a, %_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch13search_string.exit
  %storemerge = phi i32 [ 1, %_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch13search_string.exit ], [ 0, %bb.a ]
  store i32 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch5reset(ptr noalias nofree noundef align 8 dereferenceable(304) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBI_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i16 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph18
  %i.k = add nuw nsw i64 %.sroa.0.1.i17, 1        ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.d
  br i1 %i.l, label %common.resume, label %.lr.ph18

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.i, %bb.b ] ; 2 uses
  %i.n = icmp eq i64 %i.h, %i.d
  br i1 %i.n, label %common.resume, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i17 = phi i64 [ %i.k, %bb.d ], [ %i.h, %.body.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #50
          to label %bb.d unwind label %bb.f

common.resume:                                    ; preds = %bb.d, %.body.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %.lr.ph18
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBI_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBH_.exit.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE5clearCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.r, i8 0, i64 17, i1 false)
  %i.t = load i64, ptr %i.s, align 8, !range !26, !alias.scope !3455, !noundef !10
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history13HistorySearchEEB13_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBI_.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history13HistorySearchEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history13HistorySearchEEB13_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.s, align 8
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history13HistorySearchEEB13_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBI_.exit, %bb.g
  store i64 -1, ptr %i.s, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch8add_skip(ptr noalias nofree noundef align 8 dereferenceable(304) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !align !14, !noundef !10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !17, !invariant.load !10 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EBG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull %i.i) #54
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EBG_.exit unwind label %bb.c, !inline_history !3456

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_RNtNtBG_5alloc6GlobalEEB1f_(ptr nonnull %i.a, ptr nonnull %i.c) #50
  resume { ptr, i32 } %i.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EBG_.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_RNtNtBG_5alloc6GlobalEEB1f_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EBG_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_RNtNtBG_5alloc6GlobalEEB1f_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !16, !invariant.load !10
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.r = add nuw nsw i64 %i.q, 15
  %i.s = add nuw i64 %i.r, %i.p
  %i.t = sub nsw i64 0, %i.q
  %i.u = and i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_RNtNtBG_5alloc6GlobalEEB1f_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) %i.u, i64 noundef range(i64 1, 536870913) %i.q) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_RNtNtBG_5alloc6GlobalEEB1f_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_RNtNtBG_5alloc6GlobalEEB1f_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EBG_.exit, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_6string6StringEEE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_6string6StringEENtNtNtBR_3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_6string6StringEENtNtNtBR_3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECs8frGy5WneL6_4fish.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.b ]
  %i.f = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtBG_3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEERNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtBG_3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEERNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtBG_3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEERNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  %i.j = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtBG_3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEERNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit2, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECs8frGy5WneL6_4fish.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtBG_3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEERNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit2

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtBG_3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEERNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtBG_3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEERNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECs8frGy5WneL6_4fish.exit, %bb.h, %bb.i
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtBG_3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEERNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit: ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs8n0tpEuULLm_5pcre23ffi4CodeNtBJ_15CodeUnitWidth32EE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs4_NtCs8n0tpEuULLm_5pcre23ffiINtB5_4CodeNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXs8_NtCs8n0tpEuULLm_5pcre23ffiINtB5_14CompileContextNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.d
end_hunk_14
begin_hunk_15_@_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE9drop_slowBK_:bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.h:                                             ; preds = %.sink.split.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.f, %bb.c ], [ %i.i, %bb.f ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b) #50
          to label %.body unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event16EventDescriptionEBF_.exit.i: ; preds = %.sink.split.i.i, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event16EventDescriptionEBF_.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event16EventDescriptionEBF_.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event12EventHandlerEBF_.exit unwind label %bb.l

bb.k:                                             ; preds = %.body.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.l ], [ %i.l, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  %i.p = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish5event12EventHandlerRNtNtBG_5alloc6GlobalEEB1e_.exit, label %bb.m

bb.m:                                             ; preds = %.body
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish5event12EventHandlerRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 80, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish5event12EventHandlerRNtNtBG_5alloc6GlobalEEB1e_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event12EventHandlerEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.t = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish5event12EventHandlerRNtNtBG_5alloc6GlobalEEB1e_.exit2, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event12EventHandlerEBF_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish5event12EventHandlerRNtNtBG_5alloc6GlobalEEB1e_.exit2

bb.p:                                             ; preds = %bb.o
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 80, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish5event12EventHandlerRNtNtBG_5alloc6GlobalEEB1e_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish5event12EventHandlerRNtNtBG_5alloc6GlobalEEB1e_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event12EventHandlerEBF_.exit, %bb.o, %bb.p
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish5event12EventHandlerRNtNtBG_5alloc6GlobalEEB1e_.exit: ; preds = %bb.n, %bb.m, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3546)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3550)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3551, !nonnull !10, !noundef !10
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !3551
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.c) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b) #50
          to label %.body.i unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %.body.i unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.k, %bb.g ], [ %i.h, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #50
          to label %.body12.i unwind label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !26, !alias.scope !3552, !noundef !10
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body12.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i unwind label %bb.k

.body12.i:                                        ; preds = %bb.k, %bb.i, %.body.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.s, %bb.k ], [ %i.o, %bb.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.val9.i = load ptr, ptr %i.q, align 8, !alias.scope !3546, !nonnull !10, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.val10.i = load i64, ptr %i.r, align 8, !alias.scope !3546, !noundef !10
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish(ptr nonnull %.val9.i, i64 %.val10.i) #50
          to label %.body15.i unwind label %bb.y

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !3546, !nonnull !10, !noundef !10 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !3546, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %.val8.i, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish.exit.i, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.v = icmp eq i64 %i.x, %.val8.i
  br i1 %i.v, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i, %bb.l
  %.sroa.0.0.i.i.i7 = phi i64 [ %i.x, %bb.l ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i7
  %i.x = add nuw nsw i64 %.sroa.0.0.i.i.i7, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w)
          to label %bb.l unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph9
  %i.y = add nuw nsw i64 %.sroa.0.1.i.i.i8, 1     ; 2 uses
  %i.z = icmp eq i64 %i.y, %.val8.i
  br i1 %i.z, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, label %.lr.ph9

bb.n:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = icmp eq i64 %i.x, %.val8.i
  br i1 %i.ab, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.n, %bb.m
  %.sroa.0.1.i.i.i8 = phi i64 [ %i.y, %bb.m ], [ %i.x, %bb.n ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac) #50
          to label %bb.m unwind label %bb.o

bb.o:                                             ; preds = %.lr.ph9
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.m, %bb.n
  %i.ae = mul nuw nsw i64 %.val8.i, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ae, i64 noundef 8) #48
  br label %.body15.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.l
  %i.af = mul nuw nsw i64 %.val8.i, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.af, i64 noundef 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish.exit.i

.body15.i:                                        ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %.body12.i
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %.body12.i ], [ %i.aa, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3553)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !3554, !noundef !10 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.i, label %bb.p

bb.p:                                             ; preds = %.body15.i
  %i.aj = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !3555
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ag) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.i unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3556)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !3557, !noundef !10 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish.exit.i
  %i.ao = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !3558
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.al) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19.i unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.v, %bb.q, %bb.p, %.body15.i
  %.pn6.i = phi { ptr, i32 } [ %i.av, %bb.v ], [ %.pn4.i, %bb.q ], [ %.pn4.i, %.body15.i ], [ %.pn4.i, %bb.p ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3559)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !3560, !noundef !10 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.body, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.i
  %i.at = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !3561
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.u, label %.body

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.aq) #52
          to label %.body unwind label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19.i: ; preds = %bb.s, %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtBG_3vec3VecB1c_EEEECs8frGy5WneL6_4fish.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3562)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !3563, !noundef !10 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEBF_.exit, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19.i
  %i.az = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !3564
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEBF_.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.aw) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEBF_.exit unwind label %bb.z

bb.y:                                             ; preds = %bb.u, %bb.q, %.body12.i, %.body.i, %bb.c
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.i, %bb.t, %bb.u, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.z ], [ %.pn6.i, %bb.u ], [ %.pn6.i, %bb.t ], [ %.pn6.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit.i ]
  %i.bd = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.bd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesRNtNtBG_5alloc6GlobalEEB1e_.exit, label %bb.aa

bb.aa:                                            ; preds = %.body
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 120, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesRNtNtBG_5alloc6GlobalEEB1e_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEBF_.exit: ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit19.i, %bb.x
  %i.bh = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.bh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesRNtNtBG_5alloc6GlobalEEB1e_.exit2, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEBF_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesRNtNtBG_5alloc6GlobalEEB1e_.exit2

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 120, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesRNtNtBG_5alloc6GlobalEEB1e_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesRNtNtBG_5alloc6GlobalEEB1e_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEBF_.exit, %bb.ac, %bb.ad
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesRNtNtBG_5alloc6GlobalEEB1e_.exit: ; preds = %bb.ab, %bb.aa, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_RNvXs8_NtCs8frGy5WneL6_4fish9job_groupNtB5_8JobGroupNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.b)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %.val2.i = load i32, ptr %i.d, align 4, !alias.scope !3567, !noundef !10
  switch i32 %.val2.i, label %bb.c [
    i32 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync9once_lock8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidEEB1s_.exit.i
    i32 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync9once_lock8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidEEB1s_.exit.i
    i32 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync9once_lock8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidEEB1s_.exit.i
  ], !prof !47

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @190, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #53
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %.val.i = load i32, ptr %i.e, align 4, !alias.scope !3567, !noundef !10
  switch i32 %.val.i, label %bb.e [
    i32 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync9once_lock8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidEEB1s_.exit4.i
    i32 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync9once_lock8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidEEB1s_.exit4.i
    i32 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync9once_lock8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidEEB1s_.exit4.i
  ], !prof !47

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @190, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #53
          to label %.noexc3.i unwind label %bb.f

.noexc3.i:                                        ; preds = %bb.e
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync9once_lock8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidEEB1s_.exit.i: ; preds = %bb.f, %bb.b, %bb.b, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.b) #50
end_hunk_15
begin_hunk_16_@_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCs8frGy5WneL6_4fish:bb.a
  br i1 %i.e, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataECs8frGy5WneL6_4fish.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataECs8frGy5WneL6_4fish.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataECs8frGy5WneL6_4fish.exit, %bb.f, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i unwind label %bb.b, !inline_history !3584

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3600, !noundef !10 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEBJ_.exit, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3601, !noundef !10 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !3602
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #52
          to label %.body unwind label %bb.g, !inline_history !3595

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i
  %i.l = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !3603
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEBJ_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEBJ_.exit unwind label %bb.h, !inline_history !3584

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !inline_history !3584
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d, %bb.c, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.b ]
  %i.p = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellRNtNtBG_5alloc6GlobalEEB1i_.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellRNtNtBG_5alloc6GlobalEEB1i_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 96, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellRNtNtBG_5alloc6GlobalEEB1i_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEBJ_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i, %bb.f, %bb.e
  %i.t = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellRNtNtBG_5alloc6GlobalEEB1i_.exit2, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEBJ_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellRNtNtBG_5alloc6GlobalEEB1i_.exit2

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 96, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellRNtNtBG_5alloc6GlobalEEB1i_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellRNtNtBG_5alloc6GlobalEEB1i_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEBJ_.exit, %bb.k, %bb.l
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellRNtNtBG_5alloc6GlobalEEB1i_.exit: ; preds = %bb.j, %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load i32, ptr %i.b, align 4, !range !28, !noundef !10
  %i.c = tail call noundef i32 @close(i32 noundef %.val) #48 ; 0 uses
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit3

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit3: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.c
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %.sroa.0.0.i18 = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.0.i18 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i18, 1        ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph20
  %i.k = add nuw nsw i64 %.sroa.0.1.i19, 1        ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.c
  br i1 %i.l, label %.body, label %.lr.ph20

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.i, %bb.b ]
  %i.n = icmp eq i64 %i.h, %i.c
  br i1 %i.n, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i19 = phi i64 [ %i.k, %bb.d ], [ %i.h, %.body.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.1.i19
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #50
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph20
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.d, %.body.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish(ptr nonnull %i.a, i64 %i.c) #50
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.a
  %i.q = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  %i.u = mul nuw nsw i64 %i.c, 24
  %i.v = add nuw i64 %i.u, 16
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) %i.v, i64 noundef range(i64 1, 536870913) 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtBG_5alloc6GlobalEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish17operation_context14get_bg_context(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.a = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #48 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #49
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i32 %2, ptr %i.a, align 4
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @72, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 512, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @311, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvNtCs8frGy5WneL6_4fish4flog16set_flog_file_fd(i32 noundef %0) unnamed_addr #19 {
bb.a:
  store atomic i32 %0, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs8frGy5WneL6_4fish4flog18apply_one_wildcard(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvNtCs8frGy5WneL6_4fish10parse_util18unescape_wildcards(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories14all_categories(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.p, %bb.d, %bb.b, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn13 = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.ak, %bb.n ], [ %i.i, %bb.b ], [ %i.al, %bb.p ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #50
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %._crit_edge, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.l = load i64, ptr %i.g, align 8, !range !16, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 3 uses
  %i.o = icmp ult i64 %i.n, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %.idx = shl nuw nsw i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.k, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = zext i1 %2 to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %i.t = phi ptr [ %i.k, %.lr.ph ], [ %i.ap, %bb.t ] ; 2 uses
  %.sroa.0.027 = phi i1 [ false, %.lr.ph ], [ %.sroa.0.1, %bb.t ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3611)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3611
  %i.v = load ptr, ptr %i.t, align 8, !noalias !3611, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !10, !align !31, !noundef !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noundef !10
  %i.aa = invoke noundef zeroext i1 @_RINvNtCs8frGy5WneL6_4fish8wildcard14wildcard_matchRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrRNtNtBR_9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.x, i64 noundef %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.d

._crit_edge:                                      ; preds = %bb.t, %bb.c
  %.sroa.0.0.lcssa = phi i1 [ false, %bb.c ], [ %.sroa.0.1, %bb.t ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEEB1w_.exit17 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEEB1w_.exit17: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.sroa.0.0.lcssa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEEB1w_.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 35, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef 1)
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit23, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEEB1w_.exit17
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %.pn13, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.j:                                             ; preds = %bb.l, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !3612)
  %i.ae = load i8, ptr %i.c, align 8, !range !15, !alias.scope !3612, !noundef !10
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %.noexc19.preheader, !prof !13

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3613
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !37, !alias.scope !3612, !noundef !10
  store i8 %i.ah, ptr %i.a, align 1, !noalias !3613
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #53
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.l
  unreachable

.noexc19.preheader:                               ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit20 unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.j, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ad, %bb.j ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #50
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.noexc19.preheader
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit20: ; preds = %.noexc19.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, i32 noundef 2)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit20
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #50
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit20
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit23 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit23: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.d, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.r:                                             ; preds = %bb.e
  br i1 %i.aa, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store atomic i8 %i.r, ptr %i.an monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0.1 = phi i1 [ %.sroa.0.027, %bb.r ], [ true, %bb.s ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3614, !nonnull !10, !noundef !10
  %i.ap = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3614, !nonnull !10, !noundef !10 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ao
  br i1 %i.aq, label %._crit_edge, label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish4flog22log_extra_to_flog_file(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4
  %i.b = tail call { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB4_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish4flog35activate_flog_categories_by_pattern(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.d = load i64, ptr %i.a, align 8, !range !12, !noundef !10
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !22, !noundef !10 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #49
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10 ; 15 uses
  %i.k = icmp ule i64 %1, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge15.thread, label %.lr.ph.preheader

._crit_edge15.thread:                             ; preds = %bb.c
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.48.0..sroa_idx19, align 8
  %.sroa.69.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %.sroa.69.0..sroa_idx20, align 8
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = shl i64 %1, 2                            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull align 4 %0, i64 %i.l, i1 false)
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %.sroa.69.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = add i64 %i.l, -4                         ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 28
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %i.j, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue42, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue42 ] ; 2 uses
  %i.s = shl i64 %index, 2                        ; 8 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep21 = getelementptr i8, ptr %i.t, i64 4
  %i.u = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep22 = getelementptr i8, ptr %i.u, i64 8
  %i.v = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep23 = getelementptr i8, ptr %i.v, i64 12
  %i.w = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep24 = getelementptr i8, ptr %i.w, i64 16
  %i.x = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep25 = getelementptr i8, ptr %i.x, i64 20
  %i.y = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep26 = getelementptr i8, ptr %i.y, i64 24
  %i.z = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep27 = getelementptr i8, ptr %i.z, i64 28
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load28 = load <4 x i32>, ptr %i.aa, align 4
  %i.ab = icmp eq <4 x i32> %wide.load, splat (i32 95) ; 4 uses
  %i.ac = icmp eq <4 x i32> %wide.load28, splat (i32 95) ; 4 uses
  %i.ad = extractelement <4 x i1> %i.ab, i64 0
  br i1 %i.ad, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 45, ptr %next.gep, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ae = extractelement <4 x i1> %i.ab, i64 1
  br i1 %i.ae, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue
  store i32 45, ptr %next.gep21, align 4
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue
  %i.af = extractelement <4 x i1> %i.ab, i64 2
  br i1 %i.af, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  store i32 45, ptr %next.gep22, align 4
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.ag = extractelement <4 x i1> %i.ab, i64 3
  br i1 %i.ag, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  store i32 45, ptr %next.gep23, align 4
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.ah = extractelement <4 x i1> %i.ac, i64 0
  br i1 %i.ah, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  store i32 45, ptr %next.gep24, align 4
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.ai = extractelement <4 x i1> %i.ac, i64 1
  br i1 %i.ai, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  store i32 45, ptr %next.gep25, align 4
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %i.aj = extractelement <4 x i1> %i.ac, i64 2
  br i1 %i.aj, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  store i32 45, ptr %next.gep26, align 4
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.ak = extractelement <4 x i1> %i.ac, i64 3
  br i1 %i.ak, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  store i32 45, ptr %next.gep27, align 4
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !3615

middle.block:                                     ; preds = %pred.store.continue42
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.014.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %bb.e
  %.sroa.0.014 = phi ptr [ %i.am, %bb.e ], [ %.sroa.0.014.ph, %.lr.ph.preheader43 ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 4 ; 2 uses
  %i.an = load i32, ptr %.sroa.0.014, align 4, !range !24, !noundef !10
  %i.ao = icmp eq i32 %i.an, 95
  br i1 %i.ao, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %middle.block, %._crit_edge15.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.j, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 44, ptr %.sroa.33.0..sroa_idx, align 8
end_hunk_16
begin_hunk_17_@_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque11spec_extendINtB4_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB2_10SpecExtendB1h_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterEE11spec_extendCs8frGy5WneL6_4fish:bb.a
  %i.y = icmp ule i64 %i.w, %i.x
  %i.z = sub nsw i64 %i.u, %i.p
  %.not2.i.i = icmp ult i64 %i.z, %i.x
  %or.cond.i.i = select i1 %i.y, i1 true, i1 %.not2.i.i
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = sub i64 %i.u, %i.w                      ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8, !alias.scope !3837, !nonnull !10, !noundef !10 ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.v
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aa
  %i.ae = shl nuw nsw i64 %i.w, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ac, i64 %i.ae, i1 false), !noalias !3836
  store i64 %i.aa, ptr %i.c, align 8, !alias.scope !3837
  br label %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit

bb.j:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.d, align 8, !alias.scope !3837, !nonnull !10, !noundef !10 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.p
  %i.ah = shl nuw nsw i64 %i.x, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.af, i64 %i.ah, i1 false), !noalias !3836
  br label %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit

bb.k:                                             ; preds = %bb.f
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.m, i64 noundef range(i64 1, 0) %i.l, i64 noundef 8, i64 noundef 16)
  %.pre.i = load i64, ptr %0, align 8, !range !16, !alias.scope !3837
  %.pre7.i = load i64, ptr %i.b, align 8, !alias.scope !3837 ; 2 uses
  %.pre8.i = sub i64 %i.p, %.pre7.i
  br label %bb.g

_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.g, %bb.i, %bb.j
  %i.ai = load i64, ptr %i.b, align 8, !noundef !10
  %i.aj = load i64, ptr %i.c, align 8, !noundef !10
  %i.ak = add i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = load i64, ptr %0, align 8, !range !16, !noundef !10 ; 2 uses
  %.not18 = icmp ult i64 %i.ak, %i.al
  %i.am = select i1 %.not18, i64 0, i64 %i.al
  %.sroa.010.0 = sub nuw i64 %i.ak, %i.am
  %i.an = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.sroa.010.0 ; 2 uses
  store ptr %i.i, ptr %i.ao, align 8, !captures !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.j, ptr %i.ap, align 8
  %storemerge.in32 = load i64, ptr %i.b, align 8, !noundef !10
  %storemerge33 = add i64 %storemerge.in32, 1     ; 2 uses
  store i64 %storemerge33, ptr %i.b, align 8
  %i.aq = load i64, ptr %0, align 8, !range !16, !noundef !10
  %i.ar = icmp ult i64 %storemerge33, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.n, %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit
  br label %.loopexit

.lr.ph:                                           ; preds = %_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit, %bb.n
  %.sroa.01.0.copyload.i22 = load i64, ptr %1, align 8, !alias.scope !3838
  %.sroa.4.0.copyload.i24 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3838
  %.sroa.5.0.copyload.i26 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3838
  store i64 0, ptr %1, align 8, !alias.scope !3838
  %i.as = trunc nuw i64 %.sroa.01.0.copyload.i22 to i1
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.at = insertvalue { ptr, i64 } poison, ptr %.sroa.4.0.copyload.i24, 0
  %i.au = insertvalue { ptr, i64 } %i.at, i64 %.sroa.5.0.copyload.i26, 1
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit28

bb.m:                                             ; preds = %.lr.ph
  %i.av = tail call { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit28

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit28: ; preds = %bb.l, %bb.m
  %.merged.i27 = phi { ptr, i64 } [ %i.au, %bb.l ], [ %i.av, %bb.m ] ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %.merged.i27, 0 ; 2 uses
  %.not19 = icmp eq ptr %i.aw, null
  br i1 %.not19, label %.loopexit30, label %bb.n

bb.n:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit28
  %i.ax = extractvalue { ptr, i64 } %.merged.i27, 1
  %i.ay = load i64, ptr %i.b, align 8, !noundef !10
  %i.az = load i64, ptr %i.c, align 8, !noundef !10
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  %i.bb = load i64, ptr %0, align 8, !range !16, !noundef !10 ; 2 uses
  %.not20 = icmp ult i64 %i.ba, %i.bb
  %i.bc = select i1 %.not20, i64 0, i64 %i.bb
  %.sroa.013.0 = sub nuw i64 %i.ba, %i.bc
  %i.bd = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.sroa.013.0 ; 2 uses
  store ptr %i.aw, ptr %i.be, align 8, !captures !39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.ax, ptr %i.bf, align 8
  %storemerge.in = load i64, ptr %i.b, align 8, !noundef !10
  %storemerge = add i64 %storemerge.in, 1         ; 2 uses
  store i64 %storemerge, ptr %i.b, align 8
  %i.bg = load i64, ptr %0, align 8, !range !16, !noundef !10
  %i.bh = icmp ult i64 %storemerge, %i.bg
  br i1 %i.bh, label %.lr.ph, label %.loopexit.backedge

.loopexit30:                                      ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit28
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB2_12SpecFromIterB1k_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNCNvNtCs8frGy5WneL6_4fish5wutil21path_normalize_for_cd0EE14spec_from_iterB4k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNCNvNtCs8frGy5WneL6_4fish5wutil21path_normalize_for_cd0EE9from_iterB3T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  %.sroa.02.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8 ; 2 uses
  %i.b = icmp ult i64 %.sroa.54.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.54.0.copyload, ptr %i.d, align 8
  store i64 %.sroa.02.0.copyload, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.43.0.copyload, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %.val = load i64, ptr %0, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8frGy5WneL6_4fish(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !3841 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val1                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.07.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.sroa.58.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.07.0 ; 2 uses
  %i.q = sub i64 %.sroa.58.0, %.sroa.07.0         ; 3 uses
  %i.r = icmp eq i64 %.sroa.58.0, %.sroa.07.0
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.preheader, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.s = icmp eq i64 %i.v, %i.q
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.preheader, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.preheader: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit
  %i.t = icmp eq i64 %.sroa.11.0, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, label %.lr.ph44

.lr.ph:                                           ; preds = %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %.sroa.0.0.i40 = phi i64 [ %i.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i ], [ 0, %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.0.0.i40 ; 3 uses
  %i.v = add nuw nsw i64 %.sroa.0.0.i40, 1        ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph42
  %i.y = add nuw nsw i64 %.sroa.0.1.i41, 1        ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.q
  br i1 %i.z, label %.body, label %.lr.ph42

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.w, %bb.e ]
  %i.ab = icmp eq i64 %i.v, %i.q
  br i1 %i.ab, label %.body, label %.lr.ph42

.lr.ph42:                                         ; preds = %.body.i, %bb.g
  %.sroa.0.1.i41 = phi i64 [ %i.y, %bb.g ], [ %i.v, %.body.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.0.1.i41
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #50
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph42
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.g, %.body.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr nonnull %i.o, i64 %.sroa.11.0) #50
          to label %common.resume unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.ae = icmp eq i64 %i.ag, %.sroa.11.0
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, label %.lr.ph44

.lr.ph44:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.preheader, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i
  %.sroa.0.0.i.i.i43 = phi i64 [ %i.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i43 ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.0.0.i.i.i43, 1   ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph44
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %.lr.ph44
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.m

bb.l:                                             ; preds = %.lr.ph46
  %i.aj = add nuw nsw i64 %.sroa.0.1.i.i.i45, 1   ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %.sroa.11.0
  br i1 %i.ak, label %common.resume, label %.lr.ph46

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.j
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.ah, %bb.j ] ; 2 uses
  %i.am = icmp eq i64 %i.ag, %.sroa.11.0
  br i1 %i.am, label %common.resume, label %.lr.ph46

.lr.ph46:                                         ; preds = %.body.i.i.i, %bb.l
  %.sroa.0.1.i.i.i45 = phi i64 [ %i.aj, %bb.l ], [ %i.ag, %.body.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i45
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an) #50
          to label %bb.l unwind label %bb.n

common.resume:                                    ; preds = %bb.l, %.body.i.i.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %.lr.ph46
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.preheader
  ret void

bb.o:                                             ; preds = %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %.val = load i64, ptr %0, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8frGy5WneL6_4fish(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !3844 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val1                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit

_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.07.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.sroa.58.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.07.0 ; 2 uses
  %i.q = sub i64 %.sroa.58.0, %.sroa.07.0         ; 3 uses
  %i.r = icmp eq i64 %.sroa.58.0, %.sroa.07.0
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.preheader, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.s = icmp eq i64 %i.v, %i.q
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.preheader, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.preheader: ; preds = %bb.e, %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit
  %i.t = icmp eq i64 %.sroa.11.0, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1D_.exit, label %.lr.ph20

.lr.ph:                                           ; preds = %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit, %bb.e
  %.sroa.0.0.i16 = phi i64 [ %i.v, %bb.e ], [ 0, %_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.0.0.i16
  %i.v = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u)
          to label %bb.e unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph18
  %i.w = add nuw nsw i64 %.sroa.0.1.i17, 1        ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.q
  br i1 %i.x, label %.body, label %.lr.ph18

bb.g:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = icmp eq i64 %i.v, %i.q
  br i1 %i.z, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i17 = phi i64 [ %i.w, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aa) #50
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph18
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.f, %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1D_(ptr nonnull %i.o, i64 %.sroa.11.0) #50
          to label %common.resume unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit: ; preds = %.lr.ph20
  %i.ac = icmp eq i64 %i.ae, %.sroa.11.0
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1D_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.preheader, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit
  %.sroa.0.0.i.i.i19 = phi i64 [ %i.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i19
  %i.ae = add nuw nsw i64 %.sroa.0.0.i.i.i19, 1   ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph22
  %i.af = add nuw nsw i64 %.sroa.0.1.i.i.i21, 1   ; 2 uses
  %i.ag = icmp eq i64 %i.af, %.sroa.11.0
  br i1 %i.ag, label %common.resume, label %.lr.ph22

bb.j:                                             ; preds = %.lr.ph20
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = icmp eq i64 %i.ae, %.sroa.11.0
  br i1 %i.ai, label %common.resume, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.j, %bb.i
  %.sroa.0.1.i.i.i21 = phi i64 [ %i.af, %bb.i ], [ %i.ae, %bb.j ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i21
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj) #50
          to label %bb.i unwind label %bb.k

common.resume:                                    ; preds = %bb.i, %bb.j, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.ah, %bb.j ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %.lr.ph22
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque7DropperNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1D_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.preheader
  ret void

bb.l:                                             ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8frGy5WneL6_4fish(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !3847 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8frGy5WneL6_4fish(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !3850 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB5_10ThreadPoolNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @483, i64 noundef 10)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @484)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @486, i64 noundef 11, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @484)
  %i.f = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1R_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [20 x i8], align 4                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !10
  %i.h = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34), !noalias !3883
  br i1 %i.h, label %_RNvXs12_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3884
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %i.c, align 8, !noalias !3884
  %.sroa.09.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.i, ptr %.sroa.09.sroa.4.0..sroa_idx.i, align 8, !noalias !3884
  %.sroa.09.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr @_RNvYNCNvMsn_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtBa_11EscapeDebugNtBa_10CharsUtf32E3new0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTcEE9call_onceCs8frGy5WneL6_4fish, ptr %.sroa.09.sroa.5.0..sroa_idx.i, align 8, !noalias !3884
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  store i32 0, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !3884
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  store i32 0, ptr %.sroa.612.0..sroa_idx.i, align 4, !noalias !3884
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3885)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsN_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB5_11EscapeDebugNtB5_10CharsUtf32ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !3886)
  call void @llvm.experimental.noalias.scope.decl(metadata !3887)
  %.pre.i.i.i.i = load i32, ptr %.sroa.410.0..sroa_idx.i, align 8, !range !33, !alias.scope !3888, !noalias !3884
  %i.m = trunc nuw i32 %.pre.i.i.i.i to i1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef range(i32 -1, 1114112) i32 @_RNvMs0_NtCs3oUPovFnLWP_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedE4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %i.j) ; 2 uses
  %.not.i.i.peel.i.i.i = icmp eq i32 %i.n, -1
  br i1 %.not.i.i.peel.i.i.i, label %bb.e, label %_RNvXsN_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB5_11EscapeDebugNtB5_10CharsUtf32ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !3888, !noalias !3884
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3889
  call void @llvm.experimental.noalias.scope.decl(metadata !3890)
  %i.o = load ptr, ptr %i.c, align 8, !alias.scope !3891, !noalias !3884, !noundef !10 ; 4 uses
  %.not.i2.i.peel.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i2.i.peel.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !3892)
  call void @llvm.experimental.noalias.scope.decl(metadata !3893)
  %i.p = load ptr, ptr %.sroa.09.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3894, !noalias !3884, !nonnull !10, !noundef !10
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %.loopexit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.r, ptr %i.c, align 8, !alias.scope !3894, !noalias !3884
  %i.s = load i32, ptr %i.o, align 4, !noalias !3895, !noundef !10 ; 3 uses
  %i.t = xor i32 %i.s, 55296
  %i.u = add i32 %i.t, -1114112
  %i.v = icmp ult i32 %i.u, -1112064
  br i1 %i.v, label %.split.i.i.i.i.i.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.h, %bb.k
  %.sink12.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.s, %bb.h ] ; 2 uses
  %i.w = icmp samesign ult i32 %.sink12.i.i.i, 1114112
  call void @llvm.assume(i1 %i.w)
  %.val.i.i.i.peel.i.i.i = load ptr, ptr %.sroa.09.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3896, !noalias !3884, !nonnull !10, !noundef !10
  call void %.val.i.i.i.peel.i.i.i(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.k, i32 noundef range(i32 0, 1114112) %.sink12.i.i.i), !noalias !10, !inline_history !3873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !3897
  store i32 1, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !3896, !noalias !3884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3889
  %i.x = call noundef range(i32 -1, 1114112) i32 @_RNvMs0_NtCs3oUPovFnLWP_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedE4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %i.j) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, -1
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_RNvXsN_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB5_11EscapeDebugNtB5_10CharsUtf32ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i

bb.i:                                             ; preds = %.peel.next.i.i.i
  store i32 0, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !3888, !noalias !3884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3889
  call void @llvm.experimental.noalias.scope.decl(metadata !3898)
  %i.y = load ptr, ptr %i.c, align 8, !alias.scope !3899, !noalias !3884, !noundef !10 ; 4 uses
  %.not.i2.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i2.i.i.i.i, label %.loopexit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3900)
  call void @llvm.experimental.noalias.scope.decl(metadata !3901)
  %i.z = load ptr, ptr %.sroa.09.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3902, !noalias !3884, !nonnull !10, !noundef !10
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %.loopexit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.ab, ptr %i.c, align 8, !alias.scope !3902, !noalias !3884
  %i.ac = load i32, ptr %i.y, align 4, !noalias !3903, !noundef !10 ; 3 uses
  %i.ad = xor i32 %i.ac, 55296
  %i.ae = add i32 %i.ad, -1114112
  %i.af = icmp ult i32 %i.ae, -1112064
  br i1 %i.af, label %.split.i.i.i.i.i.i.i, label %.peel.next.i.i.i, !llvm.loop !3878

.split.i.i.i.i.i.i.i:                             ; preds = %bb.h, %bb.k
  %.lcssa2.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3904
  store i32 %.lcssa2.i.i.i, ptr %i.a, align 4, !noalias !3904
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @663) #53, !noalias !3903
  unreachable

.loopexit.i.i.i:                                  ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.ag = load i32, ptr %.sroa.612.0..sroa_idx.i, align 4, !range !33, !alias.scope !3905, !noalias !3884, !noundef !10
  %i.ah = trunc nuw i32 %i.ag to i1
  br i1 %i.ah, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %.loopexit.i.i.i
  %i.ai = call noundef range(i32 -1, 1114112) i32 @_RNvMs0_NtCs3oUPovFnLWP_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedE4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %i.l) ; 2 uses
  %.not.i4.i.i.i.i = icmp eq i32 %i.ai, -1
  br i1 %.not.i4.i.i.i.i, label %.loopexit.i, label %_RNvXsN_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB5_11EscapeDebugNtB5_10CharsUtf32ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i

_RNvXsN_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB5_11EscapeDebugNtB5_10CharsUtf32ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3889
  br label %_RNvXsN_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB5_11EscapeDebugNtB5_10CharsUtf32ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i

_RNvXsN_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB5_11EscapeDebugNtB5_10CharsUtf32ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i: ; preds = %.peel.next.i.i.i, %_RNvXsN_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB5_11EscapeDebugNtB5_10CharsUtf32ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, %bb.d
  %.sroa.0.0.i.i7.i.i = phi i32 [ %i.ai, %_RNvXsN_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB5_11EscapeDebugNtB5_10CharsUtf32ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ], [ %i.n, %bb.d ], [ %i.x, %.peel.next.i.i.i ]
  %i.aj = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef range(i32 0, 1114112) %.sroa.0.0.i.i7.i.i)
  br i1 %i.aj, label %bb.m, label %bb.c
end_hunk_17
begin_hunk_18_@_RNvXs3_NtCs8frGy5WneL6_4fish6signaljINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9RawSignalE4from:bb.a
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 48                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !3979
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !3979
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !3979
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_3KeyE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4000)
  %i.h = icmp eq i32 %.sroa.0.0.extract.trunc, 45
  br i1 %i.h, label %.loopexit.i, label %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader

_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader: ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002)
  switch i32 %.sroa.0.0.extract.trunc, label %bb.a [
    i32 44, label %.loopexit.i
    i32 62720, label %.loopexit.i.fold.split
    i32 62721, label %.loopexit.i.fold.split45.a
    i32 62722, label %.loopexit.i.fold.split46.a
    i32 62723, label %.loopexit.i.fold.split47.a
    i32 62724, label %.loopexit.i.fold.split48.a
    i32 62725, label %.loopexit.i.fold.split49.a
    i32 62726, label %.loopexit.i.fold.split50.a
    i32 62727, label %.loopexit.i.fold.split51.a
    i32 62728, label %.loopexit.i.fold.split52.a
    i32 62729, label %.loopexit.i.fold.split53.a
    i32 62730, label %.loopexit.i.fold.split54.a
    i32 62731, label %.loopexit.i.fold.split55.a
    i32 62732, label %.loopexit.i.fold.split56.a
    i32 62733, label %.loopexit.i.fold.split57
    i32 62734, label %.loopexit.i.fold.split58
    i32 62735, label %.loopexit.i.fold.split59
    i32 62736, label %.loopexit.i.fold.split60
  ]

bb.a:                                             ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  store i64 -1, ptr %i.g, align 8, !alias.scope !4000
  %i.i = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish3key12function_key(i8 noundef 1)
          to label %.noexc.i unwind label %bb.m, !noalias !4003

.loopexit.i.fold.split:                           ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split45.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split46.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split47.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split48.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split49.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split50.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split51.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split52.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split53.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split54.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split55.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split56.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split57:                         ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split58:                         ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split59:                         ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split60:                         ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader, %.loopexit.i.fold.split60, %.loopexit.i.fold.split59, %.loopexit.i.fold.split58, %.loopexit.i.fold.split57, %.loopexit.i.fold.split56.a, %.loopexit.i.fold.split55.a, %.loopexit.i.fold.split54.a, %.loopexit.i.fold.split53.a, %.loopexit.i.fold.split52.a, %.loopexit.i.fold.split51.a, %.loopexit.i.fold.split50.a, %.loopexit.i.fold.split49.a, %.loopexit.i.fold.split48.a, %.loopexit.i.fold.split47.a, %.loopexit.i.fold.split46.a, %.loopexit.i.fold.split45.a, %.loopexit.i.fold.split, %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i
  %.lcssa10.i = phi ptr [ @651, %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i ], [ getelementptr inbounds nuw (i8, ptr @651, i64 24), %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader ], [ getelementptr inbounds nuw (i8, ptr @651, i64 408), %.loopexit.i.fold.split59 ], [ getelementptr inbounds nuw (i8, ptr @651, i64 48), %.loopexit.i.fold.split ], [ getelementptr inbounds nuw (i8, ptr @651, i64 72), %.loopexit.i.fold.split45.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 96), %.loopexit.i.fold.split46.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 120), %.loopexit.i.fold.split47.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 144), %.loopexit.i.fold.split48.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 168), %.loopexit.i.fold.split49.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 192), %.loopexit.i.fold.split50.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 216), %.loopexit.i.fold.split51.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 240), %.loopexit.i.fold.split52.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 264), %.loopexit.i.fold.split53.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 288), %.loopexit.i.fold.split54.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 312), %.loopexit.i.fold.split55.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 336), %.loopexit.i.fold.split56.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 360), %.loopexit.i.fold.split57 ], [ getelementptr inbounds nuw (i8, ptr @651, i64 384), %.loopexit.i.fold.split58 ], [ getelementptr inbounds nuw (i8, ptr @651, i64 432), %.loopexit.i.fold.split60 ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa10.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4002, !noalias !4004, !noundef !10 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa10.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4002, !noalias !4004, !nonnull !10, !align !31, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4005
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !4005
  %i.n = load i64, ptr %i.e, align 8, !range !12, !noalias !4005, !noundef !10
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !22, !noalias !4005, !noundef !10 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %.loopexit.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !4005
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #49, !noalias !4005
  unreachable

bb.c:                                             ; preds = %.loopexit.i
  %i.t = load ptr, ptr %i.r, align 8, !noalias !4005, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = icmp ule i64 %i.k, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4005
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull readonly align 4 %i.m, i64 %i.v, i1 false), !noalias !4006
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread: ; preds = %bb.c, %bb.d
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !4007
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !alias.scope !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %bb.o

.noexc.i:                                         ; preds = %bb.a
  %i.w = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish3key12function_key(i8 noundef 12)
          to label %.noexc2.i unwind label %bb.m, !noalias !4003

.noexc2.i:                                        ; preds = %.noexc.i
  %.not.i.i.i12 = icmp samesign ule i32 %i.i, %.sroa.0.0.extract.trunc
  %i.x = icmp samesign uge i32 %i.w, %.sroa.0.0.extract.trunc
  %or.cond.i.i = select i1 %.not.i.i.i12, i1 %i.x, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread29

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread29: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %bb.p

bb.e:                                             ; preds = %.noexc2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4010
  store i64 0, ptr %i.d, align 8, !noalias !4010
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !4010
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !4010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4010
  %i.y = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish3key12function_key(i8 noundef 1)
          to label %bb.f unwind label %.loopexit.split-lp2.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4010 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.j, %.loopexit.split-lp2.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp63, %.loopexit.split-lp2.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ad, %bb.j ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #50
          to label %.body.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4010

.loopexit.split-lp2.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc7.i.i.i.preheader, %bb.g, %bb.e
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = icmp samesign ugt i32 %i.y, %.sroa.0.0.extract.trunc
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #49
          to label %bb.h unwind label %.loopexit.split-lp2.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4010

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.aa = add nuw nsw i32 %.sroa.0.0.extract.trunc, 1
  %i.ab = sub nuw nsw i32 %i.aa, %i.y
  %i.ac = zext nneg i32 %i.ab to i64
  store i64 4, ptr %i.b, align 8, !noalias !4010
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4010
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 3, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef 1)
          to label %bb.k unwind label %bb.j, !noalias !4010

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4010

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4011)
  %i.ae = load i8, ptr %i.c, align 8, !range !15, !alias.scope !4011, !noalias !4010, !noundef !10
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %.noexc7.i.i.i.preheader, !prof !13

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4012
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !37, !alias.scope !4011, !noalias !4010, !noundef !10
  store i8 %i.ah, ptr %i.a, align 1, !noalias !4012
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #53
          to label %.noexc.i.i.i unwind label %bb.j, !noalias !4010

.noexc.i.i.i:                                     ; preds = %bb.l
  unreachable

.noexc7.i.i.i.preheader:                          ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit unwind label %.loopexit.split-lp2.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4010

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !4010
  unreachable

bb.m:                                             ; preds = %.noexc.i, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %.pn.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #50
          to label %common.resume unwind label %bb.n, !noalias !4008

common.resume:                                    ; preds = %bb.t, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.an, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !4008
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit: ; preds = %.noexc7.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4010
  %.sroa.018.0.copyload20 = load i64, ptr %i.d, align 8, !noalias !4009 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !4009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not = icmp eq i64 %.sroa.018.0.copyload20, -1
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit
  %.sroa.018.128 = phi i64 [ %i.q, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread ], [ %.sroa.018.0.copyload20, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit ]
  store i64 %.sroa.018.128, ptr %i.f, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread29, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit
  %i.ak = and i64 %1, 72340172821233664
  %.not36.a = icmp eq i64 %i.ak, 0
  call void @_RNvNtCs8frGy5WneL6_4fish3key14char_to_symbol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i32 noundef %.sroa.0.0.extract.trunc, i1 noundef zeroext %.not36.a)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.al = and i64 %1, 281474976710656
  %.not37.a = icmp eq i64 %i.al, 0
  br i1 %.not37.a, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.am = and i64 %1, 1099511627776
  %.not38.a = icmp eq i64 %i.am, 0
  br i1 %.not38.a, label %bb.u, label %bb.v

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @652, i64 noundef 6)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #50
          to label %common.resume unwind label %bb.aa

bb.u:                                             ; preds = %bb.v, %bb.r
  %i.ao = and i64 %1, 4294967296
  %.not39 = icmp eq i64 %i.ao, 0
  br i1 %.not39, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.r
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @653, i64 noundef 4)
          to label %bb.u unwind label %bb.t

bb.w:                                             ; preds = %bb.x, %bb.u
  %i.ap = and i64 %1, 72057594037927936
  %.not40 = icmp eq i64 %i.ap, 0
  br i1 %.not40, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @654, i64 noundef 5)
          to label %bb.w unwind label %bb.t

bb.y:                                             ; preds = %bb.z, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.z:                                             ; preds = %bb.w
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @655, i64 noundef 6)
          to label %bb.y unwind label %bb.t

bb.aa:                                            ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !10
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false, !prof !30
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !align !14, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  call void @_RINvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB9_5input5input16InputEventQueuer12insert_frontINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtBP_9CharEventEEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @656, ptr noundef nonnull inttoptr (i64 109 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @657) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCs1xwejQucwHj_5alloc5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8truncateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 5 uses
  %i.d = icmp ult i64 %i.c, 384307168202282326
  tail call void @llvm.assume(i1 %i.d)
  %.not.i = icmp samesign ugt i64 %i.c, %1
  br i1 %.not.i, label %bb.b, label %.preheader.i, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @157, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @659) #53, !noalias !4022
  unreachable

end_hunk_18
begin_hunk_19_@_RNvXs5_NtCs1xwejQucwHj_5alloc5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCs8frGy5WneL6_4fish:bb.a
bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.lr.ph.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4025
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4023
  %i.l = add nuw nsw i64 %.sroa.0.02.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.l, %i.c
  br i1 %exitcond.not.i, label %_RNvXs3_NtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs8frGy5WneL6_4fish.exit, label %.lr.ph.i

_RNvXs3_NtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs8frGy5WneL6_4fish.exit: ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i, %.preheader.i
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  call void @_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB5_10SpecExtendRBU_INtNtNtCs3oUPovFnLWP_4core5slice4iter4IterBU_EE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs8frGy5WneL6_4fish9tokenizer3TokENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs8frGy5WneL6_4fish9tokenizer3TokNtNtBO_5alloc6GlobalEEB2d_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 4 uses
  %i.k = icmp ult i64 %i.j, 461168601842738791
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !10 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs8frGy5WneL6_4fish9tokenizer3TokNtNtBO_5alloc6GlobalEEB2d_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [20 x i8], ptr %i.p, i64 %i.j
  %i.s = mul nuw nsw i64 %i.f, 20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs8frGy5WneL6_4fish9tokenizer3TokNtNtBO_5alloc6GlobalEEB2d_.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs8frGy5WneL6_4fish9tokenizer3TokNtNtBO_5alloc6GlobalEEB2d_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !10 ; 4 uses
  %i.x = icmp ult i64 %i.w, 461168601842738791
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !10 ; 2 uses
  %.not3.i.i5 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs8frGy5WneL6_4fish9tokenizer3TokNtNtBO_5alloc6GlobalEEB2d_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.ac, i64 %i.w
  %i.af = mul nuw nsw i64 %i.f, 20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr nonnull align 4 %i.ad, i64 %i.af, i1 false)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !10 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBO_5alloc6GlobalEECs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !10 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBO_5alloc6GlobalEECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  %i.w = mul nuw nsw i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBO_5alloc6GlobalEECs8frGy5WneL6_4fish.exit: ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.i, %.body.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBO_5alloc6GlobalEECs8frGy5WneL6_4fish(ptr nonnull %0) #50
  resume { ptr, i32 } %eh.lpad-body.i

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %.sroa.0.0.i29 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.0.i29 ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.0.0.i29, 1       ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph31
  %i.ah = add nuw nsw i64 %.sroa.0.1.i30, 1       ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.g
  br i1 %i.ai, label %.body, label %.lr.ph31

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.af, %bb.g ]
  %i.ak = icmp eq i64 %i.ae, %i.g
  br i1 %i.ak, label %.body, label %.lr.ph31

.lr.ph31:                                         ; preds = %.body.i, %bb.i
  %.sroa.0.1.i30 = phi i64 [ %i.ah, %bb.i ], [ %i.ae, %.body.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.1.i30
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #50
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph31
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !10 ; 3 uses
  %.not.i.i4 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBO_5alloc6GlobalEECs8frGy5WneL6_4fish.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !10 ; 4 uses
  %i.ar = icmp ult i64 %i.aq, 384307168202282326
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i64, ptr %i.as, align 8, !noundef !10 ; 2 uses
  %.not3.i.i5 = icmp eq i64 %i.at, %i.aq
  br i1 %.not3.i.i5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.au = add i64 %i.aq, %i.ao
  store i64 %i.au, ptr %i.ap, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBO_5alloc6GlobalEECs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.x, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.at
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aq
  %i.ay = mul nuw nsw i64 %i.ao, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.aw, i64 %i.ay, i1 false)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !10 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBO_5alloc6GlobalEEB2f_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 4 uses
  %i.o = icmp ult i64 %i.n, 192153584101141163
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !10 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBO_5alloc6GlobalEEB2f_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.n
  %i.w = mul nuw nsw i64 %i.l, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBO_5alloc6GlobalEEB2f_.exit: ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBO_5alloc6GlobalEEB2f_(ptr nonnull %0) #50
  resume { ptr, i32 } %i.ah

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.i17 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %.sroa.0.0.i17
  %i.ae = add nuw nsw i64 %.sroa.0.0.i17, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad)
          to label %bb.f unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph19
  %i.af = add nuw nsw i64 %.sroa.0.1.i18, 1       ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.g
  br i1 %i.ag, label %.body, label %.lr.ph19

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = icmp eq i64 %i.ae, %i.g
  br i1 %i.ai, label %.body, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i18 = phi i64 [ %i.af, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %.sroa.0.1.i18
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj) #50
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph19
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noundef !10 ; 3 uses
  %.not.i.i4 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBO_5alloc6GlobalEEB2f_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !10 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 192153584101141163
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !10 ; 2 uses
  %.not3.i.i5 = icmp eq i64 %i.ar, %i.ao
  br i1 %.not3.i.i5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.as = add i64 %i.ao, %i.am
  store i64 %i.as, ptr %i.an, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBO_5alloc6GlobalEEB2f_.exit

bb.m:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.x, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %i.ar
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %i.ao
  %i.aw = mul nuw nsw i64 %i.am, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.au, i64 %i.aw, i1 false)
  br label %bb.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBO_5alloc6GlobalEEB2f_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 4 uses
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !10 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBO_5alloc6GlobalEEB2f_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.j
  %i.s = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBO_5alloc6GlobalEEB2f_.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBO_5alloc6GlobalEEB2f_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !10 ; 4 uses
  %i.x = icmp ult i64 %i.w, 2305843009213693952
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !10 ; 2 uses
  %.not3.i.i9 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i9, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBO_5alloc6GlobalEEB2f_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.w
  %i.af = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainRINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardRINtNtBO_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobENtNtBO_5alloc6GlobalEEB2s_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 4 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !10 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardRINtNtBO_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobENtNtBO_5alloc6GlobalEEB2s_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.j
  %i.s = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardRINtNtBO_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobENtNtBO_5alloc6GlobalEEB2s_.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardRINtNtBO_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobENtNtBO_5alloc6GlobalEEB2s_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !10 ; 4 uses
  %i.x = icmp ult i64 %i.w, 1152921504606846976
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !10 ; 2 uses
  %.not3.i.i9 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i9, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardRINtNtBO_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobENtNtBO_5alloc6GlobalEEB2s_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.w
  %i.af = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ad, i64 %i.af, i1 false)
end_hunk_19
begin_hunk_20_@_RNvXs_NtNtCs8frGy5WneL6_4fish7history7historyNtB4_12TimeProfilerNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop:bb.a
  %i.bs = trunc i128 %i.aj to i64
  %i.bt = trunc i128 %i.ao to i64
  %i.bu = and i64 %i.bt, 4294967295
  store i64 0, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.br, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 4, ptr %i.bv, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %i.bs, ptr %.sroa.42.0..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i64 4, ptr %i.bw, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i64 %i.bu, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @681, i64 noundef 14, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef 3)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p) #50
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !4075)
  %i.by = load i8, ptr %i.q, align 8, !range !15, !alias.scope !4075, !noundef !10
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %.preheader.preheader, !prof !13

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4076
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !range !37, !alias.scope !4075, !noundef !10
  store i8 %i.cb, ptr %i.c, align 1, !noalias !4076
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @682) #53
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %bb.q
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cc)
          to label %.preheader.1 unwind label %bb.s

.preheader.1:                                     ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cd)
          to label %.preheader.2 unwind label %bb.s

.preheader.2:                                     ; preds = %.preheader.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit unwind label %bb.u

.preheader.preheader:                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p)
          to label %.preheader unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.ce = add nuw nsw i64 %.sroa.0.1.i.i63, 1     ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 3
  br i1 %i.cf, label %.body, label %.lr.ph

bb.s:                                             ; preds = %.preheader.1, %.preheader, %.preheader.preheader
  %i.cg = phi i1 [ false, %.preheader.preheader ], [ false, %.preheader ], [ true, %.preheader.1 ]
  %.lcssa = phi i64 [ 1, %.preheader.preheader ], [ 2, %.preheader ], [ 3, %.preheader.1 ]
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cg, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.r
  %.sroa.0.1.i.i63 = phi i64 [ %i.ce, %bb.r ], [ %.lcssa, %bb.s ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.0.1.i.i63
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ci) #50
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.r, %bb.s, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.o ], [ %i.ch, %bb.s ], [ %i.ch, %bb.r ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #50
          to label %.body33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.preheader.2, %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #50
          to label %.body33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit: ; preds = %.preheader.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.cn = load i64, ptr %i.t, align 8, !range !16, !noundef !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noundef !10 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  store ptr %i.cm, ptr %i.g, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.cn, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.cm, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.cr, ptr %i.cu, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.v unwind label %bb.u

bb.v:                                             ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body33 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cx = load i64, ptr %i.as, align 8, !alias.scope !4077, !noundef !10 ; 3 uses
  %i.cy = load i64, ptr %i.v, align 8, !range !16, !alias.scope !4077, !noundef !10
  %i.cz = icmp eq i64 %i.cx, %i.cy
  br i1 %i.cz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #52
          to label %bb.z unwind label %bb.h

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.y
  %i.da = load ptr, ptr %i.ar, align 8, !alias.scope !4077, !nonnull !10, !noundef !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cx
  store i8 10, ptr %i.db, align 1
  %i.dc = add i64 %i.cx, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.as, align 8, !alias.scope !4077
  %i.dd = load ptr, ptr %i.ar, align 8, !nonnull !10, !noundef !10
  %i.de = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !4078 ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4078
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef range(i64 0, -9223372036854775808) %i.dc, i32 noundef %i.de)
          to label %.noexc38 unwind label %bb.h

.noexc38:                                         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4078
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit:    ; preds = %.noexc38, %bb.z
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.ax, %.body33, %.body50, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %.pn19, %.body33 ], [ %i.dg, %bb.ab ], [ %.pn24, %.body50 ], [ %i.fl, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.f

bb.ad:                                            ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit59, %bb.f
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body50, %bb.u, %.body, %bb.o, %.body33
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.ae:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  store i64 0, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories15profile_history, i64 24))
          to label %bb.ag unwind label %bb.af

.body50:                                          ; preds = %bb.as, %bb.af, %bb.aq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn24 = phi { ptr, i32 } [ %.pn22, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.ep, %bb.aq ], [ %i.dk, %bb.af ], [ %i.fa, %bb.as ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #50
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.aw, %bb.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i49, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.dn = load i64, ptr %i.n, align 8, !range !16, !noundef !10
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !noundef !10 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dp
  store ptr %i.dm, ptr %i.f, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.dn, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.dm, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.dr, ptr %i.du, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.ah unwind label %bb.af

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.dv = load i64, ptr %i.dj, align 8, !alias.scope !4079, !noundef !10 ; 4 uses
  %i.dw = load i64, ptr %i.o, align 8, !range !16, !alias.scope !4079, !noundef !10
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #52
          to label %bb.aj unwind label %bb.af

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.dy = load ptr, ptr %i.di, align 8, !alias.scope !4079, !nonnull !10, !noundef !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  store i8 58, ptr %i.dz, align 1
  %i.ea = add i64 %i.dv, 1                        ; 3 uses
  store i64 %i.ea, ptr %i.dj, align 8, !alias.scope !4079
  %i.eb = load i64, ptr %i.o, align 8, !range !16, !alias.scope !4080, !noundef !10
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #52
          to label %bb.al unwind label %bb.af

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.ed = load ptr, ptr %i.di, align 8, !alias.scope !4080, !nonnull !10, !noundef !10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ea
  store i8 32, ptr %i.ee, align 1
  %i.ef = add i64 %i.dv, 2
  store i64 %i.ef, ptr %i.dj, align 8, !alias.scope !4080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.eg = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !10
  store i64 0, ptr %i.i, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.eg, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ei, ptr %.sroa.59.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @683, i64 noundef 10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef 1)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !4081)
  %i.ek = load i8, ptr %i.j, align 8, !range !15, !alias.scope !4081, !noundef !10
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ao, label %.noexc44.preheader, !prof !13

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4082
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.en = load i8, ptr %i.em, align 1, !range !37, !alias.scope !4081, !noundef !10
  store i8 %i.en, ptr %i.d, align 1, !noalias !4082
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @684) #53
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.ao
  unreachable

.noexc44.preheader:                               ; preds = %bb.an
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45 unwind label %bb.ap

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.am, %bb.ap
  %.pn22 = phi { ptr, i32 } [ %i.eo, %bb.ap ], [ %i.ej, %bb.am ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #50
          to label %.body50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %.noexc44.preheader
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45: ; preds = %.noexc44.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit47 unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45, %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit47
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #50
          to label %.body50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit47: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.es = load i64, ptr %i.m, align 8, !range !16, !noundef !10
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !noundef !10 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, -1
  call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  store ptr %i.er, ptr %i.e, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.es, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.er, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ew, ptr %i.ez, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.ar unwind label %bb.aq

bb.ar:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i49 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body50 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i49: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit53 unwind label %bb.af

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit53: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.fc = load i64, ptr %i.dj, align 8, !alias.scope !4083, !noundef !10 ; 3 uses
  %i.fd = load i64, ptr %i.o, align 8, !range !16, !alias.scope !4083, !noundef !10
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit53
end_hunk_20
begin_hunk_21_@llvm.umin.i64
!2633 = !{!2562}
!2634 = !{!2561, !2562}
!2635 = !{!2568, !2566, !2564}
!2636 = !{!2570}
!2637 = !{!2572}
!2638 = !{!2572, !2570}
!2639 = !{!2574}
!2640 = !{!2576}
!2641 = !{!2579, !2578, !2576}
!2642 = !{!2581}
!2643 = !{!2583}
!2644 = !{!2584}
!2645 = !{!2583, !2584}
!2646 = !{!2586}
!2647 = !{!2586, !2584}
!2648 = !{!2588}
!2649 = !{!2588, !2586, !2584}
!2650 = !{!2588, !2586, !2583}
!2651 = !{!2590, !2584}
!2652 = !{!2590}
!2653 = !{!2592}
!2654 = !{!2592, !2590, !2584}
!2655 = !{!2592, !2590, !2583}
!2656 = !{!2594, !2584}
!2657 = !{!2594}
!2658 = !{!2596}
!2659 = !{!2596, !2594, !2584}
!2660 = !{!2596, !2594, !2583}
!2661 = !{!2598}
!2662 = !{!2598, !2584}
!2663 = !{!2600}
!2664 = !{!2600, !2598, !2584}
!2665 = !{!2600, !2598, !2583}
!2666 = !{!2602, !2584}
!2667 = !{!2602}
!2668 = !{!2604}
!2669 = !{!2604, !2602, !2584}
!2670 = !{!2604, !2602, !2583}
!2671 = !{!2606, !2584}
!2672 = !{!2606}
!2673 = !{!2608}
!2674 = !{!2608, !2606, !2584}
!2675 = !{!2608, !2606, !2583}
!2676 = !{!2610}
!2677 = !{!2613}
!2678 = !{!2614}
!2679 = !{!2613, !2614}
!2680 = distinct !{!2680, i1 true, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem5merge"}
!2681 = distinct !{!2681, !2680, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem5merge: argument 0"}
!2682 = distinct !{!2682, !2680, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem5merge: argument 1"}
!2683 = distinct !{!2683, !2680, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem5merge: argument 2"}
!2684 = distinct !{!2684, i1 true, !"_RNvMs1_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_10Timestamps17update_last_added"}
!2685 = distinct !{!2685, !2684, !"_RNvMs1_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_10Timestamps17update_last_added: argument 0"}
!2686 = distinct !{!2686, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE8push_mutBL_"}
!2687 = distinct !{!2687, !2686, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE8push_mutBL_: argument 0"}
!2688 = distinct !{!2688, !2686, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE8push_mutBL_: argument 1"}
!2689 = !{!2681}
!2690 = !{!2682}
!2691 = !{!2683}
!2692 = !{!2681, !2682, !2683}
!2693 = !{!2685, !2682}
!2694 = !{!2681, !2682}
!2695 = !{!2681, !2683}
!2696 = !{!2687}
!2697 = !{!2688}
!2698 = distinct !{!2698, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17compact_new_items"}
!2699 = distinct !{!2699, !2698, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17compact_new_items: argument 0"}
!2700 = distinct !{!2700, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state"}
!2701 = distinct !{!2701, !2700, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state: argument 0"}
!2702 = distinct !{!2702, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl25save_internal_via_rewrite"}
!2703 = distinct !{!2703, !2702, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl25save_internal_via_rewrite: argument 0"}
!2704 = distinct !{!2704, !2702, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl25save_internal_via_rewrite: argument 1"}
!2705 = distinct !{!2705, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2706 = distinct !{!2706, !2705, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2707 = distinct !{!2707, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2708 = distinct !{!2708, !2707, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2709 = distinct !{!2709, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!2710 = distinct !{!2710, !2709, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!2711 = distinct !{!2711, !2709, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!2712 = distinct !{!2712, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2713 = distinct !{!2713, !2712, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2714 = distinct !{!2714, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!2715 = distinct !{!2715, !2714, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!2716 = distinct !{!2716, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state"}
!2717 = distinct !{!2717, !2716, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state: argument 0"}
!2718 = distinct !{!2718, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl27save_internal_via_appending"}
!2719 = distinct !{!2719, !2718, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl27save_internal_via_appending: argument 0"}
!2720 = distinct !{!2720, !2718, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl27save_internal_via_appending: argument 1"}
!2721 = distinct !{!2721, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2722 = distinct !{!2722, !2721, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2723 = distinct !{!2723, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2724 = distinct !{!2724, !2723, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2725 = distinct !{!2725, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!2726 = distinct !{!2726, !2725, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!2727 = distinct !{!2727, !2725, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!2728 = distinct !{!2728, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2729 = distinct !{!2729, !2728, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2730 = distinct !{!2730, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!2731 = distinct !{!2731, !2730, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!2732 = distinct !{!2732, i1 true, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file"}
!2733 = distinct !{!2733, !2732, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file: argument 1"}
!2734 = distinct !{!2734, !2732, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file: argument 0"}
!2735 = distinct !{!2735, i1 true, !"_RNvYNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileId7from_mdINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std2fs8MetadataEE9call_onceB9_"}
!2736 = distinct !{!2736, !2735, !"_RNvYNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileId7from_mdINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std2fs8MetadataEE9call_onceB9_: argument 1"}
!2737 = distinct !{!2737, i1 true, !"_RNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB2_6FileId7from_md"}
!2738 = distinct !{!2738, !2737, !"_RNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB2_6FileId7from_md: argument 1"}
!2739 = distinct !{!2739, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_"}
!2740 = distinct !{!2740, !2739, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_: argument 1"}
!2741 = distinct !{!2741, !2739, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_: argument 0"}
!2742 = distinct !{!2742, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish"}
!2743 = distinct !{!2743, !2742, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish: argument 0"}
!2744 = distinct !{!2744, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!2745 = distinct !{!2745, !2744, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!2746 = distinct !{!2746, i1 true, !"_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq"}
!2747 = distinct !{!2747, !2746, !"_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq: argument 1"}
!2748 = distinct !{!2748, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state"}
!2749 = distinct !{!2749, !2748, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state: argument 0"}
!2750 = distinct !{!2750, i1 true, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file"}
!2751 = distinct !{!2751, !2750, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file: argument 1"}
!2752 = distinct !{!2752, !2750, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file: argument 0"}
!2753 = distinct !{!2753, i1 true, !"_RNvYNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileId7from_mdINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std2fs8MetadataEE9call_onceB9_"}
!2754 = distinct !{!2754, !2753, !"_RNvYNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileId7from_mdINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std2fs8MetadataEE9call_onceB9_: argument 1"}
!2755 = distinct !{!2755, i1 true, !"_RNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB2_6FileId7from_md"}
!2756 = distinct !{!2756, !2755, !"_RNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB2_6FileId7from_md: argument 1"}
!2757 = distinct !{!2757, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_"}
!2758 = distinct !{!2758, !2757, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_: argument 1"}
!2759 = distinct !{!2759, !2757, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_: argument 0"}
!2760 = distinct !{!2760, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish"}
!2761 = distinct !{!2761, !2760, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish: argument 0"}
!2762 = distinct !{!2762, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!2763 = distinct !{!2763, !2762, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!2764 = distinct !{!2764, i1 true, !"_RINvMs8_NtNtCs8frGy5WneL6_4fish7history4fileNtNtB8_7history11HistoryItem8write_toINtNtCs1xwejQucwHj_5alloc3vec3VechEEBa_"}
!2765 = distinct !{!2765, !2764, !"_RINvMs8_NtNtCs8frGy5WneL6_4fish7history4fileNtNtB8_7history11HistoryItem8write_toINtNtCs1xwejQucwHj_5alloc3vec3VechEEBa_: argument 0"}
!2766 = distinct !{!2766, !2764, !"_RINvMs8_NtNtCs8frGy5WneL6_4fish7history4fileNtNtB8_7history11HistoryItem8write_toINtNtCs1xwejQucwHj_5alloc3vec3VechEEBa_: argument 1"}
!2767 = distinct !{!2767, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish"}
!2768 = distinct !{!2768, !2767, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish: argument 0"}
!2769 = distinct !{!2769, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!2770 = distinct !{!2770, !2769, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!2771 = distinct !{!2771, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2772 = distinct !{!2772, !2771, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2773 = distinct !{!2773, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2774 = distinct !{!2774, !2773, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2775 = distinct !{!2775, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2776 = distinct !{!2776, !2775, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2777 = distinct !{!2777, i1 true, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish"}
!2778 = distinct !{!2778, !2777, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 1"}
!2779 = distinct !{!2779, !2777, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 0"}
!2780 = distinct !{!2780, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2781 = distinct !{!2781, !2780, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2782 = distinct !{!2782, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!2783 = distinct !{!2783, !2782, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!2784 = distinct !{!2784, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish"}
!2785 = distinct !{!2785, !2784, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish: argument 0"}
!2786 = distinct !{!2786, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!2787 = distinct !{!2787, !2786, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!2788 = distinct !{!2788, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2789 = distinct !{!2789, !2788, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2790 = distinct !{!2790, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2791 = distinct !{!2791, !2790, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2792 = distinct !{!2792, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2793 = distinct !{!2793, !2792, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2794 = distinct !{!2794, i1 true, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish"}
!2795 = distinct !{!2795, !2794, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 1"}
!2796 = distinct !{!2796, !2794, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 0"}
!2797 = distinct !{!2797, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2798 = distinct !{!2798, !2797, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2799 = distinct !{!2799, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!2800 = distinct !{!2800, !2799, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!2801 = distinct !{!2801, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish"}
!2802 = distinct !{!2802, !2801, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish: argument 0"}
!2803 = distinct !{!2803, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!2804 = distinct !{!2804, !2803, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!2805 = distinct !{!2805, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2806 = distinct !{!2806, !2805, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2807 = distinct !{!2807, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2808 = distinct !{!2808, !2807, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2809 = distinct !{!2809, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2810 = distinct !{!2810, !2809, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2811 = distinct !{!2811, i1 true, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish"}
!2812 = distinct !{!2812, !2811, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 1"}
!2813 = distinct !{!2813, !2811, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 0"}
!2814 = distinct !{!2814, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2815 = distinct !{!2815, !2814, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2816 = distinct !{!2816, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!2817 = distinct !{!2817, !2816, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!2818 = !{!2699}
!2819 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!2820 = !{!2701}
!2821 = !{!2703}
!2822 = !{!2703, !2704}
!2823 = !{!2706}
!2824 = !{!2708}
!2825 = !{!2710}
!2826 = !{!2710, !2711, !2703, !2704}
!2827 = !{!2713}
!2828 = !{!2715, !2703, !2704}
!2829 = !{!2704}
!2830 = !{!2717, !2703}
!2831 = !{!2719}
!2832 = !{!2719, !2720}
!2833 = !{!"branch_weights", !"expected", i32 2145766191, i32 1717457}
!2834 = !{!2722}
!2835 = !{!2724}
!2836 = !{!2726}
!2837 = !{!2726, !2727, !2719, !2720}
!2838 = !{!2729}
!2839 = !{!2731, !2719, !2720}
!2840 = !{!2734, !2733, !2719, !2720}
!2841 = !{!2738, !2736}
!2842 = !{!2741, !2740, !2734, !2733, !2719, !2720}
!2843 = !{!2743, !2734, !2733, !2719, !2720}
!2844 = !{!2745}
!2845 = !{!2747, !2719}
!2846 = !{!2749, !2719}
!2847 = !{!2752, !2751, !2719, !2720}
!2848 = !{!2756, !2754}
!2849 = !{!2759, !2758, !2752, !2751, !2719, !2720}
!2850 = !{!2761, !2752, !2751, !2719, !2720}
!2851 = !{!2763}
!2852 = !{!2765}
!2853 = !{!2765, !2766, !2719, !2720}
!2854 = !{!2768}
!2855 = !{!2770}
!2856 = !{!2772}
!2857 = !{!2774}
!2858 = !{!2776}
!2859 = !{!2779, !2778}
!2860 = !{!2779}
!2861 = !{!2778}
!2862 = !{!2781}
!2863 = !{!2783}
!2864 = !{!2785}
!2865 = !{!2787}
!2866 = !{!2789}
!2867 = !{!2791}
!2868 = !{!2793}
!2869 = !{!2796, !2795}
!2870 = !{!2796}
!2871 = !{!2795}
!2872 = !{!2798}
!2873 = !{!2800}
!2874 = !{!2802}
!2875 = !{!2804}
!2876 = !{!2806}
!2877 = !{!2808}
!2878 = !{!2810}
!2879 = !{!2813, !2812}
!2880 = !{!2813}
!2881 = !{!2812}
!2882 = !{!2815}
!2883 = !{!2817}
!2884 = distinct !{!2884, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1v_6marker4SendEL_EE24handle_capacity_increaseCs8frGy5WneL6_4fish"}
!2885 = distinct !{!2885, !2884, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1v_6marker4SendEL_EE24handle_capacity_increaseCs8frGy5WneL6_4fish: argument 0"}
!2886 = !{!2885}
!2887 = distinct !{!2887, i1 true, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE18rotate_right_innerCs8frGy5WneL6_4fish"}
!2888 = distinct !{!2888, !2887, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE18rotate_right_innerCs8frGy5WneL6_4fish: argument 0"}
!2889 = distinct !{!2889, i1 true, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE17rotate_left_innerCs8frGy5WneL6_4fish"}
!2890 = distinct !{!2890, !2889, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE17rotate_left_innerCs8frGy5WneL6_4fish: argument 0"}
!2891 = !{!2888}
!2892 = !{!2890}
!2893 = distinct !{!2893, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE24handle_capacity_increaseCs8frGy5WneL6_4fish"}
!2894 = distinct !{!2894, !2893, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE24handle_capacity_increaseCs8frGy5WneL6_4fish: argument 0"}
!2895 = !{!2894}
!2896 = distinct !{!2896, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish"}
!2897 = distinct !{!2897, !2896, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish: argument 0"}
!2898 = !{!2897}
!2899 = distinct !{!2899, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_"}
!2900 = distinct !{!2900, !2899, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_: argument 0"}
!2901 = !{!2900}
!2902 = distinct !{!2902, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_"}
!2903 = distinct !{!2903, !2902, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_: argument 0"}
!2904 = !{!2903}
!2905 = distinct !{!2905, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_"}
!2906 = distinct !{!2906, !2905, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_: argument 0"}
!2907 = !{!2906}
!2908 = distinct !{!2908, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_"}
!2909 = distinct !{!2909, !2908, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_: argument 0"}
!2910 = !{!2909}
!2911 = distinct !{!2911, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish"}
!2912 = distinct !{!2912, !2911, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish: argument 0"}
!2913 = !{!2912}
!2914 = distinct !{!2914, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2915 = distinct !{!2915, !2914, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2916 = !{!2915}
!2917 = distinct !{!2917, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2918 = distinct !{!2918, !2917, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2919 = distinct !{!2919, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl11get_history"}
!2920 = distinct !{!2920, !2919, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl11get_history: argument 1"}
!2921 = distinct !{!2921, !2919, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl11get_history: argument 0"}
!2922 = distinct !{!2922, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish"}
!2923 = distinct !{!2923, !2922, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2924 = distinct !{!2924, !2922, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 1"}
!2925 = distinct !{!2925, !45}
!2926 = distinct !{!2926, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish"}
!2927 = distinct !{!2927, !2926, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2928 = distinct !{!2928, !2926, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 1"}
!2929 = !{!2918}
!2930 = !{!2920}
!2931 = !{!2921, !2920}
!2932 = !{!2921}
!2933 = !{!2923}
!2934 = !{!2924, !2921}
!2935 = !{!2927}
!2936 = !{!2928, !2921}
!2937 = distinct !{!2937, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2938 = distinct !{!2938, !2937, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2939 = distinct !{!2939, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl13clear_session"}
!2940 = distinct !{!2940, !2939, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl13clear_session: argument 0"}
!2941 = !{!2938}
!2942 = !{!2940}
!2943 = distinct !{!2943, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2944 = distinct !{!2944, !2943, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2945 = distinct !{!2945, i1 true, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!2946 = distinct !{!2946, !2945, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!2947 = distinct !{!2947, !2945, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!2948 = !{!2944}
!2949 = !{!2946}
!2950 = !{!2947}
!2951 = !{!2946, !2947}
!2952 = distinct !{!2952, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2953 = distinct !{!2953, !2952, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2954 = !{!2953}
!2955 = distinct !{!2955, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2956 = distinct !{!2956, !2955, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2957 = !{!2956}
!2958 = distinct !{!2958, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2959 = distinct !{!2959, !2958, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2960 = distinct !{!2960, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl22remove_ephemeral_items"}
!2961 = distinct !{!2961, !2960, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl22remove_ephemeral_items: argument 0"}
!2962 = distinct !{!2962, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_"}
!2963 = distinct !{!2963, !2962, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_: argument 0"}
!2964 = !{!2959}
!2965 = !{!2961}
!2966 = !{!2963}
!2967 = distinct !{!2967, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2968 = distinct !{!2968, !2967, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2969 = distinct !{!2969, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl28incorporate_external_changes"}
!2970 = distinct !{!2970, !2969, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl28incorporate_external_changes: argument 0"}
!2971 = distinct !{!2971, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state"}
!2972 = distinct !{!2972, !2971, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state: argument 0"}
!2973 = !{!2968}
!2974 = !{!2970}
!2975 = !{!2972, !2970}
!2976 = distinct !{!2976, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2977 = distinct !{!2977, !2976, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2978 = distinct !{!2978, i1 true, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem3new"}
!2979 = distinct !{!2979, !2978, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem3new: argument 1"}
!2980 = distinct !{!2980, !2978, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem3new: argument 2"}
!2981 = distinct !{!2981, !2978, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem3new: argument 0"}
!2982 = distinct !{!2982, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl24disable_automatic_saving"}
!2983 = distinct !{!2983, !2982, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl24disable_automatic_saving: argument 0"}
!2984 = distinct !{!2984, i1 true, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!2985 = distinct !{!2985, !2984, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!2986 = distinct !{!2986, !2984, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!2987 = distinct !{!2987, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_"}
!2988 = distinct !{!2988, !2987, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_: argument 0"}
!2989 = distinct !{!2989, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_"}
!2990 = distinct !{!2990, !2989, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_: argument 0"}
!2991 = distinct !{!2991, i1 true, !"_RINvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB6_10ThreadPool7performNCNvMs4_NtNtBa_7history7historyNtB1g_7History31add_pending_with_file_detection0EBa_"}
!2992 = distinct !{!2992, !2991, !"_RINvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB6_10ThreadPool7performNCNvMs4_NtNtBa_7history7historyNtB1g_7History31add_pending_with_file_detection0EBa_: argument 1"}
!2993 = distinct !{!2993, !2991, !"_RINvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB6_10ThreadPool7performNCNvMs4_NtNtBa_7history7historyNtB1g_7History31add_pending_with_file_detection0EBa_: argument 0"}
!2994 = distinct !{!2994, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtBM_7History31add_pending_with_file_detection0E3newBQ_"}
!2995 = distinct !{!2995, !2994, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtBM_7History31add_pending_with_file_detection0E3newBQ_: argument 0"}
!2996 = distinct !{!2996, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7threads7threads19ThreadPoolProtectedEINtBM_11PoisonErrorBH_EE6expectB1I_"}
!2997 = distinct !{!2997, !2996, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7threads7threads19ThreadPoolProtectedEINtBM_11PoisonErrorBH_EE6expectB1I_: argument 0"}
!2998 = distinct !{!2998, !2996, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7threads7threads19ThreadPoolProtectedEINtBM_11PoisonErrorBH_EE6expectB1I_: argument 1"}
!2999 = distinct !{!2999, i1 true, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1v_6marker4SendEL_EE13push_back_mutCs8frGy5WneL6_4fish"}
!3000 = distinct !{!3000, !2999, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1v_6marker4SendEL_EE13push_back_mutCs8frGy5WneL6_4fish: argument 0"}
!3001 = distinct !{!3001, !2999, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1v_6marker4SendEL_EE13push_back_mutCs8frGy5WneL6_4fish: argument 1"}
!3002 = distinct !{!3002, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3003 = distinct !{!3003, !3002, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3004 = distinct !{!3004, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3005 = distinct !{!3005, !3004, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3006 = distinct !{!3006, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3007 = distinct !{!3007, !3006, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3008 = distinct !{!3008, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3009 = distinct !{!3009, !3008, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3010 = distinct !{!3010, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3011 = distinct !{!3011, !3010, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3012 = distinct !{!3012, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!3013 = distinct !{!3013, !3012, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!3014 = distinct !{!3014, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3015 = distinct !{!3015, !3014, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3016 = distinct !{!3016, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3017 = distinct !{!3017, !3016, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3018 = distinct !{!3018, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3019 = distinct !{!3019, !3018, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3020 = distinct !{!3020, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs8frGy5WneL6_4fish"}
!3021 = distinct !{!3021, !3020, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs8frGy5WneL6_4fish: argument 0"}
!3022 = distinct !{!3022, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs8frGy5WneL6_4fish"}
!3023 = distinct !{!3023, !3022, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs8frGy5WneL6_4fish: argument 0"}
!3024 = distinct !{!3024, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs8frGy5WneL6_4fish"}
!3025 = distinct !{!3025, !3024, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs8frGy5WneL6_4fish: argument 0"}
!3026 = distinct !{!3026, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!3027 = distinct !{!3027, !3026, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!3028 = distinct !{!3028, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs8frGy5WneL6_4fish"}
!3029 = distinct !{!3029, !3028, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs8frGy5WneL6_4fish: argument 0"}
!3030 = distinct !{!3030, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs8frGy5WneL6_4fish"}
!3031 = distinct !{!3031, !3030, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs8frGy5WneL6_4fish: argument 0"}
!3032 = distinct !{!3032, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs8frGy5WneL6_4fish"}
!3033 = distinct !{!3033, !3032, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs8frGy5WneL6_4fish: argument 0"}
end_hunk_21
