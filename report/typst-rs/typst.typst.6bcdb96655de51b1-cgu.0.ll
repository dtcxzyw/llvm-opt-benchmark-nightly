Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 112
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread14take_local_job:bb.a
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !28773, !noundef !28
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit.jt1, label %.loopexit, !prof !38

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECs9fPPV5zPXBl_5typst.exit.sink.split.i: ; preds = %bb.x
  tail call void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bv), !noalias !28773
  br label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit

bb.v:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.db = icmp eq ptr %i.bv, null
  br i1 %i.db, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 2072 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !28773, !noundef !28 ; 2 uses
  %i.de = add i64 %i.dd, -1
  store i64 %i.de, ptr %i.dc, align 8, !noalias !28773
  %i.df = icmp eq i64 %i.dd, 1
  br i1 %i.df, label %bb.x, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bv, i64 2176
  store atomic i64 0, ptr %i.dg release, align 8, !noalias !28773
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bv, i64 2080
  %i.di = load i64, ptr %i.dh, align 8, !noalias !28773, !noundef !28
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECs9fPPV5zPXBl_5typst.exit.sink.split.i, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit, !prof !38

_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECs9fPPV5zPXBl_5typst.exit.sink.split.i, %bb.v, %bb.w, %bb.x
  br i1 %i.bz, label %.loopexit, label %bb.n

_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit.jt1: ; preds = %bb.u
  tail call void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bv), !noalias !28773
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit, %bb.s, %bb.u, %bb.t, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit.jt1, %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs9fPPV5zPXBl_5typst.exit
  %.sroa.0.0.i.pn = phi ptr [ %.sroa.0.0.i, %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs9fPPV5zPXBl_5typst.exit ], [ %i.cp, %bb.s ], [ %i.cp, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit.jt1 ], [ %i.cp, %bb.t ], [ %i.cp, %bb.u ], [ null, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit ]
  %.sroa.7.0.i.pn = phi ptr [ %.sroa.7.0.i, %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCs9fPPV5zPXBl_5typst.exit ], [ %i.cq, %bb.s ], [ %i.cq, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit.jt1 ], [ %i.cq, %bb.t ], [ %i.cq, %bb.u ], [ undef, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCs9fPPV5zPXBl_5typst.exit ]
  %.pn = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i.pn, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %.sroa.7.0.i.pn, 1
  ret { ptr, ptr } %.merged
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtNtCs4OFxtfStbbg_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCs89doag9UmMt_9toml_edit2de5ErrorE12invalid_typeCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtNtCs4OFxtfStbbg_5serde7private2de7content18content_unexpected(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  call fastcc void @_RNvYNtNtCs89doag9UmMt_9toml_edit2de5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error12invalid_typeCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs261H7cERR92_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !28 ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28780)
  %.val.i.i = load i64, ptr %i.f, align 8, !range !37, !alias.scope !28781, !noundef !28 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !28781, !nonnull !28, !noundef !28
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !28781
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.b, %bb.a
  call fastcc void @_RNvXNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperNtNtCs261H7cERR92_10serde_json5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #60, !inline_history !28782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !28
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 3 uses
  %i.g = sub i64 %.sroa.02.0.i, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit
  %i.i = add i64 %i.f, %1                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %bb.f, label %bb.e, !prof !38

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs9fPPV5zPXBl_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.d
  %i.k = load atomic i64, ptr %i.c acquire, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.i)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 4)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #61
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs9fPPV5zPXBl_5typst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs9fPPV5zPXBl_5typst.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.a, align 8
  %.pre4.i = load i64, ptr %i.n, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs9fPPV5zPXBl_5typst.exit

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28
  %.val3.i = load i64, ptr %i.n, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs9fPPV5zPXBl_5typst(ptr nonnull %.val.i22, i64 %.val3.i) #62
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

common.resume:                                    ; preds = %.thread, %bb.r, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.ar, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.g, %._crit_edge.i
  %i.q = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store i64 %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.u = load i64, ptr %i.e, align 8, !noundef !28 ; 4 uses
  %.idx = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.not.i24 = icmp eq i64 %i.u, 0
  br i1 %.not.i24, label %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit_crit_edge, label %bb.k

.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit_crit_edge: ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs9fPPV5zPXBl_5typst.exit
  %.pre = load ptr, ptr %i.b, align 8
  %.pre62 = load i64, ptr %i.s, align 8
  br label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs9fPPV5zPXBl_5typst.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.u)
          to label %.lr.ph unwind label %bb.s, !inline_history !28783

.lr.ph:                                           ; preds = %bb.k, %.noexc26
  %.sroa.033.056 = phi ptr [ %i.w, %.noexc26 ], [ %i.t, %bb.k ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28800)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28803)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 31
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !28804, !noalias !28805, !noundef !28
  %.not.i.i.i.i = icmp sgt i8 %i.z, -1
  %.val.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !28806, !noalias !28805 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 24
  %.val10.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !28806, !noalias !28805 ; 2 uses
  br i1 %.not.i.i.i.i, label %2, label %bb.n

2:                                                ; preds = %.lr.ph
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %2
  %i.ab = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !28807
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !38

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val.i.i.i.i) #61
          to label %.noexc30 unwind label %bb.s

.noexc30:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l, %2, %.lr.ph
  %.sroa.0.0.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i.i.i.i, %bb.l ], [ %.val.i.i.i.i, %.lr.ph ] ; 2 uses
  %i.ae = load <2 x i64>, ptr %.sroa.033.056, align 8, !alias.scope !28800, !noalias !28805
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28808)
  %i.af = load i64, ptr %i.s, align 8, !alias.scope !28808, !noundef !28
  %.val.i27 = load ptr, ptr %i.b, align 8, !alias.scope !28808, !nonnull !28, !noundef !28 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit.i, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.sroa.739.31.extract.shift = lshr i64 %.val10.i.i.i.i, 56
  %.sroa.739.31.extract.trunc = trunc nuw i64 %.sroa.739.31.extract.shift to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs9fPPV5zPXBl_5typst(ptr %.sroa.0.0.i.i.i, i8 %.sroa.739.31.extract.trunc) #62
          to label %.thread unwind label %bb.q, !noalias !28809, !inline_history !28799

bb.p:                                             ; preds = %bb.n
  %i.ah = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ah, align 8, !noalias !28810, !noundef !28
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.p, %bb.n
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.p ], [ 0, %bb.n ]
  %i.ai = icmp eq i64 %i.af, %.sroa.02.0.i.i
  %i.aj = zext i1 %i.ai to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.aj)
          to label %.noexc26 unwind label %bb.o, !noalias !28809, !inline_history !28799

bb.q:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !28809, !inline_history !28799
  unreachable

.noexc26:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit.i
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !28808, !nonnull !28, !noundef !28 ; 2 uses
  %i.am = load i64, ptr %i.s, align 8, !alias.scope !28808, !noundef !28 ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 3 uses
  store <2 x i64> %i.ae, ptr %i.an, align 8, !noalias !28809
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.sroa.0.0.i.i.i, ptr %.sroa.542.0..sroa_idx, align 8, !noalias !28809
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.val10.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !28809
  %i.ao = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !28808
  %i.ap = icmp eq ptr %i.w, %i.v
  br i1 %i.ap, label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit, label %.lr.ph

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs9fPPV5zPXBl_5typst.exit
  %i.aq = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.aq, label %bb.w, label %bb.u

bb.r:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  br label %common.resume

bb.s:                                             ; preds = %bb.m, %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit: ; preds = %.noexc26, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit_crit_edge
  %i.at = phi i64 [ %.pre62, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit_crit_edge ], [ %i.ao, %.noexc26 ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit_crit_edge ], [ %i.al, %.noexc26 ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs9fPPV5zPXBl_5typst(ptr nonnull %i.t, i64 %i.u)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread, %bb.t
  ret void

.thread:                                          ; preds = %bb.o, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.s ], [ %i.ag, %bb.o ]
  %.val11 = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28
  %.val12 = load i64, ptr %i.s, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs9fPPV5zPXBl_5typst(ptr nonnull %.val11, i64 %.val12) #62
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.thread
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.w:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtB6_6string9EcoStringE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !28
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !28 ; 3 uses
  %i.i = sub i64 %.sroa.02.0.i, %i.h
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit
  %i.k = add i64 %i.h, %1                         ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.f, label %bb.e, !prof !38

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs9fPPV5zPXBl_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.d
  %i.m = load atomic i64, ptr %i.e acquire, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.k)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 4)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #61
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs9fPPV5zPXBl_5typst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtB4_6string9EcoStringE13with_capacityCs9fPPV5zPXBl_5typst.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4growCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.c, align 8
  %.pre4.i = load i64, ptr %i.p, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtB4_6string9EcoStringE13with_capacityCs9fPPV5zPXBl_5typst.exit

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %.val3.i = load i64, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs9fPPV5zPXBl_5typst(ptr nonnull %.val.i22, i64 %.val3.i) #62
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

common.resume:                                    ; preds = %.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs9fPPV5zPXBl_5typst.exit.i.i, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %eh.lpad-body32, %.thread ], [ %eh.lpad-body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs9fPPV5zPXBl_5typst.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtB4_6string9EcoStringE13with_capacityCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.g, %._crit_edge.i
  %i.s = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.t = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.t, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store i64 %i.s, ptr %i.u, align 8
  %i.v = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 6 uses
  %i.w = load i64, ptr %i.g, align 8, !noundef !28 ; 4 uses
  %.idx = shl nuw nsw i64 %i.w, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %.not.i24 = icmp eq i64 %i.w, 0
  br i1 %.not.i24, label %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit_crit_edge, label %bb.k

.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit_crit_edge: ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtB4_6string9EcoStringE13with_capacityCs9fPPV5zPXBl_5typst.exit
  %.pre = load ptr, ptr %i.d, align 8
  %.pre61 = load i64, ptr %i.u, align 8
  br label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit

.lr.ph:                                           ; preds = %bb.k
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtB4_6string9EcoStringE13with_capacityCs9fPPV5zPXBl_5typst.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtB6_6string9EcoStringE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.w)
          to label %.lr.ph unwind label %bb.s, !inline_history !28811

bb.l:                                             ; preds = %.lr.ph, %.noexc26
  %.sroa.038.056 = phi ptr [ %i.v, %.lr.ph ], [ %i.y, %.noexc26 ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.038.056, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28827)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.038.056, i64 15
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !28828, !noalias !28829, !noundef !28
  %.not.i.i.i33 = icmp sgt i8 %i.aa, -1
  %.val.i.i.i34 = load ptr, ptr %.sroa.038.056, align 8, !alias.scope !28830, !noalias !28829 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.056, i64 8
  %.val10.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !28830, !noalias !28829
  br i1 %.not.i.i.i33, label %2, label %bb.o

2:                                                ; preds = %bb.l
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i34, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %2
  %i.ac = getelementptr inbounds i8, ptr %.val.i.i.i34, i64 -16
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !noalias !28831
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val.i.i.i34) #61
          to label %.noexc35 unwind label %bb.s

.noexc35:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m, %2, %bb.l
  %.sroa.541.0.ph = phi ptr [ %.val.i.i.i34, %bb.l ], [ %.val.i.i.i34, %bb.m ], [ inttoptr (i64 16 to ptr), %2 ]
  store ptr %.sroa.541.0.ph, ptr %i.a, align 8
  store i64 %.val10.i.i.i, ptr %.sroa.7.8..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28832)
  %i.af = load i64, ptr %i.u, align 8, !alias.scope !28832, !noundef !28
  %.val.i29 = load ptr, ptr %i.d, align 8, !alias.scope !28832, !nonnull !28, !noundef !28 ; 2 uses
  %.not.i.i30 = icmp eq ptr %.val.i29, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i30, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit.i, label %bb.q

bb.p:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #62
          to label %.thread unwind label %bb.r, !inline_history !28823

bb.q:                                             ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %.val.i29, i64 -8
  %.val.i.i = load i64, ptr %i.ah, align 8, !noalias !28833, !noundef !28
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.q ], [ 0, %bb.o ]
  %i.ai = icmp eq i64 %i.af, %.sroa.02.0.i.i
  %i.aj = zext i1 %i.ai to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtB6_6string9EcoStringE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.aj)
          to label %.noexc26 unwind label %bb.p, !noalias !28834, !inline_history !28823

bb.r:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !28834, !inline_history !28823
  unreachable

.noexc26:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit.i
  %i.al = load ptr, ptr %i.d, align 8, !alias.scope !28832, !nonnull !28, !noundef !28 ; 2 uses
  %i.am = load i64, ptr %i.u, align 8, !alias.scope !28832, !noundef !28 ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ao = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.u, align 8, !alias.scope !28832
  %i.ap = icmp eq ptr %i.y, %i.x
  br i1 %i.ap, label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit, label %bb.l

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs9fPPV5zPXBl_5typst.exit
  %i.aq = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.aq, label %bb.aa, label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.u, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bf, %bb.x ], [ %i.bd, %bb.u ]
  store ptr %i.at, ptr %0, align 8
  store i64 %i.as, ptr %i.g, align 8
  br label %common.resume

bb.s:                                             ; preds = %bb.n, %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit: ; preds = %.noexc26, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit_crit_edge
  %i.as = phi i64 [ %.pre61, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit_crit_edge ], [ %i.ao, %.noexc26 ] ; 2 uses
  %i.at = phi ptr [ %.pre, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit_crit_edge ], [ %i.al, %.noexc26 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, inttoptr (i64 16 to ptr)
  %i.au = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs9fPPV5zPXBl_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8
  %.not.i.i = icmp eq i64 %i.av, 1
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs9fPPV5zPXBl_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aw = getelementptr i8, ptr %i.v, i64 -8
  %.val.i.i.i = load i64, ptr %i.aw, align 8, !noundef !28 ; 2 uses
  %i.ax = icmp ult i64 %.val.i.i.i, 1152921504606846976
  %i.ay = shl i64 %.val.i.i.i, 4                  ; 2 uses
  %i.az = icmp ult i64 %i.ay, 9223372036854775784
  %narrow.i.i.i.i = and i1 %i.ax, %i.az
  br i1 %narrow.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs9fPPV5zPXBl_5typst.exit.i.i, label %bb.t, !prof !43

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #61
          to label %.noexc27 unwind label %bb.x

.noexc27:                                         ; preds = %bb.t
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i
  %i.ba = add nuw nsw i64 %i.ay, 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.au, ptr %i.bb, align 8
  store i64 8, ptr %i.b, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ba, ptr %i.bc, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef %i.w)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs9fPPV5zPXBl_5typst.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.w

bb.v:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs9fPPV5zPXBl_5typst.exit.i.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc28 unwind label %bb.x

.noexc28:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs9fPPV5zPXBl_5typst.exit

bb.w:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs9fPPV5zPXBl_5typst.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs9fPPV5zPXBl_5typst.exit: ; preds = %.noexc28, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i, %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtB8_6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1e_8adapters6cloned6ClonedINtNtNtB1g_5slice4iter4IterBI_EEECs9fPPV5zPXBl_5typst.exit
  store ptr %i.at, ptr %0, align 8
  store i64 %i.as, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs9fPPV5zPXBl_5typst.exit
  ret void

.thread:                                          ; preds = %bb.p, %bb.s
  %eh.lpad-body32 = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %i.ag, %bb.p ]
  %.val11 = load ptr, ptr %i.d, align 8, !nonnull !28, !noundef !28
  %.val12 = load i64, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs9fPPV5zPXBl_5typst(ptr nonnull %.val11, i64 %.val12) #62
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %.thread
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.aa:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4growCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.y
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !28
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !28 ; 3 uses
  %i.h = sub i64 %.sroa.02.0.i, %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit
  %i.j = add i64 %i.g, %1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.f, label %bb.e, !prof !38

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs9fPPV5zPXBl_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.d
  %i.l = load atomic i64, ptr %i.d acquire, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs9fPPV5zPXBl_5typst.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.j)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 1)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #61
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs9fPPV5zPXBl_5typst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
end_hunk_0
begin_hunk_1_@_RNvNtCs9fPPV5zPXBl_5typst7compile12compile_once:bb.a
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i70.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i70.i.i.i: ; preds = %bb.fu, %bb.ft
  %i.sv = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %.val5.i.i71.i.i.i = load i64, ptr %i.sv, align 8, !range !64, !alias.scope !35044, !noalias !34953, !noundef !28 ; 2 uses
  %i.sw = icmp sgt i64 %.val5.i.i71.i.i.i, 0
  br i1 %i.sw, label %bb.fv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEEECs9fPPV5zPXBl_5typst.exit15.i.i72.i.i.i

bb.fv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i70.i.i.i
  %i.sx = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %.val6.i.i75.i.i.i = load ptr, ptr %i.sx, align 8, !alias.scope !35044, !noalias !34953, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i75.i.i.i, i64 noundef %.val5.i.i71.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !35046
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEEECs9fPPV5zPXBl_5typst.exit15.i.i72.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEEECs9fPPV5zPXBl_5typst.exit15.i.i72.i.i.i: ; preds = %bb.fv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i70.i.i.i
  %i.sy = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.val.i.i73.i.i.i = load i64, ptr %i.sy, align 8, !range !55, !alias.scope !35044, !noalias !34953, !noundef !28 ; 2 uses
  %i.sz = icmp sgt i64 %.val.i.i73.i.i.i, 0
  br i1 %i.sz, label %bb.fw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgpMJJHpo27b_12typst_bundle7export_13BundleOptionsECs9fPPV5zPXBl_5typst.exit77.i.i.i

bb.fw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEEECs9fPPV5zPXBl_5typst.exit15.i.i72.i.i.i
  %i.ta = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %.val2.i.i74.i.i.i = load ptr, ptr %i.ta, align 8, !alias.scope !35044, !noalias !34953, !nonnull !28, !noundef !28
  %i.tb = mul nuw i64 %.val.i.i73.i.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i74.i.i.i, i64 noundef %i.tb, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !35047
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgpMJJHpo27b_12typst_bundle7export_13BundleOptionsECs9fPPV5zPXBl_5typst.exit77.i.i.i

bb.fx:                                            ; preds = %bb.fe, %bb.ex, %bb.ew, %bb.et, %.body.i.i.i.i.i, %.body.i.i.i.i.i.i.i, %bb.ds
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.rc, %bb.et ], [ %i.qm, %.body.i.i.i.i.i ], [ %i.mv, %bb.ds ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.rf, %bb.ew ], [ %i.rg, %bb.ex ], [ %i.rq, %bb.fe ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(56) %i.cd) #62
          to label %.thread136.i.i.i unwind label %bb.fb, !noalias !34955

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgpMJJHpo27b_12typst_bundle7export_13BundleOptionsECs9fPPV5zPXBl_5typst.exit77.i.i.i: ; preds = %bb.fw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEEECs9fPPV5zPXBl_5typst.exit15.i.i72.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !34953
  call void @llvm.experimental.noalias.scope.decl(metadata !35048)
  call void @llvm.experimental.noalias.scope.decl(metadata !35049)
  call void @llvm.experimental.noalias.scope.decl(metadata !35050)
  %i.tc = load ptr, ptr %i.cm, align 8, !alias.scope !35051, !noalias !34953, !nonnull !28, !noundef !28
  %i.td = atomicrmw add ptr %i.tc, i64 -1 release, align 8, !noalias !35052
  %i.te = icmp eq i64 %i.td, 1
  br i1 %i.te, label %bb.fy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i78.i.i.i

bb.fy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgpMJJHpo27b_12typst_bundle7export_13BundleOptionsECs9fPPV5zPXBl_5typst.exit77.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEE9drop_slowB2b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cm) #63
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i78.i.i.i unwind label %bb.fz, !noalias !34955

bb.fz:                                            ; preds = %bb.fy
  %i.tf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35053)
  call void @llvm.experimental.noalias.scope.decl(metadata !35054)
  %i.tg = load ptr, ptr %i.lr, align 8, !alias.scope !35055, !noalias !34953, !nonnull !28, !noundef !28
  %i.th = atomicrmw add ptr %i.tg, i64 -1 release, align 8, !noalias !35056
  %i.ti = icmp eq i64 %i.th, 1
  br i1 %i.ti, label %bb.ga, label %.body101.i

bb.ga:                                            ; preds = %bb.fz
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsgpMJJHpo27b_12typst_bundle10introspect18BundleIntrospectorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lr) #63
          to label %.body101.i unwind label %bb.gb, !noalias !34955

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i78.i.i.i: ; preds = %bb.fy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgpMJJHpo27b_12typst_bundle7export_13BundleOptionsECs9fPPV5zPXBl_5typst.exit77.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !35057)
  call void @llvm.experimental.noalias.scope.decl(metadata !35058)
  %i.tj = load ptr, ptr %i.lr, align 8, !alias.scope !35059, !noalias !34953, !nonnull !28, !noundef !28
  %i.tk = atomicrmw add ptr %i.tj, i64 -1 release, align 8, !noalias !35060
  %i.tl = icmp eq i64 %i.tk, 1
  br i1 %i.tl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgpMJJHpo27b_12typst_bundle6BundleECs9fPPV5zPXBl_5typst.exit.sink.split.i.i.i, label %_RNCNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_exports1_0B5_.exit.i

bb.gb:                                            ; preds = %bb.ga
  %i.tm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !34955
  unreachable

bb.gc:                                            ; preds = %.thread136.i.i.i, %.thread.i.i70.i
  %.pn5790.i.i.i = phi { ptr, i32 } [ %i.lu, %.thread.i.i70.i ], [ %.pn55.ph.i.i.i, %.thread136.i.i.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgpMJJHpo27b_12typst_bundle6BundleECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cm) #62
          to label %.body101.i unwind label %bb.fb, !noalias !34955

_RNCNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_exports1_0B5_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i78.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgpMJJHpo27b_12typst_bundle6BundleECs9fPPV5zPXBl_5typst.exit.sink.split.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgpMJJHpo27b_12typst_bundle7export_13BundleOptionsECs9fPPV5zPXBl_5typst.exit.i.i.i
  %.sroa.11.5.i = phi i64 [ %.sroa.985.0.copyload.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgpMJJHpo27b_12typst_bundle7export_13BundleOptionsECs9fPPV5zPXBl_5typst.exit.i.i.i ], [ %.sroa.11.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i78.i.i.i ], [ %.sroa.985.0.copyload.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %.sroa.11.3.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgpMJJHpo27b_12typst_bundle6BundleECs9fPPV5zPXBl_5typst.exit.sink.split.i.i.i ]
  %.sroa.7124.5.i = phi ptr [ %.sroa.684.0.copyload.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgpMJJHpo27b_12typst_bundle7export_13BundleOptionsECs9fPPV5zPXBl_5typst.exit.i.i.i ], [ %.sroa.7124.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i78.i.i.i ], [ %.sroa.684.0.copyload.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %.sroa.7124.3.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgpMJJHpo27b_12typst_bundle6BundleECs9fPPV5zPXBl_5typst.exit.sink.split.i.i.i ]
  %.sroa.0121.5.i = phi i64 [ %.pr.pre.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgpMJJHpo27b_12typst_bundle7export_13BundleOptionsECs9fPPV5zPXBl_5typst.exit.i.i.i ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i78.i.i.i ], [ %.pr.pre.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i ], [ %.sroa.0121.3.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgpMJJHpo27b_12typst_bundle6BundleECs9fPPV5zPXBl_5typst.exit.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !34952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !34952
  br label %_RNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_export.exit

bb.gd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgpMJJHpo27b_12typst_bundle6BundleECs9fPPV5zPXBl_5typst.exit.sink.split.i.i.i
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %.body101.i

.body101.i:                                       ; preds = %bb.gd, %bb.gc, %bb.ga, %bb.fz, %bb.fr, %bb.fq, %bb.df
  %eh.lpad-body102.i = phi { ptr, i32 } [ %i.tn, %bb.gd ], [ %i.tf, %bb.fz ], [ %i.sl, %bb.fq ], [ %i.sl, %bb.fr ], [ %i.tf, %bb.ga ], [ %.pn5790.i.i.i, %bb.gc ], [ %i.me, %bb.df ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9fPPV5zPXBl_5typst(ptr nonnull %i.fn, i64 %i.fp) #62
          to label %.body46 unwind label %bb.bj, !noalias !34921

bb.ge:                                            ; preds = %bb.g
  %i.to = invoke fastcc noundef ptr @_RNvMNtCs9fPPV5zPXBl_5typst5watchNtB2_6Status5print(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @735, ptr noundef nonnull align 8 %1)
          to label %bb.gf unwind label %bb.f      ; 2 uses

bb.gf:                                            ; preds = %bb.ge
  %.not.i45 = icmp eq ptr %i.to, null
  br i1 %.not.i45, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit48, label %bb.gg, !prof !43

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !35061
  store ptr %i.to, ptr %i.dr, align 8, !noalias !35061
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 43, ptr noundef nonnull %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @516, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @736) #61
          to label %bb.gi unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.tp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dr) #62
          to label %.body46 unwind label %bb.gj

bb.gi:                                            ; preds = %bb.gg
  unreachable

bb.gj:                                            ; preds = %bb.gh
  %i.tq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_export.exit: ; preds = %bb.dc, %bb.bi, %_RNCNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_exports1_0B5_.exit.i, %.noexc57
  %.sroa.16.0 = phi i64 [ %i.ff, %bb.bi ], [ %i.fk, %bb.dc ], [ %i.fp, %_RNCNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_exports1_0B5_.exit.i ], [ %i.fp, %.noexc57 ] ; 3 uses
  %.sroa.12.0 = phi ptr [ %i.fd, %bb.bi ], [ %i.fi, %bb.dc ], [ %i.fn, %_RNCNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_exports1_0B5_.exit.i ], [ %i.fn, %.noexc57 ] ; 3 uses
  %.sroa.9.0 = phi i64 [ %.sroa.13.0.i, %bb.bi ], [ %.sroa.725.0.i, %bb.dc ], [ %.sroa.11.5.i, %_RNCNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_exports1_0B5_.exit.i ], [ %.sroa.631.0.copyload.i, %.noexc57 ] ; 12 uses
  %.sroa.6.0175 = phi ptr [ %.sroa.8.0.i, %bb.bi ], [ %.sroa.622.0.i, %bb.dc ], [ %.sroa.7124.5.i, %_RNCNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_exports1_0B5_.exit.i ], [ %.sroa.429.0.copyload.i, %.noexc57 ] ; 15 uses
  %.sroa.0.0174 = phi i64 [ %.sroa.0104.0.i, %bb.bi ], [ %.sroa.020.0.i, %bb.dc ], [ %.sroa.0121.5.i, %_RNCNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_exports1_0B5_.exit.i ], [ -1, %.noexc57 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  store i64 %.sroa.0.0174, ptr %i.em, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %.sroa.6.0175, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  store ptr %.sroa.12.0, ptr %i.el, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 6 uses
  store i64 %.sroa.16.0, ptr %i.tr, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tv = load i64, ptr %i.tu, align 8, !noundef !28 ; 2 uses
  %.idx277 = shl nuw nsw i64 %i.tv, 4
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 %.idx277
  %i.tx = icmp eq i64 %i.tv, 0
  br i1 %i.tx, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_export.exit
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 5 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ej, i64 40 ; 4 uses
  br label %bb.gk

bb.gk:                                            ; preds = %.lr.ph, %bb.gz
  %.val.i = phi ptr [ %.sroa.12.0, %.lr.ph ], [ %i.vy, %bb.gz ] ; 2 uses
  %i.uf = phi i64 [ %.sroa.16.0, %.lr.ph ], [ %i.wb, %bb.gz ]
  %.sroa.01.0276 = phi ptr [ %i.tt, %.lr.ph ], [ %i.ug, %bb.gz ] ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.01.0276, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  %i.uh = invoke noundef nonnull align 8 ptr @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString7message(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.01.0276)
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

._crit_edge:                                      ; preds = %bb.gz, %_RNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_export.exit
  %i.ui = phi ptr [ %.sroa.12.0, %_RNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_export.exit ], [ %i.vy, %bb.gz ] ; 2 uses
  %i.uj = phi i64 [ %.sroa.16.0, %_RNvNtCs9fPPV5zPXBl_5typst7compile18compile_and_export.exit ], [ %i.wb, %bb.gz ] ; 3 uses
  %i.uk = icmp eq i64 %.sroa.0.0174, -1           ; 5 uses
  br i1 %i.uk, label %bb.jj, label %bb.ha

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.rd, %.body.i.i.i, %bb.le, %.body134.i.i, %bb.mx, %bb.nc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit110.i.i, %bb.or, %bb.jz, %bb.jn, %.body.i87, %bb.if, %bb.hz, %bb.hn, %bb.hi, %bb.gw, %.body.i67
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i88, %.body.i87 ], [ %i.ws, %bb.hi ], [ %i.vt, %bb.gw ], [ %.pn69.i.i, %bb.or ], [ %.pn69.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit110.i.i ], [ %eh.lpad-body.i68, %.body.i67 ], [ %i.wu, %bb.hn ], [ %i.wy, %bb.hz ], [ %i.zc, %bb.jn ], [ %i.zg, %bb.jz ], [ %i.anv, %bb.rd ], [ %.pn.i88, %bb.if ], [ %.pn42.i.i, %bb.nc ], [ %eh.lpad-body135.i.i, %.body134.i.i ], [ %.pn.i.i.i115, %.body.i.i.i ], [ %.pn.i.i.i115, %bb.le ], [ %.pn88.ph.i.i, %bb.mx ], [ %lpad.loopexit.split-lp711, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val52 = load ptr, ptr %i.el, align 8, !nonnull !28, !noundef !28
  %.val53 = load i64, ptr %i.tr, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9fPPV5zPXBl_5typst(ptr nonnull %.val52, i64 %.val53) #62
          to label %bb.rg unwind label %bb.rt

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.experimental.noalias.scope.decl(metadata !35062)
  call void @llvm.experimental.noalias.scope.decl(metadata !35063)
  %i.ul = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef 1)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc63:                                         ; preds = %bb.gl
  call void @llvm.experimental.noalias.scope.decl(metadata !35064)
  call void @llvm.experimental.noalias.scope.decl(metadata !35065)
  call void @llvm.experimental.noalias.scope.decl(metadata !35066)
  call void @llvm.experimental.noalias.scope.decl(metadata !35067)
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 15
  %i.un = load i8, ptr %i.um, align 1, !alias.scope !35068, !noundef !28
  %.not.i.i.i.i60 = icmp sgt i8 %i.un, -1
  %.val.i.i.i.i61 = load ptr, ptr %i.uh, align 8, !alias.scope !35069 ; 5 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %.val10.i.i.i.i62 = load i64, ptr %i.uo, align 8, !alias.scope !35069
  br i1 %.not.i.i.i.i60, label %2, label %bb.go

2:                                                ; preds = %.noexc63
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i61, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i, label %bb.go, label %bb.gm

bb.gm:                                            ; preds = %2
  %i.up = getelementptr inbounds i8, ptr %.val.i.i.i.i61, i64 -16
  %i.uq = atomicrmw add ptr %i.up, i64 1 monotonic, align 8, !noalias !35070
  %i.ur = icmp slt i64 %i.uq, 0
  br i1 %i.ur, label %bb.gn, label %bb.go, !prof !38

bb.gn:                                            ; preds = %bb.gm
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val.i.i.i.i61) #61
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.gn
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gk, %bb.gl, %bb.gn, %bb.ha, %bb.hc, %bb.he, %bb.hf, %bb.jd, %_RNCNvNtCs9fPPV5zPXBl_5typst7compile12compile_once0B5_.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit, %bb.jk, %bb.re, %_RNCNvNtCs9fPPV5zPXBl_5typst7compile12compile_onces_0B5_.exit, %bb.hx, %bb.jx, %bb.kc, %bb.mz, %_RNvMs_NtCs9fPPV5zPXBl_5typst4argsNtB4_6Output4open.exit.thread.i33.i, %.noexc142, %bb.no, %bb.of, %bb.rb
  %lpad.loopexit.split-lp711 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.go:                                            ; preds = %bb.gm, %2, %.noexc63
  %.sroa.0.0.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i.i.i.i61, %bb.gm ], [ %.val.i.i.i.i61, %.noexc63 ]
  %i.us = extractvalue { i64, i64 } %i.ul, 1
  %i.ut = extractvalue { i64, i64 } %i.ul, 0
  store i8 1, ptr %i.ty, align 8, !alias.scope !35062
  store i64 %i.ut, ptr %i.ej, align 8, !alias.scope !35062
  store i64 %i.us, ptr %i.tz, align 8, !alias.scope !35062
  store ptr %.sroa.0.0.i.i.i, ptr %i.ua, align 8, !alias.scope !35062
  store i64 %.val10.i.i.i.i62, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !35062
  store ptr inttoptr (i64 16 to ptr), ptr %i.ub, align 8, !alias.scope !35062
  store i64 0, ptr %i.uc, align 8, !alias.scope !35062
  store ptr inttoptr (i64 16 to ptr), ptr %i.ud, align 8, !alias.scope !35062
  store i64 0, ptr %i.ue, align 8, !alias.scope !35062
  %i.uu = load ptr, ptr %.sroa.01.0276, align 8, !nonnull !28, !noundef !28
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.01.0276, i64 8
  %i.uw = load i64, ptr %i.uv, align 8, !noundef !28 ; 3 uses
  %i.ux = icmp eq i64 %i.uw, 0
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %.sroa.423.0 = call i64 @llvm.usub.sat.i64(i64 %i.uw, i64 1) ; 2 uses
  %.sroa.021.0 = select i1 %i.ux, ptr inttoptr (i64 8 to ptr), ptr %i.uy ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.423.0, 4
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !35071)
  call void @llvm.experimental.noalias.scope.decl(metadata !35072)
  call void @llvm.experimental.noalias.scope.decl(metadata !35073)
  %.not.i.i66 = icmp ult i64 %i.uw, 2
  br i1 %.not.i.i66, label %.loopexit, label %.lr.ph.i.i

.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.gq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i67

.body.i67:                                        ; preds = %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gs
  %eh.lpad-body.i68 = phi { ptr, i32 } [ %i.vi, %bb.gs ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ej) #62
          to label %.body unwind label %bb.gv, !noalias !35071

.lr.ph.i.i:                                       ; preds = %bb.go
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ud, i64 noundef %.sroa.423.0)
          to label %.noexc.i69 unwind label %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35071

.noexc.i69:                                       ; preds = %.lr.ph.i.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs9fPPV5zPXBl_5typst.exit.i.i
  %.sroa.05.023.i.i = phi ptr [ %i.va, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs9fPPV5zPXBl_5typst.exit.i.i ], [ %.sroa.021.0, %.lr.ph.i.i ] ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.05.023.i.i, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35074)
  call void @llvm.experimental.noalias.scope.decl(metadata !35075)
  call void @llvm.experimental.noalias.scope.decl(metadata !35076)
  call void @llvm.experimental.noalias.scope.decl(metadata !35077)
  call void @llvm.experimental.noalias.scope.decl(metadata !35078)
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.05.023.i.i, i64 15
  %i.vc = load i8, ptr %i.vb, align 1, !alias.scope !35079, !noalias !35080, !noundef !28
  %.not.i.i.i.i.i.i.i.i70 = icmp sgt i8 %i.vc, -1
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.05.023.i.i, align 8, !alias.scope !35081, !noalias !35080 ; 5 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.05.023.i.i, i64 8
  %.val10.i.i.i.i.i.i.i.i = load i64, ptr %i.vd, align 8, !alias.scope !35081, !noalias !35080 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i70, label %3, label %bb.gr

3:                                                ; preds = %.noexc.i69
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.gr, label %bb.gp

bb.gp:                                            ; preds = %3
  %i.ve = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i, i64 -16
  %i.vf = atomicrmw add ptr %i.ve, i64 1 monotonic, align 8, !noalias !35082
  %i.vg = icmp slt i64 %i.vf, 0
  br i1 %i.vg, label %bb.gq, label %bb.gr, !prof !38

bb.gq:                                            ; preds = %bb.gp
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i) #61
          to label %.noexc1.i unwind label %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1.i:                                        ; preds = %bb.gq
  unreachable

bb.gr:                                            ; preds = %bb.gp, %3, %.noexc.i69
  %.sroa.8.0.ph.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i, %bb.gp ], [ %.val.i.i.i.i.i.i.i.i, %.noexc.i69 ], [ inttoptr (i64 16 to ptr), %3 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35083)
  %i.vh = load i64, ptr %i.ue, align 8, !alias.scope !35084, !noundef !28
  %.val.i.i.i = load ptr, ptr %i.ud, align 8, !alias.scope !35084, !nonnull !28, !noundef !28 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i71, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.gt

bb.gs:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.vi = landingpad { ptr, i32 }
          cleanup
  %.sroa.711.31.extract.shift.i.i = lshr i64 %.val10.i.i.i.i.i.i.i.i, 56
  %.sroa.711.31.extract.trunc.i.i = trunc nuw i64 %.sroa.711.31.extract.shift.i.i to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs9fPPV5zPXBl_5typst(ptr %.sroa.8.0.ph.i.i, i8 %.sroa.711.31.extract.trunc.i.i) #62
          to label %.body.i67 unwind label %bb.gu, !noalias !35085, !inline_history !22

bb.gt:                                            ; preds = %bb.gr
  %i.vj = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i72 = load i64, ptr %i.vj, align 8, !noalias !35085, !noundef !28
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.gt, %bb.gr
  %.sroa.02.0.i.i.i.i = phi i64 [ %.val.i.i.i.i72, %bb.gt ], [ 0, %bb.gr ]
  %i.vk = icmp eq i64 %i.vh, %.sroa.02.0.i.i.i.i
  %i.vl = zext i1 %i.vk to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ud, i64 noundef %i.vl)
          to label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.gs, !noalias !35086, !inline_history !22

bb.gu:                                            ; preds = %bb.gs
  %i.vm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !35085, !inline_history !22
  unreachable

_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.vn = load ptr, ptr %i.ud, align 8, !alias.scope !35084, !nonnull !28, !noundef !28
  %i.vo = load i64, ptr %i.ue, align 8, !alias.scope !35084, !noundef !28 ; 2 uses
  %i.vp = getelementptr inbounds nuw [32 x i8], ptr %i.vn, i64 %i.vo ; 4 uses
  store i64 1, ptr %i.vp, align 8, !noalias !35087
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store i64 0, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !35087
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  store ptr %.sroa.8.0.ph.i.i, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !35087
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  store i64 %.val10.i.i.i.i.i.i.i.i, ptr %.sroa.711.0..sroa_idx.i.i, align 8, !noalias !35087
  %i.vq = add i64 %i.vo, 1
  store i64 %i.vq, ptr %i.ue, align 8, !alias.scope !35084
  %i.vr = icmp eq ptr %i.va, %i.uz
  br i1 %i.vr, label %.loopexit, label %.noexc.i69

bb.gv:                                            ; preds = %.body.i67
  %i.vs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !35088
  unreachable

.loopexit:                                        ; preds = %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs9fPPV5zPXBl_5typst.exit.i.i, %bb.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ek, ptr noundef nonnull align 8 dereferenceable(72) %i.ej, i64 72, i1 false), !alias.scope !35088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.experimental.noalias.scope.decl(metadata !35089)
  %.not.i.i75 = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i75, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit.i, label %bb.gx

bb.gw:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit.i
  %i.vt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.ek) #62
          to label %.body unwind label %bb.gy, !noalias !35089, !inline_history !18

bb.gx:                                            ; preds = %.loopexit
  %i.vu = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i76 = load i64, ptr %i.vu, align 8, !noalias !35090, !noundef !28
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.gx, %.loopexit
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i76, %bb.gx ], [ 0, %.loopexit ]
  %i.vv = icmp eq i64 %i.uf, %.sroa.02.0.i.i
  %i.vw = zext i1 %i.vv to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.el, i64 noundef %i.vw)
          to label %bb.gz unwind label %bb.gw, !noalias !35091, !inline_history !18

bb.gy:                                            ; preds = %bb.gw
  %i.vx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !35090, !inline_history !18
  unreachable

bb.gz:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs9fPPV5zPXBl_5typst.exit.i
  %i.vy = load ptr, ptr %i.el, align 8, !alias.scope !35089, !nonnull !28, !noundef !28 ; 3 uses
  %i.vz = load i64, ptr %i.tr, align 8, !alias.scope !35089, !noundef !28 ; 2 uses
  %i.wa = getelementptr inbounds nuw [72 x i8], ptr %i.vy, i64 %i.vz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.wa, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ek, i64 72, i1 false), !noalias !35089
  %i.wb = add i64 %i.vz, 1                        ; 3 uses
  store i64 %i.wb, ptr %i.tr, align 8, !alias.scope !35089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  %i.wc = icmp eq ptr %i.ug, %i.tw
  br i1 %i.wc, label %._crit_edge, label %bb.gk

bb.ha:                                            ; preds = %._crit_edge
  %i.wd = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.en)
          to label %bb.hb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.hb:                                            ; preds = %bb.ha
  %i.we = extractvalue { i64, i32 } %i.wd, 0      ; 2 uses
  %i.wf = extractvalue { i64, i32 } %i.wd, 1      ; 2 uses
  %i.wg = load i8, ptr %i.ex, align 4, !range !53, !noundef !28
  %i.wh = trunc nuw i8 %i.wg to i1
  br i1 %i.wh, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit44, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit40, %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 238
  %i.wj = load i8, ptr %i.wi, align 2, !range !53, !noundef !28
  %i.wk = trunc nuw i8 %i.wj to i1
  invoke fastcc void @_RNvNtCs9fPPV5zPXBl_5typst7compile17print_diagnostics(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.eg, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @648, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ui, i64 noundef %i.uj, i1 noundef zeroext %i.wk)
          to label %bb.hq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hd:                                            ; preds = %bb.hb
  %i.wl = icmp eq i64 %i.uj, 0
  br i1 %i.wl, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.wm = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %i.we, ptr %i.wm, align 8
  %i.wn = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i32 %i.wf, ptr %i.wn, align 8
  store i64 2, ptr %i.eh, align 8
  %i.wo = invoke fastcc noundef ptr @_RNvMNtCs9fPPV5zPXBl_5typst5watchNtB2_6Status5print(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh, ptr noundef nonnull align 8 %1)
          to label %bb.hg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %i.we, ptr %i.wp, align 8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i32 %i.wf, ptr %i.wq, align 8
  store i64 1, ptr %i.ei, align 8
  %i.wr = invoke fastcc noundef ptr @_RNvMNtCs9fPPV5zPXBl_5typst5watchNtB2_6Status5print(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ei, ptr noundef nonnull align 8 %1)
          to label %bb.hl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.hg:                                            ; preds = %bb.he
  %.not.i41 = icmp eq ptr %i.wo, null
  br i1 %.not.i41, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit44, label %bb.hh, !prof !43

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !35092
  store ptr %i.wo, ptr %i.ds, align 8, !noalias !35092
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 43, ptr noundef nonnull %i.ds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @516, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @737) #61
          to label %bb.hj unwind label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ws = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ds) #62
          to label %.body unwind label %bb.hk

bb.hj:                                            ; preds = %bb.hh
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %i.wt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit44: ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %bb.hc

bb.hl:                                            ; preds = %bb.hf
  %.not.i37 = icmp eq ptr %i.wr, null
  br i1 %.not.i37, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit40, label %bb.hm, !prof !43

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !35093
  store ptr %i.wr, ptr %i.dt, align 8, !noalias !35093
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 43, ptr noundef nonnull %i.dt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @516, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @738) #61
          to label %bb.ho unwind label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.wu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dt) #62
          to label %.body unwind label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  unreachable

bb.hp:                                            ; preds = %bb.hn
  %i.wv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit40: ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  br label %bb.hc

bb.hq:                                            ; preds = %bb.hc
  %i.ww = load i64, ptr %i.eg, align 8, !range !73, !noundef !28
  %.not28 = icmp eq i64 %i.ww, -1
  br i1 %.not28, label %bb.ia, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @llvm.experimental.noalias.scope.decl(metadata !35094)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !35095
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.bj, i8 0, i64 15, i1 false), !noalias !35095
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i, align 1, !noalias !35095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !35095
  store ptr %i.ec, ptr %i.bi, align 8, !noalias !35095
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @_RNvXs_NtCscf0te1RqI9v_18codespan_reporting5filesNtB4_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !35095
  %i.wx = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30, ptr noundef nonnull @416, ptr noundef nonnull %i.bi)
          to label %bb.ht unwind label %bb.hs, !noalias !35096

bb.hs:                                            ; preds = %bb.hu, %bb.hr
  %i.wy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bj) #62
          to label %bb.hz unwind label %bb.hy, !noalias !35096

bb.ht:                                            ; preds = %bb.hr
  br i1 %i.wx, label %bb.hu, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i, !prof !38

bb.hu:                                            ; preds = %bb.ht
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @454) #65
          to label %.noexc.i80 unwind label %bb.hs, !noalias !35096

.noexc.i80:                                       ; preds = %bb.hu
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !35095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !35094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !35095
  %.val24.i = load i64, ptr %i.ec, align 8, !range !79, !alias.scope !35094, !noundef !28
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.val25.i = load ptr, ptr %i.wz, align 8, !alias.scope !35094 ; 4 uses
end_hunk_1
begin_hunk_2_@_RNvNtCs9fPPV5zPXBl_5typst7compile17print_diagnostics:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 337
  %i.cc = load i8, ptr %i.cb, align 1, !range !40, !noalias !35960, !noundef !28
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 337 ; 3 uses
  store i8 %i.cc, ptr %i.cd, align 1, !noalias !35960
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  store i64 2, ptr %i.ce, align 8, !noalias !35960
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(225) %i.cg, ptr noundef nonnull align 8 dereferenceable(225) %i.cf, i64 225, i1 false), !noalias !35960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bf, ptr noundef nonnull align 8 dereferenceable(88) %i.be, i64 88, i1 false), !noalias !35960
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 96 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.ck = load <2 x i64>, ptr %i.ch, align 8, !noalias !35960
  store <2 x i64> %i.ck, ptr %i.ci, align 8, !noalias !35960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !35960
  br i1 %7, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 2, ptr %i.cd, align 1, !noalias !35960
  br label %bb.g

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.in, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit49.i, %.thread.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i, %bb.bm, %bb.bl, %.body.i.i115.i, %.body119.i, %bb.as, %.body98.i, %bb.ao, %.body.i.i.i, %bb.ad, %bb.ac, %.noexc3.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i, %bb.s, %bb.r
  %.sink.i = phi ptr [ %i.ba, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ba, %bb.s ], [ %i.bd, %.thread.i.i.i ], [ %i.bc, %.body.i.i115.i ], [ %i.bc, %.body119.i ], [ %i.bb, %.body98.i ], [ %i.ba, %.noexc3.i.i.i ], [ %i.ba, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i ], [ %i.ba, %bb.r ], [ %i.bb, %bb.ao ], [ %i.bd, %.loopexit.split-lp.loopexit.split-lp.i.i.i ], [ %i.bc, %bb.as ], [ %i.bc, %bb.bm ], [ %i.bc, %bb.bl ], [ %i.bb, %bb.ac ], [ %i.bb, %.body.i.i.i ], [ %i.bb, %bb.ad ], [ %i.bd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit49.i ], [ %i.bd, %bb.in ], [ %i.bd, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.hc, %bb.s ], [ %.pn444100.i.i.i, %.thread.i.i.i ], [ %.pn.i.i.i.i.i, %.body.i.i115.i ], [ %i.kf, %.body119.i ], [ %i.je, %.body98.i ], [ %i.hc, %.noexc3.i.i.i ], [ %i.hc, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i ], [ %i.hc, %bb.r ], [ %i.jd, %bb.ao ], [ %.pn442.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ], [ %i.ke, %bb.as ], [ %.pn.ph.i.i.i, %bb.bm ], [ %.pn.ph.i.i.i, %bb.bl ], [ %i.ii, %bb.ac ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ii, %bb.ad ], [ %.pn.i2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit49.i ], [ %.pn.i2, %bb.in ], [ %lpad.loopexit.split-lp2362, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscf0te1RqI9v_18codespan_reporting10diagnostic10DiagnosticNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(104) %.sink.i) #62, !noalias !35965
  %.val85.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !35966, !noalias !35960, !noundef !28 ; 2 uses
  %i.cl = icmp eq i64 %.val85.i, 0
  br i1 %i.cl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscf0te1RqI9v_18codespan_reporting4term6config6ConfigECs9fPPV5zPXBl_5typst.exit.i, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val86.i = load ptr, ptr %i.cm, align 8, !noalias !35960, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val86.i, i64 noundef %.val85.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !35967
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscf0te1RqI9v_18codespan_reporting4term6config6ConfigECs9fPPV5zPXBl_5typst.exit.i

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %.sroa.555.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.6.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bb, i64 64 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.55.sroa.4.0..sroa.57.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.55.sroa.6.0..sroa.57.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %.sroa.55.sroa.7.0..sroa.57.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 42
  %.sroa.4.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.6.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.4.0..sroa_idx.i.i111.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i112.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i113.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i114.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bd, i64 40 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.587.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.814.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.5122.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ab, i64 82
  %i.eb = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5232.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.4234.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 12 uses
  %.sroa.5235.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 12 uses
  %.sroa.5259.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.534.0..sroa_idx.i483.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.552.0..sroa_idx.i490.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.534.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.552.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bd, i64 96 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bd, i64 72 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bd, i64 80 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bd, i64 88 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.4170.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 3 uses
  %.sroa.5171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %.sroa.6172.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %.sroa.3324.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.eo = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bd, i64 64 ; 2 uses
  %.sroa.5335.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bd, i64 56 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.552.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %bb.g
  %.sroa.7.0.i = phi ptr [ %5, %bb.g ], [ %.sroa.7.1.ph.i, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %3, %bb.g ], [ %.sroa.0.2.ph.i, %.critedge.i ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i, null
  %i.fc = icmp eq ptr %.sroa.0.0.i, %i.bm
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 72
  %or.cond = select i1 %.not.i.i.i, i1 true, i1 %i.fc
  br i1 %or.cond, label %select.unfold.i.i, label %bb.j

select.unfold.i.i:                                ; preds = %bb.h
  %i.fe = icmp eq ptr %.sroa.7.0.i, %i.bn
  br i1 %i.fe, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i, label %bb.i

bb.i:                                             ; preds = %select.unfold.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 72
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.7.1.ph.i = phi ptr [ %.sroa.7.0.i, %bb.h ], [ %i.ff, %bb.i ]
  %.sroa.0.2.ph.i = phi ptr [ %i.fd, %bb.h ], [ null, %bb.i ]
  %.sroa.0.0.i2.i.ph.i = phi ptr [ %.sroa.0.0.i, %bb.h ], [ %.sroa.7.0.i, %bb.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !35960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !35960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !35960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !35960
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph.i, i64 64
  %i.fh = load i8, ptr %i.fg, align 8, !range !53, !noalias !35965, !noundef !28
  %spec.select.i = add nuw nsw i8 %i.fh, 1
  store i8 %spec.select.i, ptr %i.cn, align 8, !noalias !35960
  store i64 -1, ptr %i.co, align 8, !noalias !35960
  store i64 0, ptr %i.ba, align 8, !noalias !35960
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !35960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !35960
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !35960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !35960
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !35960
  store i64 0, ptr %.sroa.538.0..sroa_idx.i, align 8, !noalias !35960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !35960
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph.i, i64 48
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph.i, i64 63
  %i.fk = load i8, ptr %i.fj, align 1, !noalias !35965, !noundef !28
  %.not72.i = icmp sgt i8 %i.fk, -1
  %i.fl = getelementptr i8, ptr %.sroa.0.0.i2.i.ph.i, i64 56
  %.val.i = load ptr, ptr %i.fi, align 8, !noalias !35965 ; 5 uses
  %.val80.i = load i64, ptr %i.fl, align 8, !noalias !35965 ; 4 uses
  br i1 %.not72.i, label %8, label %bb.u

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i: ; preds = %select.unfold.i.i
  store i64 -1, ptr %0, align 8, !alias.scope !35959
  %.val83.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !35966, !noalias !35960, !noundef !28 ; 2 uses
  %i.fm = icmp eq i64 %.val83.i, 0
  br i1 %i.fm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscf0te1RqI9v_18codespan_reporting4term6config6ConfigECs9fPPV5zPXBl_5typst.exit89.i, label %bb.k

bb.k:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val84.i = load ptr, ptr %i.fn, align 8, !noalias !35960, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val84.i, i64 noundef %.val83.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !35968
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscf0te1RqI9v_18codespan_reporting4term6config6ConfigECs9fPPV5zPXBl_5typst.exit89.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscf0te1RqI9v_18codespan_reporting4term6config6ConfigECs9fPPV5zPXBl_5typst.exit89.i: ; preds = %bb.k, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEBZ_ENtNtNtB8_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !35960
  call void @llvm.experimental.noalias.scope.decl(metadata !35969)
  call void @llvm.experimental.noalias.scope.decl(metadata !35970)
  call void @llvm.experimental.noalias.scope.decl(metadata !35971)
  call void @llvm.experimental.noalias.scope.decl(metadata !35972)
  call void @llvm.experimental.noalias.scope.decl(metadata !35973)
  call void @llvm.experimental.noalias.scope.decl(metadata !35974)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !35975, !noalias !35960, !noundef !28 ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtBT_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB1C_EECs9fPPV5zPXBl_5typst.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscf0te1RqI9v_18codespan_reporting4term6config6ConfigECs9fPPV5zPXBl_5typst.exit89.i
  call void @llvm.experimental.noalias.scope.decl(metadata !35976)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !35977, !noalias !35960, !noundef !28 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fu = load ptr, ptr %i.bz, align 8, !alias.scope !35977, !noalias !35960, !nonnull !28, !noundef !28 ; 3 uses
  %.val13.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fu, align 16, !noalias !35978
  %i.fv = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fx = bitcast <16 x i1> %i.fv to i16
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i, %bb.m
  %.sroa.05.016.i.i.i.i.i.i.i.i = phi ptr [ %i.fu, %bb.m ], [ %.sroa.05.1.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i.i.i = phi ptr [ %i.fw, %bb.m ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i.i.i.i = phi i16 [ %i.fx, %bb.m ], [ %i.gg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i.i.i.i = phi i64 [ %i.fs, %bb.m ], [ %i.gj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBZ_6source6SourceEE9next_implKb0_ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fy = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %i.fz = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i.i.i.i, %bb.n ]
  %.val79.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fy, align 16, !noalias !35979
  %i.ga = icmp sgt <16 x i8> %.val79.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 -256 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ga to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBZ_6source6SourceEE9next_implKb0_ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBZ_6source6SourceEE9next_implKb0_ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.n
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i.i.i.i, %bb.n ], [ %i.gc, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i.i.i.i, %bb.n ], [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i.i.i.i, %bb.n ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gd = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.ge = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.gf = zext nneg i16 %i.ge to i64
  %i.gg = and i16 %i.gd, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.gh = sub nsw i64 0, %i.gf
  %i.gi = getelementptr inbounds [16 x i8], ptr %.sroa.05.1.i.i.i.i.i.i.i.i, i64 %i.gh
  %i.gj = add i64 %.sroa.107.013.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35980)
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 -8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35981)
  call void @llvm.experimental.noalias.scope.decl(metadata !35982)
  call void @llvm.experimental.noalias.scope.decl(metadata !35983)
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !35984, !noalias !35985, !nonnull !28, !noundef !28
  %i.gm = atomicrmw add ptr %i.gl, i64 -1 release, align 8, !noalias !35986
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBZ_6source6SourceEE9next_implKb0_ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gk) #63, !noalias !35985
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBZ_6source6SourceEE9next_implKb0_ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i
  %i.go = icmp eq i64 %i.gj, 0
  br i1 %i.go, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i, label %bb.n

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtBG_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i, %bb.l
  %i.gp = shl i64 %i.fp, 4                        ; 2 uses
  %i.gq = add i64 %i.gp, 16                       ; 2 uses
  %i.gr = add i64 %i.fp, 17
  %i.gs = add i64 %i.gr, %i.gq                    ; 4 uses
  %i.gt = icmp uge i64 %i.gs, %i.gq
  %i.gu = icmp ult i64 %i.gs, 9223372036854775793
  call void @llvm.assume(i1 %i.gt)
  call void @llvm.assume(i1 %i.gu)
  %i.gv = icmp eq i64 %i.gs, 0
  br i1 %i.gv, label %_RINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtBT_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB1C_EECs9fPPV5zPXBl_5typst.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesECs9fPPV5zPXBl_5typst.exit163.sink.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit11diagnostics10WorldFilesECs9fPPV5zPXBl_5typst.exit163.sink.split.i: ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i158.i, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i
  %.sink1627.i = phi i64 [ %i.ahr, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i158.i ], [ %i.gp, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i ]
  %.sink1624.i = phi i64 [ %i.ahu, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i158.i ], [ %i.gs, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdNtNtB1e_6source6SourceEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i ]
  %i.gw = load ptr, ptr %i.bz, align 8, !noalias !35960, !nonnull !28, !noundef !28
  %i.gx = sub nuw nsw i64 -16, %.sink1627.i
  %i.gy = getelementptr inbounds i8, ptr %i.gw, i64 %i.gx
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %.sink1624.i, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !35965
  br label %_RINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtBT_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB1C_EECs9fPPV5zPXBl_5typst.exit

8:                                                ; preds = %bb.j
  %.not.i.i90.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i90.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %8
  %i.gz = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.ha = atomicrmw add ptr %i.gz, i64 1 monotonic, align 8, !noalias !35965
  %i.hb = icmp slt i64 %i.ha, 0
  br i1 %i.hb, label %bb.q, label %bb.u, !prof !38

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val.i) #61
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.v
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.053.0.i) ], !noalias !35987
  %.not.i.i.i.i.i1.i.i.i = icmp eq ptr %.sroa.053.0.i, inttoptr (i64 16 to ptr)
  %i.hd = getelementptr inbounds i8, ptr %.sroa.053.0.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i1.i.i.i, label %.body.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.he = atomicrmw add ptr %i.hd, i64 -1 release, align 8, !noalias !35988
  %.not.i.i.i.i2.i.i.i = icmp eq i64 %i.he, 1
  br i1 %.not.i.i.i.i2.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i, label %.body.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i
  fence acquire, !noalias !35987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !35989
  %i.hf = getelementptr i8, ptr %.sroa.053.0.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.hf, align 8, !noalias !35988, !noundef !28 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i, label %bb.t, !prof !43

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #61
          to label %.noexc.i.i.i unwind label %bb.aa, !noalias !35990

.noexc.i.i.i:                                     ; preds = %bb.t
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i
  %i.hg = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.hd, ptr %i.hh, align 8, !noalias !35989
  store i64 8, ptr %i.as, align 8, !noalias !35989
  %i.hi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.hg, ptr %i.hi, align 8, !noalias !35989
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.noexc3.i.i.i unwind label %bb.aa, !noalias !35990

.noexc3.i.i.i:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !35989
  br label %.body.i

bb.u:                                             ; preds = %bb.j, %bb.p, %8
  %.sroa.053.0.i = phi ptr [ inttoptr (i64 16 to ptr), %8 ], [ %.val.i, %bb.p ], [ %.val.i, %bb.j ] ; 10 uses
  store ptr %.sroa.053.0.i, ptr %i.az, align 8, !noalias !35960
  store i64 %.val80.i, ptr %.sroa.555.0..sroa_idx56.i, align 8, !noalias !35960
  call void @llvm.experimental.noalias.scope.decl(metadata !35991)
  call void @llvm.experimental.noalias.scope.decl(metadata !35992)
  %i.hj = lshr i64 %.val80.i, 56
  %.not.i.i.i.i.i = icmp sgt i64 %.val80.i, -1    ; 4 uses
  %i.hk = and i64 %i.hj, 127
  %.sroa.3.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %.val80.i, i64 %i.hk ; 6 uses
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %.sroa.053.0.i, ptr %i.az
  %i.hl = icmp eq i64 %.sroa.3.0.i.i.i.i.i, 0
  br i1 %i.hl, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread11.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.u
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !35993
  %i.hm = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.sroa.3.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !35993 ; 3 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.3.0.i.i.i.i.i) #61
          to label %bb.z unwind label %bb.r, !noalias !35994

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread11.i.i.i.i: ; preds = %bb.y, %bb.u
  %i.ho = phi ptr [ %i.hm, %bb.y ], [ inttoptr (i64 1 to ptr), %bb.u ]
  br i1 %.not.i.i.i.i.i, label %bb.w, label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst.exit.i.i

bb.w:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread11.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.053.0.i) ]
  %.not.i.i.i.i.i.i.i.i91.i = icmp eq ptr %.sroa.053.0.i, inttoptr (i64 16 to ptr)
  %i.hp = getelementptr inbounds i8, ptr %.sroa.053.0.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i91.i, label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.hq = atomicrmw add ptr %i.hp, i64 -1 release, align 8, !noalias !35995
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hq, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !35996
  %i.hr = getelementptr i8, ptr %.sroa.053.0.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hr, align 8, !noalias !35995, !noundef !28 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i, label %bb.x, !prof !43

bb.x:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #61
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35997

.noexc.i.i:                                       ; preds = %bb.x
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i
  %i.hs = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i, 16
  store ptr %i.hp, ptr %i.cp, align 8, !noalias !35996
  store i64 8, ptr %i.at, align 8, !noalias !35996
  store i64 %i.hs, ptr %i.cq, align 8, !noalias !35996
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35997

.noexc2.i.i:                                      ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !35996
  br label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst.exit.i.i

bb.y:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hm, ptr nonnull align 1 %.sroa.0.0.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i, i1 false), !noalias !35998
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread11.i.i.i.i

bb.z:                                             ; preds = %bb.v
  unreachable

bb.aa:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i, %bb.t
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !35994
  unreachable

_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %.noexc2.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i, %bb.w, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread11.i.i.i.i
  store i64 %.sroa.3.0.i.i.i.i.i, ptr %i.ba, align 8, !alias.scope !35992, !noalias !35960
  store ptr %i.ho, ptr %.sroa.443.0..sroa_idx.i, align 8, !alias.scope !35992, !noalias !35960
  store i64 %.sroa.3.0.i.i.i.i.i, ptr %.sroa.544.0..sroa_idx.i, align 8, !alias.scope !35992, !noalias !35960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bb, ptr noundef nonnull align 8 dereferenceable(104) %i.ba, i64 104, i1 false), !alias.scope !35999, !noalias !35960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !35960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !35960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !35960
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph.i, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !35965, !nonnull !28, !noundef !28 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph.i, i64 40 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !35965, !noundef !28 ; 2 uses
  %.idx = shl nuw nsw i64 %i.hx, 5
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36000)
  call void @llvm.experimental.noalias.scope.decl(metadata !36001)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !36002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !36002
  %i.hz = icmp eq i64 %i.hx, 0
  br i1 %i.hz, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.thread.i, label %.lr.ph

bb.ab:                                            ; preds = %.lr.ph
  %i.ia = icmp eq ptr %i.ic, %i.hy
  br i1 %i.ia, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst.exit.i.i, %bb.ab
  %i.ib = phi ptr [ %i.ic, %bb.ab ], [ %i.hv, %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst.exit.i.i ] ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32 ; 3 uses
  %i.id = load i64, ptr %i.ib, align 8, !range !47, !noalias !36003, !noundef !28
  %i.ie = icmp eq i64 %i.id, 1
  br i1 %i.ie, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1L_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitINtNtB7_5chain5ChainIB1j_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB4u_EE0ENCB3p_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.ab

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1L_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitINtNtB7_5chain5ChainIB1j_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB4u_EE0ENCB3p_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %.lr.ph
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !36004
  store ptr %i.if, ptr %i.ap, align 8, !noalias !36004
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36004
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @367, ptr noundef nonnull %i.ap)
          to label %.noexc97.i unwind label %bb.ao, !noalias !35965

.noexc97.i:                                       ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1L_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitINtNtB7_5chain5ChainIB1j_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB4u_EE0ENCB3p_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !36004
  %.pr.i.i.i = load i64, ptr %i.aq, align 8, !noalias !36002 ; 4 uses
  %.not.i.i92.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i92.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.thread.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i93.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.thread.i: ; preds = %bb.ab, %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtB5_4IntoNtNtCs1xwejQucwHj_5alloc6string6StringE4intoCs9fPPV5zPXBl_5typst.exit.i.i, %.noexc97.i
  store i64 0, ptr %i.ay, align 8, !alias.scope !36005, !noalias !35960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !36002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !36002
  %i.ig = load i64, ptr %i.cu, align 8, !alias.scope !36006, !noalias !35960, !noundef !28 ; 2 uses
  %i.ih = icmp ult i64 %i.ig, 384307168202282326
  call void @llvm.assume(i1 %i.ih)
  br label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i

bb.ac:                                            ; preds = %bb.ae
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ij = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.ij, label %.body.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0.copyload.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !36007
  br label %.body.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i93.i: ; preds = %.noexc97.i
  %.sroa.511.0.copyload.i.i.i = load ptr, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !36002 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx14.i.i.i, align 8, !noalias !36002
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !36008
  %i.ik = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 17) 8) #56, !noalias !36008 ; 6 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i93.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #61
          to label %.noexc.i.i96.i unwind label %bb.ac, !noalias !36009

.noexc.i.i96.i:                                   ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i93.i
  store i64 %.pr.i.i.i, ptr %i.ik, align 8, !noalias !36009
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %.sroa.511.0.copyload.i.i.i, ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !36009
  %.sroa.521.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.521.0..sroa_idx.i.i.i, align 8, !noalias !36009
  store i64 4, ptr %i.ar, align 8, !noalias !36002
  store ptr %i.ik, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !36002
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !36002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !36002
  call void @llvm.experimental.noalias.scope.decl(metadata !36010)
  call void @llvm.experimental.noalias.scope.decl(metadata !36011)
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, %bb.af
  %i.im = phi ptr [ %i.ik, %bb.af ], [ %i.ix, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ]
  %i.in = phi i64 [ 1, %bb.af ], [ %i.iz, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i.i.i.i94.i = phi ptr [ %i.ic, %bb.af ], [ %i.iq, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !36012
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.io = phi ptr [ %i.iq, %bb.ai ], [ %.sroa.0.0.i.i.i.i94.i, %bb.ag ] ; 4 uses
  %i.ip = icmp eq ptr %i.io, %i.hy
  br i1 %i.ip, label %.loopexit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 32 ; 2 uses
  %i.ir = load i64, ptr %i.io, align 8, !range !47, !noalias !36013, !noundef !28
  %i.is = icmp eq i64 %i.ir, 1
  br i1 %i.is, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1L_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitINtNtB7_5chain5ChainIB1j_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB4u_EE0ENCB3p_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %bb.ah

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1L_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitINtNtB7_5chain5ChainIB1j_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB4u_EE0ENCB3p_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %bb.ai
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !36014
  store ptr %i.it, ptr %i.an, align 8, !noalias !36014
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !36014
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noundef nonnull @367, ptr noundef nonnull %i.an)
          to label %.noexc7.i.i.i unwind label %bb.an, !noalias !36009

.noexc7.i.i.i:                                    ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB1L_8DiagSpanEENCINvNtCsc4241EHy6Do_9typst_kit11diagnostics4emitINtNtB7_5chain5ChainIB1j_NtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEB4u_EE0ENCB3p_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !36014
  %.pr.i.i.i.i.i = load i64, ptr %i.ao, align 8, !noalias !36012 ; 4 uses
  %.not.i.i6.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, -1
  br i1 %.not.i.i6.i.i.i, label %.loopexit.i, label %bb.aj

bb.aj:                                            ; preds = %.noexc7.i.i.i
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36012 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36012
  %i.iu = icmp samesign ult i64 %i.in, 384307168202282326
  call void @llvm.assume(i1 %i.iu)
  %i.iv = load i64, ptr %i.ar, align 8, !range !37, !alias.scope !36015, !noalias !36002, !noundef !28
  %i.iw = icmp eq i64 %i.in, %i.iv
  br i1 %i.iw, label %bb.am, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i.i, %bb.aj
  %i.ix = phi ptr [ %.pre.i.i95.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i.i ], [ %i.im, %bb.aj ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.ix, i64 %i.in ; 3 uses
  store i64 %.pr.i.i.i.i.i, ptr %i.iy, align 8, !noalias !36016
  %.sroa.413.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.413.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36016
  %.sroa.514.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36016
  %i.iz = add nuw nsw i64 %i.in, 1                ; 2 uses
  store i64 %i.iz, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !36015, !noalias !36002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !36012
  br label %bb.ag

bb.ak:                                            ; preds = %bb.am
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.jb, label %.body.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !36017
  br label %.body.i.i.i

bb.am:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef %i.in, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9fPPV5zPXBl_5typst.exit.i.i_crit_edge.i.i.i unwind label %bb.ak, !noalias !36009

end_hunk_2
begin_hunk_3_@_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENvMB11_e4trimENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst:bb.a
  br i1 %i.c, label %_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !38095, !nonnull !28, !noundef !28 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !38095, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38096)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !38097, !noundef !28 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.h, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !38097 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i.i.i
  %or.cond27.i.i.i = or i1 %.not.i.i.i, %i.i
  br i1 %or.cond27.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !38097, !noundef !28 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.pre.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !38097 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i
  %i.q = phi i64 [ %i.ae, %bb.e ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  %i.r = sub nuw i64 %i.h, %i.q                   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.q ; 2 uses
  %i.t = icmp samesign ult i64 %i.r, 16
  br i1 %i.t, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.h, %i.q
  br i1 %.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.u = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !38098 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %.loopexit.i.i.i, label %.loopexit15.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.04.011.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !38099, !noalias !38098, !noundef !28
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.r
  br i1 %exitcond.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ac = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.r
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i64 %i.q, 1
  %i.ae = add i64 %i.ad, %.sroa.5.0.i.i.i.i       ; 7 uses
  store i64 %i.ae, ptr %i.f, align 8, !alias.scope !38097
  %.not11.i.i.i = icmp ult i64 %i.ae, %i.m
  %.not12.i.i.i = icmp ugt i64 %i.ae, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i:                                ; preds = %bb.c, %.preheader.i.i.i.i, %bb.d
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !38097
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i
  %i.af = icmp ult i64 %i.h, %i.ae
  br i1 %i.af, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.split.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.ag = sub nuw i64 %i.ae, %i.m                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ag
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.j, i64 %i.m), !noalias !38100
  %i.ai = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ai, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.e

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.f
  %i.aj = load i64, ptr %0, align 8, !alias.scope !38095, !noundef !28 ; 2 uses
  %i.ak = sub nuw i64 %i.ag, %i.aj
  store i64 %i.ae, ptr %0, align 8, !alias.scope !38095
  br label %select.unfold

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.e, %.loopexit15.i.i.i, %bb.b
  store i8 1, ptr %i.a, align 1, !alias.scope !38101
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load i8, ptr %i.al, align 8, !range !53, !alias.scope !38101, !noundef !28
  %i.an = trunc nuw i8 %i.am to i1
  %.pre.i2.i.i = load i64, ptr %0, align 8, !alias.scope !38101 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !38101 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.an, i1 true, i1 %.not.i3.i.i
  %i.ao = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread

select.unfold:                                    ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.ak, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.ao, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i ]
  %.pn = phi i64 [ %i.aj, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  %i.ap = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i, i64 noundef %.sroa.4.1.i.i) ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  br label %_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread

_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread: ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i, %bb.a, %select.unfold
  %.sroa.3.0 = phi i64 [ %i.ar, %select.unfold ], [ undef, %bb.a ], [ undef, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i ]
  %.sroa.0.0 = phi ptr [ %i.aq, %select.unfold ], [ null, %bb.a ], [ null, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i ]
  %i.as = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.at
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs16_NtCsdaEETE4DqmE_13typst_library4diagNtB6_9FileErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %1, align 8, !range !96, !noundef !28 ; 5 uses
  %i.d = icmp ne i32 %i.c, 11
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add nsw i32 %i.c, -5
  %i.f = icmp samesign ugt i32 %i.c, 4
  %narrow = select i1 %i.f, i32 %i.e, i32 6
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.an
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val49 = load i64, ptr %i.h, align 8, !noundef !28 ; 6 uses
  %i.i = icmp eq i64 %.val49, 0
  br i1 %i.i, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !38118
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val49, i64 noundef range(i64 1, 17) 1) #56, !noalias !38118 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val49) #61, !noalias !38119
  unreachable

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val49, i1 false), !noalias !38120
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.c, %bb.e
  %.sroa.5.0 = phi ptr [ %i.j, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val49, ptr %i.l, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val49, ptr %.sroa.566.0..sroa_idx, align 8
  store i32 5, ptr %0, align 8
  br label %bb.ao

bb.f:                                             ; preds = %bb.a
  store i32 6, ptr %0, align 8
  br label %bb.ao

bb.g:                                             ; preds = %bb.a
  store i32 7, ptr %0, align 8
  br label %bb.ao

bb.h:                                             ; preds = %bb.a
  store i32 8, ptr %0, align 8
  br label %bb.ao

bb.i:                                             ; preds = %bb.a
  store i32 9, ptr %0, align 8
  br label %bb.ao

bb.j:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.o = load i8, ptr %i.n, align 1, !noundef !28
  %.not48 = icmp sgt i8 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val52 = load ptr, ptr %i.m, align 8           ; 5 uses
  %.val53 = load i64, ptr %i.p, align 8
  br i1 %.not48, label %7, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38122)
  switch i32 %i.c, label %default.unreachable111.i [
    i32 0, label %bb.l
    i32 1, label %bb.t
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
  ]

default.unreachable111.i:                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38124
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !38125, !noundef !28
  %.not.i.i = icmp sgt i8 %i.s, -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val46.i.i = load ptr, ptr %i.q, align 8, !alias.scope !38125 ; 5 uses
  %.val47.i.i = load i64, ptr %i.t, align 8, !alias.scope !38125 ; 2 uses
  br i1 %.not.i.i, label %2, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i.i

2:                                                ; preds = %bb.l
  %.not.i.i.i.i = icmp eq ptr %.val46.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i.i, label %bb.m

bb.m:                                             ; preds = %2
  %i.u = getelementptr inbounds i8, ptr %.val46.i.i, i64 -16
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !38124
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.n, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i.i, !prof !38

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val46.i.i) #61
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.l, %bb.m, %2
  %.sroa.06.0.i.i = phi ptr [ %.val46.i.i, %bb.m ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val46.i.i, %bb.l ] ; 2 uses
  store ptr %.sroa.06.0.i.i, ptr %i.b, align 8, !noalias !38124
  %.sroa.58.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val47.i.i, ptr %.sroa.58.0..sroa_idx9.i.i, align 8, !noalias !38124
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !38125, !noundef !28
  %.not44.i.i = icmp sgt i8 %i.z, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = ptrtoint ptr %.sroa.06.0.i.i to i64
  %i.ac = inttoptr i64 %.val47.i.i to ptr
  %.val.i.i = load ptr, ptr %i.x, align 8, !alias.scope !38125 ; 5 uses
  %.val45.i.i = load i64, ptr %i.aa, align 8, !alias.scope !38125
  br i1 %.not44.i.i, label %bb.o, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.o:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i.i
  %.not.i.i48.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i.i, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !38124
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.q, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !prof !38

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val.i.i) #61
          to label %.noexc.i.i unwind label %bb.r

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #62
          to label %common.resume.i unwind label %bb.s, !noalias !38124

bb.s:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !38124
  unreachable

common.resume.i:                                  ; preds = %bb.z, %bb.r
  %common.resume.op.i = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.az, %bb.z ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i.i, %bb.p, %bb.o
  %.sroa.027.0.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.o ], [ %.val.i.i, %bb.p ], [ %.val.i.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.23.40.copyload = load i64, ptr %i.ai, align 8, !alias.scope !38126
  %.sroa.25.40..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load i32, ptr %.sroa.25.40..sroa_idx, align 8, !alias.scope !38126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38124
  %i.ak = ptrtoint ptr %.sroa.027.0.i.i to i64
  br label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.t:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38128
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !38129, !noundef !28
  %.not.i80.i = icmp sgt i8 %i.an, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val46.i97.i = load ptr, ptr %i.al, align 8, !alias.scope !38129 ; 5 uses
  %.val47.i98.i = load i64, ptr %i.ao, align 8, !alias.scope !38129 ; 2 uses
  br i1 %.not.i80.i, label %3, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i83.i

3:                                                ; preds = %bb.t
  %.not.i.i.i99.i = icmp eq ptr %.val46.i97.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i99.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i83.i, label %bb.u

bb.u:                                             ; preds = %3
  %i.ap = getelementptr inbounds i8, ptr %.val46.i97.i, i64 -16
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !noalias !38128
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i83.i, !prof !38

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val46.i97.i) #61
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i83.i: ; preds = %bb.t, %bb.u, %3
  %.sroa.06.0.i85.i = phi ptr [ %.val46.i97.i, %bb.u ], [ inttoptr (i64 16 to ptr), %3 ], [ %.val46.i97.i, %bb.t ] ; 2 uses
  store ptr %.sroa.06.0.i85.i, ptr %i.a, align 8, !noalias !38128
  %.sroa.58.0..sroa_idx9.i86.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val47.i98.i, ptr %.sroa.58.0..sroa_idx9.i86.i, align 8, !noalias !38128
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !38129, !noundef !28
  %.not44.i87.i = icmp sgt i8 %i.au, -1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i93.i = load ptr, ptr %i.as, align 8, !alias.scope !38129 ; 5 uses
  %.val45.i94.i = load i64, ptr %i.av, align 8, !alias.scope !38129
  br i1 %.not44.i87.i, label %bb.w, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i

bb.w:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i83.i
  %.not.i.i48.i95.i = icmp eq ptr %.val.i93.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i95.i, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds i8, ptr %.val.i93.i, i64 -16
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8, !noalias !38128
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.y, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i, !prof !38

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val.i93.i) #61
          to label %.noexc.i96.i unwind label %bb.z

.noexc.i96.i:                                     ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #62
          to label %common.resume.i unwind label %bb.aa, !noalias !38128

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !38128
  unreachable

_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i83.i, %bb.x, %bb.w
  %.sroa.027.0.i90.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.w ], [ %.val.i93.i, %bb.x ], [ %.val.i93.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit.i83.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.25.sroa.0.0.copyload68 = load i32, ptr %i.bb, align 8, !alias.scope !38126
  %.sroa.25.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.25.sroa.5.0.copyload69 = load i64, ptr %.sroa.25.sroa.5.0..sroa_idx, align 4, !alias.scope !38126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38128
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.8.4.copyload = load i32, ptr %i.bc, align 4, !alias.scope !38126
  %.sroa.9.4..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.4.copyload = load i64, ptr %.sroa.9.4..sroa_idx, align 8, !alias.scope !38126
  %i.bd = ptrtoint ptr %.sroa.027.0.i90.i to i64
  br label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ab:                                            ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !33, !alias.scope !38122, !noundef !28
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.ae, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !33, !alias.scope !38122, !noundef !28
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.ah, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !33, !alias.scope !38122, !noundef !28
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.ak, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ae:                                            ; preds = %bb.ab
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !38122, !noundef !28
  %.not74.i = icmp sgt i8 %i.bp, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val78.i = load ptr, ptr %i.bn, align 8, !alias.scope !38122 ; 5 uses
  %.val79.i = load i64, ptr %i.bq, align 8, !alias.scope !38122 ; 3 uses
  br i1 %.not74.i, label %4, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

4:                                                ; preds = %bb.ae
  %.not.i.i.i = icmp eq ptr %.val78.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, label %bb.af

bb.af:                                            ; preds = %4
  %i.br = getelementptr inbounds i8, ptr %.val78.i, i64 -16
  %i.bs = atomicrmw add ptr %i.br, i64 1 monotonic, align 8, !noalias !38126
  %i.bt = icmp slt i64 %i.bs, 0
  br i1 %i.bt, label %bb.ag, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !prof !38

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val78.i) #61
  unreachable

bb.ah:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !38122, !noundef !28
  %.not73.i = icmp sgt i8 %i.bw, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val76.i = load ptr, ptr %i.bu, align 8, !alias.scope !38122 ; 5 uses
  %.val77.i = load i64, ptr %i.bx, align 8, !alias.scope !38122 ; 3 uses
  br i1 %.not73.i, label %5, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

5:                                                ; preds = %bb.ah
  %.not.i.i101.i = icmp eq ptr %.val76.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i101.i, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, label %bb.ai

bb.ai:                                            ; preds = %5
  %i.by = getelementptr inbounds i8, ptr %.val76.i, i64 -16
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8, !noalias !38126
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.aj, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !prof !38

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val76.i) #61
  unreachable

bb.ak:                                            ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !38122, !noundef !28
  %.not.i = icmp sgt i8 %i.cd, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.cb, align 8, !alias.scope !38122 ; 5 uses
  %.val75.i = load i64, ptr %i.ce, align 8, !alias.scope !38122 ; 3 uses
  br i1 %.not.i, label %6, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

6:                                                ; preds = %bb.ak
  %.not.i.i103.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i103.i, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, label %bb.al

bb.al:                                            ; preds = %6
  %i.cf = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.cg = atomicrmw add ptr %i.cf, i64 1 monotonic, align 8, !noalias !38126
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.am, label %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !prof !38

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val.i) #61
  unreachable

_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.ak, %bb.ah, %bb.ae, %bb.ad, %6, %bb.al, %bb.ac, %5, %bb.ai, %bb.ab, %4, %bb.af, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i
  %.sroa.25.sroa.5.0 = phi i64 [ undef, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.sroa.25.sroa.5.0.copyload69, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i ], [ undef, %4 ], [ undef, %bb.af ], [ undef, %bb.ad ], [ undef, %bb.ab ], [ undef, %5 ], [ undef, %bb.ai ], [ undef, %bb.ae ], [ undef, %bb.ac ], [ undef, %6 ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  %.sroa.25.sroa.0.0 = phi i32 [ %i.aj, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.sroa.25.sroa.0.0.copyload68, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i ], [ undef, %4 ], [ undef, %bb.af ], [ undef, %bb.ad ], [ undef, %bb.ab ], [ undef, %5 ], [ undef, %bb.ai ], [ undef, %bb.ae ], [ undef, %bb.ac ], [ undef, %6 ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  %.sroa.23.0 = phi i64 [ %.sroa.23.40.copyload, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.val45.i94.i, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i ], [ undef, %4 ], [ undef, %bb.af ], [ undef, %bb.ad ], [ undef, %bb.ab ], [ undef, %5 ], [ undef, %bb.ai ], [ undef, %bb.ae ], [ undef, %bb.ac ], [ undef, %6 ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  %.sroa.21.0 = phi i64 [ %.val45.i.i, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.bd, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i ], [ undef, %4 ], [ undef, %bb.af ], [ undef, %bb.ad ], [ undef, %bb.ab ], [ undef, %5 ], [ undef, %bb.ai ], [ undef, %bb.ae ], [ undef, %bb.ac ], [ undef, %6 ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  %.sroa.17.0 = phi i64 [ %i.ak, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.val47.i98.i, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i ], [ %.val79.i, %4 ], [ %.val79.i, %bb.af ], [ undef, %bb.ad ], [ undef, %bb.ab ], [ %.val77.i, %5 ], [ %.val77.i, %bb.ai ], [ %.val79.i, %bb.ae ], [ undef, %bb.ac ], [ %.val75.i, %6 ], [ %.val75.i, %bb.al ], [ %.val77.i, %bb.ah ], [ %.val75.i, %bb.ak ]
  %.sroa.13.0 = phi ptr [ %i.ac, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.sroa.06.0.i85.i, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val78.i, %bb.af ], [ undef, %bb.ad ], [ undef, %bb.ab ], [ inttoptr (i64 16 to ptr), %5 ], [ %.val76.i, %bb.ai ], [ %.val78.i, %bb.ae ], [ undef, %bb.ac ], [ inttoptr (i64 16 to ptr), %6 ], [ %.val.i, %bb.al ], [ %.val76.i, %bb.ah ], [ %.val.i, %bb.ak ]
  %.sroa.9.0 = phi i64 [ %i.ab, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.sroa.9.4.copyload, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i ], [ 1, %4 ], [ 1, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ 1, %5 ], [ 1, %bb.ai ], [ 1, %bb.ae ], [ 0, %bb.ac ], [ 1, %6 ], [ 1, %bb.al ], [ 1, %bb.ah ], [ 1, %bb.ak ]
  %.sroa.8.0 = phi i32 [ undef, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.sroa.8.4.copyload, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit100.i ], [ undef, %4 ], [ undef, %bb.af ], [ undef, %bb.ad ], [ undef, %bb.ab ], [ undef, %5 ], [ undef, %bb.ai ], [ undef, %bb.ae ], [ undef, %bb.ac ], [ undef, %6 ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  store i32 %i.c, ptr %0, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.21.0, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.23.0, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.25.sroa.0.0, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.25.sroa.5.0..sroa.25.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i64 %.sroa.25.sroa.5.0, ptr %.sroa.25.sroa.5.0..sroa.25.0..sroa_idx.sroa_idx, align 4
  br label %bb.ao

bb.an:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !range !33, !noundef !28
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.ar, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit56

bb.ao:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit56, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, %_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit
  ret void

7:                                                ; preds = %bb.j
  %.not.i.i54 = icmp eq ptr %.val52, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i54, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %bb.ap

bb.ap:                                            ; preds = %7
  %i.cl = getelementptr inbounds i8, ptr %.val52, i64 -16
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.aq, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, !prof !38

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val52) #61
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.j, %bb.ap, %7
  %.sroa.031.0 = phi ptr [ %.val52, %bb.ap ], [ inttoptr (i64 16 to ptr), %7 ], [ %.val52, %bb.j ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.031.0, ptr %i.co, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val53, ptr %.sroa.439.0..sroa_idx, align 8
  store i32 10, ptr %0, align 8
  br label %bb.ao

bb.ar:                                            ; preds = %bb.an
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !28
  %.not = icmp sgt i8 %i.cr, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val50 = load ptr, ptr %i.cp, align 8          ; 5 uses
  %.val51 = load i64, ptr %i.cs, align 8          ; 3 uses
  br i1 %.not, label %8, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit56

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit56: ; preds = %bb.ar, %bb.as, %8, %bb.an
  %.sroa.5.sroa.4.0 = phi i64 [ undef, %bb.an ], [ %.val51, %bb.as ], [ %.val51, %8 ], [ %.val51, %bb.ar ]
  %.sroa.5.sroa.0.0 = phi ptr [ undef, %bb.an ], [ %.val50, %bb.as ], [ inttoptr (i64 16 to ptr), %8 ], [ %.val50, %bb.ar ]
  %.sroa.0.0 = phi i64 [ 0, %bb.an ], [ 1, %bb.as ], [ 1, %8 ], [ 1, %bb.ar ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.ct, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store i32 12, ptr %0, align 8
  br label %bb.ao

8:                                                ; preds = %bb.ar
  %.not.i.i55 = icmp eq ptr %.val50, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i55, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit56, label %bb.as

bb.as:                                            ; preds = %8
  %i.cu = getelementptr inbounds i8, ptr %.val50, i64 -16
  %i.cv = atomicrmw add ptr %i.cu, i64 1 monotonic, align 8
  %i.cw = icmp slt i64 %i.cv, 0
  br i1 %i.cw, label %bb.at, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit56, !prof !38

bb.at:                                            ; preds = %bb.as
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val50) #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs18_NtCs9fPPV5zPXBl_5typst4argsNtB6_11CompileArgsNtNtCsj1PC5XHMKi0_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(400) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [104 x i8], align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [104 x i8], align 8               ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 6 uses
  %i.m = alloca [128 x i8], align 8               ; 8 uses
  %i.n = alloca [104 x i8], align 8               ; 13 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [96 x i8], align 8                ; 6 uses
  %i.q = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.10.i456.sroa.6 = alloca [15 x i8], align 1 ; 9 uses
  %.sroa.12.i457 = alloca [56 x i8], align 8      ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 9 uses
  %i.z = alloca [16 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [16 x i8], align 16              ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 16              ; 4 uses
  %i.af = alloca [104 x i8], align 8              ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [104 x i8], align 8              ; 5 uses
  %i.ai = alloca [16 x i8], align 16              ; 5 uses
  %i.aj = alloca [128 x i8], align 8              ; 8 uses
  %i.ak = alloca [104 x i8], align 8              ; 13 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [96 x i8], align 8               ; 6 uses
  %i.an = alloca [104 x i8], align 8              ; 9 uses
  %.sroa.12.i363 = alloca [56 x i8], align 8      ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %i.ap = alloca [40 x i8], align 8               ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 6 uses
  %i.av = alloca [112 x i8], align 8              ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 10 uses
  %i.ax = alloca [32 x i8], align 8               ; 6 uses
  %i.ay = alloca [40 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [32 x i8], align 8               ; 4 uses
  %i.bb = alloca [32 x i8], align 8               ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.7.i.i.i = alloca [7 x i8], align 1       ; 4 uses
  %i.bd = alloca [32 x i8], align 8               ; 4 uses
  %i.be = alloca [32 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [112 x i8], align 8              ; 6 uses
  %.sroa.0.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.7.i = alloca [7 x i8], align 1           ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 10 uses
  %i.bi = alloca [32 x i8], align 8               ; 6 uses
  %i.bj = alloca [40 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  %i.bl = alloca [16 x i8], align 16              ; 4 uses
  %i.bm = alloca [104 x i8], align 8              ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [104 x i8], align 8              ; 5 uses
  %i.bp = alloca [16 x i8], align 16              ; 6 uses
  %i.bq = alloca [128 x i8], align 8              ; 8 uses
  %i.br = alloca [104 x i8], align 8              ; 12 uses
  %i.bs = alloca [104 x i8], align 8              ; 4 uses
  %.sroa.10.i286 = alloca [16 x i8], align 8      ; 8 uses
  %.sroa.12.i287 = alloca [56 x i8], align 8      ; 6 uses
  %i.bt = alloca [104 x i8], align 8              ; 12 uses
  %i.bu = alloca [16 x i8], align 16              ; 4 uses
  %i.bv = alloca [104 x i8], align 8              ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [104 x i8], align 8              ; 5 uses
  %i.by = alloca [16 x i8], align 16              ; 6 uses
  %i.bz = alloca [128 x i8], align 8              ; 8 uses
  %i.ca = alloca [104 x i8], align 8              ; 12 uses
  %i.cb = alloca [104 x i8], align 8              ; 4 uses
  %.sroa.10.i253 = alloca [16 x i8], align 8      ; 8 uses
  %.sroa.12.i254 = alloca [56 x i8], align 8      ; 6 uses
  %i.cc = alloca [104 x i8], align 8              ; 12 uses
  %i.cd = alloca [32 x i8], align 8               ; 6 uses
  %i.ce = alloca [40 x i8], align 8               ; 4 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [32 x i8], align 8               ; 6 uses
  %i.ch = alloca [40 x i8], align 8               ; 9 uses
  %i.ci = alloca [16 x i8], align 8               ; 9 uses
  %i.cj = alloca [32 x i8], align 8               ; 7 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [16 x i8], align 16              ; 4 uses
  %i.cm = alloca [16 x i8], align 8               ; 5 uses
  %i.cn = alloca [16 x i8], align 16              ; 4 uses
  %i.co = alloca [104 x i8], align 8              ; 4 uses
  %i.cp = alloca [24 x i8], align 8               ; 6 uses
  %i.cq = alloca [104 x i8], align 8              ; 5 uses
  %i.cr = alloca [16 x i8], align 16              ; 6 uses
  %i.cs = alloca [128 x i8], align 8              ; 8 uses
  %i.ct = alloca [104 x i8], align 8              ; 13 uses
  %i.cu = alloca [32 x i8], align 8               ; 8 uses
  %i.cv = alloca [96 x i8], align 8               ; 6 uses
  %i.cw = alloca [104 x i8], align 8              ; 9 uses
  %.sroa.10.i.sroa.6 = alloca [15 x i8], align 1  ; 9 uses
  %.sroa.12.i = alloca [56 x i8], align 8         ; 6 uses
  %i.cx = alloca [32 x i8], align 8               ; 6 uses
  %i.cy = alloca [40 x i8], align 8               ; 4 uses
  %i.cz = alloca [16 x i8], align 8               ; 5 uses
  %i.da = alloca [32 x i8], align 8               ; 6 uses
  %i.db = alloca [40 x i8], align 8               ; 4 uses
  %i.dc = alloca [16 x i8], align 8               ; 5 uses
  %i.dd = alloca [40 x i8], align 8               ; 4 uses
  %i.de = alloca [40 x i8], align 8               ; 4 uses
  %.sroa.11632 = alloca [15 x i8], align 1        ; 5 uses
  %i.df = alloca [40 x i8], align 8               ; 8 uses
  %i.dg = alloca [40 x i8], align 8               ; 8 uses
  %i.dh = alloca [40 x i8], align 8               ; 6 uses
  %i.di = alloca [112 x i8], align 8              ; 7 uses
  %i.dj = alloca [120 x i8], align 8              ; 12 uses
  %i.dk = alloca [112 x i8], align 8              ; 7 uses
  %i.dl = alloca [120 x i8], align 8              ; 11 uses
  %i.dm = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.11619 = alloca [15 x i8], align 1        ; 5 uses
  %i.dn = alloca [40 x i8], align 8               ; 8 uses
  %i.do = alloca [40 x i8], align 8               ; 8 uses
  %i.dp = alloca [24 x i8], align 8               ; 4 uses
  %i.dq = alloca [24 x i8], align 8               ; 6 uses
  %i.dr = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 5 uses
  %i.ds = alloca [144 x i8], align 8              ; 7 uses
  %i.dt = alloca [144 x i8], align 8              ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call fastcc void @_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs9fPPV5zPXBl_5typst4args5InputEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.do, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @409, i64 noundef 5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  store ptr @409, ptr %i.dc, align 8, !noalias !38478
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 5, ptr %i.du, align 8, !noalias !38478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !38478
  %i.dv = load i64, ptr %i.do, align 8, !range !32, !alias.scope !38477, !noundef !28
  %.not.i = icmp eq i64 %i.dv, 2
  br i1 %.not.i, label %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args5InputEEB1S_.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.do, i64 40, i1 false), !noalias !38479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !38478
  store ptr %i.dc, ptr %i.da, align 8, !noalias !38478
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !38478
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.db, ptr %i.dw, align 8, !noalias !38478
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr @_RNvXs0_NtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !38478
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @101, ptr noundef nonnull %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #65, !noalias !38480
  unreachable

_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args5InputEEB1S_.exit: ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.dx, align 8, !alias.scope !38480 ; 17 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !38480 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !38480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !38478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %.not = icmp eq i64 %.sroa.0.0.copyload, -2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args5InputEEB1S_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  invoke fastcc void @_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs9fPPV5zPXBl_5typst4args6OutputEB1H_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dn, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @373, i64 noundef 6)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args5InputEEB1S_.exit
  %i.dy = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB3_5Error3rawReECs9fPPV5zPXBl_5typst(i8 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @820, i64 noundef 55)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_3
begin_hunk_4_@_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCs9fPPV5zPXBl_5typst4args6TargetNtB5_12SpecToString14spec_to_stringBC_:bb.a

.noexc:                                           ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !range !32, !noalias !43352, !noundef !28
  %.not.i = icmp eq i64 %i.h, 2
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !43352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43352
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !43352, !nonnull !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !43352
  %i.m = invoke noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @878, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1001) #65
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.c) #62
  br label %.body

bb.e:                                             ; preds = %bb.h, %bb.c, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @llvm.experimental.noalias.scope.decl(metadata !43353)
  call void @llvm.experimental.noalias.scope.decl(metadata !43354)
  %.val.i.i = load i64, ptr %i.e, align 8, !range !37, !alias.scope !43355, !noundef !28 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !43355, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !43355
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit

bb.g:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(80) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43352
  br i1 %i.m, label %bb.h, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9fPPV5zPXBl_5typst.exit, !prof !38

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.h
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCsaL1QbXo9JQH_3std4path7DisplayNtB5_12SpecToString14spec_to_stringCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.d, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @712, ptr %i.e, align 8
  %i.f = invoke noundef zeroext i1 @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !43360)
  call void @llvm.experimental.noalias.scope.decl(metadata !43361)
  %.val.i.i = load i64, ptr %i.c, align 8, !range !37, !alias.scope !43362, !noundef !28 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !43362, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !43362
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9fPPV5zPXBl_5typst.exit, !prof !38

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB5_12SpecToString14spec_to_stringCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.d, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @712, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !43371, !noundef !28 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.g, -1                ; 2 uses
  %i.h = and i8 %i.g, 127
  %i.i = zext nneg i8 %i.h to i64
  %i.j = load ptr, ptr %1, align 8, !alias.scope !43371, !nonnull !28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !43371
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.l, i64 %i.i
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.j, ptr %1
  %i.m = invoke noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !43372)
  call void @llvm.experimental.noalias.scope.decl(metadata !43373)
  %.val.i.i = load i64, ptr %i.c, align 8, !range !37, !alias.scope !43374, !noundef !28 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !43374, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !43374
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit

_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit: ; preds = %bb.a
  br i1 %i.m, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9fPPV5zPXBl_5typst.exit, !prof !38

bb.d:                                             ; preds = %_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #65
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !53, !noundef !28
  %i.d = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.g = load i8, ptr %i.f, align 1, !noundef !28
  %.not = icmp sgt i8 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  %.val21 = load i64, ptr %i.h, align 8
  br i1 %.not, label %2, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit

2:                                                ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %2
  %i.i = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val) #61
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.a, %bb.b, %2
  %.sroa.06.0 = phi ptr [ %.val, %bb.b ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val, %bb.a ]
  store ptr %.sroa.06.0, ptr %i.a, align 8
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val21, ptr %.sroa.58.0..sroa_idx9, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val25 = load i64, ptr %i.m, align 8           ; 3 uses
  %.not.i.i28 = icmp eq ptr %.val24, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i28, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit
  %i.n = getelementptr inbounds i8, ptr %.val24, i64 -16
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.h, !prof !38

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val24, i64 noundef %.val25) #61
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.q, %bb.g ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #62
          to label %bb.n unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.d, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val26 = load ptr, ptr %i.r, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val27 = load i64, ptr %i.s, align 8           ; 2 uses
  %.not.i.i29 = icmp eq ptr %.val26, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i29, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds i8, ptr %.val26, i64 -16
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.l, !prof !38

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECs9fPPV5zPXBl_5typst(ptr noundef nonnull %.val26, i64 noundef %.val27) #61
          to label %.noexc30 unwind label %bb.k

.noexc30:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs9fPPV5zPXBl_5typst(ptr nonnull %.val24, i64 %.val25) #62
          to label %bb.f unwind label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.c, ptr %i.x, align 8
  store <2 x i64> %i.d, ptr %0, align 8
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

bb.m:                                             ; preds = %bb.k, %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.n:                                             ; preds = %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1145, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1148, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @284, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1146, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1149, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1147)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsQ_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB5_17TryMapValueParserNtB5_19OsStringValueParserNCNvNtCs9fPPV5zPXBl_5typst4args18input_value_parser0ENtB5_16TypedValueParser9parse_refB1S_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(672) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [224 x i8], align 8               ; 41 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXsi_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserNtB5_19OsStringValueParserNtB5_16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(672) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.j = load i64, ptr %i.i, align 8, !range !55, !noundef !28 ; 7 uses
  %i.k = icmp eq i64 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 9 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx15, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  switch i64 %.sroa.3.0.copyload, label %_RNCNvNtCs9fPPV5zPXBl_5typst4args18input_value_parser0B5_.exit.thread [
    i64 0, label %bb.d
    i64 1, label %_RNvXsb_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.i
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !43416
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %i.o, align 8, !noalias !43416
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !43416
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !43416
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !43416
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !43416
  store i64 2, ptr %i.h, align 8, !noalias !43416
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store ptr null, ptr %i.p, align 8, !noalias !43416
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i64 -2, ptr %i.q, align 8, !noalias !43416
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i8 -1, ptr %i.r, align 8, !noalias !43416
  %.sroa.026.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 -1, ptr %.sroa.026.sroa.5.0..sroa_idx.i, align 4, !noalias !43416
  %.sroa.026.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i8 -1, ptr %.sroa.026.sroa.7.0..sroa_idx.i, align 8, !noalias !43416
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i16 0, ptr %.sroa.427.0..sroa_idx.i, align 4, !noalias !43416
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 134
  store i8 -1, ptr %.sroa.528.0..sroa_idx.i, align 2, !noalias !43416
  %.sroa.528.sroa.5.0..sroa.528.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 138
  store i8 -1, ptr %.sroa.528.sroa.5.0..sroa.528.0..sroa_idx.sroa_idx.i, align 2, !noalias !43416
  %.sroa.528.sroa.7.0..sroa.528.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 142
  store i8 -1, ptr %.sroa.528.sroa.7.0..sroa.528.0..sroa_idx.sroa_idx.i, align 2, !noalias !43416
  %.sroa.6.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.h, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx29.i, align 2, !noalias !43416
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  store i8 -1, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !43416
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store i8 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !43416
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 156
  store i8 -1, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i, align 4, !noalias !43416
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store i16 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !43416
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 162
  store i8 -1, ptr %.sroa.9.0..sroa_idx.i, align 2, !noalias !43416
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 166
  store i8 -1, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i, align 2, !noalias !43416
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 170
  store i8 -1, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx.i, align 2, !noalias !43416
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 174
  store i16 0, ptr %.sroa.10.0..sroa_idx.i, align 2, !noalias !43416
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store i8 -1, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !43416
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 180
  store i8 -1, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx.i, align 4, !noalias !43416
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i8 -1, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx.i, align 8, !noalias !43416
  %.sroa.1230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 188
  store i16 0, ptr %.sroa.1230.0..sroa_idx.i, align 4, !noalias !43416
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 190
  store i8 -1, ptr %.sroa.13.0..sroa_idx.i, align 2, !noalias !43416
end_hunk_4
