Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMs7_NtCs9gmjTwvRRSu_10typst_html3domNtB5_7HtmlTag6intern:bb.a
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14441
  %i.ft = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.ft, align 8, !noalias !14441, !noundef !52 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, label %bb.aq, !prof !54

bb.aq:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #54
          to label %.noexc131 unwind label %bb.ak

.noexc131:                                        ; preds = %bb.aq
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  %i.fu = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.fr, ptr %i.fv, align 8, !noalias !14441
  store i64 8, ptr %i.b, align 8, !noalias !14441
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.fu, ptr %i.fw, align 8, !noalias !14441
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc132 unwind label %bb.ak

.noexc132:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14441
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit: ; preds = %.noexc132, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, %bb.ap, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCs9gmjTwvRRSu_10typst_html3domNtB5_7HtmlTag7resolve(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr7resolve(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvMs7_NtCs9gmjTwvRRSu_10typst_html3domNtB5_7HtmlTag8constant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %.preheader, !prof !55

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @997, ptr noundef nonnull inttoptr (i64 53 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #51
  unreachable

bb.c:                                             ; preds = %bb.f
  %i.b = add nuw i64 %.sroa.0.09, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noundef i64 @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr8constant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret i64 %i.c

.preheader:                                       ; preds = %bb.a, %bb.c
  %.sroa.0.09 = phi i64 [ %i.b, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.09
  %i.e = load i8, ptr %i.d, align 1, !noundef !52 ; 7 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.f, label %bb.e, !prof !54

bb.e:                                             ; preds = %bb.f, %.preheader
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1003, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #51
  unreachable

bb.f:                                             ; preds = %.preheader
  %i.g = add nsw i8 %i.e, -48
  %.sroa.04.0 = icmp ult i8 %i.g, 10
  %i.h = icmp samesign ugt i8 %i.e, 64
  %i.i = icmp samesign ult i8 %i.e, 91
  %.sroa.05.0 = select i1 %i.h, i1 %i.i, i1 %.sroa.04.0
  %i.j = icmp samesign ugt i8 %i.e, 96
  %i.k = icmp samesign ult i8 %i.e, 123
  %.sroa.06.0 = select i1 %i.j, i1 %i.k, i1 %.sroa.05.0
  %i.l = icmp eq i8 %i.e, 45
  %or.cond = or i1 %i.l, %.sroa.06.0
  br i1 %or.cond, label %bb.c, label %bb.e, !prof !129
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8push_mutCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !52 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !67, !noundef !52
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !52, !noundef !52
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB4_11StringsType5input(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = icmp uge i64 %.8.val, %.0.val
  %i.d = icmp ult i64 %.8.val, 348
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %_RNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB4_11StringsType7strings.exit, label %bb.b, !prof !131

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.0.val, i64 noundef %.8.val, i64 noundef 347, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1382) #51
  unreachable

_RNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB4_11StringsType7strings.exit: ; preds = %bb.a
  %.idx1 = shl nuw nsw i64 %.0.val, 5
  %i.e = getelementptr inbounds nuw i8, ptr @1381, i64 %.idx1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14461
  %i.f = sub nuw nsw i64 %.8.val, %.0.val         ; 5 uses
  %i.g = mul nuw nsw i64 %i.f, 48                 ; 2 uses
  %i.h = icmp eq i64 %.8.val, %.0.val
  br i1 %i.h, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread: ; preds = %_RNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB4_11StringsType7strings.exit
  %i.i = icmp eq i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.i)
  store i64 0, ptr %i.b, align 8, !noalias !14461
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !14461
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterTReB3O_EENCNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB43_11StringsType5input0EE9from_iterB45_.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB4_11StringsType7strings.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !14462
  %i.l = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 8) #53, !noalias !14462 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #54, !noalias !14461
  unreachable

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.f, ptr %i.b, align 8, !noalias !14461
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !14461
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14464)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.val10.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aa, %bb.f ] ; 4 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.val10.i.i.i.i.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14465)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14466
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !14467, !noalias !14466, !nonnull !52, !noundef !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !14467, !noalias !14466, !noundef !52
  invoke void @_RNvXs1q_NtNtCsdaEETE4DqmE_13typst_library11foundations3strReNtNtB8_4cast9IntoValue10into_value(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u)
          to label %bb.f unwind label %.body.i, !noalias !14466

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !14467, !noalias !14466, !nonnull !52, !noundef !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !14467, !noalias !14466, !noundef !52
  store ptr %i.w, ptr %i.p, align 8, !noalias !14468
  store i64 %i.y, ptr %i.q, align 8, !noalias !14468
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.val10.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !14468
  %i.aa = add i64 %.val10.i.i.i.i.i.i, 1          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14466
  %i.ab = icmp eq i64 %i.aa, %i.f
  br i1 %i.ab, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterTReB3O_EENCNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB43_11StringsType5input0EE9from_iterB45_.exit, label %bb.e

.body.i:                                          ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !14469, !noalias !14470
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #49
          to label %bb.h unwind label %bb.g, !noalias !14461

bb.g:                                             ; preds = %.body.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !14461
  unreachable

bb.h:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ac

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterTReB3O_EENCNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB43_11StringsType5input0EE9from_iterB45_.exit: ; preds = %bb.f, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread
  %i.ae = phi ptr [ %i.k, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread ], [ %i.o, %bb.f ]
  %storemerge.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread ], [ %i.f, %bb.f ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.ae, align 8, !alias.scope !14469, !noalias !14470
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14461
  store i64 35, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs9gmjTwvRRSu_10typst_html7convertNtB4_9Protector11visit_nodes(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.5.i.i = alloca [120 x i8], align 8       ; 5 uses
  %i.c = alloca [128 x i8], align 16              ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.5.i7 = alloca [120 x i8], align 8        ; 5 uses
  %i.e = alloca [128 x i8], align 16              ; 4 uses
  %i.f = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.5.i = alloca [120 x i8], align 8         ; 5 uses
  tail call fastcc void @_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeE11make_uniqueBL_(ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.g = load ptr, ptr %1, align 8, !nonnull !52, !noundef !52 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !52 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 7
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.5.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i, i64 8
  %.sroa.5.16..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %.sroa.5.i7, i64 8
  %.sroa.5.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMs_NtCs9gmjTwvRRSu_10typst_html7convertNtB4_9Protector10collapsing.exit
  %.sroa.0.020 = phi ptr [ %i.g, %.lr.ph ], [ %i.m, %_RNvMs_NtCs9gmjTwvRRSu_10typst_html7convertNtB4_9Protector10collapsing.exit ] ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 128 ; 2 uses
  %i.n = load i64, ptr %.sroa.0.020, align 16, !range !56, !noundef !52
  switch i64 %i.n, label %default.unreachable32 [
    i64 0, label %_RNvMs_NtCs9gmjTwvRRSu_10typst_html7convertNtB4_9Protector10collapsing.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

._crit_edge:                                      ; preds = %_RNvMs_NtCs9gmjTwvRRSu_10typst_html7convertNtB4_9Protector10collapsing.exit, %bb.a
  ret void

default.unreachable32:                            ; preds = %bb.l, %bb.b
  unreachable

_RNvMs_NtCs9gmjTwvRRSu_10typst_html7convertNtB4_9Protector10collapsing.exit: ; preds = %bb.h, %_RNvNtCs9gmjTwvRRSu_10typst_html7convert13protect_space.exit.i, %bb.t, %bb.x, %bb.y, %bb.w, %_RNvNtCs9gmjTwvRRSu_10typst_html7convert13protect_space.exit, %bb.p, %_RNvNtCs9gmjTwvRRSu_10typst_html7convert13protect_space.exit11, %bb.m, %bb.e, %bb.b
  %i.o = icmp eq ptr %i.m, %i.j
  br i1 %i.o, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 23
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !14487, !noundef !52 ; 2 uses
  %.not.i = icmp sgt i8 %i.r, -1                  ; 2 uses
  %i.s = and i8 %i.r, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = load ptr, ptr %i.p, align 8, !alias.scope !14487, !nonnull !52
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 16
  %i.w = load i64, ptr %i.v, align 16, !alias.scope !14487
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.w, i64 %i.t ; 2 uses
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.u, ptr %i.p ; 3 uses
  %i.x = icmp eq i64 %.sroa.3.0.i, 1
  br i1 %i.x, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 96
  %i.z = load i64, ptr %i.y, align 16, !range !61, !noundef !52 ; 3 uses
  %i.aa = tail call noundef i8 @_RNvMNtCs9gmjTwvRRSu_10typst_html8propertyNtB2_7Display11default_for(i64 noundef range(i64 1, 0) %i.z)
  %i.ab = icmp eq i8 %i.aa, 0
  %i.ac = icmp eq i64 %i.z, -9223372036854775230
  %.sroa.0.0.i3 = or i1 %i.ac, %i.ab
  br i1 %.sroa.0.0.i3, label %bb.t, label %bb.s

bb.e:                                             ; preds = %bb.b
  store i64 1, ptr %0, align 8
  br label %_RNvMs_NtCs9gmjTwvRRSu_10typst_html7convertNtB4_9Protector10collapsing.exit

bb.f:                                             ; preds = %bb.c
  %lhsc = load i8, ptr %.sroa.0.0.i, align 1
  %i.ad = icmp eq i8 %lhsc, 32
  br i1 %i.ad, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %i.af = phi ptr [ %i.bo, %bb.k ], [ %.sroa.0.0.i, %bb.g ] ; 6 uses
  %.not.i.not.not.not.i.not = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.not.not.not.i.not, label %_RNvMs_NtCs9gmjTwvRRSu_10typst_html7convertNtB4_9Protector10collapsing.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  %i.ah = load i8, ptr %i.af, align 1, !noalias !14488, !noundef !52 ; 5 uses
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.j, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i: ; preds = %bb.i
  %i.aj = and i8 %i.ah, 31
  %i.ak = zext nneg i8 %i.aj to i32               ; 3 uses
  %i.al = icmp ne ptr %i.ag, %i.ae
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 3 uses
  %i.an = load i8, ptr %i.ag, align 1, !noalias !14488, !noundef !52
  %i.ao = shl nuw nsw i32 %i.ak, 6
  %i.ap = and i8 %i.an, 63
  %i.aq = zext nneg i8 %i.ap to i32               ; 2 uses
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = icmp samesign ugt i8 %i.ah, -33
  br i1 %i.as, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = zext nneg i8 %i.ah to i32
  br label %bb.k

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i
  %i.au = icmp ne ptr %i.am, %i.ae
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 3 ; 3 uses
  %i.aw = load i8, ptr %i.am, align 1, !noalias !14488, !noundef !52
  %i.ax = shl nuw nsw i32 %i.aq, 6
  %i.ay = and i8 %i.aw, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az            ; 2 uses
  %i.bb = shl nuw nsw i32 %i.ak, 12
  %i.bc = or disjoint i32 %i.ba, %i.bb
  %i.bd = icmp samesign ugt i8 %i.ah, -17
  br i1 %i.bd, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.i, label %bb.k

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i
  %i.be = icmp ne ptr %i.av, %i.ae
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.bg = load i8, ptr %i.av, align 1, !noalias !14488, !noundef !52
  %i.bh = shl nuw nsw i32 %i.ak, 18
  %i.bi = and i32 %i.bh, 1835008
  %i.bj = shl nuw nsw i32 %i.ba, 6
  %i.bk = and i8 %i.bg, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %i.bn = or disjoint i32 %i.bm, %i.bi
  br label %bb.k

bb.k:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i, %bb.j, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i
  %i.bo = phi ptr [ %i.av, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i ], [ %i.bf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i ], [ %i.ag, %bb.j ]
  %spec.select.i.ph.i = phi i32 [ %i.bc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.i ], [ %i.bn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.i ], [ %i.ar, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i ], [ %i.at, %bb.j ]
  %i.bp = tail call noundef zeroext i1 @_RNvNtCsdaEETE4DqmE_13typst_library4text20is_default_ignorable(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i), !noalias !14489
  br i1 %i.bp, label %bb.h, label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.bq = load i64, ptr %0, align 8, !range !66, !noundef !52
  switch i64 %i.bq, label %default.unreachable32 [
    i64 0, label %bb.n
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

bb.m:                                             ; preds = %bb.k
  store i64 1, ptr %0, align 8
  br label %_RNvMs_NtCs9gmjTwvRRSu_10typst_html7convertNtB4_9Protector10collapsing.exit

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14490)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14490
  call fastcc void @_RNvXsj_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlNodeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 16 captures(none) dereferenceable(128) %i.e, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.020) #52
  %i.br = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromBL_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(128) %i.e) ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
end_hunk_0
begin_hunk_1_@_RNvYNCNvNtCs9gmjTwvRRSu_10typst_html5rules10TABLE_RULE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1M_5model5table9TableElemEQNtNtB1M_6engine6EngineNtNtB1K_6styles10StyleChainEE9call_onceB8_:bb.a
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.cu, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.aq, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !23362
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !23362
  store i64 %.val1, ptr %i.ak, align 8, !noalias !23364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !23364
  store ptr %i.ak, ptr %i.aj, align 8, !noalias !23364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !23364
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !23363, !noalias !23365, !nonnull !52, !noundef !52
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !23363, !noalias !23365, !noundef !52 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %i.aw = load i8, ptr %i.av, align 8, !range !64, !alias.scope !23363, !noalias !23365, !noundef !52
  %i.ax = trunc nuw i8 %i.aw to i1                ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !23363, !noalias !23365, !noundef !52 ; 4 uses
  %i.ba = icmp ult i64 %i.az, 288230376151711744
  call void @llvm.assume(i1 %i.ba)
  br i1 %i.ax, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  %i.bb = lshr i64 %i.az, 1
  %i.bc = add nuw nsw i64 %i.bb, 1
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.bd = icmp eq i64 %i.az, 0
  br i1 %i.bd, label %bb.d, label %bb.e, !prof !23366

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1398) #51, !noalias !23367
  unreachable

bb.e:                                             ; preds = %bb.c, %.thread.i.i
  %.sroa.0.0174.i.i = phi i64 [ %i.bc, %.thread.i.i ], [ %i.az, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !23368
  %i.be = icmp eq i64 %i.au, 0                    ; 2 uses
  br i1 %i.be, label %_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = udiv i64 %i.au, %.sroa.0.0174.i.i
  %i.bg = urem i64 %i.au, %.sroa.0.0174.i.i
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  %i.bh = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add i64 %i.bf, %i.bh
  br label %_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i

_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.sink1.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.f ], [ 0, %bb.e ] ; 4 uses
  %i.bi = shl i64 %.sroa.0.0.sink1.i.i.i.i, 4     ; 4 uses
  %i.bj = icmp ugt i64 %.sroa.0.0.sink1.i.i.i.i, 1152921504606846975
  %.not.i.i.i.i.i = icmp ugt i64 %i.bi, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.bj, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.h, label %bb.g, !prof !70

bb.g:                                             ; preds = %_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.g
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !23369
  %i.bl = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.bi, i64 noundef range(i64 1, 9) 8) #53, !noalias !23369 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.h, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i

bb.h:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i ]
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bi) #54, !noalias !23370
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %bb.g
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %i.bl, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.sroa.0.0.sink1.i.i.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ] ; 3 uses
  %i.bn = icmp samesign ule i64 %.sroa.0.0.sink1.i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.bn)
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.y, align 8, !noalias !23368
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %i.bo, align 8, !noalias !23368
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store i64 0, ptr %i.bp, align 8, !noalias !23368
  call void @llvm.experimental.noalias.scope.decl(metadata !23371)
  call void @llvm.experimental.noalias.scope.decl(metadata !23372)
  br i1 %i.be, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEINtB4_18SpecFromIterNestedB13_INtNtNtCs3oUPovFnLWP_4core5slice4iter6ChunksB15_EE9from_iterCs9gmjTwvRRSu_10typst_html.exit.i.i, label %_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %i.bq = udiv i64 %i.au, %.sroa.0.0174.i.i
  %i.br = urem i64 %i.au, %.sroa.0.0174.i.i
  %.not.i.i.i.i.i.i = icmp ne i64 %i.br, 0
  %i.bs = zext i1 %.not.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i = add i64 %i.bq, %i.bs   ; 2 uses
  %i.bt = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i
  br i1 %i.bt, label %bb.i, label %.lr.ph.i.i.i.i.i.i.i, !prof !138

bb.i:                                             ; preds = %_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef 0, i64 noundef %.sroa.0.0.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %.noexc5.i.i.i unwind label %bb.k, !noalias !23370

.noexc5.i.i.i:                                    ; preds = %bb.i
  %.pre.i.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !23373, !noalias !23368
  %.pre.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !23373, !noalias !23368
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc5.i.i.i, %_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  %i.bu = phi ptr [ %.sroa.10.0.i.i.i.i, %_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i ], [ %.pre.i.i.i, %.noexc5.i.i.i ]
  %i.bv = phi i64 [ 0, %_RNvXs17_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_6ChunksNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %.noexc5.i.i.i ]
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %i.bw = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cd, %bb.j ] ; 2 uses
  %i.bx = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ca, %bb.j ] ; 2 uses
  %i.by = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bz, %bb.j ] ; 2 uses
  %..i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0174.i.i, i64 %i.bx) ; 3 uses
  %i.bz = getelementptr inbounds nuw [104 x i8], ptr %i.by, i64 %..i.i.i.i.i.i.i.i.i
  %i.ca = sub nuw nsw i64 %i.bx, %..i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bw ; 2 uses
  store ptr %i.by, ptr %i.cb, align 8, !noalias !23374, !captures !109
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %..i.i.i.i.i.i.i.i.i, ptr %i.cc, align 8, !noalias !23375
  %i.cd = add i64 %i.bw, 1                        ; 2 uses
  %i.ce = icmp eq i64 %i.ca, 0
  br i1 %i.ce, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEINtB4_18SpecFromIterNestedB13_INtNtNtCs3oUPovFnLWP_4core5slice4iter6ChunksB15_EE9from_iterCs9gmjTwvRRSu_10typst_html.exit.i.i, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.y, align 8, !noalias !23368 ; 2 uses
  %i.cg = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.cg, label %common.resume.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val4.i.i.i = load ptr, ptr %i.bo, align 8, !noalias !23368, !nonnull !52, !noundef !52
  br label %common.resume.sink.split.i.i

common.resume.sink.split.i.i:                     ; preds = %bb.ct, %bb.l
  %.val34.sink.i.i = phi i64 [ %.val34.i.i, %bb.ct ], [ %.val3.i.i.i, %bb.l ]
  %.val35.sink.i.i = phi ptr [ %.val35.i.i, %bb.ct ], [ %.val4.i.i.i, %bb.l ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %.pn.pn.pn179.i.i, %bb.ct ], [ %i.cf, %bb.l ]
  %i.ch = shl nuw i64 %.val34.sink.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35.sink.i.i, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !23367
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %.thread175.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html.exit128.i.i, %bb.co, %bb.ck, %bb.ch, %.body.i.i.i.i.i112.i.i, %common.resume.sink.split.i.i, %bb.k
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.cf, %bb.k ], [ %i.ls, %.body.i.i.i.i.i112.i.i ], [ %.pn.pn185.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html.exit128.i.i ], [ %i.lv, %bb.ch ], [ %.pn.pn.pn179.i.i, %.thread175.i.i ], [ %i.mg, %bb.ck ], [ %lpad.thr_comm.split-lp.i107.i.i, %bb.co ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEINtB4_18SpecFromIterNestedB13_INtNtNtCs3oUPovFnLWP_4core5slice4iter6ChunksB15_EE9from_iterCs9gmjTwvRRSu_10typst_html.exit.i.i: ; preds = %bb.j, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %.val8.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i ], [ %i.cd, %bb.j ]
  store i64 %.val8.i.i.i.i.i.i.i, ptr %i.bp, align 8, !alias.scope !23373, !noalias !23376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !23377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !23368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !23364
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ap, i64 184
  %i.cj = load i8, ptr %i.ci, align 8, !range !57, !alias.scope !23363, !noalias !23365, !noundef !52
  %.not.i.i = icmp eq i8 %i.cj, 2
  br i1 %.not.i.i, label %bb.z, label %bb.m

bb.m:                                             ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEINtB4_18SpecFromIterNestedB13_INtNtNtCs3oUPovFnLWP_4core5slice4iter6ChunksB15_EE9from_iterCs9gmjTwvRRSu_10typst_html.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !23364
  %.val39.i.i = load i64, ptr %i.ck, align 8, !alias.scope !23363, !noalias !23365 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23378)
  %i.cl = lshr i64 %.val39.i.i, 1
  %i.cm = and i64 %.val39.i.i, 1
  %spec.select.i.i.i = add nuw i64 %i.cl, %i.cm
  %.sroa.0.0.i.i.i = select i1 %i.ax, i64 %spec.select.i.i.i, i64 %.val39.i.i ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !23379, !noalias !23380, !noundef !52 ; 6 uses
  %i.cp = icmp ult i64 %i.co, 576460752303423488
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp ugt i64 %.sroa.0.0.i.i.i, %i.co
  br i1 %i.cq, label %bb.n, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs9gmjTwvRRSu_10typst_html.exit.i.i.i, !prof !55

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i.i.i, i64 noundef range(i64 0, 576460752303423488) %i.co, i64 noundef range(i64 0, 576460752303423488) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1511) #51
          to label %.noexc.i.i unwind label %bb.ab, !noalias !23367

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs9gmjTwvRRSu_10typst_html.exit.i.i.i: ; preds = %bb.m
  store i64 %.sroa.0.0.i.i.i, ptr %i.cn, align 8, !alias.scope !23379, !noalias !23380
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !23379, !noalias !23380, !nonnull !52, !noundef !52 ; 2 uses
  %.idx5.i.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i, 4 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx5.i.i.i
  %.idx.i.i.i = shl nuw nsw i64 %i.co, 4          ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !23380
  call void @llvm.experimental.noalias.scope.decl(metadata !23381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !23380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !23382
  %gepdiff.i.i.i = sub nuw nsw i64 %.idx.i.i.i, %.idx5.i.i.i ; 2 uses
  %i.cv = lshr exact i64 %gepdiff.i.i.i, 4        ; 3 uses
  %i.cw = mul nuw i64 %i.cv, 24                   ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %gepdiff.i.i.i, 6148914691236517200
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i, label %bb.o, !prof !70

bb.o:                                             ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %i.cx = icmp eq i64 %.idx.i.i.i, %.idx5.i.i.i   ; 2 uses
  br i1 %i.cx, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !23383
  %i.cy = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.cw, i64 noundef range(i64 1, 9) 8) #53, !noalias !23383 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.noexc.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i, %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs9gmjTwvRRSu_10typst_html.exit.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs9gmjTwvRRSu_10typst_html.exit.i.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i) #54
          to label %.noexc42.i.i unwind label %bb.ab, !noalias !23367

.noexc42.i.i:                                     ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.o
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.o ], [ %i.cy, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.o ], [ %i.cv, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.da = icmp samesign ule i64 %i.cv, %.sroa.4.0.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.da)
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !23382
  %i.db = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %i.db, align 8, !noalias !23382
  %i.dc = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23384)
  call void @llvm.experimental.noalias.scope.decl(metadata !23385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !23386
  %.sroa.6.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.cu, ptr %.sroa.6.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !23387
  %.sroa.7.0..sroa_idx9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.ai, ptr %.sroa.7.0..sroa_idx9.i.i.i.i.i.i, align 8, !noalias !23387
  %.sroa.9.0..sroa_idx14.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %i.co, ptr %.sroa.9.0..sroa_idx14.i.i.i.i.i.i, align 8, !noalias !23387
  %.sroa.11.0..sroa_idx19.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 0, ptr %.sroa.11.0..sroa_idx19.i.i.i.i.i.i, align 8, !noalias !23387
  call void @llvm.experimental.noalias.scope.decl(metadata !23388)
  br i1 %i.cx, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtNtB1I_11foundations7content7ContentEEB2K_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryNtNtNtB14_11foundations7content7ContentuNCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB1X_E14extend_trustedINtB4_3MapINtNtB4F_5drain5DrainBU_EB2B_EE0E0E0B2J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryNtNtNtB14_11foundations7content7ContentuNCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB1X_E14extend_trustedINtB4_3MapINtNtB4F_5drain5DrainBU_EB2B_EE0E0E0B2J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dd = phi ptr [ %i.de, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryNtNtNtB14_11foundations7content7ContentuNCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB1X_E14extend_trustedINtB4_3MapINtNtB4F_5drain5DrainBU_EB2B_EE0E0E0B2J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ct, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23389)
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  %i.df = load ptr, ptr %i.dd, align 8, !noalias !23390, !nonnull !52, !align !58, !noundef !52
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !23390, !noundef !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !23391
  invoke fastcc void @_RNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids_0B5_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, ptr nonnull readonly align 8 dereferenceable(24) %i.an, ptr nonnull %i.aj, i64 noundef -9223372036854775660, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.df, i64 noundef range(i64 0, 88686269585142076) %i.dh) #52
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryNtNtNtB14_11foundations7content7ContentuNCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB1X_E14extend_trustedINtB4_3MapINtNtB4F_5drain5DrainBU_EB2B_EE0E0E0B2J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i, !noalias !23392

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryNtNtNtB14_11foundations7content7ContentuNCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB1X_E14extend_trustedINtB4_3MapINtNtB4F_5drain5DrainBU_EB2B_EE0E0E0B2J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !23393
  %i.dj = add nuw nsw i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !23391
  %i.dk = icmp eq ptr %i.de, %i.cu
  br i1 %i.dk, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtNtB1I_11foundations7content7ContentEEB2K_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  store ptr %i.de, ptr %i.t, align 8, !alias.scope !23394, !noalias !23386
  store i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dc, align 8, !alias.scope !23395, !noalias !23396
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t) #49, !noalias !23397
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #49
          to label %.thread175.i.i unwind label %bb.p, !noalias !23398

bb.p:                                             ; preds = %.body.i.i.i.i.i.i.i.i
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !23398
  unreachable

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtNtB1I_11foundations7content7ContentEEB2K_.exit.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryNtNtNtB14_11foundations7content7ContentuNCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB1X_E14extend_trustedINtB4_3MapINtNtB4F_5drain5DrainBU_EB2B_EE0E0E0B2J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.dj, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryNtNtNtB14_11foundations7content7ContentuNCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1X_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB1X_E14extend_trustedINtB4_3MapINtNtB4F_5drain5DrainBU_EB2B_EE0E0E0B2J_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dc, align 8, !alias.scope !23395, !noalias !23396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !23386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !23399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !23382
  %i.dn = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noalias !23399, !noundef !52 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 384307168202282326
  call void @llvm.assume(i1 %i.dp)
  switch i64 %i.do, label %bb.r [
    i64 0, label %bb.q
    i64 1, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  ]

bb.q:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtNtB1I_11foundations7content7ContentEEB2K_.exit.i.i.i.i
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content5empty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i unwind label %bb.x, !noalias !23400

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i: ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtNtB1I_11foundations7content7ContentEEB2K_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !23399
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !23399, !nonnull !52, !noundef !52 ; 4 uses
  %i.ds = load i64, ptr %i.v, align 8, !range !67, !noalias !23399, !noundef !52
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  store ptr %i.dr, ptr %i.w, align 8, !noalias !23399
  %i.du = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.ds, ptr %i.du, align 8, !noalias !23399
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.dt, ptr %i.dw, align 8, !noalias !23399
  call void @llvm.experimental.noalias.scope.decl(metadata !23401)
  store ptr %i.dt, ptr %i.dv, align 8, !alias.scope !23401, !noalias !23399
  %.sroa.03.0.copyload4.i.i.i.i = load ptr, ptr %i.dr, align 8, !noalias !23402 ; 2 uses
  %.not.i.i40.i.i = icmp eq ptr %.sroa.03.0.copyload4.i.i.i.i, null
  br i1 %.not.i.i40.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i, label %bb.t, !prof !63

bb.r:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtNtB1I_11foundations7content7ContentEEB2K_.exit.i.i.i.i
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtB5_12SequenceElemECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.v)
          to label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i unwind label %bb.ab, !noalias !23367

bb.s:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #49
          to label %.thread175.i.i unwind label %bb.v, !noalias !23403

bb.t:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  %.sroa.65.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %.sroa.03.0.copyload4.i.i.i.i, ptr %i.x, align 8, !alias.scope !23381, !noalias !23380
  %.sroa.65.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx6.i.i.i.i, i64 16, i1 false), !noalias !23400
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w)
          to label %.noexc44.i.i unwind label %bb.ab, !noalias !23367

.noexc44.i.i:                                     ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !23399
  br label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #54
          to label %bb.u unwind label %bb.s, !noalias !23403

bb.u:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i
  unreachable

bb.v:                                             ; preds = %bb.x, %bb.s
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !23403
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  %.val2.i.i.i.i.i = load i64, ptr %i.v, align 8, !range !67, !noalias !23399, !noundef !52 ; 2 uses
  %i.dz = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.dz, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !noalias !23399, !nonnull !52, !noundef !52
  %i.eb = mul nuw i64 %.val2.i.i.i.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !23404
  br label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i

bb.x:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #49
          to label %.thread175.i.i unwind label %bb.v, !noalias !23403

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i: ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i, %.noexc44.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !23380
  %.sroa.6.0..sroa_idx.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !23405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i1.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !23380
  call void @llvm.experimental.noalias.scope.decl(metadata !23406)
  store i128 0, ptr %i.r, align 16, !alias.scope !23407, !noalias !23405
  %.sroa.41.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 1, ptr %.sroa.41.0..sroa_idx.i.i.i.i, align 16, !alias.scope !23407, !noalias !23405
  %.sroa.7.0..sroa_idx.i2.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr null, ptr %.sroa.7.0..sroa_idx.i2.i.i.i, align 16, !alias.scope !23407, !noalias !23405
  %.sroa.82.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store ptr null, ptr %.sroa.82.0..sroa_idx.i.i.i.i, align 16, !alias.scope !23407, !noalias !23405
  %.sroa.93.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store i64 -9223372036833297196, ptr %.sroa.93.0..sroa_idx.i.i.i.i, align 16, !alias.scope !23407, !noalias !23405
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.r)
          to label %.noexc45.i.i unwind label %bb.ab, !noalias !23367

.noexc45.i.i:                                     ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !23405
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !range !61, !alias.scope !23408, !noalias !23364, !noundef !52
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.noexc45.i.i
  %i.ef = load i64, ptr %i.ak, align 8, !range !61, !noalias !23405, !noundef !52
  store i64 %i.ef, ptr %i.ec, align 8, !alias.scope !23408, !noalias !23364
  br label %bb.ac

end_hunk_1
