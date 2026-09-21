Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNvXs6_NvNtCsloFShupyl5J_6comemo5inputs4_1__INtB5_10MappedSinkKj0_RINtNtB9_10constraint10ConstraintINtB5_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEENtNtB9_5track4Sink4emitCs7tN9tvpkfrg_12typst_layout:bb.a
  %i.bs = icmp eq i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.l, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEoEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.l:                                             ; preds = %.noexc5.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEoEEE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h) #58
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEoEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.c, !noalias !50095

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEoEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.l, %.noexc5.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !50118, !noalias !50119, !nonnull !41, !noundef !41
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.bp ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx19.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i128 %1, ptr %.sroa.4.0..sroa_idx19.i.i.i, align 16, !noalias !50120
  %i.bw = add nuw nsw i64 %i.bp, 1
  store i64 %i.bw, ptr %i.bo, align 8, !alias.scope !50118, !noalias !50119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50121)
  %.val.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !50122, !noalias !50116, !nonnull !41, !noundef !41 ; 8 uses
  %.val2.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !50122, !noalias !50116, !noundef !41 ; 4 uses
  %.sroa.0.07.i.i.i.i.i = and i64 %.val2.i.i.i.i, %i.ak ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i = load <16 x i8>, ptr %i.bx, align 1, !noalias !50123
  %i.by = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i9.i.i.i.i.i, label %.lr.ph.i.i18.i.i.i, label %._crit_edge.i.i16.i.i.i, !prof !55

._crit_edge.i.i16.i.i.i:                          ; preds = %.lr.ph.i.i18.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEoEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEoEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i18.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i16 [ %i.bz, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEoEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %i.cq, %.lr.ph.i.i18.i.i.i ]
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = add i64 %.sroa.0.0.lcssa.i.i.i.i.i, %i.cb
  %i.cd = and i64 %i.cc, %.val2.i.i.i.i           ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !50124, !noundef !41 ; 2 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %bb.m, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, !prof !44

bb.m:                                             ; preds = %._crit_edge.i.i16.i.i.i
  %.val2.i.i.i17.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !50124
  %i.ch = icmp slt <16 x i8> %.val2.i.i.i17.i.i.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i6.i.i.i.i.i = icmp ne i16 %i.ci, 0
  %i.cj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ci, i1 true)
  %i.ck = zext nneg i16 %i.cj to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ck
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !50124
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

.lr.ph.i.i18.i.i.i:                               ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEoEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %.lr.ph.i.i18.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEoEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %i.cl = phi i64 [ %i.cm, %.lr.ph.i.i18.i.i.i ], [ 0, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEoEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %i.cm = add i64 %i.cl, 16                       ; 2 uses
  %i.cn = add i64 %i.cm, %.sroa.0.010.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = and i64 %i.cn, %.val2.i.i.i.i ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i = load <16 x i8>, ptr %i.co, align 1, !noalias !50123
  %i.cp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i, zeroinitializer
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i18.i.i.i, label %._crit_edge.i.i16.i.i.i, !prof !56

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.m, %._crit_edge.i.i16.i.i.i
  %i.cr = phi i8 [ %.pre.i.i.i.i, %bb.m ], [ %i.cf, %._crit_edge.i.i16.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i.i = phi i64 [ %i.ck, %bb.m ], [ %i.cd, %._crit_edge.i.i16.i.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i
  %i.ct = add i64 %.sroa.0.0.i5.i.i.i.i.i, -16
  %i.cu = and i64 %i.ct, %.val2.i.i.i.i
  store i8 %i.am, ptr %i.cs, align 1, !noalias !50124
  %i.cv = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  store i8 %i.am, ptr %i.cw, align 1, !noalias !50124
  %i.cx = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i
  %i.cy = getelementptr inbounds [32 x i8], ptr %.val.i.i.i.i, i64 %i.cx ; 2 uses
  %i.cz = and i8 %i.cr, 1
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 -32
  store i128 %i.ae, ptr %i.db, align 16, !noalias !50124
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -16
  store i64 %i.bp, ptr %i.dc, align 16, !noalias !50124
  %i.dd = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !50122, !noalias !50116
  %i.de = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.da, i64 0
  %i.df = sub <2 x i64> %i.dd, %i.de
  store <2 x i64> %i.df, ptr %i.bk, align 8, !alias.scope !50122, !noalias !50116
  br label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE6insertCs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE6insertCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.not29.i.i.i = phi i1 [ true, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ false, %.lr.ph.i.i.i.i.i ]
  %i.dg = cmpxchg ptr %.0.val, i8 1, i8 0 release monotonic, align 1, !noalias !50095
  %i.dh = extractvalue { i8, i1 } %i.dg, 1
  br i1 %i.dh, label %_RNvXNtCsloFShupyl5J_6comemo5trackRINtNtB4_10constraint10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEENtB2_4Sink4emitCs7tN9tvpkfrg_12typst_layout.exit, label %bb.n, !prof !43

bb.n:                                             ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE6insertCs7tN9tvpkfrg_12typst_layout.exit.i.i
  tail call void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %.0.val, i1 noundef zeroext false), !noalias !50095
  br label %_RNvXNtCsloFShupyl5J_6comemo5trackRINtNtB4_10constraint10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEENtB2_4Sink4emitCs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %bb.d
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !50095
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprINtNvNtB2e_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RNvXNtCsloFShupyl5J_6comemo5trackRINtNtB4_10constraint10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEENtB2_4Sink4emitCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE6insertCs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.n
  ret i1 %.not29.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCs1xwejQucwHj_5alloc5sliceSNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNtNtB7_6borrow7ToOwned8to_ownedBE_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 88686269585142076) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50133)
  %i.a = mul nuw nsw i64 %2, 104                  ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !50134
  %i.c = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, 17) 8) #56, !noalias !50134 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.lr.ph.preheader.i

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.a) #57, !noalias !50135
  unreachable

.lr.ph.preheader.i:                               ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.sroa.012.078.i = phi ptr [ %i.l, %bb.e ], [ %1, %.lr.ph.preheader.i ] ; 13 uses
  %.sroa.7.077.i = phi i64 [ %i.k, %bb.e ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.076.i = phi i64 [ %i.f, %bb.e ], [ %2, %.lr.ph.preheader.i ]
  %i.f = add nsw i64 %.sroa.10.076.i, -1          ; 2 uses
  %i.g = icmp eq ptr %.sroa.012.078.i, %i.e
  br i1 %i.g, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50136)
  %i.h = load ptr, ptr %.sroa.012.078.i, align 8, !alias.scope !50137, !noalias !50138, !nonnull !41, !noundef !41 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !50139
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.7.077.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 92
  %i.n = load i16, ptr %i.m, align 4, !alias.scope !50137, !noalias !50138, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 94
  %i.u = load i8, ptr %i.t, align 2, !range !54, !alias.scope !50137, !noalias !50138, !noundef !41
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 88
  %i.w = load i32, ptr %i.v, align 8, !range !135, !alias.scope !50137, !noalias !50138, !noundef !41
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 95
  %i.y = load i8, ptr %i.x, align 1, !range !54, !alias.scope !50137, !noalias !50138, !noundef !41
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.078.i, i64 96
  %i.aa = load i8, ptr %i.z, align 8, !range !141, !alias.scope !50137, !noalias !50138, !noundef !41
  %i.ab = getelementptr inbounds nuw [104 x i8], ptr %i.c, i64 %.sroa.7.077.i ; 11 uses
  store ptr %i.h, ptr %i.ab, align 8, !noalias !50135
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ac = load <2 x double>, ptr %i.o, align 8, !alias.scope !50137, !noalias !50138
  store <2 x double> %i.ac, ptr %.sroa.453.0..sroa_idx.i, align 8, !noalias !50135
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load <2 x double>, ptr %i.p, align 8, !alias.scope !50137, !noalias !50138
  store <2 x double> %i.ad, ptr %.sroa.655.0..sroa_idx.i, align 8, !noalias !50135
  %.sroa.857.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = load <2 x double>, ptr %i.q, align 8, !alias.scope !50137, !noalias !50138
  store <2 x double> %i.ae, ptr %.sroa.857.0..sroa_idx.i, align 8, !noalias !50135
  %.sroa.1059.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.af = load <2 x double>, ptr %i.r, align 8, !alias.scope !50137, !noalias !50138
  store <2 x double> %i.af, ptr %.sroa.1059.0..sroa_idx.i, align 8, !noalias !50135
  %.sroa.1261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ag = load <2 x i64>, ptr %i.s, align 8, !alias.scope !50137, !noalias !50138
  store <2 x i64> %i.ag, ptr %.sroa.1261.0..sroa_idx.i, align 8, !noalias !50135
  %.sroa.1463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  store i32 %i.w, ptr %.sroa.1463.0..sroa_idx.i, align 8, !noalias !50135
  %.sroa.1564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 92
  store i16 %i.n, ptr %.sroa.1564.0..sroa_idx.i, align 4, !noalias !50135
  %.sroa.1665.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 94
  store i8 %i.u, ptr %.sroa.1665.0..sroa_idx.i, align 2, !noalias !50135
  %.sroa.1766.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 95
  store i8 %i.y, ptr %.sroa.1766.0..sroa_idx.i, align 1, !noalias !50135
  %.sroa.1867.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  store i8 %i.aa, ptr %.sroa.1867.0..sroa_idx.i, align 8, !noalias !50135
  %i.ah = icmp eq i64 %i.f, 0
  br i1 %i.ah, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %.lr.ph.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.c, %bb.e ], [ %i.c, %.lr.ph.i ]
  store i64 %2, ptr %0, align 8, !noalias !50133
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !50133
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !50133
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBT_5model6figure13FigureCaptionEENtNtB7_7default7Default7defaultCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #33 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtB7_7default7Default7defaultCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #33 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text5shift13ShiftSettingsENtNtB7_7default7Default7defaultCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #33 {
bb.a:
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingENtNtB7_7default7Default7defaultCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((32, 33)) %0) unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model4link11DestinationENtNtB7_7default7Default7defaultCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #33 {
bb.a:
  store i64 -1, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model5quote11AttributionENtNtB7_7default7Default7defaultCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #33 {
bb.a:
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout9container9BlockBodyENtNtB7_7default7Default7defaultCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #33 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintENtNtB7_7default7Default7defaultCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0) unnamed_addr #33 {
bb.a:
  store i32 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeENtNtB7_7default7Default7defaultCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #33 {
bb.a:
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val4 = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 5 uses
  %.not.i = icmp eq ptr %.val4, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4, i64 -16 ; 2 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.val4, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %.val.i, 144115188075855872
  %i.f = shl nuw i64 %.val.i, 7
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775791
  %narrow.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCs7tN9tvpkfrg_12typst_layout.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 16, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !41 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCs7tN9tvpkfrg_12typst_layout.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.0.0.i1027 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %.val4, i64 %.sroa.0.0.i1027 ; 6 uses
  %i.o = add nuw i64 %.sroa.0.0.i1027, 1          ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 16, !range !51, !alias.scope !50168, !noundef !41 ; 4 uses
  %i.r = icmp ne i64 %i.q, 4
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nsw i64 %i.q, -3
  %i.t = icmp samesign ugt i64 %i.q, 2
  %i.u = select i1 %i.t, i64 %i.s, i64 1
  switch i64 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit [
    i64 0, label %bb.c
    i64 1, label %bb.g
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !50168 ; 5 uses
  %i.w = getelementptr i8, ptr %i.n, i64 32
  %.val1.i.i = load ptr, ptr %i.w, align 16, !alias.scope !50168, !nonnull !41, !align !46, !noundef !41 ; 5 uses
  %i.x = load ptr, ptr %.val1.i.i, align 8, !invariant.load !41 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.x(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !45, !invariant.load !41 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !81, !invariant.load !41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) %i.ac) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !45, !invariant.load !41 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.body17, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !81, !invariant.load !41
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) %i.ai) #56
  br label %.body17

bb.g:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 16, !range !98, !alias.scope !50169, !noundef !41
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.aj)
          to label %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge unwind label %bb.i, !inline_history !50148

._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %i.p, align 16, !range !52, !alias.scope !50170
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge, %bb.g
  %i.am = phi i64 [ %.pre, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge ], [ %i.q, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  switch i64 %i.am, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles14TransformationECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %i.p) #54
          to label %.body17 unwind label %bb.s, !inline_history !50151

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs7tN9tvpkfrg_12typst_layout.exit.i
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an)
end_hunk_0
