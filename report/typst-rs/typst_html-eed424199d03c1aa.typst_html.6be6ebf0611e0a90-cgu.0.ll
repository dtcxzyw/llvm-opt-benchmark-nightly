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
begin_hunk_1_@_RNvYNCNvNtCs9gmjTwvRRSu_10typst_html5rules10TABLE_RULE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1M_5model5table9TableElemEQNtNtB1M_6engine6EngineNtNtB1K_6styles10StyleChainEE9call_onceB8_:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !24555, !nonnull !57, !noundef !57 ; 4 uses
  %i.ds = load i64, ptr %i.v, align 8, !range !72, !noalias !24555, !noundef !57
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  store ptr %i.dr, ptr %i.w, align 8, !noalias !24555
  %i.du = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.ds, ptr %i.du, align 8, !noalias !24555
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.dt, ptr %i.dw, align 8, !noalias !24555
  call void @llvm.experimental.noalias.scope.decl(metadata !24557)
  store ptr %i.dt, ptr %i.dv, align 8, !alias.scope !24557, !noalias !24558
  %.sroa.03.0.copyload4.i.i.i.i = load ptr, ptr %i.dr, align 8, !noalias !24559 ; 2 uses
  %.not.i.i40.i.i = icmp eq ptr %.sroa.03.0.copyload4.i.i.i.i, null
  br i1 %.not.i.i40.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i, label %bb.t, !prof !68

bb.r:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtNtB1I_11foundations7content7ContentEEB2K_.exit.i.i.i.i
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtB5_12SequenceElemECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.v)
          to label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i unwind label %bb.ab, !noalias !24520

bb.s:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #49
          to label %.thread175.i.i unwind label %bb.v, !noalias !24560

bb.t:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  %.sroa.65.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %.sroa.03.0.copyload4.i.i.i.i, ptr %i.x, align 8, !alias.scope !24536, !noalias !24561
  %.sroa.65.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx6.i.i.i.i, i64 16, i1 false), !noalias !24556
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w)
          to label %.noexc44.i.i unwind label %bb.ab, !noalias !24520

.noexc44.i.i:                                     ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !24555
  br label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #54
          to label %bb.u unwind label %bb.s, !noalias !24560

bb.u:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i
  unreachable

bb.v:                                             ; preds = %bb.x, %bb.s
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !24560
  unreachable

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i: ; preds = %bb.q
  %.val2.i.i.i.i.i = load i64, ptr %i.v, align 8, !range !72, !noalias !24555, !noundef !57 ; 2 uses
  %i.dz = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.dz, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !noalias !24555, !nonnull !57, !noundef !57
  %i.eb = mul nuw i64 %.val2.i.i.i.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24562
  br label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i

bb.x:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #49
          to label %.thread175.i.i unwind label %bb.v, !noalias !24560

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i: ; preds = %bb.w, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i, %.noexc44.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !24535
  %.sroa.6.0..sroa_idx.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !24563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i1.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !24535
  call void @llvm.experimental.noalias.scope.decl(metadata !24564)
  store i128 0, ptr %i.r, align 16, !alias.scope !24565, !noalias !24566
  %.sroa.41.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 1, ptr %.sroa.41.0..sroa_idx.i.i.i.i, align 16, !alias.scope !24565, !noalias !24566
  %.sroa.7.0..sroa_idx.i2.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr null, ptr %.sroa.7.0..sroa_idx.i2.i.i.i, align 16, !alias.scope !24565, !noalias !24566
  %.sroa.82.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store ptr null, ptr %.sroa.82.0..sroa_idx.i.i.i.i, align 16, !alias.scope !24565, !noalias !24566
  %.sroa.93.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store i64 -9223372036833297196, ptr %.sroa.93.0..sroa_idx.i.i.i.i, align 16, !alias.scope !24565, !noalias !24566
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.r)
          to label %.noexc45.i.i unwind label %bb.ab, !noalias !24520

.noexc45.i.i:                                     ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !24563
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !range !66, !alias.scope !24567, !noalias !24568, !noundef !57
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.noexc45.i.i
  %i.ef = load i64, ptr %i.ak, align 8, !range !66, !noalias !24563, !noundef !57
  store i64 %i.ef, ptr %i.ec, align 8, !alias.scope !24567, !noalias !24568
  br label %bb.ac

bb.z:                                             ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEINtB4_18SpecFromIterNestedB13_INtNtNtCs3oUPovFnLWP_4core5slice4iter6ChunksB15_EE9from_iterCs9gmjTwvRRSu_10typst_html.exit.i.i
  store ptr null, ptr %i.ah, align 8, !noalias !24517
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !24516, !noalias !24518, !nonnull !57, !noundef !57 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !24516, !noalias !24518, !noundef !57 ; 4 uses
  %.idx.i.i = shl i64 %i.ej, 5                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx.i.i ; 2 uses
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread.i.i, label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.aa
  %i.em = add i64 %.idx.i.i, -32
  %i.en = lshr exact i64 %i.em, 5
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  br i1 %i.ax, label %.lr.ph.i.i.i.us.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.us.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.us.i.i
  %.sroa.0169.0.us.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.us.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.us.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i.i ]
  %.sroa.01.019.i.i.i.us.i.i = phi i64 [ %i.ex, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.us.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.ep = phi ptr [ %i.ew, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.us.i.i ], [ %i.eh, %.lr.ph.i.i.i.preheader.i.i ] ; 3 uses
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !24569, !noalias !24570, !noundef !57
  %i.er = lshr i64 %i.eq, 1
  %i.es = icmp eq i64 %i.er, %.sroa.0169.0.us.i.i
  br i1 %i.es, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.us.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.i.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.us.i.i: ; preds = %.lr.ph.i.i.i.us.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !24569, !noalias !24570, !noundef !57 ; 2 uses
  %i.ev = lshr i64 %i.eu, 1
  %.sroa.01.0.i.i.i.i.i.us.i.i = sub nuw i64 %i.eu, %i.ev
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 32 ; 2 uses
  %i.ex = add nuw nsw i64 %.sroa.01.019.i.i.i.us.i.i, 1
  %i.ey = icmp eq ptr %i.ew, %i.ek
  br i1 %i.ey, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread257.i.i, label %.lr.ph.i.i.i.us.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.preheader.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.i.i
  %.sroa.0169.0.i.i = phi i64 [ %.val2.i.i.i.i.i.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i.i ]
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.fe, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.ez = phi ptr [ %i.fd, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.i.i ], [ %i.eh, %.lr.ph.i.i.i.preheader.i.i ] ; 3 uses
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !24569, !noalias !24570, !noundef !57
  %i.fb = icmp eq i64 %i.fa, %.sroa.0169.0.i.i
  br i1 %i.fb, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.i.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !24571, !noalias !24570, !noundef !57
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 2 uses
  %i.fe = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1
  %i.ff = icmp eq ptr %i.fd, %i.ek
  br i1 %i.ff, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread257.i.i, label %.lr.ph.i.i.i.i.i

bb.ab:                                            ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainRSNtNtNtNtB7_6layout4grid7resolve5EntryENCNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids0_00EEB3y_.exit.i.i.i, %bb.t, %bb.r, %.noexc.i.i.i.i.i.i.i.i, %bb.n
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.thread175.i.i

bb.ac:                                            ; preds = %bb.y, %.noexc45.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !24535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !24517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !24517
  br label %bb.aa

bb.ad:                                            ; preds = %bb.bv, %bb.bq, %bb.bo, %bb.bb, %bb.ay
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.thread180.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.us.i.i
  %.us-phi.i.i = phi i64 [ %.sroa.01.019.i.i.i.us.i.i, %.lr.ph.i.i.i.us.i.i ], [ %.sroa.01.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not26.i.i = icmp eq i64 %.us-phi.i.i, 0
  br i1 %.not26.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread257.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread257.i.i: ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.us.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.i.i
  %.us-phi260.i.i = phi i64 [ %.us-phi.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.i.i ], [ %i.eo, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.us.i.i ], [ %i.eo, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB29_6HeaderEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0NCINvMB3w_B3t_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB4c_EB1i_5count0E0E0B4i_.exit.i.i.i.i.i ] ; 2 uses
  %i.fi = add i64 %.us-phi260.i.i, -1             ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.ej
  br i1 %i.fj, label %bb.az, label %bb.ay, !prof !59

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread.i.i: ; preds = %_RNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrid0B5_.exit.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.i.i, %bb.aa
  %.sroa.0.1.i.i188.i.i = phi i64 [ %.us-phi260.i.i, %_RNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrid0B5_.exit.i.i ], [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.i.i ], [ 0, %bb.aa ]
  %i.fk = phi ptr [ %.sroa.08.0.copyload9.i.i, %_RNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrid0B5_.exit.i.i ], [ null, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.i.i ], [ null, %bb.aa ] ; 3 uses
  %.sroa.04.0.i.i = phi i64 [ %.sroa.4.0.i.i, %_RNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrid0B5_.exit.i.i ], [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.i.i ], [ 0, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !24517
  store ptr %i.fk, ptr %i.ag, align 8, !noalias !24517
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.i, i64 16, i1 false), !noalias !24517
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !24517, !nonnull !57, !noundef !57 ; 5 uses
  %i.fn = load i64, ptr %i.ai, align 8, !range !72, !noalias !24517, !noundef !57 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !24517, !noundef !57 ; 6 uses
  %i.fq = icmp ult i64 %i.fp, 576460752303423488
  call void @llvm.assume(i1 %i.fq)
  %.idx206.i.i = shl nuw nsw i64 %i.fp, 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.idx206.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !24517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !24572
  %i.fs = mul nuw nsw i64 %i.fp, 24               ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.fp, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae, !prof !75

bb.ae:                                            ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread.i.i
  %i.ft = icmp eq i64 %i.fp, 0
  br i1 %i.ft, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.thread.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.thread.i.i: ; preds = %bb.ae
  store i64 0, ptr %i.o, align 8, !noalias !24572
  %i.fu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.fu, align 8, !noalias !24572
  %i.fv = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24573
  %i.fw = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.fs, i64 noundef range(i64 1, 9) 8) #53, !noalias !24573 ; 3 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.af, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.preheader.i.i

bb.af:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %i.fs, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1E_6HeaderEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3U_5count0EB34_.exit.thread.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i) #54
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ao, !noalias !24574

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.af
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.preheader.i.i:     ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i
  store i64 %i.fp, ptr %i.o, align 8, !noalias !24572
  %i.fy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.fw, ptr %i.fy, align 8, !noalias !24572
  %i.fz = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24575)
  call void @llvm.experimental.noalias.scope.decl(metadata !24576)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.i.i:               ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryuNCINvNtBb_3map8map_foldTjB21_ENtNtNtB2b_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvB1e_8for_each4callB3z_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5K_3VecB3z_E14extend_trustedINtB3a_3MapIBX_INtNtB5K_9into_iter8IntoIterB21_EEB4d_EE0E0E0E0B4j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.preheader.i.i
  %.sroa.0.0172.i.i = phi i64 [ %.sroa.0.1.i.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryuNCINvNtBb_3map8map_foldTjB21_ENtNtNtB2b_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvB1e_8for_each4callB3z_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5K_3VecB3z_E14extend_trustedINtB3a_3MapIBX_INtNtB5K_9into_iter8IntoIterB21_EEB4d_EE0E0E0E0B4j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i188.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.preheader.i.i ] ; 5 uses
  %.val9.i.i.i.i.i.i.i.i.i.i.i47.i.i = phi i64 [ %i.gt, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryuNCINvNtBb_3map8map_foldTjB21_ENtNtNtB2b_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvB1e_8for_each4callB3z_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5K_3VecB3z_E14extend_trustedINtB3a_3MapIBX_INtNtB5K_9into_iter8IntoIterB21_EEB4d_EE0E0E0E0B4j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.preheader.i.i ] ; 4 uses
  %i.ga = phi ptr [ %i.ge, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryuNCINvNtBb_3map8map_foldTjB21_ENtNtNtB2b_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvB1e_8for_each4callB3z_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5K_3VecB3z_E14extend_trustedINtB3a_3MapIBX_INtNtB5K_9into_iter8IntoIterB21_EEB4d_EE0E0E0E0B4j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.preheader.i.i ] ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !24577, !nonnull !57, !align !63, !noundef !57
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !24577, !noundef !57
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !24578
  %i.gf = add nuw i64 %.val9.i.i.i.i.i.i.i.i.i.i.i47.i.i, %.sroa.04.0.i.i ; 3 uses
  %i.gg = icmp ult i64 %.sroa.0.0172.i.i, %i.ej
  br i1 %i.gg, label %bb.ag, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTjRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtB16_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB20_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB20_E14extend_trustedINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtB4F_9into_iter8IntoIterBW_EEB2E_EE0E0E0B2K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.i.i
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %.sroa.0.0172.i.i ; 3 uses
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !24579, !noundef !57 ; 2 uses
  br i1 %i.ax, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = getelementptr i8, ptr %i.gh, i64 8
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gj, align 8, !alias.scope !24580, !noalias !24579, !noundef !57
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gk = lshr i64 %i.gi, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !24579, !noundef !57 ; 2 uses
  %i.gn = lshr i64 %i.gm, 1
  %.sroa.09.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = sub nuw i64 %i.gm, %i.gn
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.08.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gk, %bb.ai ], [ %i.gi, %bb.ah ]
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ule i64 %.sroa.08.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gf
  %i.go = icmp ult i64 %i.gf, %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.go
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTjRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtB16_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB20_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB20_E14extend_trustedINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtB4F_9into_iter8IntoIterBW_EEB2E_EE0E0E0B2K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.gp = add nuw i64 %i.gf, 1
  %i.gq = icmp eq i64 %i.gp, %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = zext i1 %i.gq to i64
  %spec.select.i.i = add nuw i64 %.sroa.0.0172.i.i, %i.gr
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTjRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtB16_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB20_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB20_E14extend_trustedINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtB4F_9into_iter8IntoIterBW_EEB2E_EE0E0E0B2K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTjRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtB16_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB20_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB20_E14extend_trustedINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtB4F_9into_iter8IntoIterBW_EEB2E_EE0E0E0B2K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.i.i
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0172.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.i.i ], [ %spec.select.i.i, %bb.ak ], [ %.sroa.0.0172.i.i, %bb.aj ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775660, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.i.i ], [ -9223372036854775532, %bb.ak ], [ -9223372036854775660, %bb.aj ]
  invoke fastcc void @_RNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids_0B5_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr nonnull readonly align 8 dereferenceable(24) %i.an, ptr nonnull %i.aj, i64 noundef %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.gb, i64 noundef range(i64 0, 88686269585142076) %i.gd) #52
          to label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryuNCINvNtBb_3map8map_foldTjB21_ENtNtNtB2b_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvB1e_8for_each4callB3z_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5K_3VecB3z_E14extend_trustedINtB3a_3MapIBX_INtNtB5K_9into_iter8IntoIterB21_EEB4d_EE0E0E0E0B4j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.am, !noalias !24577

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryuNCINvNtBb_3map8map_foldTjB21_ENtNtNtB2b_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvB1e_8for_each4callB3z_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5K_3VecB3z_E14extend_trustedINtB3a_3MapIBX_INtNtB5K_9into_iter8IntoIterB21_EEB4d_EE0E0E0E0B4j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTjRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtB16_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB20_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB20_E14extend_trustedINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtB4F_9into_iter8IntoIterBW_EEB2E_EE0E0E0B2K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %.val9.i.i.i.i.i.i.i.i.i.i.i47.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !24581
  %i.gt = add nuw nsw i64 %.val9.i.i.i.i.i.i.i.i.i.i.i47.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !24578
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fr
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i46.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryuNCINvNtBb_3map8map_foldTjB21_ENtNtNtB2b_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvB1e_8for_each4callB3z_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5K_3VecB3z_E14extend_trustedINtB3a_3MapIBX_INtNtB5K_9into_iter8IntoIterB21_EEB4d_EE0E0E0E0B4j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.thread.i.i
  %i.gu = phi ptr [ %i.fv, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.thread.i.i ], [ %i.fz, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryuNCINvNtBb_3map8map_foldTjB21_ENtNtNtB2b_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvB1e_8for_each4callB3z_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5K_3VecB3z_E14extend_trustedINtB3a_3MapIBX_INtNtB5K_9into_iter8IntoIterB21_EEB4d_EE0E0E0E0B4j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.52.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.thread.i.i ], [ %i.gt, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryuNCINvNtBb_3map8map_foldTjB21_ENtNtNtB2b_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvB1e_8for_each4callB3z_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5K_3VecB3z_E14extend_trustedINtB3a_3MapIBX_INtNtB5K_9into_iter8IntoIterB21_EEB4d_EE0E0E0E0B4j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.gv = icmp eq i64 %i.fn, 0
  br i1 %i.gv, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1o_3VecNtNtNtB2h_11foundations7content7ContentEEB3i_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = shl nuw i64 %i.fn, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fm, i64 noundef %i.gw, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24577
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1o_3VecNtNtNtB2h_11foundations7content7ContentEEB3i_.exit.i.i.i

bb.am:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTjRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryENtNtNtB16_11foundations7content7ContentuNCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB20_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4F_3VecB20_E14extend_trustedINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtB4F_9into_iter8IntoIterBW_EEB2E_EE0E0E0B2K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gx = landingpad { ptr, i32 }
          cleanup
  store i64 %.val9.i.i.i.i.i.i.i.i.i.i.i47.i.i, ptr %i.fz, align 8, !alias.scope !24582, !noalias !24583
  %i.gy = icmp eq i64 %i.fn, 0
  br i1 %i.gy, label %.body.i.i.i.i.i.i.i, label %.body.sink.split.i.i.i.i.i.i.i.i.i

.body.sink.split.i.i.i.i.i.i.i.i.i:               ; preds = %bb.am
  %i.gz = shl nuw i64 %i.fn, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fm, i64 noundef %i.gz, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24584
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %.body.sink.split.i.i.i.i.i.i.i.i.i, %bb.am
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #49
          to label %.thread189.i.i unwind label %bb.an, !noalias !24574

bb.an:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !24574
  unreachable

bb.ao:                                            ; preds = %bb.af
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = icmp eq i64 %i.fn, 0
  br i1 %i.hc, label %.thread189.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hd = shl nuw i64 %i.fn, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fm, i64 noundef %i.hd, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24585
  br label %.thread189.i.i

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1o_3VecNtNtNtB2h_11foundations7content7ContentEEB3i_.exit.i.i.i: ; preds = %bb.al, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.52.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gu, align 8, !alias.scope !24582, !noalias !24583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !24586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !24572
  %i.he = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !noalias !24586, !noundef !57 ; 2 uses
  %i.hg = icmp ult i64 %i.hf, 384307168202282326
  call void @llvm.assume(i1 %i.hg)
  switch i64 %i.hf, label %bb.ar [
    i64 0, label %bb.aq
    i64 1, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i
  ]

bb.aq:                                            ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1o_3VecNtNtNtB2h_11foundations7content7ContentEEB3i_.exit.i.i.i
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content5empty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i unwind label %bb.ax, !noalias !24520

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i: ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1o_3VecNtNtNtB2h_11foundations7content7ContentEEB3i_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !24586
  %i.hh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !24586, !nonnull !57, !noundef !57 ; 4 uses
  %i.hj = load i64, ptr %i.p, align 8, !range !72, !noalias !24586, !noundef !57
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 24 ; 2 uses
  store ptr %i.hi, ptr %i.q, align 8, !noalias !24586
  %i.hl = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.hj, ptr %i.hl, align 8, !noalias !24586
  %i.hm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.hk, ptr %i.hn, align 8, !noalias !24586
  call void @llvm.experimental.noalias.scope.decl(metadata !24587)
  store ptr %i.hk, ptr %i.hm, align 8, !alias.scope !24587, !noalias !24588
  %.sroa.03.0.copyload4.i.i.i = load ptr, ptr %i.hi, align 8, !noalias !24589 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.03.0.copyload4.i.i.i, null
  br i1 %.not.i.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i, label %bb.at, !prof !68

bb.ar:                                            ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRSNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve5EntryEENCNvNtCs9gmjTwvRRSu_10typst_html5rules13show_cellgrids4_0ENtNtNtBa_6traits8iterator8Iterator7collectINtB1o_3VecNtNtNtB2h_11foundations7content7ContentEEB3i_.exit.i.i.i
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtB5_12SequenceElemECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.p)
          to label %bb.bz unwind label %bb.by, !noalias !24520

bb.as:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #49
          to label %.thread189.i.i unwind label %bb.av, !noalias !24590

bb.at:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i
  %.sroa.65.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %.sroa.03.0.copyload4.i.i.i, ptr %i.ac, align 8, !noalias !24517
  %.sroa.65.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx6.i.i.i, i64 16, i1 false), !noalias !24520
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q)
          to label %.noexc51.i.i unwind label %bb.by, !noalias !24520

.noexc51.i.i:                                     ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !24586
  br label %bb.bz

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.i.i.i
end_hunk_1
