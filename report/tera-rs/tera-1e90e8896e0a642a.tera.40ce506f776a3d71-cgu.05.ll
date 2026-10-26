Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.05?download=true
inline.NumInlined: 719
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCINvMs0_NtCs5yXxDE1DkoT_4tera7filtersNtB8_12StoredFilter3newNvB8_6valuesRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtBa_5value3key3KeyNtB2a_5ValueEINtNtCsf3Ta7LF998c_4core6result6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VecB2t_ENtNtBa_6errors5ErrorEE0Ba_:bb.a
          to label %.body.thread unwind label %bb.k, !dbg !26814, !noalias !26776

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !26815, !noalias !26740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26816, !noalias !26740
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesNtNtB13_3key3KeyB11_EEE9from_iterB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.i unwind label %bb.f, !dbg !26817, !noalias !26776

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26818, !noalias !26740
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !26819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !26819, !noalias !26782
  store i8 -1, ptr %i.f, align 8, !dbg !26819, !alias.scope !26776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !26820, !noalias !26740
  call void @llvm.experimental.noalias.scope.decl(metadata !26783), !dbg !26807
    #dbg_value(ptr %i.d, !3877, !DIExpression(), !26656)
  call void @llvm.experimental.noalias.scope.decl(metadata !26784), !dbg !26821
    #dbg_value(ptr %i.d, !3784, !DIExpression(), !26660)
  call void @llvm.experimental.noalias.scope.decl(metadata !26785), !dbg !26822
    #dbg_value(ptr %i.d, !3790, !DIExpression(), !26664)
    #dbg_value(ptr %i.d, !3792, !DIExpression(), !26666)
    #dbg_value(i64 1, !3799, !DIExpression(), !26668)
    #dbg_value(i8 1, !3801, !DIExpression(), !26668)
    #dbg_value(i64 1, !3803, !DIExpression(), !26670)
    #dbg_value(i8 1, !3805, !DIExpression(), !26670)
  %i.r = load ptr, ptr %i.d, align 8, !dbg !26823, !alias.scope !26786, !noalias !26740, !nonnull !1386, !noundef !1386
    #dbg_value(ptr %i.r, !3800, !DIExpression(), !26672)
    #dbg_value(ptr %i.r, !3804, !DIExpression(), !26670)
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !dbg !26824, !noalias !26787
  %i.t = icmp eq i64 %i.s, 1, !dbg !26825
  br i1 %i.t, label %bb.j, label %bb.l, !dbg !26825

bb.j:                                             ; preds = %bb.i
    #dbg_value(i8 2, !3710, !DIExpression(), !26674)
  fence acquire, !dbg !26826
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24, !dbg !26827
  br label %bb.l, !dbg !26827

bb.k:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !dbg !26828, !noalias !26776
  unreachable, !dbg !26828

bb.l:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26829, !noalias !26739
  call void @_RNvXsD_NtCs5yXxDE1DkoT_4tera5valueINtNtCsf3Ta7LF998c_4core6result6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VecNtB5_5ValueENtNtB7_6errors5ErrorENtB5_14FunctionResult11into_resultB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.f), !dbg !26830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !26795
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit, !dbg !26831

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit: ; preds = %bb.d, %bb.c, %bb.l
  ret void, !dbg !26832

.body.thread:                                     ; preds = %bb.m, %bb.n, %bb.g, %bb.f
  %eh.lpad-body34 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.m ], [ %i.m, %bb.g ], [ %i.m, %bb.f ], [ %lpad.thr_comm.split-lp, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body34, !dbg !26833

bb.m:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.g, !3877, !DIExpression(), !26676)
    #dbg_value(ptr %i.g, !3784, !DIExpression(), !26678)
    #dbg_value(ptr %i.g, !3790, !DIExpression(), !26680)
    #dbg_value(ptr %i.g, !3792, !DIExpression(), !26682)
    #dbg_value(i64 1, !3799, !DIExpression(), !26684)
    #dbg_value(i8 1, !3801, !DIExpression(), !26684)
    #dbg_value(i64 1, !3803, !DIExpression(), !26686)
    #dbg_value(i8 1, !3805, !DIExpression(), !26686)
    #dbg_value(ptr %3, !3800, !DIExpression(), !26687)
    #dbg_value(ptr %3, !3804, !DIExpression(), !26686)
  %i.v = atomicrmw add ptr %3, i64 -1 release, align 8, !dbg !26834, !noalias !26788
  %i.w = icmp eq i64 %i.v, 1, !dbg !26835
  br i1 %i.w, label %bb.n, label %.body.thread, !dbg !26835

bb.n:                                             ; preds = %bb.m
    #dbg_value(i8 2, !3710, !DIExpression(), !26695)
  fence acquire, !dbg !26836
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #24
          to label %.body.thread unwind label %bb.o, !dbg !26837

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !dbg !26833
  unreachable, !dbg !26833
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtCs5yXxDE1DkoT_4tera7filtersNtB8_12StoredFilter3newNvB8_7defaultNtNtBa_5value5ValueINtNtCsf3Ta7LF998c_4core6result6ResultB1b_NtNtBa_6errors5ErrorEE0Ba_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26840 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !27031, !DIExpression(DW_OP_LLVM_fragment, 16, 560), !26857)
    #dbg_declare(ptr poison, !27042, !DIExpression(DW_OP_LLVM_fragment, 16, 560), !26858)
  %i.b = alloca [72 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !27031, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !26860)
    #dbg_declare(ptr poison, !27031, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !26860)
    #dbg_declare(ptr poison, !27039, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !26861)
    #dbg_declare(ptr poison, !27039, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !26861)
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 11 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
    #dbg_declare(ptr poison, !27055, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !27060)
    #dbg_declare(ptr poison, !27055, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !27060)
    #dbg_declare(ptr poison, !27061, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !27066)
    #dbg_declare(ptr poison, !27061, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !27066)
  %i.f = alloca [72 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !27056, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !27067)
    #dbg_declare(ptr poison, !27056, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !27067)
    #dbg_declare(ptr poison, !27028, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !27068)
    #dbg_declare(ptr poison, !27028, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !27068)
  %i.g = alloca [72 x i8], align 8                ; 14 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %3, ptr %i.h, align 8
    #dbg_value(ptr %2, !27024, !DIExpression(), !27069)
    #dbg_declare(ptr %i.h, !27025, !DIExpression(), !27070)
    #dbg_value(ptr %4, !27026, !DIExpression(), !27069)
    #dbg_declare(ptr %i.f, !27062, !DIExpression(), !27071)
    #dbg_declare(ptr %i.f, !27063, !DIExpression(DW_OP_plus_uconst, 8), !27072)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !27130
  invoke void @_RNvXs4_NtCs5yXxDE1DkoT_4tera4argsNtNtB7_5value5ValueNtB5_12ArgFromValue10from_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.af, !dbg !27065

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.f, align 8, !dbg !27131, !range !3874, !noundef !1386 ; 2 uses
  %.not = icmp eq i8 %i.i, -1, !dbg !27131
  br i1 %.not, label %bb.e, label %bb.c, !dbg !27132

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 %i.i, !27061, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !27073)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1, !dbg !27133
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !27133
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.512.0..sroa_idx, i64 40, i1 false), !dbg !27133
    #dbg_value(i8 %i.i, !27028, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !27074)
    #dbg_value(i8 %i.i, !27056, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !27075)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !27134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.411.0..sroa_idx, i64 31, i1 false), !dbg !27135
    #dbg_value(i8 %i.i, !27055, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !27076)
  store i8 %i.i, ptr %0, align 8, !dbg !27134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !27136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27077), !dbg !27137
    #dbg_value(ptr %i.h, !3877, !DIExpression(), !26870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27078), !dbg !27138
    #dbg_value(ptr %i.h, !3784, !DIExpression(), !26874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27079), !dbg !27139
    #dbg_value(ptr %i.h, !3790, !DIExpression(), !26878)
    #dbg_value(ptr %i.h, !3792, !DIExpression(), !26880)
    #dbg_value(i64 1, !3799, !DIExpression(), !26882)
    #dbg_value(i8 1, !3801, !DIExpression(), !26882)
    #dbg_value(i64 1, !3803, !DIExpression(), !26884)
    #dbg_value(i8 1, !3805, !DIExpression(), !26884)
  %i.j = load ptr, ptr %i.h, align 8, !dbg !27140, !alias.scope !27080, !nonnull !1386, !noundef !1386
    #dbg_value(ptr %i.j, !3800, !DIExpression(), !26886)
    #dbg_value(ptr %i.j, !3804, !DIExpression(), !26884)
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !dbg !27141, !noalias !27080
  %i.l = icmp eq i64 %i.k, 1, !dbg !27142
  br i1 %i.l, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit, !dbg !27142

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 2, !3710, !DIExpression(), !26888)
  fence acquire, !dbg !27143
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #24, !dbg !27144
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit, !dbg !27144

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !27145 ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !dbg !27146, !nonnull !1386, !noundef !1386 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27081), !dbg !27147
    #dbg_value(ptr poison, !27049, !DIExpression(), !26891)
    #dbg_declare(ptr %i.f, !27050, !DIExpression(DW_OP_plus_uconst, 8), !26892)
    #dbg_value(ptr %i.n, !27051, !DIExpression(), !26891)
    #dbg_value(ptr %4, !27052, !DIExpression(), !26891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27082), !dbg !27148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.n, ptr %i.o, align 8, !noalias !27084
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %4, ptr %i.p, align 8, !noalias !27084
    #dbg_value(ptr poison, !27046, !DIExpression(), !26899)
    #dbg_declare(ptr %i.e, !27047, !DIExpression(), !26900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27085), !dbg !27149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27086), !dbg !27149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27084
    #dbg_declare(ptr poison, !27033, !DIExpression(DW_OP_LLVM_fragment, 16, 560), !26904)
    #dbg_declare(ptr poison, !27032, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !26905)
    #dbg_declare(ptr poison, !27032, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !26905)
  store ptr %i.n, ptr %i.d, align 8, !noalias !27087
    #dbg_declare(ptr %i.e, !27036, !DIExpression(), !26906)
    #dbg_declare(ptr %i.d, !27037, !DIExpression(), !26907)
    #dbg_value(ptr poison, !27044, !DIExpression(), !26908)
    #dbg_declare(ptr %i.c, !27038, !DIExpression(), !26909)
    #dbg_declare(ptr %i.a, !27088, !DIExpression(), !26914)
    #dbg_declare(ptr %i.b, !27092, !DIExpression(), !26919)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !27150, !noalias !27087
  invoke void @_RINvMsa_NtCs5yXxDE1DkoT_4tera4argsNtB6_6Kwargs8must_getNtNtB8_5value5ValueEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 5)
          to label %bb.i unwind label %bb.h, !dbg !27151, !noalias !27096

bb.f:                                             ; preds = %bb.l, %bb.h
  %.sroa.017.0.i.i.i = phi i8 [ %.sroa.017.1.i.i.i, %bb.h ], [ 1, %bb.l ], !dbg !27150 ; 2 uses
  %.pn.i.i.i = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.w, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27097), !dbg !27152
    #dbg_value(ptr %i.d, !3877, !DIExpression(), !26923)
  call void @llvm.experimental.noalias.scope.decl(metadata !27098), !dbg !27153
    #dbg_value(ptr %i.d, !3784, !DIExpression(), !26927)
  call void @llvm.experimental.noalias.scope.decl(metadata !27099), !dbg !27154
    #dbg_value(ptr %i.d, !3790, !DIExpression(), !26931)
    #dbg_value(ptr %i.d, !3792, !DIExpression(), !26933)
    #dbg_value(i64 1, !3799, !DIExpression(), !26935)
    #dbg_value(i8 1, !3801, !DIExpression(), !26935)
    #dbg_value(i64 1, !3803, !DIExpression(), !26937)
    #dbg_value(i8 1, !3805, !DIExpression(), !26937)
  %i.q = load ptr, ptr %i.d, align 8, !dbg !27155, !alias.scope !27100, !noalias !27087, !nonnull !1386, !noundef !1386
    #dbg_value(ptr %i.q, !3800, !DIExpression(), !26939)
    #dbg_value(ptr %i.q, !3804, !DIExpression(), !26937)
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !dbg !27156, !noalias !27101
  %i.s = icmp eq i64 %i.r, 1, !dbg !27157
  br i1 %i.s, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i.i, !dbg !27157

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !3710, !DIExpression(), !26941)
  fence acquire, !dbg !27158
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i.i unwind label %bb.ac, !dbg !27159, !noalias !27102

bb.h:                                             ; preds = %bb.t, %bb.n, %bb.e
  %.sroa.017.1.i.i.i = phi i8 [ 1, %bb.n ], [ 0, %bb.t ], [ 1, %bb.e ], !dbg !27160
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.a, align 8, !dbg !27161, !range !3874, !noalias !27087, !noundef !1386 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.u, -1, !dbg !27161
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !dbg !27162

bb.j:                                             ; preds = %bb.i
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !27163
  %.sroa.524.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !27163
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !27164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.527.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.0..sroa_idx.i.i.i, i64 40, i1 false), !dbg !27163, !noalias !27103
    #dbg_value(i8 %i.u, !27039, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26942)
    #dbg_value(i8 %i.u, !27031, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26943)
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !27164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.426.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.423.0..sroa_idx.i.i.i, i64 31, i1 false), !dbg !27165, !noalias !27103
    #dbg_value(i8 %i.u, !27032, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26944)
  store i8 %i.u, ptr %i.g, align 8, !dbg !27164, !alias.scope !27104
  br label %bb.aa, !dbg !27166

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !27167 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !27168, !noalias !27087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !27169, !noalias !27087
  invoke void @_RINvMsa_NtCs5yXxDE1DkoT_4tera4argsNtB6_6Kwargs3getbEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 7)
          to label %bb.m unwind label %bb.l, !dbg !27170, !noalias !27096

bb.l:                                             ; preds = %bb.q, %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.f unwind label %bb.ac, !dbg !27152, !noalias !27102

bb.m:                                             ; preds = %bb.k
  %i.x = load i8, ptr %i.b, align 8, !dbg !27171, !range !3874, !noalias !27087, !noundef !1386 ; 2 uses
  %.not41.i.i.i = icmp eq i8 %i.x, -1, !dbg !27171
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !27172
  %i.z = load i8, ptr %i.y, align 1, !dbg !27172, !noalias !27087 ; 2 uses
  br i1 %.not41.i.i.i, label %bb.o, label %bb.n, !dbg !27173

bb.n:                                             ; preds = %bb.m
  %.sroa.533.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2, !dbg !27174
  %.sroa.536.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2, !dbg !27175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(70) %.sroa.536.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(70) %.sroa.533.0..sroa_idx.i.i.i, i64 70, i1 false), !dbg !27174, !noalias !27103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !27176, !noalias !27087
    #dbg_value(i8 %i.x, !27042, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26945)
    #dbg_value(i8 %i.x, !27031, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26946)
    #dbg_value(i8 %i.z, !27042, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !26945)
    #dbg_value(i8 %i.z, !27031, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !26946)
    #dbg_value(i8 %i.x, !27033, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26947)
    #dbg_value(i8 %i.z, !27033, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !26947)
  store i8 %i.x, ptr %i.g, align 8, !dbg !27175, !alias.scope !27104
  %.sroa.435.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !27175
  store i8 %i.z, ptr %.sroa.435.0..sroa_idx.i.i.i, align 1, !dbg !27175, !alias.scope !27104
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c)
          to label %._crit_edge.i.i unwind label %bb.h, !dbg !27152, !noalias !27096

._crit_edge.i.i:                                  ; preds = %bb.n
  %.pre.i.i = load ptr, ptr %i.d, align 8, !dbg !27177, !alias.scope !27106, !noalias !27087
  br label %bb.aa, !dbg !27152

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !27176, !noalias !27087
    #dbg_value(i8 %i.z, !27107, !DIExpression(), !26962)
  %i.aa = icmp eq i8 %i.z, 1, !dbg !27178
  br i1 %i.aa, label %bb.q, label %bb.p, !dbg !27178

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr %i.e, !27113, !DIExpression(), !26965)
  %i.ab = load i8, ptr %i.e, align 8, !dbg !27179, !range !3689, !alias.scope !27086, !noalias !27084, !noundef !1386 ; 2 uses
  %i.ac = icmp ne i8 %i.ab, 10, !dbg !27179
  call void @llvm.assume(i1 %i.ac), !dbg !27179
  %i.ad = icmp eq i8 %i.ab, 2, !dbg !27180
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !27181 ; 2 uses
  br i1 %i.ad, label %bb.r, label %bb.s, !dbg !27180

bb.q:                                             ; preds = %bb.o
  %i.af = invoke noundef zeroext i1 @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9is_truthy(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.u unwind label %bb.l, !dbg !27182, !noalias !27102

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !27183, !noalias !27103
  br label %.sink.split.i.i, !dbg !27184

bb.s:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !27185
  br label %bb.t, !dbg !27184

bb.t:                                             ; preds = %bb.w, %bb.s
  store i8 -1, ptr %i.g, align 8, !dbg !27181, !alias.scope !27104
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c)
          to label %bb.x unwind label %bb.h, !dbg !27152, !noalias !27102

bb.u:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !27181 ; 2 uses
  br i1 %i.af, label %bb.w, label %bb.v, !dbg !27186

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !27187, !noalias !27103
  br label %.sink.split.i.i, !dbg !27184

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !27188, !alias.scope !27115, !noalias !27116
  br label %bb.t, !dbg !27184

.sink.split.i.i:                                  ; preds = %bb.v, %bb.r
  store i8 -1, ptr %i.g, align 8, !dbg !27181, !alias.scope !27104
  br label %bb.x, !dbg !27152

bb.x:                                             ; preds = %.sink.split.i.i, %bb.t
  %.sroa.017.3.i.i.i = phi i8 [ 0, %bb.t ], [ 1, %.sink.split.i.i ], !dbg !27160 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !27152, !noalias !27087
  call void @llvm.experimental.noalias.scope.decl(metadata !27117), !dbg !27152
    #dbg_value(ptr %i.d, !3877, !DIExpression(), !26969)
  call void @llvm.experimental.noalias.scope.decl(metadata !27118), !dbg !27189
    #dbg_value(ptr %i.d, !3784, !DIExpression(), !26973)
  call void @llvm.experimental.noalias.scope.decl(metadata !27119), !dbg !27190
    #dbg_value(ptr %i.d, !3790, !DIExpression(), !26977)
    #dbg_value(ptr %i.d, !3792, !DIExpression(), !26979)
    #dbg_value(i64 1, !3799, !DIExpression(), !26981)
    #dbg_value(i8 1, !3801, !DIExpression(), !26981)
    #dbg_value(i64 1, !3803, !DIExpression(), !26983)
    #dbg_value(i8 1, !3805, !DIExpression(), !26983)
  %i.ah = load ptr, ptr %i.d, align 8, !dbg !27191, !alias.scope !27120, !noalias !27087, !nonnull !1386, !noundef !1386
    #dbg_value(ptr %i.ah, !3800, !DIExpression(), !26985)
    #dbg_value(ptr %i.ah, !3804, !DIExpression(), !26983)
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !dbg !27192, !noalias !27121
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !27193
  br i1 %i.aj, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit47.i.i.i, !dbg !27193

bb.y:                                             ; preds = %bb.x
    #dbg_value(i8 2, !3710, !DIExpression(), !26987)
  fence acquire, !dbg !27194
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit47.i.i.i unwind label %bb.z, !dbg !27195, !noalias !27102

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i.i: ; preds = %bb.z, %bb.g, %bb.f
  %.sroa.017.4.i.i.i = phi i8 [ %.sroa.017.5.i.i.i, %bb.z ], [ %.sroa.017.0.i.i.i, %bb.g ], [ %.sroa.017.0.i.i.i, %bb.f ], !dbg !27150
  %.pn44.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.z ], [ %.pn.i.i.i, %bb.g ], [ %.pn.i.i.i, %bb.f ] ; 2 uses
  %5 = trunc nuw i8 %.sroa.017.4.i.i.i to i1, !dbg !27152
  br i1 %5, label %bb.ad, label %.body.thread, !dbg !27152

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.sroa.017.5.i.i.i = phi i8 [ 1, %bb.ab ], [ %.sroa.017.3.i.i.i, %bb.y ], !dbg !27160
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit47.i.i.i: ; preds = %bb.y, %bb.x
  %6 = trunc nuw i8 %.sroa.017.3.i.i.i to i1, !dbg !27152
  br i1 %6, label %.sink.split.i.i.i, label %bb.ae, !dbg !27152

.sink.split.i.i.i:                                ; preds = %bb.ab, %bb.aa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit47.i.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !27152
  br label %bb.ae, !dbg !27152

bb.aa:                                            ; preds = %._crit_edge.i.i, %bb.j
  %i.al = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.n, %bb.j ], !dbg !27177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !27152, !noalias !27087
  call void @llvm.experimental.noalias.scope.decl(metadata !27122), !dbg !27152
    #dbg_value(ptr %i.d, !3877, !DIExpression(), !26988)
  call void @llvm.experimental.noalias.scope.decl(metadata !27123), !dbg !27196
    #dbg_value(ptr %i.d, !3784, !DIExpression(), !26989)
  call void @llvm.experimental.noalias.scope.decl(metadata !27124), !dbg !27197
    #dbg_value(ptr %i.d, !3790, !DIExpression(), !26990)
    #dbg_value(ptr %i.d, !3792, !DIExpression(), !26991)
    #dbg_value(i64 1, !3799, !DIExpression(), !26993)
    #dbg_value(i8 1, !3801, !DIExpression(), !26993)
    #dbg_value(i64 1, !3803, !DIExpression(), !26995)
    #dbg_value(i8 1, !3805, !DIExpression(), !26995)
    #dbg_value(ptr %i.al, !3800, !DIExpression(), !26996)
    #dbg_value(ptr %i.al, !3804, !DIExpression(), !26995)
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !dbg !27198, !noalias !27125
  %i.an = icmp eq i64 %i.am, 1, !dbg !27199
  br i1 %i.an, label %bb.ab, label %.sink.split.i.i.i, !dbg !27199

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(i8 2, !3710, !DIExpression(), !26998)
  fence acquire, !dbg !27200
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %.sink.split.i.i.i unwind label %bb.z, !dbg !27201, !noalias !27096

bb.ac:                                            ; preds = %bb.ad, %bb.l, %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !dbg !27202, !noalias !27102
  unreachable, !dbg !27202

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #22
          to label %.body.thread unwind label %bb.ac, !dbg !27152, !noalias !27102

bb.ae:                                            ; preds = %.sink.split.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit47.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27203, !noalias !27084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !27203, !noalias !27084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !27149, !noalias !27083
  call void @_RNvXsD_NtCs5yXxDE1DkoT_4tera5valueINtNtCsf3Ta7LF998c_4core6result6ResultNtB5_5ValueNtNtB7_6errors5ErrorENtB5_14FunctionResult11into_resultB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.g), !dbg !27204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !27136
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit, !dbg !27137

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit: ; preds = %bb.d, %bb.c, %bb.ae
  ret void, !dbg !27205

.body.thread:                                     ; preds = %bb.af, %bb.ag, %bb.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i.i
  %eh.lpad-body26 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.af ], [ %.pn44.i.i.i, %bb.ad ], [ %.pn44.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit.i.i.i ], [ %lpad.thr_comm.split-lp, %bb.ag ]
  resume { ptr, i32 } %eh.lpad-body26, !dbg !27206

bb.af:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27126), !dbg !27137
    #dbg_value(ptr %i.h, !3877, !DIExpression(), !27002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27127), !dbg !27207
    #dbg_value(ptr %i.h, !3784, !DIExpression(), !27006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27128), !dbg !27208
    #dbg_value(ptr %i.h, !3790, !DIExpression(), !27010)
    #dbg_value(ptr %i.h, !3792, !DIExpression(), !27012)
    #dbg_value(i64 1, !3799, !DIExpression(), !27014)
    #dbg_value(i8 1, !3801, !DIExpression(), !27014)
    #dbg_value(i64 1, !3803, !DIExpression(), !27016)
    #dbg_value(i8 1, !3805, !DIExpression(), !27016)
  %i.ap = load ptr, ptr %i.h, align 8, !dbg !27209, !alias.scope !27129, !nonnull !1386, !noundef !1386
    #dbg_value(ptr %i.ap, !3800, !DIExpression(), !27018)
    #dbg_value(ptr %i.ap, !3804, !DIExpression(), !27016)
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !dbg !27210, !noalias !27129
  %i.ar = icmp eq i64 %i.aq, 1, !dbg !27211
  br i1 %i.ar, label %bb.ag, label %.body.thread, !dbg !27211

bb.ag:                                            ; preds = %bb.af
    #dbg_value(i8 2, !3710, !DIExpression(), !27020)
  fence acquire, !dbg !27212
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #24
          to label %.body.thread unwind label %bb.ah, !dbg !27213

bb.ah:                                            ; preds = %bb.ag
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !dbg !27206
  unreachable, !dbg !27206
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtCs5yXxDE1DkoT_4tera7filtersNtB8_12StoredFilter3newNvB8_7replaceNtNtBa_4args11StringInputINtNtCsf3Ta7LF998c_4core6result6ResultNtNtBa_5value5ValueNtNtBa_6errors5ErrorEE0Ba_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27216 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !27496, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !27241)
    #dbg_declare(ptr poison, !27496, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !27241)
  %i.b = alloca [72 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !27527, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !27254)
    #dbg_value(ptr poison, !27527, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !27258)
    #dbg_declare(ptr poison, !27499, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !27260)
    #dbg_declare(ptr poison, !27499, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !27260)
    #dbg_declare(ptr poison, !27498, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !27262)
    #dbg_declare(ptr poison, !27498, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !27262)
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !27497, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !27264)
    #dbg_declare(ptr poison, !27497, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !27264)
    #dbg_declare(ptr poison, !27516, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !27265)
    #dbg_declare(ptr poison, !27516, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !27265)
  %i.f = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr poison, !27497, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !27266)
    #dbg_declare(ptr poison, !27497, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !27266)
    #dbg_declare(ptr poison, !27514, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !27267)
    #dbg_declare(ptr poison, !27514, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !27267)
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr poison, !27497, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !27268)
    #dbg_declare(ptr poison, !27497, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !27268)
    #dbg_declare(ptr poison, !27510, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !27269)
    #dbg_declare(ptr poison, !27510, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !27269)
  %i.i = alloca [72 x i8], align 8                ; 9 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
    #dbg_declare(ptr poison, !27497, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !27270)
    #dbg_declare(ptr poison, !27497, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !27270)
    #dbg_declare(ptr poison, !27507, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !27271)
    #dbg_declare(ptr poison, !27507, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !27271)
  %i.k = alloca [72 x i8], align 8                ; 11 uses
  %i.l = alloca [8 x i8], align 8                 ; 10 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_declare(ptr poison, !27545, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !27550)
    #dbg_declare(ptr poison, !27545, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !27550)
    #dbg_declare(ptr poison, !27551, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !27556)
    #dbg_declare(ptr poison, !27551, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !27556)
    #dbg_declare(ptr poison, !27546, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !27557)
    #dbg_declare(ptr poison, !27546, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !27557)
    #dbg_declare(ptr poison, !27493, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !27558)
    #dbg_declare(ptr poison, !27493, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !27558)
  %i.n = alloca [72 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 23 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %3, ptr %i.p, align 8
    #dbg_value(ptr %2, !27489, !DIExpression(), !27559)
    #dbg_declare(ptr %i.p, !27490, !DIExpression(), !27560)
    #dbg_value(ptr %4, !27491, !DIExpression(), !27559)
    #dbg_declare(ptr %i.n, !27552, !DIExpression(), !27561)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !27647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !27555
  invoke void @_RNvXsd_NtCs5yXxDE1DkoT_4tera4argsNtB5_11StringInputNtB5_12ArgFromValue10from_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.av, !dbg !27555

bb.b:                                             ; preds = %bb.a
  %i.q = load i8, ptr %i.n, align 8, !dbg !27648, !range !3874, !noundef !1386 ; 2 uses
  %.not = icmp eq i8 %i.q, -1, !dbg !27648
  br i1 %.not, label %bb.e, label %bb.c, !dbg !27649

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 %i.q, !27551, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !27562)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !27650
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !27651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.415.0..sroa_idx, i64 7, i1 false), !dbg !27650
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !27650
  %.sroa.516.0.copyload = load ptr, ptr %.sroa.516.0..sroa_idx, align 8, !dbg !27650
    #dbg_value(ptr %.sroa.516.0.copyload, !27551, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27562)
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !27650
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.621.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.617.0..sroa_idx, i64 56, i1 false), !dbg !27650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !27652
    #dbg_value(i8 %i.q, !27493, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !27563)
    #dbg_value(i8 %i.q, !27546, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !27564)
    #dbg_value(ptr %.sroa.516.0.copyload, !27493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27563)
    #dbg_value(ptr %.sroa.516.0.copyload, !27546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27564)
    #dbg_value(i8 %i.q, !27545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !27565)
    #dbg_value(ptr %.sroa.516.0.copyload, !27545, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27565)
  store i8 %i.q, ptr %0, align 8, !dbg !27651
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27651
  store ptr %.sroa.516.0.copyload, ptr %.sroa.520.0..sroa_idx, align 8, !dbg !27651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !27653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27566), !dbg !27654
    #dbg_value(ptr %i.p, !3877, !DIExpression(), !27280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27567), !dbg !27655
    #dbg_value(ptr %i.p, !3784, !DIExpression(), !27284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27568), !dbg !27656
    #dbg_value(ptr %i.p, !3790, !DIExpression(), !27288)
    #dbg_value(ptr %i.p, !3792, !DIExpression(), !27290)
    #dbg_value(i64 1, !3799, !DIExpression(), !27292)
    #dbg_value(i8 1, !3801, !DIExpression(), !27292)
    #dbg_value(i64 1, !3803, !DIExpression(), !27294)
    #dbg_value(i8 1, !3805, !DIExpression(), !27294)
  %i.r = load ptr, ptr %i.p, align 8, !dbg !27657, !alias.scope !27569, !nonnull !1386, !noundef !1386
    #dbg_value(ptr %i.r, !3800, !DIExpression(), !27296)
    #dbg_value(ptr %i.r, !3804, !DIExpression(), !27294)
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !dbg !27658, !noalias !27569
  %i.t = icmp eq i64 %i.s, 1, !dbg !27659
  br i1 %i.t, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit, !dbg !27659

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 2, !3710, !DIExpression(), !27298)
  fence acquire, !dbg !27660
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE9drop_slowB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #24, !dbg !27661
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4args6KwargsEBF_.exit, !dbg !27661

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !27662
  %i.v = load ptr, ptr %i.u, align 8, !dbg !27662, !nonnull !1386, !align !3883, !noundef !1386 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !27652
  %i.w = load ptr, ptr %i.p, align 8, !dbg !27663, !nonnull !1386, !noundef !1386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27570), !dbg !27664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27571), !dbg !27664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27572), !dbg !27664
    #dbg_value(ptr poison, !27522, !DIExpression(), !27303)
    #dbg_value(ptr %i.v, !27523, !DIExpression(), !27303)
    #dbg_value(ptr %i.w, !27524, !DIExpression(), !27303)
    #dbg_value(ptr %4, !27525, !DIExpression(), !27303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27573), !dbg !27665
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27574), !dbg !27665
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27575), !dbg !27665
    #dbg_value(ptr %i.v, !27520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27308)
    #dbg_value(ptr %i.w, !27520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27308)
    #dbg_value(ptr %4, !27520, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27308)
    #dbg_value(ptr poison, !27519, !DIExpression(), !27308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27576), !dbg !27666
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27577), !dbg !27666
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27578), !dbg !27666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !27579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !27579
    #dbg_declare(ptr poison, !27500, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !27313)
    #dbg_declare(ptr poison, !27500, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !27313)
  store ptr %i.v, ptr %i.m, align 8, !noalias !27580
  store ptr %i.w, ptr %i.l, align 8, !noalias !27580
    #dbg_declare(ptr %i.m, !27503, !DIExpression(), !27314)
    #dbg_declare(ptr %i.l, !27504, !DIExpression(), !27315)
    #dbg_value(ptr %4, !27505, !DIExpression(), !27316)
    #dbg_value(ptr %4, !27581, !DIExpression(), !27319)
    #dbg_declare(ptr %i.k, !27583, !DIExpression(), !27324)
    #dbg_declare(ptr %i.j, !27509, !DIExpression(), !27325)
    #dbg_declare(ptr %i.i, !27587, !DIExpression(), !27330)
    #dbg_declare(ptr %i.h, !27513, !DIExpression(), !27331)
    #dbg_declare(ptr %i.b, !27591, !DIExpression(), !27338)
    #dbg_declare(ptr %i.a, !27591, !DIExpression(), !27340)
    #dbg_value(ptr poison, !27528, !DIExpression(), !27341)
    #dbg_value(ptr poison, !27528, !DIExpression(), !27342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !27667, !noalias !27580
  invoke void @_RINvMsa_NtCs5yXxDE1DkoT_4tera4argsNtB6_6Kwargs8must_getReEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 4)
          to label %bb.i unwind label %bb.h, !dbg !27668, !noalias !27597

bb.f:                                             ; preds = %bb.al, %bb.ac, %bb.h
  %.pn119.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn117.i.i.i, %bb.al ], [ %.pn.i.i.i, %bb.ac ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27598), !dbg !27669
    #dbg_value(ptr %i.l, !3877, !DIExpression(), !27346)
  call void @llvm.experimental.noalias.scope.decl(metadata !27599), !dbg !27670
    #dbg_value(ptr %i.l, !3784, !DIExpression(), !27350)
end_hunk_0
