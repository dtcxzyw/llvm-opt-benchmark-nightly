Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr6intern:bb.a
  store i64 %i.bb, ptr %i.bc, align 8
  store i64 0, ptr %0, align 8
  br label %bb.j

bb.n:                                             ; preds = %bb.q, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.o ], [ %i.bf, %bb.q ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #49
          to label %bb.l unwind label %bb.k

bb.o:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, %bb.u, %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.430.0..sroa_idx, align 8
  %i.be = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48, ptr noundef nonnull @1387, ptr noundef nonnull %i.c)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #49
          to label %bb.n unwind label %bb.k

bb.r:                                             ; preds = %bb.p
  br i1 %i.be, label %bb.s, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit, !prof !60

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @921, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1388) #51
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.s
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !15466)
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !15466 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %.val1.i = load i8, ptr %i.bg, align 1, !alias.scope !15466, !noundef !57
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit

bb.t:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.bh = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i: ; preds = %bb.t
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !15466
  %.not.i.i.i.i = icmp eq i64 %i.bi, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15466
  %i.bj = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.bj, align 8, !noalias !15466, !noundef !57 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, label %bb.u, !prof !59

bb.u:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #54
          to label %.noexc48 unwind label %bb.o

.noexc48:                                         ; preds = %bb.u
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  %i.bk = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bh, ptr %i.bl, align 8, !noalias !15466
  store i64 8, ptr %i.b, align 8, !noalias !15466
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bk, ptr %i.bm, align 8, !noalias !15466
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc49 unwind label %bb.o

.noexc49:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15466
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit: ; preds = %.noexc49, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i, %bb.t, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr7resolve(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr7resolve(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvMsc_NtCs9gmjTwvRRSu_10typst_html3domNtB5_8HtmlAttr8constant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %.preheader, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1386, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #51
  unreachable

bb.c:                                             ; preds = %bb.f
  %i.b = add nuw i64 %.sroa.0.06, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noundef i64 @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr8constant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret i64 %i.c

.preheader:                                       ; preds = %bb.a, %bb.c
  %.sroa.0.06 = phi i64 [ %i.b, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.06
  %i.e = load i8, ptr %i.d, align 1, !noundef !57 ; 4 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvNtCs9gmjTwvRRSu_10typst_html8charsets26is_valid_in_attribute_name.exit.thread, !prof !59

_RNvNtCs9gmjTwvRRSu_10typst_html8charsets26is_valid_in_attribute_name.exit.thread: ; preds = %bb.f, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %.preheader
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1389, ptr noundef nonnull inttoptr (i64 99 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #51
  unreachable

bb.e:                                             ; preds = %.preheader
  switch i8 %i.e, label %bb.f [
    i8 0, label %_RNvNtCs9gmjTwvRRSu_10typst_html8charsets26is_valid_in_attribute_name.exit.thread
    i8 32, label %_RNvNtCs9gmjTwvRRSu_10typst_html8charsets26is_valid_in_attribute_name.exit.thread
    i8 34, label %_RNvNtCs9gmjTwvRRSu_10typst_html8charsets26is_valid_in_attribute_name.exit.thread
    i8 39, label %_RNvNtCs9gmjTwvRRSu_10typst_html8charsets26is_valid_in_attribute_name.exit.thread
    i8 62, label %_RNvNtCs9gmjTwvRRSu_10typst_html8charsets26is_valid_in_attribute_name.exit.thread
    i8 47, label %_RNvNtCs9gmjTwvRRSu_10typst_html8charsets26is_valid_in_attribute_name.exit.thread
    i8 61, label %_RNvNtCs9gmjTwvRRSu_10typst_html8charsets26is_valid_in_attribute_name.exit.thread
  ]

bb.f:                                             ; preds = %bb.e
  %i.g = icmp samesign ult i8 %i.e, 32
  %i.h = icmp eq i8 %i.e, 127
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_RNvNtCs9gmjTwvRRSu_10typst_html8charsets26is_valid_in_attribute_name.exit.thread, label %bb.c, !prof !135
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1k_8position12HtmlPositionEEj1_E21reserve_one_uncheckedCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !15474, !noalias !15475, !noundef !57 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !15474, !noalias !15475, !nonnull !57 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !15474, !noalias !15475
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15476)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !15476, !noundef !57 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1391, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1392) #51, !noalias !15476
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw i64 %i.m, 24                     ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 384307168202282324
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit.i, !prof !75

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit45.i, !prof !75

bb.j:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !15476
  %i.q = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #53, !noalias !15476 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 24
  %i.t = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #53, !noalias !15476 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !15476
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !15476
  store i64 %i.m, ptr %0, align 8, !alias.scope !15476
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !15476
  %i.x = mul i64 %.sink.i.i, 24                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1d_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit.i, !prof !75

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15477
  store i64 0, ptr %i.a, align 8, !noalias !15477
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !15477
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @920, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #51, !noalias !15477
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1d_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %bb.m
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #53, !noalias !15476
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit

bb.o:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit45.i, %bb.j
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #54
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #51
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1d_8position12HtmlPositionEEECs9gmjTwvRRSu_10typst_html.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1390) #51
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E21reserve_one_uncheckedCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !15481, !noalias !15482, !noundef !57 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !15481, !noalias !15482
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E8try_growCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 16 dereferenceable(32) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit
    i64 0, label %bb.e
  ], !prof !143

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #54
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #51
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1390) #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E8try_growCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16, !noundef !57 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 16, !alias.scope !15488, !noalias !15489, !nonnull !57 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1391, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1392) #51
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 4                    ; 4 uses
  %or.cond = icmp ult i64 %1, 576460752303423488
  br i1 %or.cond, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs9gmjTwvRRSu_10typst_html.exit, label %bb.m, !prof !144

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs9gmjTwvRRSu_10typst_html.exit
  %i.k = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.k, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs9gmjTwvRRSu_10typst_html.exit44, label %bb.m, !prof !144

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs9gmjTwvRRSu_10typst_html.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.l = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 16) #53 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs9gmjTwvRRSu_10typst_html.exit44: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 4
  %i.o = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 16, i64 noundef %i.j) #53 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs9gmjTwvRRSu_10typst_html.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs9gmjTwvRRSu_10typst_html.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 16
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 16
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.l, ptr nonnull align 16 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %0, ptr nonnull align 16 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 16
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs9gmjTwvRRSu_10typst_html.exit, label %bb.l, !prof !144

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15490
  store i64 0, ptr %i.a, align 8, !noalias !15490
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @920, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #51, !noalias !15490
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 16) #53
  br label %bb.m
end_hunk_0
begin_hunk_1_@_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val24, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val25, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val26, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val27, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.n:                                             ; preds = %bb.l, %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.o:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXsF_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_8IconSizeNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNvNvXsk_NtNtCsdaEETE4DqmE_13typst_library11foundations5arrayNtB7_5ArrayNtNtB9_2ty10NativeType4data4DATA, ptr %i.a, align 8
  store i64 34, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal noundef zeroext i1 @_RNvXsF_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_8IconSizeNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect8castable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #27 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !67, !noundef !57 ; 2 uses
  %i.b = icmp ne i64 %i.a, 30
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, 25
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsG_NtCs9gmjTwvRRSu_10typst_html3domNtB5_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9IntoValue10into_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 15 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 14 uses
  %i.p = alloca [56 x i8], align 8                ; 31 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [72 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp eq ptr %1, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds i8, ptr %1, i64 -16
  %i.t = load atomic i64, ptr %i.s acquire, align 8, !noalias !20350
  %i.u = icmp eq i64 %i.t, 1
  %i.v = zext i1 %i.u to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBM_.exit

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBM_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i.i = phi i8 [ %i.v, %bb.b ], [ 1, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20351
  store ptr %1, ptr %i.q, align 8, !alias.scope !20352, !noalias !20353
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %2, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !20352, !noalias !20353
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.79.0..sroa_idx, align 8, !alias.scope !20352, !noalias !20353
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %2, ptr %.sroa.814.0..sroa_idx, align 8, !alias.scope !20352, !noalias !20353
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i8 %.sroa.02.0.i.i.i, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !20352, !noalias !20353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20351
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20354)
  %i.w = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.w, label %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread, label %bb.d

bb.c:                                             ; preds = %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i, %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread: ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBM_.exit
  store i64 0, ptr %i.p, align 8, !alias.scope !20354, !noalias !20351
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !20354, !noalias !20351
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !20354, !noalias !20351
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @70, i64 32, i1 false), !noalias !20351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20355
  store ptr %1, ptr %i.o, align 8, !noalias !20353
  %.sroa.64.0..sroa_idx5118 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %2, ptr %.sroa.64.0..sroa_idx5118, align 8, !noalias !20353
  %.sroa.79.0..sroa_idx10119 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.79.0..sroa_idx10119, align 8, !noalias !20353
  %.sroa.814.0..sroa_idx15120 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %2, ptr %.sroa.814.0..sroa_idx15120, align 8, !noalias !20353
  %.sroa.9.0..sroa_idx19121 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 %.sroa.02.0.i.i.i, ptr %.sroa.9.0..sroa_idx19121, align 8, !noalias !20353
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  br label %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

bb.d:                                             ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBM_.exit
  %i.ac = icmp ult i64 %2, 15
  br i1 %i.ac, label %.thread.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.ad, label %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i, label %bb.f, !prof !60

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.d
  %i.ae = icmp samesign ult i64 %2, 4
  %i.af = and i64 %2, 8
  %..i.i.i.i.i.i.i.i = add nuw nsw i64 %i.af, 8
  %.sroa.03.0.i.i.i.i.i.i.i.i = select i1 %i.ae, i64 4, i64 %..i.i.i.i.i.i.i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = shl nuw i64 %2, 3
  %i.ah = udiv i64 %i.ag, 7
  %i.ai = add nsw i64 %i.ah, -1
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = lshr i64 -1, %i.aj                      ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 1
  %or.cond.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.ak, 2305843009213693949
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g, !prof !20356

bb.g:                                             ; preds = %bb.f, %.thread.i.i.i.i.i.i.i
  %.sroa.4.0.i.ph8.i.i.i.i.i.i.i = phi i64 [ %.sroa.03.0.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.al, %bb.f ] ; 5 uses
  %i.am = shl nuw i64 %.sroa.4.0.i.ph8.i.i.i.i.i.i.i, 3
  %i.an = add nuw i64 %i.am, 8
  %i.ao = and i64 %i.an, -16                      ; 3 uses
  %i.ap = add nuw nsw i64 %.sroa.4.0.i.ph8.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.aq = add i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp ult i64 %i.aq, %i.ao
  %i.as = icmp ugt i64 %i.aq, 9223372036854775792
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.h, label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, !prof !75

_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !20357
  %i.at = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !20357 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.i, label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.av = invoke { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true)
          to label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i unwind label %bb.c, !noalias !20351

bb.i:                                             ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %i.aw = invoke { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.aq)
          to label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i unwind label %bb.c, !noalias !20351

_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i: ; preds = %bb.e
  %i.ax = invoke { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true)
          to label %.noexc5.i.i.i unwind label %bb.c, !noalias !20351

.noexc5.i.i.i:                                    ; preds = %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = mul i64 %2, 56
  br label %bb.k

_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.av, %bb.h ], [ %i.aw, %bb.i ] ; 2 uses
  %.sroa.12.012.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i.i, 1
  %.sroa.7.013.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i.i, 0
  br label %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %i.ba = icmp samesign ult i64 %.sroa.4.0.i.ph8.i.i.i.i.i.i.i, 9
  %i.bb = add nsw i64 %.sroa.4.0.i.ph8.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bc = lshr i64 %.sroa.4.0.i.ph8.i.i.i.i.i.i.i, 3
  %i.bd = mul nuw nsw i64 %i.bc, 7
  %.sroa.09.0.i.i.i.i.i.i.i.i = select i1 %i.ba, i64 %i.bb, i64 %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ao ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.be, i8 -1, i64 %i.ap, i1 false), !noalias !20358
  br label %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ %.sroa.12.012.i.i.i.i.i.i.i, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.09.0.i.i.i.i.i.i.i.i, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i.i.i.i.i = phi i64 [ %.sroa.7.013.i.i.i.i.i.i.i, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i ], [ %i.bb, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ null, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i.i.i.i ], [ %i.be, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = mul i64 %2, 56                          ; 4 uses
  %or.cond.i.i.i.i.i.i = icmp samesign ugt i64 %2, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i, label %bb.k, label %3, !prof !20359

3:                                                ; preds = %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  %4 = icmp eq i64 %i.bf, 0
  br i1 %4, label %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !20360
  %i.bg = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !20360 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.k, label %5

5:                                                ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  %6 = ptrtoint ptr %i.bg to i64
  br label %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = icmp eq i64 %.sroa.6.0.i29.i.i.i.i.i, 0
  br i1 %i.bj, label %.thread.i.i.i, label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i4.i.i.i.i

_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i4.i.i.i.i: ; preds = %bb.j
  %or.cond.i.i.i.i.i5.i.i.i.i = icmp slt i64 %.sroa.6.0.i29.i.i.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i5.i.i.i.i), !noalias !20361
  %i.bk = shl i64 %.sroa.6.0.i29.i.i.i.i.i, 3
  %i.bl = and i64 %i.bk, -16                      ; 2 uses
  %i.bm = add i64 %i.bl, 16                       ; 2 uses
  %i.bn = add nsw i64 %.sroa.6.0.i29.i.i.i.i.i, 17
  %i.bo = add i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  tail call void @llvm.assume(i1 %i.bp), !noalias !20361
  %i.bq = icmp ult i64 %i.bo, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bq), !noalias !20361
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i30.i.i.i.i.i) ], !noalias !20361
  %i.br = sub nuw nsw i64 -16, %i.bl
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.i30.i.i.i.i.i, i64 %i.br
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !20362
  br label %.thread.i.i.i

bb.k:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i, %.noexc5.i.i.i
  %i.bt = phi i64 [ %i.bf, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ %i.bf, %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i ], [ %i.az, %.noexc5.i.i.i ]
  %.sroa.0.0.i30.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i ], [ null, %.noexc5.i.i.i ] ; 2 uses
  %.sroa.6.0.i29.i.i.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i.i.i, %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i ], [ %i.ay, %.noexc5.i.i.i ] ; 4 uses
  %.sroa.413.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i ], [ 0, %.noexc5.i.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.413.0.ph.i.i.i.i.i, i64 %i.bt) #54
          to label %bb.l unwind label %bb.j, !noalias !20362

bb.l:                                             ; preds = %bb.k
  unreachable

_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i: ; preds = %3, %5
  %.sroa.10.0.i.i.i.i.i = phi i64 [ %6, %5 ], [ 8, %3 ]
  %.sroa.413.0.i.i.i.i.i = phi i64 [ %2, %5 ], [ 0, %3 ] ; 3 uses
  %7 = inttoptr i64 %.sroa.10.0.i.i.i.i.i to ptr  ; 2 uses
  %8 = icmp samesign ule i64 %2, %.sroa.413.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %8)
  store i64 %.sroa.413.0.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !20354, !noalias !20351
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %7, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !20354, !noalias !20351
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !20354, !noalias !20351
  %.sroa.6.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx6.i.i.i.i, align 8, !alias.scope !20354, !noalias !20351
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !20354, !noalias !20351
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %.sroa.9.0.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !20354, !noalias !20351
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !20354, !noalias !20351
  %i.bu = icmp ugt i64 %2, %.sroa.9.0.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20364
  store ptr %1, ptr %i.o, align 8, !noalias !20353
  %.sroa.64.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %2, ptr %.sroa.64.0..sroa_idx5, align 8, !noalias !20353
  %.sroa.79.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.79.0..sroa_idx10, align 8, !noalias !20353
  %.sroa.814.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %2, ptr %.sroa.814.0..sroa_idx15, align 8, !noalias !20353
  %.sroa.9.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 %.sroa.02.0.i.i.i, ptr %.sroa.9.0..sroa_idx19, align 8, !noalias !20353
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20365)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  br i1 %i.bu, label %bb.m, label %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i, !prof !20366

bb.m:                                             ; preds = %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ca = invoke { i64, i64 } @_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1Z_5value5ValueE0EB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %7, i64 noundef 0, i1 noundef zeroext true) #55
          to label %.noexc.i.i.i.i unwind label %bb.bl, !noalias !20367 ; 0 uses

.noexc.i.i.i.i:                                   ; preds = %bb.m
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !range !72, !alias.scope !20368, !noalias !20367
  %.pre91.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !20368, !noalias !20367
  br label %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i

_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread, %.noexc.i.i.i.i, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %i.cb = phi ptr [ %i.by, %.noexc.i.i.i.i ], [ %i.by, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i ], [ %i.ab, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread ] ; 5 uses
  %i.cc = phi ptr [ %i.bx, %.noexc.i.i.i.i ], [ %i.bx, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i ], [ %i.aa, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread ] ; 5 uses
  %i.cd = phi ptr [ %i.bw, %.noexc.i.i.i.i ], [ %i.bw, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i ], [ %i.z, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread ] ; 9 uses
  %i.ce = phi ptr [ %i.bv, %.noexc.i.i.i.i ], [ %i.bv, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i ], [ %i.y, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread ] ; 4 uses
  %i.cf = phi i64 [ %.pre91.i.i.i, %.noexc.i.i.i.i ], [ 0, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i ], [ 0, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread ] ; 5 uses
  %i.cg = phi i64 [ %.pre.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.413.0.i.i.i.i.i, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i ], [ 0, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9gmjTwvRRSu_10typst_html.exit.i.i.i.thread ] ; 3 uses
  %i.ch = icmp ult i64 %i.cf, 164703072086692426
  call void @llvm.assume(i1 %i.ch)
  %i.ci = sub nsw i64 %i.cg, %i.cf
  %i.cj = icmp ugt i64 %2, %i.ci
  br i1 %i.cj, label %bb.n, label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i

bb.n:                                             ; preds = %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20369)
  %i.ck = load i64, ptr %i.ce, align 8, !alias.scope !20370, !noalias !20367, !noundef !57
  %i.cl = load i64, ptr %i.cb, align 8, !alias.scope !20370, !noalias !20367, !noundef !57
  %i.cm = add i64 %i.cl, %i.ck                    ; 2 uses
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cm, i64 164703072086692425) ; 3 uses
  %i.cn = sub nsw i64 %..i.i.i.i.i.i.i, %i.cf
  %i.co = icmp ugt i64 %i.cn, %2
  br i1 %i.co, label %bb.p, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.p, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !20371)
  call void @llvm.experimental.noalias.scope.decl(metadata !20372)
  call void @llvm.experimental.noalias.scope.decl(metadata !20373)
  %i.cp = add nuw nsw i64 %i.cf, %2               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20374
  %.val12.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !20375, !noalias !20367
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.n, i64 %i.cg, ptr %.val12.i.i.i.i.i.i.i.i.i, i64 noundef %i.cp, i64 noundef 8, i64 noundef range(i64 40, 57) 56), !noalias !20376
  %i.cq = load i64, ptr %i.n, align 8, !range !65, !noalias !20374, !noundef !57
  %i.cr = trunc nuw i64 %i.cq to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %i.cr, label %bb.o, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  %i.ct = load i64, ptr %i.cs, align 8, !range !115, !noalias !20374, !noundef !57
  %i.cu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !20374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20374
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ct, i64 %i.cv) #54
          to label %.noexc6.i.i.i.i unwind label %bb.bl, !noalias !20367

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  %i.cw = load ptr, ptr %i.cs, align 8, !noalias !20374, !nonnull !57, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20374
  br label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.thread

.noexc6.i.i.i.i:                                  ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !20377)
  call void @llvm.experimental.noalias.scope.decl(metadata !20378)
  %i.cx = icmp ult i64 %i.cm, %i.cf
  br i1 %i.cx, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20379
  %.val12.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !20380, !noalias !20367
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, i64 %i.cg, ptr %.val12.i.i.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i, i64 noundef 8, i64 noundef range(i64 40, 57) 56), !noalias !20381
  %i.cy = load i64, ptr %i.m, align 8, !range !65, !noalias !20379, !noundef !57
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %bb.r, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20379
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !20379, !nonnull !57, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20379
  br label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.thread

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.thread: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i
  %storemerge = phi ptr [ %i.cw, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i ], [ %i.db, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i ]
  %..i.sink.i.i.i.i.i.i = phi i64 [ %i.cp, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i ], [ %..i.i.i.i.i.i.i, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i ]
  store ptr %storemerge, ptr %i.cd, align 8, !alias.scope !20370, !noalias !20367
  store i64 %..i.sink.i.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !20370, !noalias !20367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20382
  store ptr %1, ptr %i.l, align 8, !noalias !20353
  %.sroa.64.0..sroa_idx7122 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %2, ptr %.sroa.64.0..sroa_idx7122, align 8, !noalias !20353
  %.sroa.79.0..sroa_idx12123 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.79.0..sroa_idx12123, align 8, !noalias !20353
  %.sroa.814.0..sroa_idx17124 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %2, ptr %.sroa.814.0..sroa_idx17124, align 8, !noalias !20353
  %.sroa.9.0..sroa_idx21125 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 %.sroa.02.0.i.i.i, ptr %.sroa.9.0..sroa_idx21125, align 8, !noalias !20353
  br label %.lr.ph.i.i.i.i.i.i.i

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i: ; preds = %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20383
  store ptr %1, ptr %i.l, align 8, !noalias !20353
  %.sroa.64.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %2, ptr %.sroa.64.0..sroa_idx7, align 8, !noalias !20353
  %.sroa.79.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.79.0..sroa_idx12, align 8, !noalias !20353
  %.sroa.814.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %2, ptr %.sroa.814.0..sroa_idx17, align 8, !noalias !20353
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 %.sroa.02.0.i.i.i, ptr %.sroa.9.0..sroa_idx21, align 8, !noalias !20353
  call void @llvm.experimental.noalias.scope.decl(metadata !20384)
  call void @llvm.experimental.noalias.scope.decl(metadata !20385)
  call void @llvm.experimental.noalias.scope.decl(metadata !20386)
  call void @llvm.experimental.noalias.scope.decl(metadata !20387)
  br i1 %i.w, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB12_6string9EcoStringEENCNvXsG_B1B_NtB1B_9HtmlAttrsNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9IntoValue10into_value0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4o_8for_each4callTNtNtB3d_3str3StrNtNtB3d_5value5ValueENCINvXsb_NtCsjFU9swAW47b_8indexmap3mapINtB6c_8IndexMapB5s_B5I_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEINtNtB4s_7collect6ExtendB5r_E6extendBN_E0E0EB1D_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.thread, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  %.sroa.79.0..sroa_idx12126 = phi ptr [ %.sroa.79.0..sroa_idx12123, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.thread ], [ %.sroa.79.0..sroa_idx12, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i ] ; 10 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.sroa.615.0..sroa_idx16.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.618.0..sroa_idx19.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 55 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.dm = trunc nuw i8 %.sroa.02.0.i.i.i to i1
  br label %bb.s

bb.s:                                             ; preds = %bb.bj, %.lr.ph.i.i.i.i.i.i.i
  %i.dn = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %i.do, %bb.bj ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20388)
  %i.do = add nuw i64 %i.dn, 1                    ; 12 uses
  br i1 %i.dm, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = icmp ult i64 %i.dn, %2
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.dn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20389)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dq, align 8, !range !66, !alias.scope !20389, !noalias !20390, !noundef !57 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !20391)
  call void @llvm.experimental.noalias.scope.decl(metadata !20392)
  call void @llvm.experimental.noalias.scope.decl(metadata !20393)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 23
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !20394, !noalias !20395, !noundef !57
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.dt, -1
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !20396, !noalias !20397 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.du, align 8, !alias.scope !20396, !noalias !20397 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 -16
  %i.dw = atomicrmw add ptr %i.dv, i64 1 monotonic, align 8, !noalias !20398
  %i.dx = icmp slt i64 %i.dw, 0
  br i1 %i.dx, label %bb.w, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i, !prof !60

bb.w:                                             ; preds = %bb.v
  store i64 %i.do, ptr %.sroa.79.0..sroa_idx12126, align 8, !alias.scope !20399, !noalias !20400
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9gmjTwvRRSu_10typst_html(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) #54
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.split-lp21.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.w
  unreachable

.loopexit20.i.i.i.i.i.i.i:                        ; preds = %bb.bi, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit22.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.do, ptr %.sroa.79.0..sroa_idx12126, align 8, !alias.scope !20399, !noalias !20400
  br label %.body.i.i.i.i.i.i.i

.loopexit.split-lp21.i.i.i.i.i.i.i:               ; preds = %bb.w, %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp23.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.bh, %bb.be, %bb.ba, %bb.x, %.loopexit.split-lp21.i.i.i.i.i.i.i, %.loopexit20.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.lh, %bb.ba ], [ %i.dz, %bb.x ], [ %i.lj, %bb.be ], [ %lpad.phi.i.i.i.i.i.i.i, %bb.bh ], [ %lpad.loopexit22.i.i.i.i.i.i.i, %.loopexit20.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp23.i.i.i.i.i.i.i, %.loopexit.split-lp21.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEEB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #49
          to label %.body8.i.i.i unwind label %bb.bk, !noalias !20401

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.dn ; 3 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !noalias !20402 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.5.0.copyload3.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !20402
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.sroa.6.0.copyload5.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i, align 8, !noalias !20402
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvYINtNtCsakL8LGkl72C_4ecow3vec8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB8_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBE_TNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB3u_5value5ValueEuNCNvXsG_BH_NtBH_9HtmlAttrsNtNtB3u_4cast9IntoValue10into_value0NCINvNvB1M_8for_each4callB3p_NCINvXsb_NtCsjFU9swAW47b_8indexmap3mapINtB6i_8IndexMapB3q_B4k_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEINtNtB1Q_7collect6ExtendB3p_E6extendINtB2S_3MapB3_B4G_EE0E0E0EBJ_.exit.loopexit.i.i.i.i.i.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i, %bb.v, %bb.u, %bb.t
  %.sroa.06.014.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.t ] ; 2 uses
  %.sroa.7.013.i.i.i.i6.i.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i.i.i.i.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ inttoptr (i64 16 to ptr), %bb.u ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t ]
  %.sroa.8.012.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i.i.i.i.i.i.i.i, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBO_.exit.i.i.i.i.i.i.i ], [ %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20403
  store i64 %.sroa.06.014.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !20403
  store ptr %.sroa.7.013.i.i.i.i6.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !20403
end_hunk_1
