Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMs7_NtCs9gmjTwvRRSu_10typst_html3domNtB5_7HtmlTag6intern:bb.a
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15147
  %i.ft = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.ft, align 8, !noalias !15147, !noundef !57 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, label %bb.aq, !prof !59

bb.aq:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #54
          to label %.noexc131 unwind label %bb.ak

.noexc131:                                        ; preds = %bb.aq
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  %i.fu = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.fr, ptr %i.fv, align 8, !noalias !15147
  store i64 8, ptr %i.b, align 8, !noalias !15147
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.fu, ptr %i.fw, align 8, !noalias !15147
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc132 unwind label %bb.ak

.noexc132:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15147
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
  br i1 %i.a, label %bb.b, label %.preheader, !prof !60

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
  %i.e = load i8, ptr %i.d, align 1, !noundef !57 ; 7 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.f, label %bb.e, !prof !59

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
  br i1 %or.cond, label %bb.c, label %bb.e, !prof !136
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8push_mutCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !57 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !72, !noundef !57
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !57, !noundef !57
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
  br i1 %or.cond.i, label %_RNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB4_11StringsType7strings.exit, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.0.val, i64 noundef %.8.val, i64 noundef 347, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1382) #51
  unreachable

_RNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB4_11StringsType7strings.exit: ; preds = %bb.a
  %.idx1 = shl nuw nsw i64 %.0.val, 5
  %i.e = getelementptr inbounds nuw i8, ptr @1381, i64 %.idx1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15168
  %i.f = sub nuw nsw i64 %.8.val, %.0.val         ; 5 uses
  %i.g = mul nuw nsw i64 %i.f, 48                 ; 2 uses
  %i.h = icmp eq i64 %.8.val, %.0.val
  br i1 %i.h, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread: ; preds = %_RNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB4_11StringsType7strings.exit
  %i.i = icmp eq i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.i)
  store i64 0, ptr %i.b, align 8, !noalias !15168
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !15168
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterTReB3O_EENCNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB43_11StringsType5input0EE9from_iterB45_.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB4_11StringsType7strings.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !15169
  %i.l = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 8) #53, !noalias !15169 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #54, !noalias !15168
  unreachable

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.f, ptr %i.b, align 8, !noalias !15168
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !15168
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15171)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.val10.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aa, %bb.f ] ; 4 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.val10.i.i.i.i.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15173
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !15174, !noalias !15175, !nonnull !57, !noundef !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !15174, !noalias !15175, !noundef !57
  invoke void @_RNvXs1q_NtNtCsdaEETE4DqmE_13typst_library11foundations3strReNtNtB8_4cast9IntoValue10into_value(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u)
          to label %bb.f unwind label %.body.i, !noalias !15173

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !15174, !noalias !15175, !nonnull !57, !noundef !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !15174, !noalias !15175, !noundef !57
  store ptr %i.w, ptr %i.p, align 8, !noalias !15176
  store i64 %i.y, ptr %i.q, align 8, !noalias !15176
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.val10.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !15176
  %i.aa = add nuw i64 %.val10.i.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15173
  %i.ab = icmp eq i64 %i.aa, %i.f
  br i1 %i.ab, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterTReB3O_EENCNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB43_11StringsType5input0EE9from_iterB45_.exit, label %bb.e

.body.i:                                          ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !15177, !noalias !15178
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #49
          to label %bb.h unwind label %bb.g, !noalias !15168

bb.g:                                             ; preds = %.body.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15168
  unreachable

bb.h:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ac

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterTReB3O_EENCNvMs_NtCs9gmjTwvRRSu_10typst_html5typedNtB43_11StringsType5input0EE9from_iterB45_.exit: ; preds = %bb.f, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread
  %i.ae = phi ptr [ %i.k, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread ], [ %i.o, %bb.f ]
  %storemerge.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread ], [ %i.f, %bb.f ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.ae, align 8, !alias.scope !15177, !noalias !15178
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15168
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
  %i.g = load ptr, ptr %1, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !57 ; 2 uses
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
  %i.n = load i64, ptr %.sroa.0.020, align 16, !range !61, !noundef !57
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
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !15195, !noundef !57 ; 2 uses
  %.not.i = icmp sgt i8 %i.r, -1                  ; 2 uses
  %i.s = and i8 %i.r, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = load ptr, ptr %i.p, align 8, !alias.scope !15195, !nonnull !57
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 16
  %i.w = load i64, ptr %i.v, align 16, !alias.scope !15195
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.w, i64 %i.t ; 2 uses
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.u, ptr %i.p ; 3 uses
  %i.x = icmp eq i64 %.sroa.3.0.i, 1
  br i1 %i.x, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 96
  %i.z = load i64, ptr %i.y, align 16, !range !66, !noundef !57 ; 3 uses
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
  %i.ah = load i8, ptr %i.af, align 1, !noalias !15196, !noundef !57 ; 5 uses
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.j, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.i: ; preds = %bb.i
  %i.aj = and i8 %i.ah, 31
  %i.ak = zext nneg i8 %i.aj to i32               ; 3 uses
  %i.al = icmp ne ptr %i.ag, %i.ae
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 3 uses
  %i.an = load i8, ptr %i.ag, align 1, !noalias !15196, !noundef !57
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
  %i.aw = load i8, ptr %i.am, align 1, !noalias !15196, !noundef !57
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
  %i.bg = load i8, ptr %i.av, align 1, !noalias !15196, !noundef !57
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
  %i.bp = tail call noundef zeroext i1 @_RNvNtCsdaEETE4DqmE_13typst_library4text20is_default_ignorable(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i), !noalias !15197
  br i1 %i.bp, label %bb.h, label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.bq = load i64, ptr %0, align 8, !range !71, !noundef !57
  switch i64 %i.bq, label %default.unreachable32 [
    i64 0, label %bb.n
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

bb.m:                                             ; preds = %bb.k
  store i64 1, ptr %0, align 8
  br label %_RNvMs_NtCs9gmjTwvRRSu_10typst_html7convertNtB4_9Protector10collapsing.exit

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15198)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15198
  call fastcc void @_RNvXsj_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlNodeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 16 captures(none) dereferenceable(128) %i.e, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.020) #52
  %i.br = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromBL_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(128) %i.e) ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
end_hunk_0
