Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.04?download=true
inline.NumInlined: 1305
inline.NumDeleted: 669
begin_hunk_0_@_RNvMs4_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjE11extend_withCs5yXxDE1DkoT_4tera:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec, !dbg !11453
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader44, !dbg !11453

.lr.ph.preheader44:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.035.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.034.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph, !dbg !11453

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph ], !dbg !11543
  %i.s = add i64 %i.f, %1, !dbg !11453
  %i.t = add i64 %i.s, -1, !dbg !11453
  br label %bb.c, !dbg !11544

._crit_edge:                                      ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCs5yXxDE1DkoT_4tera.exit
  %.not = icmp eq i64 %1, 0, !dbg !11544
  br i1 %.not, label %bb.d, label %bb.c, !dbg !11544

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa42 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa41 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
    #dbg_value(i64 %2, !11515, !DIExpression(), !11518)
  store i64 %2, ptr %.sroa.0.0.lcssa42, align 8, !dbg !11545
    #dbg_value(ptr undef, !11462, !DIExpression(), !11468)
  %i.u = add i64 %storemerge.lcssa41, 1, !dbg !11546
    #dbg_value(i64 %i.u, !11444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11519)
    #dbg_value(ptr poison, !3787, !DIExpression(), !11433)
    #dbg_value(ptr poison, !3793, !DIExpression(), !11435)
  br label %bb.d, !dbg !11547

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge32 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge ], !dbg !11548
  store i64 %storemerge32, ptr %i.a, align 8, !dbg !11548
  ret void, !dbg !11549

.lr.ph:                                           ; preds = %.lr.ph.preheader44, %.lr.ph
  %.sroa.0.035 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0.035.ph, %.lr.ph.preheader44 ] ; 2 uses
  %.sroa.03.034 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.03.034.ph, %.lr.ph.preheader44 ]
    #dbg_value(ptr %.sroa.0.035, !11514, !DIExpression(), !11518)
    #dbg_value(i64 poison, !11444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11519)
    #dbg_value(i64 %.sroa.03.034, !11458, !DIExpression(), !11527)
    #dbg_value(i64 %.sroa.03.034, !11479, !DIExpression(), !11482)
    #dbg_value(i64 %.sroa.03.034, !11484, !DIExpression(), !11487)
    #dbg_value(i64 %.sroa.03.034, !11445, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11520)
    #dbg_value(ptr %.sroa.0.035, !11514, !DIExpression(), !11528)
  %i.v = add nuw i64 %.sroa.03.034, 1, !dbg !11550 ; 2 uses
    #dbg_value(i64 %i.v, !11445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11520)
    #dbg_value(i64 %2, !11515, !DIExpression(), !11528)
  store i64 %2, ptr %.sroa.0.035, align 8, !dbg !11542
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 8, !dbg !11543 ; 2 uses
    #dbg_value(ptr %i.w, !11443, !DIExpression(), !11513)
    #dbg_value(ptr %i.w, !11489, !DIExpression(), !11493)
    #dbg_value(ptr %i.w, !11514, !DIExpression(), !11518)
    #dbg_value(ptr undef, !11462, !DIExpression(), !11466)
    #dbg_value(i64 poison, !11444, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11519)
    #dbg_value(ptr undef, !11455, !DIExpression(), !11461)
    #dbg_value(ptr undef, !11457, !DIExpression(), !11460)
    #dbg_value(ptr undef, !11447, !DIExpression(), !11454)
    #dbg_value(ptr undef, !11448, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11521)
  %exitcond.not = icmp eq i64 %i.v, %1, !dbg !11541
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !dbg !11453, !llvm.loop !11436
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBK_5ValueEE16into_boxed_sliceBM_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11556 {
bb.a:
    #dbg_value(ptr poison, !11596, !DIExpression(), !11599)
    #dbg_declare(ptr %0, !11589, !DIExpression(), !11600)
    #dbg_value(i64 16, !11601, !DIExpression(), !11608)
    #dbg_value(i64 8, !11616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11626)
    #dbg_value(i64 16, !11616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11626)
    #dbg_value(i64 16, !11601, !DIExpression(), !11637)
    #dbg_value(ptr %0, !11610, !DIExpression(), !11654)
    #dbg_value(ptr %0, !11612, !DIExpression(), !11655)
  %i.a = load i64, ptr %0, align 8, !dbg !11679, !range !3717, !noundef !1322
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11680 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !11680, !noundef !1322 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !11681
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !11681

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !11630, !DIExpression(), !11656)
    #dbg_value(i64 %i.c, !11631, !DIExpression(), !11657)
    #dbg_value(i64 %i.c, !11621, !DIExpression(), !11626)
    #dbg_value(ptr %0, !11620, !DIExpression(), !11626)
    #dbg_value(ptr %0, !11658, !DIExpression(), !11577)
    #dbg_value(i64 %i.c, !11673, !DIExpression(), !11577)
    #dbg_value(i64 8, !11674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11577)
    #dbg_value(i64 16, !11674, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11577)
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !11682 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5yXxDE1DkoT_4tera.exit._crit_edge, %bb.a
  %.sroa.531.0.copyload = phi i64 [ %.sroa.531.0.copyload.pre, %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5yXxDE1DkoT_4tera.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !11683 ; 2 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11683
  %.sroa.430.0.copyload = load ptr, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !11683, !nonnull !1322, !noundef !1322
    #dbg_value(i64 poison, !11590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11676)
    #dbg_value(ptr %.sroa.430.0.copyload, !11590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11676)
    #dbg_value(i64 %.sroa.531.0.copyload, !11590, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11676)
    #dbg_value(i64 poison, !11591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11677)
    #dbg_value(ptr %.sroa.430.0.copyload, !11591, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11677)
    #dbg_value(ptr undef, !11596, !DIExpression(), !11599)
  %i.f = icmp ult i64 %.sroa.531.0.copyload, 576460752303423488, !dbg !11684
  tail call void @llvm.assume(i1 %i.f), !dbg !11685
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.430.0.copyload, 0, !dbg !11686
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.531.0.copyload, 1, !dbg !11686
  ret { ptr, i64 } %i.h, !dbg !11686

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !3889, !DIExpression(), !11579)
    #dbg_value(ptr %0, !3891, !DIExpression(), !11581)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBS_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1e_5ValueEEEB1g_.exit unwind label %bb.g, !dbg !11687

_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !11688 ; 2 uses
  %.not = icmp eq i64 %i.j, -1, !dbg !11689
  br i1 %.not, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5yXxDE1DkoT_4tera.exit._crit_edge, label %bb.e, !dbg !11690, !prof !3895

_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5yXxDE1DkoT_4tera.exit._crit_edge: ; preds = %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5yXxDE1DkoT_4tera.exit
  %.sroa.531.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !11683
  br label %bb.c, !dbg !11690

bb.e:                                             ; preds = %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5yXxDE1DkoT_4tera.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !11688
    #dbg_value(i64 %i.j, !11622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11678)
    #dbg_value(i64 %i.k, !11622, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11678)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #26
          to label %bb.f unwind label %bb.d, !dbg !11691

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !11692
  unreachable, !dbg !11692

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1e_5ValueEEEB1g_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !11692
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !610 {
bb.a:
    #dbg_value(ptr %0, !3677, !DIExpression(), !11693)
    #dbg_value(i64 %1, !3681, !DIExpression(), !11693)
    #dbg_value(i64 %1, !3683, !DIExpression(), !11695)
    #dbg_value(i64 %1, !3690, !DIExpression(), !11697)
    #dbg_value(i64 %1, !3699, !DIExpression(), !11699)
    #dbg_value(ptr %0, !3687, !DIExpression(), !11700)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11705
  %i.b = load i64, ptr %i.a, align 8, !dbg !11705, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.b, !3688, !DIExpression(), !11695)
    #dbg_value(i64 %i.b, !3696, !DIExpression(), !11697)
    #dbg_value(i64 %i.b, !3701, !DIExpression(), !11699)
    #dbg_value(i64 %i.b, !3705, !DIExpression(), !11702)
    #dbg_value(ptr %0, !3695, !DIExpression(), !11697)
    #dbg_value(ptr %0, !3700, !DIExpression(), !11699)
    #dbg_value(ptr %0, !3711, !DIExpression(), !11704)
    #dbg_value(i64 1, !3697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(i64 1, !3702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11699)
    #dbg_value(i64 1, !3697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 1, !3702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11699)
    #dbg_value(i64 1, !3715, !DIExpression(), !11704)
  %i.c = load i64, ptr %0, align 8, !dbg !11706, !range !3717, !noundef !1322
    #dbg_value(i64 %i.c, !3709, !DIExpression(), !11702)
  %i.d = sub i64 %i.c, %i.b, !dbg !11707
  %i.e = icmp ugt i64 %1, %i.d, !dbg !11708
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !11709, !prof !3490

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !11710

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1), !dbg !11711
  br label %bb.b, !dbg !11711
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextIB1E_INtNtNtNtB6_11collections5btree3map4KeysINtNtB6_6borrow3CoweENtNtB38_5value5ValueENCINvMNtB38_4teraNtB5O_4Tera22inner_render_componentQIBL_hEEs_0ENCB5K_s0_0NCB5K_s1_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11714 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !11804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11808)
    #dbg_value(ptr %2, !11804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11808)
    #dbg_value(ptr %1, !11809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11719)
    #dbg_value(ptr %2, !11809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11719)
    #dbg_declare(ptr %i.c, !11810, !DIExpression(), !11720)
    #dbg_declare(ptr poison, !11813, !DIExpression(), !11725)
    #dbg_declare(ptr poison, !11818, !DIExpression(), !11728)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11866, !noalias !11821
    #dbg_value(ptr poison, !11823, !DIExpression(), !11733)
    #dbg_value(ptr poison, !3931, !DIExpression(), !11735)
    #dbg_value(i64 16, !3939, !DIExpression(), !11739)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !11740)
    #dbg_value(ptr %2, !3956, !DIExpression(), !11741)
    #dbg_value(ptr %1, !3957, !DIExpression(), !11741)
    #dbg_value(ptr %2, !3950, !DIExpression(), !11742)
    #dbg_value(ptr %1, !3951, !DIExpression(), !11742)
    #dbg_value(ptr %1, !3945, !DIExpression(), !11743)
    #dbg_value(ptr %2, !3944, !DIExpression(), !11743)
  %i.d = ptrtoint ptr %2 to i64, !dbg !11867
  %i.e = ptrtoint ptr %1 to i64, !dbg !11867
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !11867
  %i.g = lshr exact i64 %i.f, 4, !dbg !11867      ; 2 uses
    #dbg_value(i64 %i.g, !11811, !DIExpression(), !11744)
    #dbg_value(i64 %i.g, !11816, !DIExpression(), !11745)
    #dbg_value(i64 %i.g, !11814, !DIExpression(), !11746)
    #dbg_value(i64 %i.g, !11819, !DIExpression(), !11747)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !11749)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !11751)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !11752)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11749)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11751)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11749)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11751)
    #dbg_value(i64 0, !3485, !DIExpression(), !11751)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11868, !noalias !11821
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !11868, !noalias !11821
  %i.h = load i64, ptr %i.b, align 8, !dbg !11868, !range !3488, !noalias !11821, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !11869
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11870
  %i.k = load i64, ptr %i.j, align 8, !dbg !11870, !range !3489, !noalias !11821, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11870 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextIB1j_INtNtNtNtB8_11collections5btree3map4KeysINtNtB8_6borrow3CoweENtNtB2N_5value5ValueENCINvMNtB2N_4teraNtB5t_4Tera22inner_render_componentQIBx_hEEs_0ENCB5p_s0_0NCB5p_s1_0Es0_0EEB2N_.exit.i.i, !dbg !11869, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !11871, !noalias !11821
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11753)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11753)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !11872, !noalias !11821
  unreachable, !dbg !11872

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextIB1j_INtNtNtNtB8_11collections5btree3map4KeysINtNtB8_6borrow3CoweENtNtB2N_5value5ValueENCINvMNtB2N_4teraNtB5t_4Tera22inner_render_componentQIBx_hEEs_0ENCB5p_s0_0NCB5p_s1_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !11873, !noalias !11821, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11754)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11754)
    #dbg_value(ptr poison, !3484, !DIExpression(), !11755)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !11874
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11757)
  tail call void @llvm.assume(i1 %i.o), !dbg !11875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11876, !noalias !11821
  store i64 %i.k, ptr %i.c, align 8, !dbg !11877, !noalias !11821
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11877
  store ptr %i.n, ptr %i.p, align 8, !dbg !11877, !noalias !11821
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11877 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !11877, !noalias !11821
    #dbg_value(ptr %i.c, !11828, !DIExpression(), !11760)
    #dbg_value(ptr %1, !11831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11760)
    #dbg_value(ptr %2, !11831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11760)
    #dbg_value(ptr %1, !11834, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11771)
    #dbg_value(ptr %2, !11834, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11771)
    #dbg_value(ptr %i.c, !11838, !DIExpression(), !11771)
    #dbg_value(ptr poison, !11823, !DIExpression(), !11773)
    #dbg_value(ptr poison, !3931, !DIExpression(), !11775)
    #dbg_value(i64 16, !3939, !DIExpression(), !11779)
    #dbg_value(ptr %2, !3936, !DIExpression(), !11780)
    #dbg_value(ptr %2, !3956, !DIExpression(), !11781)
    #dbg_value(ptr %1, !3957, !DIExpression(), !11781)
    #dbg_value(ptr %2, !3950, !DIExpression(), !11782)
    #dbg_value(ptr %1, !3951, !DIExpression(), !11782)
    #dbg_value(ptr %1, !3945, !DIExpression(), !11783)
    #dbg_value(ptr %2, !3944, !DIExpression(), !11783)
    #dbg_value(i64 poison, !11839, !DIExpression(), !11784)
    #dbg_value(i64 1, !11840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11784)
    #dbg_value(i64 %i.g, !11840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11784)
    #dbg_value(i64 %i.g, !11841, !DIExpression(), !11785)
    #dbg_value(ptr %i.n, !11851, !DIExpression(), !11786)
    #dbg_value(ptr %i.q, !11852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11787)
    #dbg_value(i64 0, !11852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11787)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11878, !noalias !11854
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11878
  store ptr %i.n, ptr %i.r, align 8, !dbg !11878, !noalias !11854
  store ptr %i.q, ptr %i.a, align 8, !dbg !11878, !noalias !11854
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11878
  store i64 0, ptr %i.s, align 8, !dbg !11878, !noalias !11854
    #dbg_value(ptr %1, !11855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11795)
    #dbg_value(ptr %2, !11855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11795)
    #dbg_declare(ptr %i.a, !11861, !DIExpression(), !11796)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextIBO_INtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4KeysINtNtB31_6borrow3CoweENtNtB1D_5value5ValueENCINvMNtB1D_4teraNtB4A_4Tera22inner_render_componentQINtNtB31_3vec3VechEEs_0ENCB4w_s0_0NCB4w_s1_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB69_8for_each4callNtNtB31_6string6StringNCINvMsk_B5o_IB5m_B7c_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextIB1U_INtNtNtNtB8_11collections5btree3map4KeysINtNtB8_6borrow3CoweENtNtB3o_5value5ValueENCINvMNtB3o_4teraNtB64_4Tera22inner_render_componentQIBU_hEEs_0ENCB60_s0_0NCB60_s1_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !11879, !noalias !11821

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextIB1j_INtNtNtNtB8_11collections5btree3map4KeysINtNtB8_6borrow3CoweENtNtB2N_5value5ValueENCINvMNtB2N_4teraNtB5t_4Tera22inner_render_componentQIBx_hEEs_0ENCB5p_s0_0NCB5p_s1_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !11880, !noalias !11821

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !11881, !noalias !11821
  unreachable, !dbg !11881

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !11881

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextIB1U_INtNtNtNtB8_11collections5btree3map4KeysINtNtB8_6borrow3CoweENtNtB3o_5value5ValueENCINvMNtB3o_4teraNtB64_4Tera22inner_render_componentQIBU_hEEs_0ENCB60_s0_0NCB60_s1_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextIB1j_INtNtNtNtB8_11collections5btree3map4KeysINtNtB8_6borrow3CoweENtNtB2N_5value5ValueENCINvMNtB2N_4teraNtB5t_4Tera22inner_render_componentQIBx_hEEs_0ENCB5p_s0_0NCB5p_s1_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11882, !noalias !11854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !11883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11880, !noalias !11821
  ret void, !dbg !11884
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretIBL_hEEs1_0ENCB6j_s2_0NCB6j_s3_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11887 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !11977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11981)
    #dbg_value(ptr %2, !11977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11981)
    #dbg_value(ptr %1, !11982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11892)
    #dbg_value(ptr %2, !11982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11892)
    #dbg_declare(ptr %i.c, !11983, !DIExpression(), !11893)
    #dbg_declare(ptr poison, !11986, !DIExpression(), !11898)
    #dbg_declare(ptr poison, !11991, !DIExpression(), !11901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12039, !noalias !11994
    #dbg_value(ptr poison, !11996, !DIExpression(), !11906)
    #dbg_value(ptr poison, !3931, !DIExpression(), !11908)
    #dbg_value(i64 16, !3939, !DIExpression(), !11912)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !11913)
    #dbg_value(ptr %2, !3956, !DIExpression(), !11914)
    #dbg_value(ptr %1, !3957, !DIExpression(), !11914)
    #dbg_value(ptr %2, !3950, !DIExpression(), !11915)
    #dbg_value(ptr %1, !3951, !DIExpression(), !11915)
    #dbg_value(ptr %1, !3945, !DIExpression(), !11916)
    #dbg_value(ptr %2, !3944, !DIExpression(), !11916)
  %i.d = ptrtoint ptr %2 to i64, !dbg !12040
  %i.e = ptrtoint ptr %1 to i64, !dbg !12040
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !12040
  %i.g = lshr exact i64 %i.f, 4, !dbg !12040      ; 2 uses
    #dbg_value(i64 %i.g, !11984, !DIExpression(), !11917)
    #dbg_value(i64 %i.g, !11989, !DIExpression(), !11918)
    #dbg_value(i64 %i.g, !11987, !DIExpression(), !11919)
    #dbg_value(i64 %i.g, !11992, !DIExpression(), !11920)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !11922)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !11924)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !11925)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11922)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11924)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11922)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11924)
    #dbg_value(i64 0, !3485, !DIExpression(), !11924)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12041, !noalias !11994
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !12041, !noalias !11994
  %i.h = load i64, ptr %i.b, align 8, !dbg !12041, !range !3488, !noalias !11994, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !12042
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12043
  %i.k = load i64, ptr %i.j, align 8, !dbg !12043, !range !3489, !noalias !11994, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12043 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i, !dbg !12042, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !12044, !noalias !11994
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11926)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11926)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !12045, !noalias !11994
  unreachable, !dbg !12045

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !12046, !noalias !11994, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11927)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11927)
    #dbg_value(ptr poison, !3484, !DIExpression(), !11928)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !12047
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11930)
  tail call void @llvm.assume(i1 %i.o), !dbg !12048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12049, !noalias !11994
  store i64 %i.k, ptr %i.c, align 8, !dbg !12050, !noalias !11994
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12050
  store ptr %i.n, ptr %i.p, align 8, !dbg !12050, !noalias !11994
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12050 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !12050, !noalias !11994
    #dbg_value(ptr %i.c, !12001, !DIExpression(), !11933)
    #dbg_value(ptr %1, !12004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11933)
    #dbg_value(ptr %2, !12004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11933)
    #dbg_value(ptr %1, !12007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11944)
    #dbg_value(ptr %2, !12007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11944)
    #dbg_value(ptr %i.c, !12011, !DIExpression(), !11944)
    #dbg_value(ptr poison, !11996, !DIExpression(), !11946)
    #dbg_value(ptr poison, !3931, !DIExpression(), !11948)
    #dbg_value(i64 16, !3939, !DIExpression(), !11952)
    #dbg_value(ptr %2, !3936, !DIExpression(), !11953)
    #dbg_value(ptr %2, !3956, !DIExpression(), !11954)
    #dbg_value(ptr %1, !3957, !DIExpression(), !11954)
    #dbg_value(ptr %2, !3950, !DIExpression(), !11955)
    #dbg_value(ptr %1, !3951, !DIExpression(), !11955)
    #dbg_value(ptr %1, !3945, !DIExpression(), !11956)
    #dbg_value(ptr %2, !3944, !DIExpression(), !11956)
    #dbg_value(i64 poison, !12012, !DIExpression(), !11957)
    #dbg_value(i64 1, !12013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11957)
    #dbg_value(i64 %i.g, !12013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11957)
    #dbg_value(i64 %i.g, !12014, !DIExpression(), !11958)
    #dbg_value(ptr %i.n, !12024, !DIExpression(), !11959)
    #dbg_value(ptr %i.q, !12025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11960)
    #dbg_value(i64 0, !12025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12051, !noalias !12027
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12051
  store ptr %i.n, ptr %i.r, align 8, !dbg !12051, !noalias !12027
  store ptr %i.q, ptr %i.a, align 8, !dbg !12051, !noalias !12027
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12051
  store i64 0, ptr %i.s, align 8, !dbg !12051, !noalias !12027
    #dbg_value(ptr %1, !12028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11968)
    #dbg_value(ptr %2, !12028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11968)
    #dbg_declare(ptr %i.a, !12034, !DIExpression(), !11969)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEs1_0ENCB4N_s2_0NCB4N_s3_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6Q_8for_each4callNtNtB5Q_6string6StringNCINvMsk_B5O_IB5M_B7T_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretIBU_hEEs1_0ENCB6z_s2_0NCB6z_s3_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !12052, !noalias !11994

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !12053, !noalias !11994

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !12054, !noalias !11994
  unreachable, !dbg !12054

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !12054

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretIBU_hEEs1_0ENCB6z_s2_0NCB6z_s3_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12055, !noalias !12027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !12056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12053, !noalias !11994
  ret void, !dbg !12057
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretIBL_hEEs6_0ENCB6j_s7_0NCB6j_s8_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12060 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !12150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12154)
    #dbg_value(ptr %2, !12150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12154)
    #dbg_value(ptr %1, !12155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12065)
    #dbg_value(ptr %2, !12155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12065)
    #dbg_declare(ptr %i.c, !12156, !DIExpression(), !12066)
    #dbg_declare(ptr poison, !12159, !DIExpression(), !12071)
    #dbg_declare(ptr poison, !12164, !DIExpression(), !12074)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12212, !noalias !12167
    #dbg_value(ptr poison, !12169, !DIExpression(), !12079)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12081)
    #dbg_value(i64 16, !3939, !DIExpression(), !12085)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !12086)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12087)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12087)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12088)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12088)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12089)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12089)
  %i.d = ptrtoint ptr %2 to i64, !dbg !12213
  %i.e = ptrtoint ptr %1 to i64, !dbg !12213
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !12213
  %i.g = lshr exact i64 %i.f, 4, !dbg !12213      ; 2 uses
    #dbg_value(i64 %i.g, !12157, !DIExpression(), !12090)
    #dbg_value(i64 %i.g, !12162, !DIExpression(), !12091)
    #dbg_value(i64 %i.g, !12160, !DIExpression(), !12092)
    #dbg_value(i64 %i.g, !12165, !DIExpression(), !12093)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !12095)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !12097)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !12098)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12095)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12097)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12095)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12097)
    #dbg_value(i64 0, !3485, !DIExpression(), !12097)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12214, !noalias !12167
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !12214, !noalias !12167
  %i.h = load i64, ptr %i.b, align 8, !dbg !12214, !range !3488, !noalias !12167, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !12215
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12216
  %i.k = load i64, ptr %i.j, align 8, !dbg !12216, !range !3489, !noalias !12167, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12216 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i, !dbg !12215, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !12217, !noalias !12167
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12099)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12099)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !12218, !noalias !12167
  unreachable, !dbg !12218

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !12219, !noalias !12167, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12100)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12100)
    #dbg_value(ptr poison, !3484, !DIExpression(), !12101)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !12220
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12103)
  tail call void @llvm.assume(i1 %i.o), !dbg !12221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12222, !noalias !12167
  store i64 %i.k, ptr %i.c, align 8, !dbg !12223, !noalias !12167
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12223
  store ptr %i.n, ptr %i.p, align 8, !dbg !12223, !noalias !12167
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12223 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !12223, !noalias !12167
    #dbg_value(ptr %i.c, !12174, !DIExpression(), !12106)
    #dbg_value(ptr %1, !12177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12106)
    #dbg_value(ptr %2, !12177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12106)
    #dbg_value(ptr %1, !12180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12117)
    #dbg_value(ptr %2, !12180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12117)
    #dbg_value(ptr %i.c, !12184, !DIExpression(), !12117)
    #dbg_value(ptr poison, !12169, !DIExpression(), !12119)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12121)
    #dbg_value(i64 16, !3939, !DIExpression(), !12125)
    #dbg_value(ptr %2, !3936, !DIExpression(), !12126)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12127)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12127)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12128)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12128)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12129)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12129)
    #dbg_value(i64 poison, !12185, !DIExpression(), !12130)
    #dbg_value(i64 1, !12186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12130)
    #dbg_value(i64 %i.g, !12186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12130)
    #dbg_value(i64 %i.g, !12187, !DIExpression(), !12131)
    #dbg_value(ptr %i.n, !12197, !DIExpression(), !12132)
    #dbg_value(ptr %i.q, !12198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12133)
    #dbg_value(i64 0, !12198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12224, !noalias !12200
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12224
  store ptr %i.n, ptr %i.r, align 8, !dbg !12224, !noalias !12200
  store ptr %i.q, ptr %i.a, align 8, !dbg !12224, !noalias !12200
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12224
  store i64 0, ptr %i.s, align 8, !dbg !12224, !noalias !12200
    #dbg_value(ptr %1, !12201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr %2, !12201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_declare(ptr %i.a, !12207, !DIExpression(), !12142)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEs6_0ENCB4N_s7_0NCB4N_s8_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6Q_8for_each4callNtNtB5Q_6string6StringNCINvMsk_B5O_IB5M_B7T_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretIBU_hEEs6_0ENCB6z_s7_0NCB6z_s8_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !12225, !noalias !12167

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !12226, !noalias !12167

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !12227, !noalias !12167
  unreachable, !dbg !12227

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !12227

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretIBU_hEEs6_0ENCB6z_s7_0NCB6z_s8_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12228, !noalias !12200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !12229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12226, !noalias !12167
  ret void, !dbg !12230
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretIBL_hEEsb_0ENCB6j_sc_0NCB6j_sd_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12233 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !12323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12327)
    #dbg_value(ptr %2, !12323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12327)
    #dbg_value(ptr %1, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12238)
    #dbg_value(ptr %2, !12328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12238)
    #dbg_declare(ptr %i.c, !12329, !DIExpression(), !12239)
    #dbg_declare(ptr poison, !12332, !DIExpression(), !12244)
    #dbg_declare(ptr poison, !12337, !DIExpression(), !12247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12385, !noalias !12340
    #dbg_value(ptr poison, !12342, !DIExpression(), !12252)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12254)
    #dbg_value(i64 16, !3939, !DIExpression(), !12258)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !12259)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12260)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12260)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12261)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12261)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12262)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12262)
  %i.d = ptrtoint ptr %2 to i64, !dbg !12386
  %i.e = ptrtoint ptr %1 to i64, !dbg !12386
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !12386
  %i.g = lshr exact i64 %i.f, 4, !dbg !12386      ; 2 uses
    #dbg_value(i64 %i.g, !12330, !DIExpression(), !12263)
    #dbg_value(i64 %i.g, !12335, !DIExpression(), !12264)
    #dbg_value(i64 %i.g, !12333, !DIExpression(), !12265)
    #dbg_value(i64 %i.g, !12338, !DIExpression(), !12266)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !12268)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !12270)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !12271)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12268)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12270)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12268)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12270)
    #dbg_value(i64 0, !3485, !DIExpression(), !12270)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12387, !noalias !12340
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !12387, !noalias !12340
  %i.h = load i64, ptr %i.b, align 8, !dbg !12387, !range !3488, !noalias !12340, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !12388
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12389
  %i.k = load i64, ptr %i.j, align 8, !dbg !12389, !range !3489, !noalias !12340, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12389 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i, !dbg !12388, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !12390, !noalias !12340
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12272)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12272)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !12391, !noalias !12340
  unreachable, !dbg !12391

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !12392, !noalias !12340, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12273)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12273)
    #dbg_value(ptr poison, !3484, !DIExpression(), !12274)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !12393
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12276)
  tail call void @llvm.assume(i1 %i.o), !dbg !12394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12395, !noalias !12340
  store i64 %i.k, ptr %i.c, align 8, !dbg !12396, !noalias !12340
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12396
  store ptr %i.n, ptr %i.p, align 8, !dbg !12396, !noalias !12340
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12396 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !12396, !noalias !12340
    #dbg_value(ptr %i.c, !12347, !DIExpression(), !12279)
    #dbg_value(ptr %1, !12350, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12279)
    #dbg_value(ptr %2, !12350, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12279)
    #dbg_value(ptr %1, !12353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12290)
    #dbg_value(ptr %2, !12353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12290)
    #dbg_value(ptr %i.c, !12357, !DIExpression(), !12290)
    #dbg_value(ptr poison, !12342, !DIExpression(), !12292)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12294)
    #dbg_value(i64 16, !3939, !DIExpression(), !12298)
    #dbg_value(ptr %2, !3936, !DIExpression(), !12299)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12300)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12300)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12301)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12301)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12302)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12302)
    #dbg_value(i64 poison, !12358, !DIExpression(), !12303)
    #dbg_value(i64 1, !12359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12303)
    #dbg_value(i64 %i.g, !12359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12303)
    #dbg_value(i64 %i.g, !12360, !DIExpression(), !12304)
    #dbg_value(ptr %i.n, !12370, !DIExpression(), !12305)
    #dbg_value(ptr %i.q, !12371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12306)
    #dbg_value(i64 0, !12371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12306)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12397, !noalias !12373
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12397
  store ptr %i.n, ptr %i.r, align 8, !dbg !12397, !noalias !12373
  store ptr %i.q, ptr %i.a, align 8, !dbg !12397, !noalias !12373
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12397
  store i64 0, ptr %i.s, align 8, !dbg !12397, !noalias !12373
    #dbg_value(ptr %1, !12374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12314)
    #dbg_value(ptr %2, !12374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12314)
    #dbg_declare(ptr %i.a, !12380, !DIExpression(), !12315)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEsb_0ENCB4N_sc_0NCB4N_sd_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6Q_8for_each4callNtNtB5Q_6string6StringNCINvMsk_B5O_IB5M_B7T_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretIBU_hEEsb_0ENCB6z_sc_0NCB6z_sd_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !12398, !noalias !12340

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !12399, !noalias !12340

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !12400, !noalias !12340
  unreachable, !dbg !12400

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !12400

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretIBU_hEEsb_0ENCB6z_sc_0NCB6z_sd_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12401, !noalias !12373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !12402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12399, !noalias !12340
  ret void, !dbg !12403
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretIBL_hEEsg_0ENCB6j_sh_0NCB6j_si_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12406 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !12496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12500)
    #dbg_value(ptr %2, !12496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12500)
    #dbg_value(ptr %1, !12501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12411)
    #dbg_value(ptr %2, !12501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12411)
    #dbg_declare(ptr %i.c, !12502, !DIExpression(), !12412)
    #dbg_declare(ptr poison, !12505, !DIExpression(), !12417)
    #dbg_declare(ptr poison, !12510, !DIExpression(), !12420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12558, !noalias !12513
    #dbg_value(ptr poison, !12515, !DIExpression(), !12425)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12427)
    #dbg_value(i64 16, !3939, !DIExpression(), !12431)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !12432)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12433)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12433)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12434)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12434)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12435)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12435)
  %i.d = ptrtoint ptr %2 to i64, !dbg !12559
  %i.e = ptrtoint ptr %1 to i64, !dbg !12559
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !12559
  %i.g = lshr exact i64 %i.f, 4, !dbg !12559      ; 2 uses
    #dbg_value(i64 %i.g, !12503, !DIExpression(), !12436)
    #dbg_value(i64 %i.g, !12508, !DIExpression(), !12437)
    #dbg_value(i64 %i.g, !12506, !DIExpression(), !12438)
    #dbg_value(i64 %i.g, !12511, !DIExpression(), !12439)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !12441)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !12443)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !12444)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12441)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12443)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12441)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12443)
    #dbg_value(i64 0, !3485, !DIExpression(), !12443)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12560, !noalias !12513
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !12560, !noalias !12513
  %i.h = load i64, ptr %i.b, align 8, !dbg !12560, !range !3488, !noalias !12513, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !12561
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12562
  %i.k = load i64, ptr %i.j, align 8, !dbg !12562, !range !3489, !noalias !12513, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12562 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i, !dbg !12561, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !12563, !noalias !12513
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12445)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12445)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !12564, !noalias !12513
  unreachable, !dbg !12564

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !12565, !noalias !12513, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12446)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12446)
    #dbg_value(ptr poison, !3484, !DIExpression(), !12447)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !12566
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12449)
  tail call void @llvm.assume(i1 %i.o), !dbg !12567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12568, !noalias !12513
  store i64 %i.k, ptr %i.c, align 8, !dbg !12569, !noalias !12513
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12569
  store ptr %i.n, ptr %i.p, align 8, !dbg !12569, !noalias !12513
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12569 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !12569, !noalias !12513
    #dbg_value(ptr %i.c, !12520, !DIExpression(), !12452)
    #dbg_value(ptr %1, !12523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12452)
    #dbg_value(ptr %2, !12523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12452)
    #dbg_value(ptr %1, !12526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12463)
    #dbg_value(ptr %2, !12526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12463)
    #dbg_value(ptr %i.c, !12530, !DIExpression(), !12463)
    #dbg_value(ptr poison, !12515, !DIExpression(), !12465)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12467)
    #dbg_value(i64 16, !3939, !DIExpression(), !12471)
    #dbg_value(ptr %2, !3936, !DIExpression(), !12472)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12473)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12473)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12474)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12474)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12475)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12475)
    #dbg_value(i64 poison, !12531, !DIExpression(), !12476)
    #dbg_value(i64 1, !12532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12476)
    #dbg_value(i64 %i.g, !12532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12476)
    #dbg_value(i64 %i.g, !12533, !DIExpression(), !12477)
    #dbg_value(ptr %i.n, !12543, !DIExpression(), !12478)
    #dbg_value(ptr %i.q, !12544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12479)
    #dbg_value(i64 0, !12544, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12570, !noalias !12546
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12570
  store ptr %i.n, ptr %i.r, align 8, !dbg !12570, !noalias !12546
  store ptr %i.q, ptr %i.a, align 8, !dbg !12570, !noalias !12546
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12570
  store i64 0, ptr %i.s, align 8, !dbg !12570, !noalias !12546
    #dbg_value(ptr %1, !12547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12487)
    #dbg_value(ptr %2, !12547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12487)
    #dbg_declare(ptr %i.a, !12553, !DIExpression(), !12488)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEsg_0ENCB4N_sh_0NCB4N_si_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6Q_8for_each4callNtNtB5Q_6string6StringNCINvMsk_B5O_IB5M_B7T_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretIBU_hEEsg_0ENCB6z_sh_0NCB6z_si_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !12571, !noalias !12513

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !12572, !noalias !12513

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !12573, !noalias !12513
  unreachable, !dbg !12573

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !12573

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretIBU_hEEsg_0ENCB6z_sh_0NCB6z_si_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretIBx_hEEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12574, !noalias !12546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !12575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12572, !noalias !12513
  ret void, !dbg !12576
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretNtNtNtB1M_2io4util4SinkEs1_0ENCB6j_s2_0NCB6j_s3_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12579 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !12669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12673)
    #dbg_value(ptr %2, !12669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12673)
    #dbg_value(ptr %1, !12674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12584)
    #dbg_value(ptr %2, !12674, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12584)
    #dbg_declare(ptr %i.c, !12675, !DIExpression(), !12585)
    #dbg_declare(ptr poison, !12678, !DIExpression(), !12590)
    #dbg_declare(ptr poison, !12683, !DIExpression(), !12593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12731, !noalias !12686
    #dbg_value(ptr poison, !12688, !DIExpression(), !12598)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12600)
    #dbg_value(i64 16, !3939, !DIExpression(), !12604)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !12605)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12606)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12606)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12607)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12607)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12608)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12608)
  %i.d = ptrtoint ptr %2 to i64, !dbg !12732
  %i.e = ptrtoint ptr %1 to i64, !dbg !12732
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !12732
  %i.g = lshr exact i64 %i.f, 4, !dbg !12732      ; 2 uses
    #dbg_value(i64 %i.g, !12676, !DIExpression(), !12609)
    #dbg_value(i64 %i.g, !12681, !DIExpression(), !12610)
    #dbg_value(i64 %i.g, !12679, !DIExpression(), !12611)
    #dbg_value(i64 %i.g, !12684, !DIExpression(), !12612)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !12614)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !12616)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !12617)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12614)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12616)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12614)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12616)
    #dbg_value(i64 0, !3485, !DIExpression(), !12616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12733, !noalias !12686
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !12733, !noalias !12686
  %i.h = load i64, ptr %i.b, align 8, !dbg !12733, !range !3488, !noalias !12686, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !12734
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12735
  %i.k = load i64, ptr %i.j, align 8, !dbg !12735, !range !3489, !noalias !12686, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12735 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i, !dbg !12734, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !12736, !noalias !12686
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12618)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12618)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !12737, !noalias !12686
  unreachable, !dbg !12737

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !12738, !noalias !12686, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12619)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12619)
    #dbg_value(ptr poison, !3484, !DIExpression(), !12620)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !12739
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12622)
  tail call void @llvm.assume(i1 %i.o), !dbg !12740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12741, !noalias !12686
  store i64 %i.k, ptr %i.c, align 8, !dbg !12742, !noalias !12686
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12742
  store ptr %i.n, ptr %i.p, align 8, !dbg !12742, !noalias !12686
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12742 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !12742, !noalias !12686
    #dbg_value(ptr %i.c, !12693, !DIExpression(), !12625)
    #dbg_value(ptr %1, !12696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12625)
    #dbg_value(ptr %2, !12696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12625)
    #dbg_value(ptr %1, !12699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12636)
    #dbg_value(ptr %2, !12699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12636)
    #dbg_value(ptr %i.c, !12703, !DIExpression(), !12636)
    #dbg_value(ptr poison, !12688, !DIExpression(), !12638)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12640)
    #dbg_value(i64 16, !3939, !DIExpression(), !12644)
    #dbg_value(ptr %2, !3936, !DIExpression(), !12645)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12646)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12646)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12647)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12647)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12648)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12648)
    #dbg_value(i64 poison, !12704, !DIExpression(), !12649)
    #dbg_value(i64 1, !12705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12649)
    #dbg_value(i64 %i.g, !12705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12649)
    #dbg_value(i64 %i.g, !12706, !DIExpression(), !12650)
    #dbg_value(ptr %i.n, !12716, !DIExpression(), !12651)
    #dbg_value(ptr %i.q, !12717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12652)
    #dbg_value(i64 0, !12717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12743, !noalias !12719
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12743
  store ptr %i.n, ptr %i.r, align 8, !dbg !12743, !noalias !12719
  store ptr %i.q, ptr %i.a, align 8, !dbg !12743, !noalias !12719
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12743
  store i64 0, ptr %i.s, align 8, !dbg !12743, !noalias !12719
    #dbg_value(ptr %1, !12720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12660)
    #dbg_value(ptr %2, !12720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12660)
    #dbg_declare(ptr %i.a, !12726, !DIExpression(), !12661)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretNtNtNtBc_2io4util4SinkEs1_0ENCB4N_s2_0NCB4N_s3_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6D_8for_each4callNtNtCsgCecv3eZDcN_5alloc6string6StringNCINvMsk_NtB7K_3vecINtB8r_3VecB7G_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretNtNtNtB22_2io4util4SinkEs1_0ENCB6z_s2_0NCB6z_s3_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !12744, !noalias !12686

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !12745, !noalias !12686

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !12746, !noalias !12686
  unreachable, !dbg !12746

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !12746

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretNtNtNtB22_2io4util4SinkEs1_0ENCB6z_s2_0NCB6z_s3_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12747, !noalias !12719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !12748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12745, !noalias !12686
  ret void, !dbg !12749
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretNtNtNtB1M_2io4util4SinkEs6_0ENCB6j_s7_0NCB6j_s8_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12752 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !12842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12846)
    #dbg_value(ptr %2, !12842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12846)
    #dbg_value(ptr %1, !12847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12757)
    #dbg_value(ptr %2, !12847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12757)
    #dbg_declare(ptr %i.c, !12848, !DIExpression(), !12758)
    #dbg_declare(ptr poison, !12851, !DIExpression(), !12763)
    #dbg_declare(ptr poison, !12856, !DIExpression(), !12766)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12904, !noalias !12859
    #dbg_value(ptr poison, !12861, !DIExpression(), !12771)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12773)
    #dbg_value(i64 16, !3939, !DIExpression(), !12777)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !12778)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12779)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12779)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12780)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12780)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12781)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12781)
  %i.d = ptrtoint ptr %2 to i64, !dbg !12905
  %i.e = ptrtoint ptr %1 to i64, !dbg !12905
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !12905
  %i.g = lshr exact i64 %i.f, 4, !dbg !12905      ; 2 uses
    #dbg_value(i64 %i.g, !12849, !DIExpression(), !12782)
    #dbg_value(i64 %i.g, !12854, !DIExpression(), !12783)
    #dbg_value(i64 %i.g, !12852, !DIExpression(), !12784)
    #dbg_value(i64 %i.g, !12857, !DIExpression(), !12785)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !12787)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !12789)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !12790)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12787)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12789)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12787)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12789)
    #dbg_value(i64 0, !3485, !DIExpression(), !12789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12906, !noalias !12859
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !12906, !noalias !12859
  %i.h = load i64, ptr %i.b, align 8, !dbg !12906, !range !3488, !noalias !12859, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !12907
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12908
  %i.k = load i64, ptr %i.j, align 8, !dbg !12908, !range !3489, !noalias !12859, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12908 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i, !dbg !12907, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !12909, !noalias !12859
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12791)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12791)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !12910, !noalias !12859
  unreachable, !dbg !12910

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !12911, !noalias !12859, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12792)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12792)
    #dbg_value(ptr poison, !3484, !DIExpression(), !12793)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !12912
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12795)
  tail call void @llvm.assume(i1 %i.o), !dbg !12913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12914, !noalias !12859
  store i64 %i.k, ptr %i.c, align 8, !dbg !12915, !noalias !12859
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12915
  store ptr %i.n, ptr %i.p, align 8, !dbg !12915, !noalias !12859
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12915 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !12915, !noalias !12859
    #dbg_value(ptr %i.c, !12866, !DIExpression(), !12798)
    #dbg_value(ptr %1, !12869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12798)
    #dbg_value(ptr %2, !12869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12798)
    #dbg_value(ptr %1, !12872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12809)
    #dbg_value(ptr %2, !12872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12809)
    #dbg_value(ptr %i.c, !12876, !DIExpression(), !12809)
    #dbg_value(ptr poison, !12861, !DIExpression(), !12811)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12813)
    #dbg_value(i64 16, !3939, !DIExpression(), !12817)
    #dbg_value(ptr %2, !3936, !DIExpression(), !12818)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12819)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12819)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12820)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12820)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12821)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12821)
    #dbg_value(i64 poison, !12877, !DIExpression(), !12822)
    #dbg_value(i64 1, !12878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12822)
    #dbg_value(i64 %i.g, !12878, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12822)
    #dbg_value(i64 %i.g, !12879, !DIExpression(), !12823)
    #dbg_value(ptr %i.n, !12889, !DIExpression(), !12824)
    #dbg_value(ptr %i.q, !12890, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12825)
    #dbg_value(i64 0, !12890, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12825)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12916, !noalias !12892
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12916
  store ptr %i.n, ptr %i.r, align 8, !dbg !12916, !noalias !12892
  store ptr %i.q, ptr %i.a, align 8, !dbg !12916, !noalias !12892
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12916
  store i64 0, ptr %i.s, align 8, !dbg !12916, !noalias !12892
    #dbg_value(ptr %1, !12893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12833)
    #dbg_value(ptr %2, !12893, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12833)
    #dbg_declare(ptr %i.a, !12899, !DIExpression(), !12834)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretNtNtNtBc_2io4util4SinkEs6_0ENCB4N_s7_0NCB4N_s8_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6D_8for_each4callNtNtCsgCecv3eZDcN_5alloc6string6StringNCINvMsk_NtB7K_3vecINtB8r_3VecB7G_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretNtNtNtB22_2io4util4SinkEs6_0ENCB6z_s7_0NCB6z_s8_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !12917, !noalias !12859

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !12918, !noalias !12859

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !12919, !noalias !12859
  unreachable, !dbg !12919

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !12919

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretNtNtNtB22_2io4util4SinkEs6_0ENCB6z_s7_0NCB6z_s8_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12920, !noalias !12892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !12921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12918, !noalias !12859
  ret void, !dbg !12922
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretNtNtNtB1M_2io4util4SinkEsb_0ENCB6j_sc_0NCB6j_sd_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12925 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !13015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13019)
    #dbg_value(ptr %2, !13015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13019)
    #dbg_value(ptr %1, !13020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12930)
    #dbg_value(ptr %2, !13020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12930)
    #dbg_declare(ptr %i.c, !13021, !DIExpression(), !12931)
    #dbg_declare(ptr poison, !13024, !DIExpression(), !12936)
    #dbg_declare(ptr poison, !13029, !DIExpression(), !12939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13077, !noalias !13032
    #dbg_value(ptr poison, !13034, !DIExpression(), !12944)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12946)
    #dbg_value(i64 16, !3939, !DIExpression(), !12950)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !12951)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12952)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12952)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12953)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12953)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12954)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12954)
  %i.d = ptrtoint ptr %2 to i64, !dbg !13078
  %i.e = ptrtoint ptr %1 to i64, !dbg !13078
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !13078
  %i.g = lshr exact i64 %i.f, 4, !dbg !13078      ; 2 uses
    #dbg_value(i64 %i.g, !13022, !DIExpression(), !12955)
    #dbg_value(i64 %i.g, !13027, !DIExpression(), !12956)
    #dbg_value(i64 %i.g, !13025, !DIExpression(), !12957)
    #dbg_value(i64 %i.g, !13030, !DIExpression(), !12958)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !12960)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !12962)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !12963)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12960)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12962)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12960)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12962)
    #dbg_value(i64 0, !3485, !DIExpression(), !12962)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13079, !noalias !13032
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !13079, !noalias !13032
  %i.h = load i64, ptr %i.b, align 8, !dbg !13079, !range !3488, !noalias !13032, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !13080
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13081
  %i.k = load i64, ptr %i.j, align 8, !dbg !13081, !range !3489, !noalias !13032, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13081 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i, !dbg !13080, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !13082, !noalias !13032
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12964)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12964)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !13083, !noalias !13032
  unreachable, !dbg !13083

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !13084, !noalias !13032, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12965)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12965)
    #dbg_value(ptr poison, !3484, !DIExpression(), !12966)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !13085
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12968)
  tail call void @llvm.assume(i1 %i.o), !dbg !13086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13087, !noalias !13032
  store i64 %i.k, ptr %i.c, align 8, !dbg !13088, !noalias !13032
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13088
  store ptr %i.n, ptr %i.p, align 8, !dbg !13088, !noalias !13032
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !13088 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !13088, !noalias !13032
    #dbg_value(ptr %i.c, !13039, !DIExpression(), !12971)
    #dbg_value(ptr %1, !13042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12971)
    #dbg_value(ptr %2, !13042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12971)
    #dbg_value(ptr %1, !13045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12982)
    #dbg_value(ptr %2, !13045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12982)
    #dbg_value(ptr %i.c, !13049, !DIExpression(), !12982)
    #dbg_value(ptr poison, !13034, !DIExpression(), !12984)
    #dbg_value(ptr poison, !3931, !DIExpression(), !12986)
    #dbg_value(i64 16, !3939, !DIExpression(), !12990)
    #dbg_value(ptr %2, !3936, !DIExpression(), !12991)
    #dbg_value(ptr %2, !3956, !DIExpression(), !12992)
    #dbg_value(ptr %1, !3957, !DIExpression(), !12992)
    #dbg_value(ptr %2, !3950, !DIExpression(), !12993)
    #dbg_value(ptr %1, !3951, !DIExpression(), !12993)
    #dbg_value(ptr %1, !3945, !DIExpression(), !12994)
    #dbg_value(ptr %2, !3944, !DIExpression(), !12994)
    #dbg_value(i64 poison, !13050, !DIExpression(), !12995)
    #dbg_value(i64 1, !13051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12995)
    #dbg_value(i64 %i.g, !13051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12995)
    #dbg_value(i64 %i.g, !13052, !DIExpression(), !12996)
    #dbg_value(ptr %i.n, !13062, !DIExpression(), !12997)
    #dbg_value(ptr %i.q, !13063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12998)
    #dbg_value(i64 0, !13063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12998)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13089, !noalias !13065
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13089
  store ptr %i.n, ptr %i.r, align 8, !dbg !13089, !noalias !13065
  store ptr %i.q, ptr %i.a, align 8, !dbg !13089, !noalias !13065
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13089
  store i64 0, ptr %i.s, align 8, !dbg !13089, !noalias !13065
    #dbg_value(ptr %1, !13066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13006)
    #dbg_value(ptr %2, !13066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13006)
    #dbg_declare(ptr %i.a, !13072, !DIExpression(), !13007)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretNtNtNtBc_2io4util4SinkEsb_0ENCB4N_sc_0NCB4N_sd_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6D_8for_each4callNtNtCsgCecv3eZDcN_5alloc6string6StringNCINvMsk_NtB7K_3vecINtB8r_3VecB7G_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretNtNtNtB22_2io4util4SinkEsb_0ENCB6z_sc_0NCB6z_sd_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !13090, !noalias !13032

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !13091, !noalias !13032

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !13092, !noalias !13032
  unreachable, !dbg !13092

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !13092

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretNtNtNtB22_2io4util4SinkEsb_0ENCB6z_sc_0NCB6z_sd_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13093, !noalias !13065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !13094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13091, !noalias !13032
  ret void, !dbg !13095
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretNtNtNtB1M_2io4util4SinkEsg_0ENCB6j_sh_0NCB6j_si_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13098 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !13188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13192)
    #dbg_value(ptr %2, !13188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13192)
    #dbg_value(ptr %1, !13193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13103)
    #dbg_value(ptr %2, !13193, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13103)
    #dbg_declare(ptr %i.c, !13194, !DIExpression(), !13104)
    #dbg_declare(ptr poison, !13197, !DIExpression(), !13109)
    #dbg_declare(ptr poison, !13202, !DIExpression(), !13112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13250, !noalias !13205
    #dbg_value(ptr poison, !13207, !DIExpression(), !13117)
    #dbg_value(ptr poison, !3931, !DIExpression(), !13119)
    #dbg_value(i64 16, !3939, !DIExpression(), !13123)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !13124)
    #dbg_value(ptr %2, !3956, !DIExpression(), !13125)
    #dbg_value(ptr %1, !3957, !DIExpression(), !13125)
    #dbg_value(ptr %2, !3950, !DIExpression(), !13126)
    #dbg_value(ptr %1, !3951, !DIExpression(), !13126)
    #dbg_value(ptr %1, !3945, !DIExpression(), !13127)
    #dbg_value(ptr %2, !3944, !DIExpression(), !13127)
  %i.d = ptrtoint ptr %2 to i64, !dbg !13251
  %i.e = ptrtoint ptr %1 to i64, !dbg !13251
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !13251
  %i.g = lshr exact i64 %i.f, 4, !dbg !13251      ; 2 uses
    #dbg_value(i64 %i.g, !13195, !DIExpression(), !13128)
    #dbg_value(i64 %i.g, !13200, !DIExpression(), !13129)
    #dbg_value(i64 %i.g, !13198, !DIExpression(), !13130)
    #dbg_value(i64 %i.g, !13203, !DIExpression(), !13131)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !13133)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !13135)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !13136)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13133)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13135)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13133)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13135)
    #dbg_value(i64 0, !3485, !DIExpression(), !13135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13252, !noalias !13205
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !13252, !noalias !13205
  %i.h = load i64, ptr %i.b, align 8, !dbg !13252, !range !3488, !noalias !13205, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !13253
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13254
  %i.k = load i64, ptr %i.j, align 8, !dbg !13254, !range !3489, !noalias !13205, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13254 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i, !dbg !13253, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !13255, !noalias !13205
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13137)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13137)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !13256, !noalias !13205
  unreachable, !dbg !13256

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !13257, !noalias !13205, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13138)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13138)
    #dbg_value(ptr poison, !3484, !DIExpression(), !13139)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !13258
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13141)
  tail call void @llvm.assume(i1 %i.o), !dbg !13259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13260, !noalias !13205
  store i64 %i.k, ptr %i.c, align 8, !dbg !13261, !noalias !13205
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13261
  store ptr %i.n, ptr %i.p, align 8, !dbg !13261, !noalias !13205
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !13261 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !13261, !noalias !13205
    #dbg_value(ptr %i.c, !13212, !DIExpression(), !13144)
    #dbg_value(ptr %1, !13215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13144)
    #dbg_value(ptr %2, !13215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13144)
    #dbg_value(ptr %1, !13218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13155)
    #dbg_value(ptr %2, !13218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13155)
    #dbg_value(ptr %i.c, !13222, !DIExpression(), !13155)
    #dbg_value(ptr poison, !13207, !DIExpression(), !13157)
    #dbg_value(ptr poison, !3931, !DIExpression(), !13159)
    #dbg_value(i64 16, !3939, !DIExpression(), !13163)
    #dbg_value(ptr %2, !3936, !DIExpression(), !13164)
    #dbg_value(ptr %2, !3956, !DIExpression(), !13165)
    #dbg_value(ptr %1, !3957, !DIExpression(), !13165)
    #dbg_value(ptr %2, !3950, !DIExpression(), !13166)
    #dbg_value(ptr %1, !3951, !DIExpression(), !13166)
    #dbg_value(ptr %1, !3945, !DIExpression(), !13167)
    #dbg_value(ptr %2, !3944, !DIExpression(), !13167)
    #dbg_value(i64 poison, !13223, !DIExpression(), !13168)
    #dbg_value(i64 1, !13224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13168)
    #dbg_value(i64 %i.g, !13224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13168)
    #dbg_value(i64 %i.g, !13225, !DIExpression(), !13169)
    #dbg_value(ptr %i.n, !13235, !DIExpression(), !13170)
    #dbg_value(ptr %i.q, !13236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13171)
    #dbg_value(i64 0, !13236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13262, !noalias !13238
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13262
  store ptr %i.n, ptr %i.r, align 8, !dbg !13262, !noalias !13238
  store ptr %i.q, ptr %i.a, align 8, !dbg !13262, !noalias !13238
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13262
  store i64 0, ptr %i.s, align 8, !dbg !13262, !noalias !13238
    #dbg_value(ptr %1, !13239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13179)
    #dbg_value(ptr %2, !13239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13179)
    #dbg_declare(ptr %i.a, !13245, !DIExpression(), !13180)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretNtNtNtBc_2io4util4SinkEsg_0ENCB4N_sh_0NCB4N_si_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6D_8for_each4callNtNtCsgCecv3eZDcN_5alloc6string6StringNCINvMsk_NtB7K_3vecINtB8r_3VecB7G_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretNtNtNtB22_2io4util4SinkEsg_0ENCB6z_sh_0NCB6z_si_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !13263, !noalias !13205

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !13264, !noalias !13205

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !13265, !noalias !13205
  unreachable, !dbg !13265

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !13265

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretNtNtNtB22_2io4util4SinkEsg_0ENCB6z_sh_0NCB6z_si_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretNtNtNtB1r_2io4util4SinkEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13266, !noalias !13238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !13267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13264, !noalias !13205
  ret void, !dbg !13268
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretQIBL_hEEs1_0ENCB6j_s2_0NCB6j_s3_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13271 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !13361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13365)
    #dbg_value(ptr %2, !13361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13365)
    #dbg_value(ptr %1, !13366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13276)
    #dbg_value(ptr %2, !13366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13276)
    #dbg_declare(ptr %i.c, !13367, !DIExpression(), !13277)
    #dbg_declare(ptr poison, !13370, !DIExpression(), !13282)
    #dbg_declare(ptr poison, !13375, !DIExpression(), !13285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13423, !noalias !13378
    #dbg_value(ptr poison, !13380, !DIExpression(), !13290)
    #dbg_value(ptr poison, !3931, !DIExpression(), !13292)
    #dbg_value(i64 16, !3939, !DIExpression(), !13296)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !13297)
    #dbg_value(ptr %2, !3956, !DIExpression(), !13298)
    #dbg_value(ptr %1, !3957, !DIExpression(), !13298)
    #dbg_value(ptr %2, !3950, !DIExpression(), !13299)
    #dbg_value(ptr %1, !3951, !DIExpression(), !13299)
    #dbg_value(ptr %1, !3945, !DIExpression(), !13300)
    #dbg_value(ptr %2, !3944, !DIExpression(), !13300)
  %i.d = ptrtoint ptr %2 to i64, !dbg !13424
  %i.e = ptrtoint ptr %1 to i64, !dbg !13424
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !13424
  %i.g = lshr exact i64 %i.f, 4, !dbg !13424      ; 2 uses
    #dbg_value(i64 %i.g, !13368, !DIExpression(), !13301)
    #dbg_value(i64 %i.g, !13373, !DIExpression(), !13302)
    #dbg_value(i64 %i.g, !13371, !DIExpression(), !13303)
    #dbg_value(i64 %i.g, !13376, !DIExpression(), !13304)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !13306)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !13308)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !13309)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13306)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13308)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13306)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13308)
    #dbg_value(i64 0, !3485, !DIExpression(), !13308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13425, !noalias !13378
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !13425, !noalias !13378
  %i.h = load i64, ptr %i.b, align 8, !dbg !13425, !range !3488, !noalias !13378, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !13426
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13427
  %i.k = load i64, ptr %i.j, align 8, !dbg !13427, !range !3489, !noalias !13378, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13427 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i, !dbg !13426, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !13428, !noalias !13378
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13310)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13310)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !13429, !noalias !13378
  unreachable, !dbg !13429

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !13430, !noalias !13378, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13311)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13311)
    #dbg_value(ptr poison, !3484, !DIExpression(), !13312)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !13431
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13314)
  tail call void @llvm.assume(i1 %i.o), !dbg !13432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13433, !noalias !13378
  store i64 %i.k, ptr %i.c, align 8, !dbg !13434, !noalias !13378
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13434
  store ptr %i.n, ptr %i.p, align 8, !dbg !13434, !noalias !13378
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !13434 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !13434, !noalias !13378
    #dbg_value(ptr %i.c, !13385, !DIExpression(), !13317)
    #dbg_value(ptr %1, !13388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13317)
    #dbg_value(ptr %2, !13388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13317)
    #dbg_value(ptr %1, !13391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13328)
    #dbg_value(ptr %2, !13391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13328)
    #dbg_value(ptr %i.c, !13395, !DIExpression(), !13328)
    #dbg_value(ptr poison, !13380, !DIExpression(), !13330)
    #dbg_value(ptr poison, !3931, !DIExpression(), !13332)
    #dbg_value(i64 16, !3939, !DIExpression(), !13336)
    #dbg_value(ptr %2, !3936, !DIExpression(), !13337)
    #dbg_value(ptr %2, !3956, !DIExpression(), !13338)
    #dbg_value(ptr %1, !3957, !DIExpression(), !13338)
    #dbg_value(ptr %2, !3950, !DIExpression(), !13339)
    #dbg_value(ptr %1, !3951, !DIExpression(), !13339)
    #dbg_value(ptr %1, !3945, !DIExpression(), !13340)
    #dbg_value(ptr %2, !3944, !DIExpression(), !13340)
    #dbg_value(i64 poison, !13396, !DIExpression(), !13341)
    #dbg_value(i64 1, !13397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13341)
    #dbg_value(i64 %i.g, !13397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13341)
    #dbg_value(i64 %i.g, !13398, !DIExpression(), !13342)
    #dbg_value(ptr %i.n, !13408, !DIExpression(), !13343)
    #dbg_value(ptr %i.q, !13409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13344)
    #dbg_value(i64 0, !13409, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13344)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13435, !noalias !13411
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13435
  store ptr %i.n, ptr %i.r, align 8, !dbg !13435, !noalias !13411
  store ptr %i.q, ptr %i.a, align 8, !dbg !13435, !noalias !13411
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13435
  store i64 0, ptr %i.s, align 8, !dbg !13435, !noalias !13411
    #dbg_value(ptr %1, !13412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13352)
    #dbg_value(ptr %2, !13412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13352)
    #dbg_declare(ptr %i.a, !13418, !DIExpression(), !13353)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEs1_0ENCB4N_s2_0NCB4N_s3_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6R_8for_each4callNtNtB5R_6string6StringNCINvMsk_B5P_IB5N_B7U_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretQIBU_hEEs1_0ENCB6z_s2_0NCB6z_s3_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !13436, !noalias !13378

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !13437, !noalias !13378

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !13438, !noalias !13378
  unreachable, !dbg !13438

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !13438

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretQIBU_hEEs1_0ENCB6z_s2_0NCB6z_s3_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEs1_0ENCB5Y_s2_0NCB5Y_s3_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13439, !noalias !13411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !13440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13437, !noalias !13378
  ret void, !dbg !13441
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretQIBL_hEEs6_0ENCB6j_s7_0NCB6j_s8_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13444 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !13534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13538)
    #dbg_value(ptr %2, !13534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13538)
    #dbg_value(ptr %1, !13539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13449)
    #dbg_value(ptr %2, !13539, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13449)
    #dbg_declare(ptr %i.c, !13540, !DIExpression(), !13450)
    #dbg_declare(ptr poison, !13543, !DIExpression(), !13455)
    #dbg_declare(ptr poison, !13548, !DIExpression(), !13458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13596, !noalias !13551
    #dbg_value(ptr poison, !13553, !DIExpression(), !13463)
    #dbg_value(ptr poison, !3931, !DIExpression(), !13465)
    #dbg_value(i64 16, !3939, !DIExpression(), !13469)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !13470)
    #dbg_value(ptr %2, !3956, !DIExpression(), !13471)
    #dbg_value(ptr %1, !3957, !DIExpression(), !13471)
    #dbg_value(ptr %2, !3950, !DIExpression(), !13472)
    #dbg_value(ptr %1, !3951, !DIExpression(), !13472)
    #dbg_value(ptr %1, !3945, !DIExpression(), !13473)
    #dbg_value(ptr %2, !3944, !DIExpression(), !13473)
  %i.d = ptrtoint ptr %2 to i64, !dbg !13597
  %i.e = ptrtoint ptr %1 to i64, !dbg !13597
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !13597
  %i.g = lshr exact i64 %i.f, 4, !dbg !13597      ; 2 uses
    #dbg_value(i64 %i.g, !13541, !DIExpression(), !13474)
    #dbg_value(i64 %i.g, !13546, !DIExpression(), !13475)
    #dbg_value(i64 %i.g, !13544, !DIExpression(), !13476)
    #dbg_value(i64 %i.g, !13549, !DIExpression(), !13477)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !13479)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !13481)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !13482)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13479)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13481)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13479)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13481)
    #dbg_value(i64 0, !3485, !DIExpression(), !13481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13598, !noalias !13551
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !13598, !noalias !13551
  %i.h = load i64, ptr %i.b, align 8, !dbg !13598, !range !3488, !noalias !13551, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !13599
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13600
  %i.k = load i64, ptr %i.j, align 8, !dbg !13600, !range !3489, !noalias !13551, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13600 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i, !dbg !13599, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !13601, !noalias !13551
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13483)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13483)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !13602, !noalias !13551
  unreachable, !dbg !13602

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !13603, !noalias !13551, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13484)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13484)
    #dbg_value(ptr poison, !3484, !DIExpression(), !13485)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !13604
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13487)
  tail call void @llvm.assume(i1 %i.o), !dbg !13605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13606, !noalias !13551
  store i64 %i.k, ptr %i.c, align 8, !dbg !13607, !noalias !13551
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13607
  store ptr %i.n, ptr %i.p, align 8, !dbg !13607, !noalias !13551
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !13607 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !13607, !noalias !13551
    #dbg_value(ptr %i.c, !13558, !DIExpression(), !13490)
    #dbg_value(ptr %1, !13561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13490)
    #dbg_value(ptr %2, !13561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13490)
    #dbg_value(ptr %1, !13564, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13501)
    #dbg_value(ptr %2, !13564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13501)
    #dbg_value(ptr %i.c, !13568, !DIExpression(), !13501)
    #dbg_value(ptr poison, !13553, !DIExpression(), !13503)
    #dbg_value(ptr poison, !3931, !DIExpression(), !13505)
    #dbg_value(i64 16, !3939, !DIExpression(), !13509)
    #dbg_value(ptr %2, !3936, !DIExpression(), !13510)
    #dbg_value(ptr %2, !3956, !DIExpression(), !13511)
    #dbg_value(ptr %1, !3957, !DIExpression(), !13511)
    #dbg_value(ptr %2, !3950, !DIExpression(), !13512)
    #dbg_value(ptr %1, !3951, !DIExpression(), !13512)
    #dbg_value(ptr %1, !3945, !DIExpression(), !13513)
    #dbg_value(ptr %2, !3944, !DIExpression(), !13513)
    #dbg_value(i64 poison, !13569, !DIExpression(), !13514)
    #dbg_value(i64 1, !13570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13514)
    #dbg_value(i64 %i.g, !13570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13514)
    #dbg_value(i64 %i.g, !13571, !DIExpression(), !13515)
    #dbg_value(ptr %i.n, !13581, !DIExpression(), !13516)
    #dbg_value(ptr %i.q, !13582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13517)
    #dbg_value(i64 0, !13582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13608, !noalias !13584
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13608
  store ptr %i.n, ptr %i.r, align 8, !dbg !13608, !noalias !13584
  store ptr %i.q, ptr %i.a, align 8, !dbg !13608, !noalias !13584
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13608
  store i64 0, ptr %i.s, align 8, !dbg !13608, !noalias !13584
    #dbg_value(ptr %1, !13585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13525)
    #dbg_value(ptr %2, !13585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13525)
    #dbg_declare(ptr %i.a, !13591, !DIExpression(), !13526)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEs6_0ENCB4N_s7_0NCB4N_s8_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6R_8for_each4callNtNtB5R_6string6StringNCINvMsk_B5P_IB5N_B7U_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretQIBU_hEEs6_0ENCB6z_s7_0NCB6z_s8_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !13609, !noalias !13551

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !13610, !noalias !13551

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !13611, !noalias !13551
  unreachable, !dbg !13611

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !13611

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretQIBU_hEEs6_0ENCB6z_s7_0NCB6z_s8_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEs6_0ENCB5Y_s7_0NCB5Y_s8_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13612, !noalias !13584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !13613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13610, !noalias !13551
  ret void, !dbg !13614
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretQIBL_hEEsb_0ENCB6j_sc_0NCB6j_sd_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13617 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !13707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13711)
    #dbg_value(ptr %2, !13707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13711)
    #dbg_value(ptr %1, !13712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13622)
    #dbg_value(ptr %2, !13712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13622)
    #dbg_declare(ptr %i.c, !13713, !DIExpression(), !13623)
    #dbg_declare(ptr poison, !13716, !DIExpression(), !13628)
    #dbg_declare(ptr poison, !13721, !DIExpression(), !13631)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13769, !noalias !13724
    #dbg_value(ptr poison, !13726, !DIExpression(), !13636)
    #dbg_value(ptr poison, !3931, !DIExpression(), !13638)
    #dbg_value(i64 16, !3939, !DIExpression(), !13642)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !13643)
    #dbg_value(ptr %2, !3956, !DIExpression(), !13644)
    #dbg_value(ptr %1, !3957, !DIExpression(), !13644)
    #dbg_value(ptr %2, !3950, !DIExpression(), !13645)
    #dbg_value(ptr %1, !3951, !DIExpression(), !13645)
    #dbg_value(ptr %1, !3945, !DIExpression(), !13646)
    #dbg_value(ptr %2, !3944, !DIExpression(), !13646)
  %i.d = ptrtoint ptr %2 to i64, !dbg !13770
  %i.e = ptrtoint ptr %1 to i64, !dbg !13770
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !13770
  %i.g = lshr exact i64 %i.f, 4, !dbg !13770      ; 2 uses
    #dbg_value(i64 %i.g, !13714, !DIExpression(), !13647)
    #dbg_value(i64 %i.g, !13719, !DIExpression(), !13648)
    #dbg_value(i64 %i.g, !13717, !DIExpression(), !13649)
    #dbg_value(i64 %i.g, !13722, !DIExpression(), !13650)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !13652)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !13654)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !13655)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13652)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13654)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13652)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13654)
    #dbg_value(i64 0, !3485, !DIExpression(), !13654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13771, !noalias !13724
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !13771, !noalias !13724
  %i.h = load i64, ptr %i.b, align 8, !dbg !13771, !range !3488, !noalias !13724, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !13772
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13773
  %i.k = load i64, ptr %i.j, align 8, !dbg !13773, !range !3489, !noalias !13724, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13773 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i, !dbg !13772, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !13774, !noalias !13724
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13656)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13656)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !13775, !noalias !13724
  unreachable, !dbg !13775

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !13776, !noalias !13724, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13657)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13657)
    #dbg_value(ptr poison, !3484, !DIExpression(), !13658)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !13777
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13660)
  tail call void @llvm.assume(i1 %i.o), !dbg !13778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13779, !noalias !13724
  store i64 %i.k, ptr %i.c, align 8, !dbg !13780, !noalias !13724
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13780
  store ptr %i.n, ptr %i.p, align 8, !dbg !13780, !noalias !13724
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !13780 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !13780, !noalias !13724
    #dbg_value(ptr %i.c, !13731, !DIExpression(), !13663)
    #dbg_value(ptr %1, !13734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13663)
    #dbg_value(ptr %2, !13734, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13663)
    #dbg_value(ptr %1, !13737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13674)
    #dbg_value(ptr %2, !13737, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13674)
    #dbg_value(ptr %i.c, !13741, !DIExpression(), !13674)
    #dbg_value(ptr poison, !13726, !DIExpression(), !13676)
    #dbg_value(ptr poison, !3931, !DIExpression(), !13678)
    #dbg_value(i64 16, !3939, !DIExpression(), !13682)
    #dbg_value(ptr %2, !3936, !DIExpression(), !13683)
    #dbg_value(ptr %2, !3956, !DIExpression(), !13684)
    #dbg_value(ptr %1, !3957, !DIExpression(), !13684)
    #dbg_value(ptr %2, !3950, !DIExpression(), !13685)
    #dbg_value(ptr %1, !3951, !DIExpression(), !13685)
    #dbg_value(ptr %1, !3945, !DIExpression(), !13686)
    #dbg_value(ptr %2, !3944, !DIExpression(), !13686)
    #dbg_value(i64 poison, !13742, !DIExpression(), !13687)
    #dbg_value(i64 1, !13743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13687)
    #dbg_value(i64 %i.g, !13743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13687)
    #dbg_value(i64 %i.g, !13744, !DIExpression(), !13688)
    #dbg_value(ptr %i.n, !13754, !DIExpression(), !13689)
    #dbg_value(ptr %i.q, !13755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13690)
    #dbg_value(i64 0, !13755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13690)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13781, !noalias !13757
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13781
  store ptr %i.n, ptr %i.r, align 8, !dbg !13781, !noalias !13757
  store ptr %i.q, ptr %i.a, align 8, !dbg !13781, !noalias !13757
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13781
  store i64 0, ptr %i.s, align 8, !dbg !13781, !noalias !13757
    #dbg_value(ptr %1, !13758, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13698)
    #dbg_value(ptr %2, !13758, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13698)
    #dbg_declare(ptr %i.a, !13764, !DIExpression(), !13699)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEsb_0ENCB4N_sc_0NCB4N_sd_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6R_8for_each4callNtNtB5R_6string6StringNCINvMsk_B5P_IB5N_B7U_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretQIBU_hEEsb_0ENCB6z_sc_0NCB6z_sd_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !13782, !noalias !13724

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !13783, !noalias !13724

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !13784, !noalias !13724
  unreachable, !dbg !13784

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !13784

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretQIBU_hEEsb_0ENCB6z_sc_0NCB6z_sd_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEsb_0ENCB5Y_sc_0NCB5Y_sd_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13785, !noalias !13757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !13786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13783, !noalias !13724
  ret void, !dbg !13787
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB34_19ComponentDefinition13build_contextINtNtB1I_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB38_5value3key3KeyNtB5K_5ValueENCINvMNtNtB38_2vm11interpreterNtB6n_14VirtualMachine9interpretQIBL_hEEsg_0ENCB6j_sh_0NCB6j_si_0Es0_0EE9from_iterB38_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13790 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !13880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13884)
    #dbg_value(ptr %2, !13880, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13884)
    #dbg_value(ptr %1, !13885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13795)
    #dbg_value(ptr %2, !13885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13795)
    #dbg_declare(ptr %i.c, !13886, !DIExpression(), !13796)
    #dbg_declare(ptr poison, !13889, !DIExpression(), !13801)
    #dbg_declare(ptr poison, !13894, !DIExpression(), !13804)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13942, !noalias !13897
    #dbg_value(ptr poison, !13899, !DIExpression(), !13809)
    #dbg_value(ptr poison, !3931, !DIExpression(), !13811)
    #dbg_value(i64 16, !3939, !DIExpression(), !13815)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !3936, !DIExpression(), !13816)
    #dbg_value(ptr %2, !3956, !DIExpression(), !13817)
    #dbg_value(ptr %1, !3957, !DIExpression(), !13817)
    #dbg_value(ptr %2, !3950, !DIExpression(), !13818)
    #dbg_value(ptr %1, !3951, !DIExpression(), !13818)
    #dbg_value(ptr %1, !3945, !DIExpression(), !13819)
    #dbg_value(ptr %2, !3944, !DIExpression(), !13819)
  %i.d = ptrtoint ptr %2 to i64, !dbg !13943
  %i.e = ptrtoint ptr %1 to i64, !dbg !13943
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !13943
  %i.g = lshr exact i64 %i.f, 4, !dbg !13943      ; 2 uses
    #dbg_value(i64 %i.g, !13887, !DIExpression(), !13820)
    #dbg_value(i64 %i.g, !13892, !DIExpression(), !13821)
    #dbg_value(i64 %i.g, !13890, !DIExpression(), !13822)
    #dbg_value(i64 %i.g, !13895, !DIExpression(), !13823)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !13825)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !13827)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !13828)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13825)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13827)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13825)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13827)
    #dbg_value(i64 0, !3485, !DIExpression(), !13827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13944, !noalias !13897
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !13944, !noalias !13897
  %i.h = load i64, ptr %i.b, align 8, !dbg !13944, !range !3488, !noalias !13897, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !13945
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13946
  %i.k = load i64, ptr %i.j, align 8, !dbg !13946, !range !3489, !noalias !13897, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13946 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i, !dbg !13945, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !13947, !noalias !13897
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13829)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13829)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !13948, !noalias !13897
  unreachable, !dbg !13948

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !13949, !noalias !13897, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13830)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13830)
    #dbg_value(ptr poison, !3484, !DIExpression(), !13831)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !13950
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13833)
  tail call void @llvm.assume(i1 %i.o), !dbg !13951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13952, !noalias !13897
  store i64 %i.k, ptr %i.c, align 8, !dbg !13953, !noalias !13897
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13953
  store ptr %i.n, ptr %i.p, align 8, !dbg !13953, !noalias !13897
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !13953 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !13953, !noalias !13897
    #dbg_value(ptr %i.c, !13904, !DIExpression(), !13836)
    #dbg_value(ptr %1, !13907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13836)
    #dbg_value(ptr %2, !13907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13836)
    #dbg_value(ptr %1, !13910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13847)
    #dbg_value(ptr %2, !13910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13847)
    #dbg_value(ptr %i.c, !13914, !DIExpression(), !13847)
    #dbg_value(ptr poison, !13899, !DIExpression(), !13849)
    #dbg_value(ptr poison, !3931, !DIExpression(), !13851)
    #dbg_value(i64 16, !3939, !DIExpression(), !13855)
    #dbg_value(ptr %2, !3936, !DIExpression(), !13856)
    #dbg_value(ptr %2, !3956, !DIExpression(), !13857)
    #dbg_value(ptr %1, !3957, !DIExpression(), !13857)
    #dbg_value(ptr %2, !3950, !DIExpression(), !13858)
    #dbg_value(ptr %1, !3951, !DIExpression(), !13858)
    #dbg_value(ptr %1, !3945, !DIExpression(), !13859)
    #dbg_value(ptr %2, !3944, !DIExpression(), !13859)
    #dbg_value(i64 poison, !13915, !DIExpression(), !13860)
    #dbg_value(i64 1, !13916, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13860)
    #dbg_value(i64 %i.g, !13916, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13860)
    #dbg_value(i64 %i.g, !13917, !DIExpression(), !13861)
    #dbg_value(ptr %i.n, !13927, !DIExpression(), !13862)
    #dbg_value(ptr %i.q, !13928, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13863)
    #dbg_value(i64 0, !13928, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13863)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13954, !noalias !13930
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13954
  store ptr %i.n, ptr %i.r, align 8, !dbg !13954, !noalias !13930
  store ptr %i.q, ptr %i.a, align 8, !dbg !13954, !noalias !13930
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13954
  store i64 0, ptr %i.s, align 8, !dbg !13954, !noalias !13930
    #dbg_value(ptr %1, !13931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13871)
    #dbg_value(ptr %2, !13931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13871)
    #dbg_declare(ptr %i.a, !13937, !DIExpression(), !13872)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB1z_19ComponentDefinition13build_contextINtNtB8_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB1D_5value3key3KeyNtB4e_5ValueENCINvMNtNtB1D_2vm11interpreterNtB4R_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEsg_0ENCB4N_sh_0NCB4N_si_0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6R_8for_each4callNtNtB5R_6string6StringNCINvMsk_B5P_IB5N_B7U_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretQIBU_hEEsg_0ENCB6z_sh_0NCB6z_si_0Es0_0EE9from_iterB3o_.exit unwind label %bb.c, !dbg !13955, !noalias !13897

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.e unwind label %bb.d, !dbg !13956, !noalias !13897

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !13957, !noalias !13897
  unreachable, !dbg !13957

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !13957

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB3k_19ComponentDefinition13build_contextINtNtB1Y_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB3o_5value3key3KeyNtB60_5ValueENCINvMNtNtB3o_2vm11interpreterNtB6D_14VirtualMachine9interpretQIBU_hEEsg_0ENCB6z_sh_0NCB6z_si_0Es0_0EE9from_iterB3o_.exit: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterReENCINvMsm_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB2J_19ComponentDefinition13build_contextINtNtB1n_10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtB2N_5value3key3KeyNtB5p_5ValueENCINvMNtNtB2N_2vm11interpreterNtB62_14VirtualMachine9interpretQIBx_hEEsg_0ENCB5Y_sh_0NCB5Y_si_0Es0_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13958, !noalias !13930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !13959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13956, !noalias !13897
  ret void, !dbg !13960
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB3n_5ValueENCNCNvMs7_B3n_B3W_16available_fields00EE9from_iterB3p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13963 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
    #dbg_declare(ptr %1, !14190, !DIExpression(), !14194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14195), !dbg !14327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14196), !dbg !14327
    #dbg_declare(ptr %1, !14197, !DIExpression(), !13974)
    #dbg_declare(ptr %i.j, !14198, !DIExpression(), !13975)
    #dbg_declare(ptr %i.i, !14199, !DIExpression(), !13976)
    #dbg_value(i64 1, !14204, !DIExpression(), !13979)
    #dbg_value(i64 4, !14207, !DIExpression(), !13982)
    #dbg_value(i64 4, !14210, !DIExpression(), !13985)
    #dbg_declare(ptr poison, !14213, !DIExpression(), !13990)
    #dbg_declare(ptr poison, !14218, !DIExpression(), !13993)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14328, !noalias !14221
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !14329
    #dbg_value(ptr %1, !14223, !DIExpression(), !13996)
    #dbg_value(ptr %1, !4052, !DIExpression(), !13998)
    #dbg_value(ptr %1, !4067, !DIExpression(), !14000)
  %i.k = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBO_5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !dbg !14330, !noalias !14228
  %i.l = extractvalue { ptr, ptr } %i.k, 0, !dbg !14330 ; 2 uses
    #dbg_value(ptr %i.l, !14229, !DIExpression(), !14006)
    #dbg_value(ptr %1, !14236, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !14006)
    #dbg_value(ptr %1, !14239, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !14009)
  %.not.i.i = icmp eq ptr %i.l, null, !dbg !14331
  br i1 %.not.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1S_5ValueENCNCNvMs7_B1S_B2r_16available_fields00ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.thread.i, label %bb.b, !dbg !14332

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !14236, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !14006)
    #dbg_value(ptr %1, !14239, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !14009)
    #dbg_value(ptr %i.l, !14237, !DIExpression(), !14010)
    #dbg_value(ptr %i.l, !14242, !DIExpression(), !14009)
    #dbg_value(ptr poison, !14245, !DIExpression(), !14013)
    #dbg_value(ptr %i.l, !14247, !DIExpression(), !14013)
    #dbg_value(ptr %i.l, !14249, !DIExpression(), !14016)
    #dbg_value(ptr %i.l, !14254, !DIExpression(), !14021)
    #dbg_declare(ptr %i.g, !14256, !DIExpression(), !14022)
    #dbg_declare(ptr %i.f, !14257, !DIExpression(), !14023)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14333, !noalias !14259
  store i64 0, ptr %i.g, align 8, !dbg !14334, !noalias !14259
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !14334 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !14334, !noalias !14259
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !14334
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !14334, !noalias !14259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14335, !noalias !14259
    #dbg_value(ptr %i.g, !14263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14035)
    #dbg_value(ptr @7, !14263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14035)
    #dbg_value(i64 1610612768, !14267, !DIExpression(), !14035)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !14336
  store i64 1610612768, ptr %i.m, align 8, !dbg !14336, !noalias !14259
  store ptr %i.g, ptr %i.f, align 8, !dbg !14336, !noalias !14259
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14336
  store ptr @7, ptr %i.n, align 8, !dbg !14336, !noalias !14259
  %i.o = invoke noundef zeroext i1 @_RNvXs4_NtNtCs5yXxDE1DkoT_4tera5value3keyNtB5_3KeyNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.d unwind label %bb.c, !dbg !14337, !noalias !14269

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !2496, !DIExpression(), !14037)
    #dbg_value(ptr %i.g, !2501, !DIExpression(), !14039)
    #dbg_value(ptr %i.g, !2506, !DIExpression(), !14041)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.f, !dbg !14338, !noalias !14269

bb.d:                                             ; preds = %bb.b
    #dbg_value(i1 %i.o, !14271, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14046)
    #dbg_value(ptr @8, !14276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14046)
    #dbg_value(i64 55, !14276, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14046)
    #dbg_declare(ptr %i.a, !14278, !DIExpression(), !14047)
  br i1 %i.o, label %bb.e, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1S_5ValueENCNCNvMs7_B1S_B2r_16available_fields00ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i, !dbg !14339, !prof !3490

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28
          to label %.noexc.i.i.i.i unwind label %bb.c, !dbg !14340, !noalias !14269

.noexc.i.i.i.i:                                   ; preds = %bb.e
  unreachable, !dbg !14340

bb.f:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtB8_11collections5btree3set8IntoIterB13_EE9from_iterCs5yXxDE1DkoT_4tera:bb.a

bb.c:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.k, align 8, !dbg !29926, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.j, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29552)
    #dbg_value(ptr %i.m, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29552)
    #dbg_value(ptr poison, !3484, !DIExpression(), !29553)
  %i.n = icmp ule i64 %.val, %i.j, !dbg !29927
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !29555)
  tail call void @llvm.assume(i1 %i.n), !dbg !29928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !29929
  store i64 %i.j, ptr %i.e, align 8, !dbg !29930
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !29930 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !dbg !29930
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !29930 ; 4 uses
  store i64 0, ptr %i.p, align 8, !dbg !29930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !29931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !29931
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29808), !dbg !29932
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29809), !dbg !29932
    #dbg_value(ptr %i.e, !29810, !DIExpression(), !29561)
    #dbg_declare(ptr %i.d, !29813, !DIExpression(), !29562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29816), !dbg !29933
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29817), !dbg !29933
    #dbg_value(ptr %i.e, !29818, !DIExpression(), !29576)
    #dbg_value(ptr %i.e, !29838, !DIExpression(), !29579)
    #dbg_declare(ptr %i.d, !29822, !DIExpression(), !29580)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !29934
  %.val.i.i = load i64, ptr %i.q, align 8, !dbg !29934, !alias.scope !29840, !noundef !1322 ; 2 uses
    #dbg_value(i64 poison, !29823, !DIExpression(), !29581)
    #dbg_value(i64 1, !29824, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29581)
    #dbg_value(i64 %.val.i.i, !29824, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29581)
    #dbg_value(i64 %.val.i.i, !29825, !DIExpression(), !29582)
    #dbg_value(ptr %i.e, !4108, !DIExpression(), !29584)
    #dbg_value(i64 %.val.i.i, !4110, !DIExpression(), !29584)
    #dbg_value(i64 %.val.i.i, !4112, !DIExpression(), !29586)
    #dbg_value(i64 %.val.i.i, !4119, !DIExpression(), !29588)
    #dbg_value(i64 %.val.i.i, !29841, !DIExpression(), !29591)
    #dbg_value(ptr %i.e, !4116, !DIExpression(), !29592)
    #dbg_value(i64 0, !4117, !DIExpression(), !29586)
    #dbg_value(i64 0, !4121, !DIExpression(), !29588)
    #dbg_value(i64 0, !29843, !DIExpression(), !29591)
    #dbg_value(ptr %i.e, !4120, !DIExpression(), !29588)
    #dbg_value(ptr %i.e, !29842, !DIExpression(), !29591)
    #dbg_value(i64 8, !4122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29588)
    #dbg_value(i64 8, !29844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29591)
    #dbg_value(i64 24, !4122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29588)
    #dbg_value(i64 24, !29844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29591)
  %i.r = icmp ugt i64 %.val.i.i, %i.j, !dbg !29935
  br i1 %i.r, label %bb.d, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs5yXxDE1DkoT_4tera.exit.i.i, !dbg !29936, !prof !3490

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %.val.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs5yXxDE1DkoT_4tera.exit_crit_edge.i.i unwind label %bb.j, !dbg !29937, !noalias !29840

._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs5yXxDE1DkoT_4tera.exit_crit_edge.i.i: ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.p, align 8, !dbg !29938, !alias.scope !29846
  %.pre = load ptr, ptr %i.o, align 8, !dbg !29939, !alias.scope !29846
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs5yXxDE1DkoT_4tera.exit.i.i, !dbg !29937

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs5yXxDE1DkoT_4tera.exit_crit_edge.i.i, %bb.c
  %i.s = phi ptr [ %.pre, %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs5yXxDE1DkoT_4tera.exit_crit_edge.i.i ], [ %i.m, %bb.c ], !dbg !29939
  %i.t = phi i64 [ %.pre.i.i, %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs5yXxDE1DkoT_4tera.exit_crit_edge.i.i ], [ 0, %bb.c ], !dbg !29938
    #dbg_value(ptr %i.s, !29835, !DIExpression(), !29601)
    #dbg_value(ptr %i.p, !29847, !DIExpression(), !29602)
    #dbg_value(ptr %i.p, !29836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29603)
    #dbg_value(i64 %i.t, !29836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29603)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29940, !noalias !29849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !29940
    #dbg_value(ptr %i.s, !29850, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29607)
    #dbg_value(ptr %i.p, !29850, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29607)
    #dbg_value(i64 %i.t, !29850, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29607)
    #dbg_declare(ptr %i.b, !29856, !DIExpression(), !29608)
    #dbg_value(ptr %i.p, !29861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29614)
    #dbg_value(i64 %i.t, !29861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29614)
    #dbg_value(ptr %i.s, !29861, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29873
    #dbg_declare(ptr %i.b, !29866, !DIExpression(), !29618)
    #dbg_declare(ptr poison, !29867, !DIExpression(), !29619)
    #dbg_declare(ptr poison, !29868, !DIExpression(), !29620)
    #dbg_declare(ptr poison, !29869, !DIExpression(), !29621)
  br label %bb.e, !dbg !29941

bb.e:                                             ; preds = %bb.h, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs5yXxDE1DkoT_4tera.exit.i.i
  %.val5.i.i.i.i = phi i64 [ %i.x, %bb.h ], [ %i.t, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs5yXxDE1DkoT_4tera.exit.i.i ] ; 4 uses
  invoke void @_RNvXsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_8IntoIterNtNtBb_6string6StringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.g unwind label %bb.f, !dbg !29942, !noalias !29874

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !29876, !DIExpression(), !29626)
    #dbg_value(ptr poison, !29883, !DIExpression(), !29629)
    #dbg_value(ptr poison, !3787, !DIExpression(), !29631)
    #dbg_value(ptr poison, !3793, !DIExpression(), !29633)
  store i64 %.val5.i.i.i.i, ptr %i.p, align 8, !dbg !29943, !alias.scope !29846, !noalias !29889
    #dbg_value(ptr %i.b, !29891, !DIExpression(), !29636)
    #dbg_value(ptr %i.b, !29898, !DIExpression(), !29639)
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.body unwind label %bb.i, !dbg !29944, !noalias !29874

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !dbg !29945, !range !2494, !noalias !29904, !noundef !1322
  %.not.i.i.i.i = icmp eq i64 %i.v, -1, !dbg !29945
  br i1 %.not.i.i.i.i, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtB8_11collections5btree3set8IntoIterBG_EECs5yXxDE1DkoT_4tera.exit.i, label %bb.h, !dbg !29946

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !29905, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !29643)
    #dbg_declare(ptr poison, !29909, !DIExpression(), !29644)
    #dbg_declare(ptr %i.a, !29908, !DIExpression(), !29645)
    #dbg_value(ptr poison, !29913, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !29648)
    #dbg_value(ptr poison, !29917, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !29648)
    #dbg_declare(ptr %i.a, !29916, !DIExpression(), !29649)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.val5.i.i.i.i, !dbg !29947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !29948, !noalias !29874
  %i.x = add i64 %.val5.i.i.i.i, 1, !dbg !29949
  br label %bb.e, !dbg !29941

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !29950, !noalias !29874
  unreachable, !dbg !29950

bb.j:                                             ; preds = %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !29891, !DIExpression(), !29657)
    #dbg_value(ptr %i.d, !29898, !DIExpression(), !29659)
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.body unwind label %bb.k, !dbg !29951

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !29952
  unreachable, !dbg !29952

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtB8_11collections5btree3set8IntoIterBG_EECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.g
    #dbg_value(ptr poison, !29876, !DIExpression(), !29661)
    #dbg_value(ptr poison, !29883, !DIExpression(), !29663)
    #dbg_value(ptr poison, !3787, !DIExpression(), !29665)
    #dbg_value(ptr poison, !3793, !DIExpression(), !29667)
  store i64 %.val5.i.i.i.i, ptr %i.p, align 8, !dbg !29953, !alias.scope !29846, !noalias !29889
    #dbg_value(ptr %i.b, !29891, !DIExpression(), !29669)
    #dbg_value(ptr %i.b, !29898, !DIExpression(), !29671)
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.m unwind label %bb.l, !dbg !29954

bb.l:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtB8_11collections5btree3set8IntoIterBG_EECs5yXxDE1DkoT_4tera.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !29955

.body:                                            ; preds = %bb.f, %bb.j, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %lpad.thr_comm.i.i, %bb.j ], [ %i.u, %bb.f ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8IntoIterNtNtBK_6string6StringEECs5yXxDE1DkoT_4tera.exit unwind label %bb.n, !dbg !29955

bb.m:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtB8_11collections5btree3set8IntoIterBG_EECs5yXxDE1DkoT_4tera.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29956, !noalias !29873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29957, !noalias !29849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !29958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !29959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !29955
  ret void, !dbg !29960

bb.n:                                             ; preds = %bb.o, %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !29961
  unreachable, !dbg !29961

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8IntoIterNtNtBK_6string6StringEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.o, %.body
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ac, %bb.o ]
  resume { ptr, i32 } %.pn10, !dbg !29961

bb.o:                                             ; preds = %bb.b, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !29891, !DIExpression(), !29673)
    #dbg_value(ptr %1, !29898, !DIExpression(), !29675)
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8IntoIterNtNtBK_6string6StringEECs5yXxDE1DkoT_4tera.exit unwind label %bb.n, !dbg !29962
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtCs5yXxDE1DkoT_4tera5value5ValueENCNvNtB3c_7filters4joins1_0EE9from_iterB3c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29967 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !30049, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30055)
    #dbg_value(ptr %2, !30049, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30055)
    #dbg_declare(ptr %i.c, !30050, !DIExpression(), !30056)
    #dbg_declare(ptr poison, !30057, !DIExpression(), !30062)
    #dbg_declare(ptr poison, !30065, !DIExpression(), !30069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !30143
    #dbg_value(ptr poison, !30071, !DIExpression(), !29973)
    #dbg_value(ptr poison, !30077, !DIExpression(), !29979)
    #dbg_value(i64 24, !30084, !DIExpression(), !29987)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !30082, !DIExpression(), !29988)
    #dbg_value(ptr %2, !30098, !DIExpression(), !29989)
    #dbg_value(ptr %1, !30099, !DIExpression(), !29989)
    #dbg_value(ptr %2, !30092, !DIExpression(), !29990)
    #dbg_value(ptr %1, !30093, !DIExpression(), !29990)
    #dbg_value(ptr %1, !30088, !DIExpression(), !29991)
    #dbg_value(ptr %2, !30087, !DIExpression(), !29991)
  %i.d = ptrtoint ptr %2 to i64, !dbg !30144
  %i.e = ptrtoint ptr %1 to i64, !dbg !30144
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !30144
  %i.g = udiv exact i64 %i.f, 24, !dbg !30144     ; 2 uses
    #dbg_value(i64 %i.g, !30051, !DIExpression(), !30101)
    #dbg_value(i64 %i.g, !30063, !DIExpression(), !30102)
    #dbg_value(i64 %i.g, !30058, !DIExpression(), !30103)
    #dbg_value(i64 %i.g, !30066, !DIExpression(), !30104)
    #dbg_value(i64 %i.g, !3461, !DIExpression(), !29993)
    #dbg_value(i64 %i.g, !3480, !DIExpression(), !29995)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !29996)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29993)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29995)
    #dbg_value(i64 24, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29993)
    #dbg_value(i64 24, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29995)
    #dbg_value(i64 0, !3485, !DIExpression(), !29995)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !30145
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !30145
  %i.h = load i64, ptr %i.b, align 8, !dbg !30145, !range !3488, !noundef !1322
  %i.i = trunc nuw i64 %i.h to i1, !dbg !30146
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !30147
  %i.k = load i64, ptr %i.j, align 8, !dbg !30147, !range !3489, !noundef !1322 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !30147 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtCs5yXxDE1DkoT_4tera5value5ValueENCNvNtB2B_7filters4joins1_0EEB2B_.exit.i, !dbg !30146, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !30148
    #dbg_value(i64 %i.k, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29997)
    #dbg_value(i64 %i.m, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29997)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !30149
  unreachable, !dbg !30149

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtCs5yXxDE1DkoT_4tera5value5ValueENCNvNtB2B_7filters4joins1_0EEB2B_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !30150, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29998)
    #dbg_value(ptr %i.n, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29998)
    #dbg_value(ptr poison, !3484, !DIExpression(), !29999)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !30151
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !30001)
  tail call void @llvm.assume(i1 %i.o), !dbg !30152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !30153
  store i64 %i.k, ptr %i.c, align 8, !dbg !30154
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !30154
  store ptr %i.n, ptr %i.p, align 8, !dbg !30154
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !30154 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !30154
    #dbg_value(ptr %i.c, !30105, !DIExpression(), !30004)
    #dbg_value(ptr %1, !30108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30004)
    #dbg_value(ptr %2, !30108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30004)
    #dbg_value(ptr %1, !30111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30015)
    #dbg_value(ptr %2, !30111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30015)
    #dbg_value(ptr %i.c, !30115, !DIExpression(), !30015)
    #dbg_value(ptr poison, !30071, !DIExpression(), !30017)
    #dbg_value(ptr poison, !30077, !DIExpression(), !30019)
    #dbg_value(i64 24, !30084, !DIExpression(), !30023)
    #dbg_value(ptr %2, !30082, !DIExpression(), !30024)
    #dbg_value(ptr %2, !30098, !DIExpression(), !30025)
    #dbg_value(ptr %1, !30099, !DIExpression(), !30025)
    #dbg_value(ptr %2, !30092, !DIExpression(), !30026)
    #dbg_value(ptr %1, !30093, !DIExpression(), !30026)
    #dbg_value(ptr %1, !30088, !DIExpression(), !30027)
    #dbg_value(ptr %2, !30087, !DIExpression(), !30027)
    #dbg_value(i64 poison, !30116, !DIExpression(), !30028)
    #dbg_value(i64 1, !30117, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30028)
    #dbg_value(i64 %i.g, !30117, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30028)
    #dbg_value(i64 %i.g, !30118, !DIExpression(), !30029)
    #dbg_value(ptr %i.n, !30128, !DIExpression(), !30030)
    #dbg_value(ptr %i.q, !30129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30031)
    #dbg_value(i64 0, !30129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30155, !noalias !30131
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !30155
  store ptr %i.n, ptr %i.r, align 8, !dbg !30155, !noalias !30131
  store ptr %i.q, ptr %i.a, align 8, !dbg !30155, !noalias !30131
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !30155
  store i64 0, ptr %i.s, align 8, !dbg !30155, !noalias !30131
    #dbg_value(ptr %1, !30132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30039)
    #dbg_value(ptr %2, !30132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30039)
    #dbg_declare(ptr %i.a, !30138, !DIExpression(), !30040)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs5yXxDE1DkoT_4tera5value5ValueENCNvNtB1r_7filters4joins1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2p_8for_each4callNtNtCsgCecv3eZDcN_5alloc6string6StringNCINvMsk_NtB3w_3vecINtB4d_3VecB3s_E14extend_trustedBN_E0E0EB1r_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !30156

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtCs5yXxDE1DkoT_4tera5value5ValueENCNvNtB2B_7filters4joins1_0EEB2B_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.f unwind label %bb.e, !dbg !30157

bb.d:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtNtCs5yXxDE1DkoT_4tera5value5ValueENCNvNtB2B_7filters4joins1_0EEB2B_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30158, !noalias !30131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !30159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !30157
  ret void, !dbg !30160

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !30161
  unreachable, !dbg !30161

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !30161
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterNtNtB8_6string6StringNtNtNtB17_7parsing3ast17ComponentArgumentENCNvXs3_B15_NtB15_13ComponentInfoINtNtB2u_7convert4FromRNtB4a_19ComponentDefinitionE4from0EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30166 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_declare(ptr %1, !30221, !DIExpression(), !30227)
    #dbg_declare(ptr %i.c, !30222, !DIExpression(), !30228)
    #dbg_declare(ptr poison, !30229, !DIExpression(), !30237)
    #dbg_declare(ptr poison, !30243, !DIExpression(), !30250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !30293
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !30294
  %.val = load i64, ptr %i.d, align 8, !dbg !30294, !noundef !1322 ; 2 uses
    #dbg_value(i64 %.val, !30223, !DIExpression(), !30251)
    #dbg_value(i64 %.val, !30241, !DIExpression(), !30252)
    #dbg_value(i64 %.val, !30233, !DIExpression(), !30253)
    #dbg_value(i64 %.val, !30247, !DIExpression(), !30254)
    #dbg_value(i64 %.val, !3461, !DIExpression(), !30171)
    #dbg_value(i64 %.val, !3480, !DIExpression(), !30173)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !30174)
    #dbg_value(i64 8, !3466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30171)
    #dbg_value(i64 8, !3486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30173)
    #dbg_value(i64 56, !3466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30171)
    #dbg_value(i64 56, !3486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30173)
    #dbg_value(i64 0, !3485, !DIExpression(), !30173)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !30295
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !30295
  %i.e = load i64, ptr %i.b, align 8, !dbg !30295, !range !3488, !noundef !1322
  %i.f = trunc nuw i64 %i.e to i1, !dbg !30296
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !30297
  %i.h = load i64, ptr %i.g, align 8, !dbg !30297, !range !3489, !noundef !1322 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !30297 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterNtNtB8_6string6StringNtNtNtBK_7parsing3ast17ComponentArgumentENCNvXs3_BI_NtBI_13ComponentInfoINtNtB1T_7convert4FromRNtB3z_19ComponentDefinitionE4from0EEBK_.exit.i, !dbg !30296, !prof !3490

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !dbg !30298
    #dbg_value(i64 %i.h, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30175)
    #dbg_value(i64 %i.j, !3468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30175)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #26, !dbg !30299
  unreachable, !dbg !30299

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterNtNtB8_6string6StringNtNtNtBK_7parsing3ast17ComponentArgumentENCNvXs3_BI_NtBI_13ComponentInfoINtNtB1T_7convert4FromRNtB3z_19ComponentDefinitionE4from0EEBK_.exit.i: ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !dbg !30300, !nonnull !1322, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.h, !3467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30176)
    #dbg_value(ptr %i.k, !3467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30176)
    #dbg_value(ptr poison, !3484, !DIExpression(), !30177)
  %i.l = icmp ule i64 %.val, %i.h, !dbg !30301
    #dbg_value(i1 true, !3493, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !30179)
  tail call void @llvm.assume(i1 %i.l), !dbg !30302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !30303
  store i64 %i.h, ptr %i.c, align 8, !dbg !30304
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !30304
  store ptr %i.k, ptr %i.m, align 8, !dbg !30304
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !30304 ; 2 uses
  store i64 0, ptr %i.n, align 8, !dbg !30304
    #dbg_value(ptr %i.c, !30255, !DIExpression(), !30182)
    #dbg_declare(ptr %1, !30258, !DIExpression(), !30183)
    #dbg_value(ptr %i.c, !30261, !DIExpression(), !30194)
    #dbg_declare(ptr %1, !30265, !DIExpression(), !30195)
    #dbg_value(i64 poison, !30266, !DIExpression(), !30196)
    #dbg_value(i64 1, !30267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30196)
    #dbg_value(i64 %.val, !30267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30196)
    #dbg_value(i64 %.val, !30268, !DIExpression(), !30197)
    #dbg_value(ptr %i.k, !30278, !DIExpression(), !30198)
    #dbg_value(ptr %i.n, !30279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30199)
    #dbg_value(i64 0, !30279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30305, !noalias !30281
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !30305
  store ptr %i.k, ptr %i.o, align 8, !dbg !30305, !noalias !30281
  store ptr %i.n, ptr %i.a, align 8, !dbg !30305, !noalias !30281
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !30305
  store i64 0, ptr %i.p, align 8, !dbg !30305, !noalias !30281
    #dbg_declare(ptr %1, !30282, !DIExpression(), !30209)
    #dbg_declare(ptr %i.a, !30288, !DIExpression(), !30210)
  invoke void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtB16_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentENCNvXs3_NtB2k_10componentsNtB3h_13ComponentInfoINtNtBc_7convert4FromRNtB2g_19ComponentDefinitionE4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4P_8for_each4callNtB3h_12ComponentArgNCINvMsk_NtB16_3vecINtB6l_3VecB5S_E14extend_trustedBN_E0E0EB2k_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !30306

bb.c:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterNtNtB8_6string6StringNtNtNtBK_7parsing3ast17ComponentArgumentENCNvXs3_BI_NtBI_13ComponentInfoINtNtB1T_7convert4FromRNtB3z_19ComponentDefinitionE4from0EEBK_.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %bb.f unwind label %bb.e, !dbg !30307

bb.d:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3map4IterNtNtB8_6string6StringNtNtNtBK_7parsing3ast17ComponentArgumentENCNvXs3_BI_NtBI_13ComponentInfoINtNtB1T_7convert4FromRNtB3z_19ComponentDefinitionE4from0EEBK_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30308, !noalias !30281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !30309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !30307
  ret void, !dbg !30310

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
