Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.10?download=true
inline.NumInlined: 539
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value7reverse:bb.a

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value8contains(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15044 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 24 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [80 x i8], align 16               ; 7 uses
    #dbg_value(ptr %1, !15889, !DIExpression(), !15892)
    #dbg_value(ptr %1, !15877, !DIExpression(), !15893)
    #dbg_value(ptr %2, !15894, !DIExpression(), !15900)
    #dbg_value(ptr %2, !15878, !DIExpression(), !15893)
  %i.g = load i8, ptr %1, align 8, !dbg !16699, !range !2814, !noundef !1568 ; 4 uses
  %i.h = icmp ne i8 %i.g, 10, !dbg !16699
  tail call void @llvm.assume(i1 %i.h), !dbg !16699
  %i.i = add nsw i8 %i.g, -2, !dbg !16699
  %i.j = icmp samesign ugt i8 %i.g, 1, !dbg !16699
  %narrow = select i1 %i.j, i8 %i.i, i8 8, !dbg !16699 ; 3 uses
  switch i8 %narrow, label %switch.lookup [
    i8 8, label %bb.b
    i8 9, label %bb.h
    i8 10, label %bb.j
  ], !dbg !16700

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16701
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15892
  %i.l = zext nneg i8 %narrow to i64, !dbg !16702
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value8contains, i64 %i.l, !dbg !16702
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !16702
  %i.m = zext nneg i8 %narrow to i64, !dbg !16702
  %switch.gep157 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value8contains.72, i64 %i.m, !dbg !16702
  %switch.load158 = load i8, ptr %switch.gep157, align 1, !dbg !16702
  %switch.ext = zext i8 %switch.load158 to i64, !dbg !16702
  store ptr %switch.load, ptr %i.d, align 8, !dbg !15892, !captures !2559
  store i64 %switch.ext, ptr %i.k, align 8, !dbg !15892
    #dbg_value(ptr %i.d, !15885, !DIExpression(), !15901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16703
  store ptr %i.d, ptr %i.c, align 8, !dbg !16703
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16703
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !16703
    #dbg_value(ptr @50, !15902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15906)
    #dbg_value(ptr %i.c, !15902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15906)
    #dbg_value(ptr null, !5145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15049)
    #dbg_value(i64 undef, !5145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15049)
    #dbg_value(ptr poison, !5159, !DIExpression(), !15049)
    #dbg_declare(ptr poison, !5160, !DIExpression(), !15050)
    #dbg_value(ptr poison, !5163, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15052)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @50, ptr noundef nonnull %i.c), !dbg !16704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16705
  call void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageNtNtCsgCecv3eZDcN_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !16706
  br label %bb.bs, !dbg !16707

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !15880, !DIExpression(), !15907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15908), !dbg !16708
    #dbg_value(ptr %2, !5374, !DIExpression(), !15056)
  %i.n = load i8, ptr %2, align 8, !dbg !16709, !range !2814, !alias.scope !15908, !noundef !1568 ; 3 uses
  %i.o = icmp ne i8 %i.n, 10, !dbg !16709
  tail call void @llvm.assume(i1 %i.o), !dbg !16709
  %i.p = icmp samesign ult i8 %i.n, 2, !dbg !16709
  br i1 %i.p, label %bb.c, label %bb.br, !dbg !16710

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %2, !5375, !DIExpression(), !15057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15909), !dbg !16711
    #dbg_value(ptr %2, !2819, !DIExpression(), !15061)
    #dbg_value(i64 0, !2830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15066)
    #dbg_value(i64 0, !2881, !DIExpression(), !15068)
  %i.q = trunc nuw i8 %i.n to i1, !dbg !16712
  br i1 %i.q, label %bb.d, label %bb.e, !dbg !16713

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %2, !2827, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15069)
    #dbg_value(ptr %2, !2895, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15071)
    #dbg_value(ptr %2, !2900, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15073)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !16714
  %i.s = load ptr, ptr %i.r, align 8, !dbg !16714, !alias.scope !15910, !nonnull !1568, !noundef !1568
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !16714
  %i.u = load i64, ptr %i.t, align 8, !dbg !16714, !alias.scope !15910, !noundef !1568
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !16715
  br label %bb.k, !dbg !16716

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %2, !2823, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !15075)
    #dbg_value(ptr %2, !2877, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15076)
    #dbg_value(ptr %2, !2825, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15077)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1, !dbg !16717
  %i.x = load i8, ptr %i.w, align 1, !dbg !16717, !alias.scope !15910, !noundef !1568 ; 2 uses
  %i.y = zext i8 %i.x to i64, !dbg !16717         ; 2 uses
    #dbg_value(i64 %i.y, !2878, !DIExpression(), !15076)
    #dbg_value(i64 %i.y, !2868, !DIExpression(), !15078)
    #dbg_value(i64 %i.y, !2861, !DIExpression(), !15079)
    #dbg_value(i64 %i.y, !2830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15066)
    #dbg_value(i64 %i.y, !2854, !DIExpression(), !15066)
    #dbg_value(i64 %i.y, !2892, !DIExpression(), !15068)
    #dbg_value(ptr %2, !2867, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15078)
    #dbg_value(ptr %2, !2862, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15079)
    #dbg_value(ptr %2, !2853, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15066)
    #dbg_value(i64 21, !2867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15078)
    #dbg_value(i64 21, !2862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15079)
    #dbg_value(i64 21, !2853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15066)
  %i.z = icmp ult i8 %i.x, 22
  br i1 %i.z, label %bb.f, label %bb.g, !dbg !16718, !prof !2914

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2, !dbg !16719
    #dbg_value(ptr %i.aa, !2877, !DIExpression(), !15076)
    #dbg_value(ptr %i.aa, !2825, !DIExpression(), !15077)
    #dbg_value(ptr %i.aa, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15078)
    #dbg_value(ptr %i.aa, !2862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15079)
    #dbg_value(ptr %i.aa, !2853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15066)
  br label %bb.k, !dbg !16720

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #25, !dbg !16721, !noalias !15910
  unreachable, !dbg !16721

bb.h:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !15879, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15911)
    #dbg_value(ptr %1, !15912, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15915)
    #dbg_value(ptr %1, !15916, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15919)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16722
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !16722, !nonnull !1568, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.ac, !15921, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15925)
    #dbg_value(ptr %i.ac, !15926, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15929)
    #dbg_value(ptr %i.ac, !15930, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !15933)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !16723
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !16723, !nonnull !1568, !noundef !1568 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !16724
  %i.ag = load i64, ptr %i.af, align 8, !dbg !16724, !noundef !1568 ; 2 uses
    #dbg_value(ptr %i.ae, !15897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15900)
    #dbg_value(i64 %i.ag, !15897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15900)
    #dbg_value(ptr poison, !5454, !DIExpression(), !15091)
    #dbg_value(ptr poison, !5471, !DIExpression(), !15093)
    #dbg_value(ptr %2, !5468, !DIExpression(), !15094)
    #dbg_value(ptr %i.ae, !5469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15094)
    #dbg_value(ptr %i.ae, !5476, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15096)
    #dbg_value(ptr %i.ae, !5478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15098)
    #dbg_value(i64 %i.ag, !5469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15094)
    #dbg_value(i64 %i.ag, !5476, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15096)
    #dbg_value(i64 %i.ag, !5478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15098)
    #dbg_value(i64 %i.ag, !5483, !DIExpression(), !15100)
    #dbg_value(i64 %i.ag, !5479, !DIExpression(), !15101)
    #dbg_value(ptr %i.ae, !5480, !DIExpression(), !15102)
    #dbg_value(ptr %i.ae, !5484, !DIExpression(), !15100)
  %.idx = mul nuw nsw i64 %i.ag, 24, !dbg !16725
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx, !dbg !16725
    #dbg_value(ptr %2, !5461, !DIExpression(), !15091)
    #dbg_value(ptr undef, !5471, !DIExpression(), !15093)
    #dbg_value(ptr undef, !5454, !DIExpression(), !15091)
    #dbg_value(i64 1, !5486, !DIExpression(), !15104)
    #dbg_value(ptr %i.ae, !5487, !DIExpression(), !15104)
    #dbg_value(ptr %i.ae, !5472, !DIExpression(), !15105)
    #dbg_value(ptr %i.ah, !5473, !DIExpression(), !15106)
    #dbg_value(ptr poison, !5489, !DIExpression(), !15108)
    #dbg_value(ptr poison, !5490, !DIExpression(), !15109)
  %.not.not.not.i.not.not.not.i.not.not.not142.not = icmp eq i64 %i.ag, 0, !dbg !16726
  br i1 %.not.not.not.i.not.not.not.i.not.not.not142.not, label %_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB5_13SliceContains14slice_containsBG_.exit, label %.lr.ph, !dbg !16727

bb.i:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aj, i64 24, !dbg !16728 ; 2 uses
    #dbg_value(ptr %i.ai, !5487, !DIExpression(), !15104)
    #dbg_value(ptr %i.ai, !5472, !DIExpression(), !15105)
    #dbg_value(ptr %i.ah, !5473, !DIExpression(), !15106)
    #dbg_value(ptr poison, !5489, !DIExpression(), !15108)
    #dbg_value(ptr poison, !5490, !DIExpression(), !15109)
  %.not.not.not.i.not.not.not.i.not.not.not.not = icmp eq ptr %i.ai, %i.ah, !dbg !16726
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.not, label %_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB5_13SliceContains14slice_containsBG_.exit, label %.lr.ph, !dbg !16727

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %i.aj = phi ptr [ %i.ai, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
    #dbg_value(ptr %i.aj, !5487, !DIExpression(), !15104)
    #dbg_value(ptr %i.aj, !5462, !DIExpression(), !15110)
    #dbg_value(ptr poison, !5492, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15112)
    #dbg_value(ptr %i.aj, !5496, !DIExpression(), !15112)
  %i.ak = tail call noundef zeroext i1 @_RNvXs3_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2), !dbg !16729, !noalias !15937
  br i1 %i.ak, label %_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB5_13SliceContains14slice_containsBG_.exit, label %bb.i, !dbg !16730

_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB5_13SliceContains14slice_containsBG_.exit: ; preds = %.lr.ph, %bb.i, %bb.h
  %.not.not.not.i.not.not.not.i.not.not.not.lcssa = phi i8 [ 0, %bb.h ], [ 1, %.lr.ph ], [ 0, %bb.i ], !dbg !16726
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !16731
  store i8 %.not.not.not.i.not.not.not.i.not.not.not.lcssa, ptr %i.al, align 1, !dbg !16731
  store i8 -1, ptr %0, align 8, !dbg !16731
  br label %bb.bs, !dbg !16732

bb.j:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !15882, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15938)
    #dbg_value(ptr %1, !15939, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15942)
    #dbg_value(ptr %1, !15943, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16733
  call void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value6as_key(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2), !dbg !16734
  %i.am = load i64, ptr %i.f, align 16, !dbg !16735, !range !3475, !noundef !1568
  %i.an = trunc nuw i64 %i.am to i1, !dbg !16736
  br i1 %i.an, label %bb.bt, label %bb.bu, !dbg !16736

bb.k:                                             ; preds = %bb.d, %bb.f
  %.sroa.3.0.i.ph = phi i64 [ %i.y, %bb.f ], [ %i.u, %bb.d ] ; 19 uses
  %.sroa.0.0.i.ph = phi ptr [ %i.aa, %bb.f ], [ %i.v, %bb.d ] ; 9 uses
    #dbg_value(ptr %.sroa.0.0.i.ph, !15948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15954)
    #dbg_value(ptr %.sroa.0.0.i.ph, !15881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15955)
    #dbg_value(i64 %.sroa.3.0.i.ph, !15948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15954)
    #dbg_value(i64 %.sroa.3.0.i.ph, !15881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15956), !dbg !16737
    #dbg_value(ptr %1, !2819, !DIExpression(), !15121)
    #dbg_value(i64 0, !2830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15126)
    #dbg_value(i64 0, !2881, !DIExpression(), !15128)
  %i.ao = trunc nuw i8 %i.g to i1, !dbg !16738
  br i1 %i.ao, label %bb.l, label %bb.m, !dbg !16739

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !2827, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15129)
    #dbg_value(ptr %1, !2895, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15131)
    #dbg_value(ptr %1, !2900, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15133)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16740
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !16740, !alias.scope !15956, !nonnull !1568, !noundef !1568
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16740
  %i.as = load i64, ptr %i.ar, align 8, !dbg !16740, !alias.scope !15956, !noundef !1568
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !16741
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit, !dbg !16742

bb.m:                                             ; preds = %bb.k
    #dbg_value(ptr %1, !2823, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !15135)
    #dbg_value(ptr %1, !2877, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15136)
    #dbg_value(ptr %1, !2825, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15137)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !16743
  %i.av = load i8, ptr %i.au, align 1, !dbg !16743, !alias.scope !15956, !noundef !1568 ; 2 uses
  %i.aw = zext i8 %i.av to i64, !dbg !16743       ; 2 uses
    #dbg_value(i64 %i.aw, !2878, !DIExpression(), !15136)
    #dbg_value(i64 %i.aw, !2868, !DIExpression(), !15138)
    #dbg_value(i64 %i.aw, !2861, !DIExpression(), !15139)
    #dbg_value(i64 %i.aw, !2830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15126)
    #dbg_value(i64 %i.aw, !2854, !DIExpression(), !15126)
    #dbg_value(i64 %i.aw, !2892, !DIExpression(), !15128)
    #dbg_value(ptr %1, !2867, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15138)
    #dbg_value(ptr %1, !2862, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15139)
    #dbg_value(ptr %1, !2853, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15126)
    #dbg_value(i64 21, !2867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15138)
    #dbg_value(i64 21, !2862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15139)
    #dbg_value(i64 21, !2853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15126)
  %i.ax = icmp ult i8 %i.av, 22
  br i1 %i.ax, label %bb.n, label %bb.o, !dbg !16744, !prof !2914

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !16745
    #dbg_value(ptr %i.ay, !2877, !DIExpression(), !15136)
    #dbg_value(ptr %i.ay, !2825, !DIExpression(), !15137)
    #dbg_value(ptr %i.ay, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15138)
    #dbg_value(ptr %i.ay, !2862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15139)
    #dbg_value(ptr %i.ay, !2853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15126)
  br label %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit, !dbg !16746

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aw, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #25, !dbg !16747, !noalias !15956
  unreachable, !dbg !16747

_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit: ; preds = %bb.l, %bb.n
  %.sroa.3.0.i32 = phi i64 [ %i.as, %bb.l ], [ %i.aw, %bb.n ], !dbg !16748 ; 16 uses
  %.sroa.0.0.i33 = phi ptr [ %i.at, %bb.l ], [ %i.ay, %bb.n ], !dbg !16748 ; 10 uses
    #dbg_value(ptr %.sroa.0.0.i33, !15949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15954)
    #dbg_value(i64 %.sroa.3.0.i32, !15949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15957), !dbg !16749
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15958), !dbg !16749
    #dbg_value(ptr %.sroa.0.0.i.ph, !15959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15157)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15158)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15163)
    #dbg_value(i64 %.sroa.3.0.i.ph, !15959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15157)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15158)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15163)
    #dbg_value(ptr %.sroa.0.0.i33, !15998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15157)
    #dbg_value(ptr %.sroa.0.0.i33, !16001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15158)
    #dbg_value(ptr %.sroa.0.0.i33, !16005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15163)
    #dbg_value(i64 %.sroa.3.0.i32, !15998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15157)
    #dbg_value(i64 %.sroa.3.0.i32, !16001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15158)
    #dbg_value(i64 %.sroa.3.0.i32, !16005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15163)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15169)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15169)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16018, !DIExpression(), !15173)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16012, !DIExpression(), !15174)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16021, !DIExpression(), !15175)
  %i.az = icmp eq i64 %.sroa.3.0.i.ph, 0, !dbg !16750
  br i1 %i.az, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %bb.p, !dbg !16750

bb.p:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str.exit
    #dbg_value(ptr %.sroa.0.0.i33, !16023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15178)
    #dbg_value(ptr %.sroa.0.0.i33, !16011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15169)
    #dbg_value(i64 %.sroa.3.0.i32, !16023, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15178)
    #dbg_value(i64 %.sroa.3.0.i32, !16011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15169)
  %i.ba = icmp ult i64 %.sroa.3.0.i.ph, %.sroa.3.0.i32, !dbg !16751
  br i1 %i.ba, label %bb.q, label %bb.r, !dbg !16751

bb.q:                                             ; preds = %bb.p
  %i.bb = icmp eq i64 %.sroa.3.0.i.ph, 1, !dbg !16752
  br i1 %i.bb, label %bb.t, label %bb.s, !dbg !16752

bb.r:                                             ; preds = %bb.p
    #dbg_value(ptr poison, !16007, !DIExpression(), !15179)
    #dbg_value(ptr poison, !16008, !DIExpression(), !15180)
    #dbg_value(ptr poison, !16015, !DIExpression(), !15181)
    #dbg_value(ptr poison, !16016, !DIExpression(), !15182)
  %i.bc = icmp eq i64 %.sroa.3.0.i.ph, %.sroa.3.0.i32, !dbg !16753
  br i1 %i.bc, label %bb.bq, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, !dbg !16753

bb.s:                                             ; preds = %bb.q
  %i.bd = icmp ult i64 %.sroa.3.0.i.ph, 33, !dbg !16754
  br i1 %i.bd, label %bb.ba, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i, !dbg !16754

bb.t:                                             ; preds = %bb.q
    #dbg_value(ptr %.sroa.0.0.i.ph, !16026, !DIExpression(), !15178)
  %.val.i = load i8, ptr %.sroa.0.0.i.ph, align 1, !dbg !16755, !alias.scope !15957, !noalias !15958, !noundef !1568 ; 2 uses
    #dbg_value(ptr poison, !16028, !DIExpression(), !15186)
    #dbg_value(ptr %.sroa.0.0.i33, !16032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15186)
    #dbg_value(i64 %.sroa.3.0.i32, !16032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15186)
    #dbg_value(i8 %.val.i, !16033, !DIExpression(), !15187)
    #dbg_value(ptr %.sroa.0.0.i33, !16034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15187)
    #dbg_value(i64 %.sroa.3.0.i32, !16034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15187)
    #dbg_value(i8 %.val.i, !4878, !DIExpression(), !15190)
    #dbg_value(i8 %.val.i, !4885, !DIExpression(), !15191)
    #dbg_value(ptr %.sroa.0.0.i33, !4882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15190)
    #dbg_value(ptr %.sroa.0.0.i33, !4886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15191)
    #dbg_value(i64 %.sroa.3.0.i32, !4882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15190)
    #dbg_value(i64 %.sroa.3.0.i32, !4886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15191)
  %i.be = icmp samesign ult i64 %.sroa.3.0.i32, 16, !dbg !16756
  br i1 %i.be, label %.lr.ph.i.i.i, label %bb.u, !dbg !16756

bb.u:                                             ; preds = %bb.t
  %i.bf = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i33, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i32), !dbg !16757 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0, !dbg !16757
  %i.bh = extractvalue { i64, i64 } %i.bf, 1, !dbg !16757
    #dbg_value(i64 %i.bg, !4887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15192)
    #dbg_value(i64 %i.bh, !4887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15192)
  %i.bi = trunc nuw i64 %i.bg to i1, !dbg !16758
  br i1 %i.bi, label %.loopexit13.i.i.i, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, !dbg !16758

.loopexit13.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.u
  %.sroa.5.0.i.i.i = phi i64 [ %i.bh, %bb.u ], [ %.sroa.04.015.i.i.i, %.lr.ph.i.i.i ], !dbg !16759
    #dbg_value(i64 1, !4887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15192)
    #dbg_value(i64 %.sroa.5.0.i.i.i, !4887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15192)
    #dbg_value(i64 %.sroa.5.0.i.i.i, !4888, !DIExpression(), !15193)
  %i.bj = icmp ult i64 %.sroa.5.0.i.i.i, %.sroa.3.0.i32, !dbg !16760
    #dbg_value(i1 true, !4891, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15195)
  tail call void @llvm.assume(i1 %i.bj), !dbg !16761
  br label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, !dbg !16762

.lr.ph.i.i.i:                                     ; preds = %bb.t, %bb.v
  %.sroa.04.015.i.i.i = phi i64 [ %i.bn, %bb.v ], [ 0, %bb.t ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i, !4883, !DIExpression(), !15196)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i33, i64 %.sroa.04.015.i.i.i, !dbg !16763
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !16763, !alias.scope !16036, !noalias !15957, !noundef !1568
  %i.bm = icmp eq i8 %i.bl, %.val.i, !dbg !16763
  br i1 %i.bm, label %.loopexit13.i.i.i, label %bb.v, !dbg !16763

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.bn = add nuw nsw i64 %.sroa.04.015.i.i.i, 1, !dbg !16764 ; 2 uses
    #dbg_value(i64 %i.bn, !4883, !DIExpression(), !15196)
  %exitcond.not.i.i.i = icmp eq i64 %i.bn, %.sroa.3.0.i32, !dbg !16765
  br i1 %exitcond.not.i.i.i, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.lr.ph.i.i.i, !dbg !16765

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i: ; preds = %bb.bc, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16766, !noalias !16037
  call void @_RNvMsu_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i33, i64 noundef %.sroa.3.0.i32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.ph, i64 noundef %.sroa.3.0.i.ph), !dbg !16767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16038), !dbg !16768
    #dbg_value(ptr %i.b, !16040, !DIExpression(), !15212)
  %i.bo = load i64, ptr %i.b, align 8, !dbg !16769, !range !16055, !alias.scope !16038, !noalias !16056, !noundef !1568
  switch i64 %i.bo, label %default.unreachable [
    i64 0, label %.preheader.i.i
    i64 1, label %bb.aj
    i64 2, label %bb.ak
  ], !dbg !16770

.preheader.i.i:                                   ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.bq = load i8, ptr %i.bp, align 2, !range !2817, !alias.scope !16038, !noalias !16056
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !16038, !noalias !16056, !nonnull !1568 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !16038, !noalias !16056 ; 14 uses
  br i1 %i.br, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph.preheader.i.i, !dbg !16771

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.promoted225.i.i = load i8, ptr %i.bw, align 8, !alias.scope !16038, !noalias !16056 ; 2 uses
  %.promoted176.i.i = load i64, ptr %i.bx, align 8, !alias.scope !16038, !noalias !16056 ; 12 uses
  %i.by = trunc nuw i8 %.promoted225.i.i to i1, !dbg !16772
    #dbg_value(i1 %i.by, !16074, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15234)
    #dbg_value(i64 %.promoted176.i.i, !16088, !DIExpression(), !15241)
    #dbg_value(i64 %.promoted176.i.i, !16075, !DIExpression(), !15242)
    #dbg_value(ptr %i.bt, !16100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15243)
    #dbg_value(ptr %i.bt, !16093, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15244)
    #dbg_value(i64 %i.bv, !16100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15243)
    #dbg_value(i64 %i.bv, !16093, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15244)
    #dbg_value(i64 %.promoted176.i.i, !16092, !DIExpression(), !15244)
    #dbg_value(i64 %.promoted176.i.i, !16101, !DIExpression(), !15243)
    #dbg_value(i64 %i.bv, !16094, !DIExpression(), !15241)
    #dbg_value(i64 %.promoted176.i.i, !16104, !DIExpression(), !15247)
    #dbg_value(ptr %i.bt, !16109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15255)
    #dbg_value(ptr %i.bt, !16107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15247)
    #dbg_value(ptr %i.bt, !16123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15258)
    #dbg_value(ptr %i.bt, !16120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15259)
    #dbg_value(i64 %i.bv, !16109, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15255)
    #dbg_value(i64 %i.bv, !16107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15247)
    #dbg_value(i64 %i.bv, !16123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15258)
    #dbg_value(i64 %i.bv, !16120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15259)
    #dbg_value(i64 %.promoted176.i.i, !16128, !DIExpression(), !15262)
    #dbg_value(i64 %.promoted176.i.i, !16126, !DIExpression(), !15258)
    #dbg_value(i64 %.promoted176.i.i, !16119, !DIExpression(), !15259)
    #dbg_value(i64 %.promoted176.i.i, !16113, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15255)
  %i.bz = icmp eq i64 %.promoted176.i.i, 0, !dbg !16773
  br i1 %i.bz, label %bb.y, label %bb.w, !dbg !16773

bb.w:                                             ; preds = %.lr.ph.preheader.i.i
  %.not.i.i.us.i.peel.i = icmp ult i64 %.promoted176.i.i, %i.bv, !dbg !16774
  br i1 %.not.i.i.us.i.peel.i, label %bb.x, label %.split.i.i.us.i.peel.i, !dbg !16774

.split.i.i.us.i.peel.i:                           ; preds = %bb.w
  %i.ca = icmp eq i64 %.promoted176.i.i, %i.bv, !dbg !16775
  br i1 %i.ca, label %bb.y, label %.split.us180.i.i, !dbg !16776

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.promoted176.i.i, !dbg !16777
  %i.cc = load i8, ptr %i.cb, align 1, !dbg !16777, !alias.scope !16131, !noalias !16132, !noundef !1568
    #dbg_value(i8 %i.cc, !16133, !DIExpression(), !15270)
  %i.cd = icmp sgt i8 %i.cc, -65, !dbg !16778
  br i1 %i.cd, label %bb.y, label %.split.us180.i.i, !dbg !16776

bb.y:                                             ; preds = %bb.x, %.split.i.i.us.i.peel.i, %.lr.ph.preheader.i.i
    #dbg_value(ptr %i.bt, !16114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15271)
    #dbg_value(i64 %i.bv, !16114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15271)
    #dbg_value(i64 %i.bv, !16113, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15255)
    #dbg_value(i64 %i.bv, !16121, !DIExpression(), !15272)
    #dbg_value(!DIArgList(i64 %i.bv, i64 %.promoted176.i.i), !16115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !15273)
    #dbg_value(ptr %i.bt, !16129, !DIExpression(), !15262)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.promoted176.i.i, !dbg !16779 ; 4 uses
    #dbg_value(ptr undef, !16139, !DIExpression(), !15280)
    #dbg_value(ptr undef, !16151, !DIExpression(), !15292)
    #dbg_value(i32 2, !16166, !DIExpression(), !15295)
    #dbg_value(ptr undef, !5506, !DIExpression(), !15297)
    #dbg_value(i64 1, !5520, !DIExpression(), !15299)
    #dbg_value(ptr %i.ce, !5524, !DIExpression(), !15299)
    #dbg_value(ptr %i.ce, !5516, !DIExpression(), !15300)
    #dbg_value(!DIArgList(ptr %i.bt, i64 %i.bv), !5517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15301)
    #dbg_value(ptr poison, !5527, !DIExpression(), !15303)
    #dbg_value(ptr poison, !5530, !DIExpression(), !15304)
  %i.cf = icmp samesign eq i64 %.promoted176.i.i, %i.bv, !dbg !16780
  br i1 %i.cf, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.z, !dbg !16781

bb.z:                                             ; preds = %bb.y
  %i.cg = load i8, ptr %i.ce, align 1, !dbg !16782, !noalias !16172, !noundef !1568 ; 5 uses
    #dbg_value(i8 %i.cg, !16169, !DIExpression(), !15295)
    #dbg_value(i8 %i.cg, !16155, !DIExpression(), !15307)
  %i.ch = icmp sgt i8 %i.cg, -1, !dbg !16783
  br i1 %i.ch, label %bb.aa, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i, !dbg !16783

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i: ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 1, !dbg !16784
  %i.cj = and i8 %i.cg, 31, !dbg !16785
  %i.ck = zext nneg i8 %i.cj to i32, !dbg !16785  ; 3 uses
    #dbg_value(i32 %i.ck, !16173, !DIExpression(), !15310)
    #dbg_value(i32 %i.ck, !16158, !DIExpression(), !15311)
    #dbg_value(ptr undef, !5506, !DIExpression(), !15313)
    #dbg_value(i64 1, !5520, !DIExpression(), !15315)
    #dbg_value(ptr %i.ci, !5524, !DIExpression(), !15315)
    #dbg_value(ptr %i.ci, !5516, !DIExpression(), !15316)
    #dbg_value(!DIArgList(ptr %i.bt, i64 %i.bv), !5517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15317)
    #dbg_value(ptr poison, !5527, !DIExpression(), !15319)
    #dbg_value(ptr poison, !5530, !DIExpression(), !15320)
  %i.cl = add nuw nsw i64 %.promoted176.i.i, 1, !dbg !16786
  %i.cm = icmp samesign ne i64 %i.cl, %i.bv, !dbg !16786
  tail call void @llvm.assume(i1 %i.cm), !dbg !16787
  %i.cn = load i8, ptr %i.ci, align 1, !dbg !16788, !noalias !16172, !noundef !1568
    #dbg_value(i8 %i.cn, !16176, !DIExpression(), !15310)
    #dbg_value(i8 %i.cn, !16159, !DIExpression(), !15321)
  %i.co = shl nuw nsw i32 %i.ck, 6, !dbg !16789
  %i.cp = and i8 %i.cn, 63, !dbg !16790
  %i.cq = zext nneg i8 %i.cp to i32, !dbg !16790  ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq, !dbg !16789
    #dbg_value(i32 %i.cr, !16160, !DIExpression(), !15322)
  %i.cs = icmp samesign ugt i8 %i.cg, -33, !dbg !16791
  br i1 %i.cs, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i, label %bb.ab, !dbg !16791

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 2, !dbg !16792
    #dbg_value(ptr undef, !5506, !DIExpression(), !15324)
    #dbg_value(i64 1, !5520, !DIExpression(), !15326)
    #dbg_value(ptr %i.ct, !5524, !DIExpression(), !15326)
    #dbg_value(ptr %i.ct, !5516, !DIExpression(), !15327)
    #dbg_value(!DIArgList(ptr %i.bt, i64 %i.bv), !5517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15328)
    #dbg_value(ptr poison, !5527, !DIExpression(), !15330)
    #dbg_value(ptr poison, !5530, !DIExpression(), !15331)
  %i.cu = add nuw nsw i64 %.promoted176.i.i, 2, !dbg !16793
  %i.cv = icmp samesign ne i64 %i.cu, %i.bv, !dbg !16793
  tail call void @llvm.assume(i1 %i.cv), !dbg !16794
  %i.cw = load i8, ptr %i.ct, align 1, !dbg !16795, !noalias !16172, !noundef !1568
    #dbg_value(i8 %i.cw, !16176, !DIExpression(), !15333)
    #dbg_value(i8 %i.cw, !16161, !DIExpression(), !15334)
    #dbg_value(i32 %i.cq, !16173, !DIExpression(), !15333)
  %i.cx = shl nuw nsw i32 %i.cq, 6, !dbg !16796
  %i.cy = and i8 %i.cw, 63, !dbg !16797
  %i.cz = zext nneg i8 %i.cy to i32, !dbg !16797
  %i.da = or disjoint i32 %i.cx, %i.cz, !dbg !16796 ; 2 uses
    #dbg_value(i32 %i.da, !16173, !DIExpression(), !15336)
    #dbg_value(i32 %i.da, !16162, !DIExpression(), !15337)
  %i.db = shl nuw nsw i32 %i.ck, 12, !dbg !16798
  %i.dc = or disjoint i32 %i.da, %i.db, !dbg !16799
    #dbg_value(i32 %i.dc, !16160, !DIExpression(), !15322)
  %i.dd = icmp samesign ugt i8 %i.cg, -17, !dbg !16800
  br i1 %i.dd, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i, label %bb.ab, !dbg !16800

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 3, !dbg !16801
    #dbg_value(ptr undef, !5506, !DIExpression(), !15339)
    #dbg_value(i64 1, !5520, !DIExpression(), !15341)
    #dbg_value(ptr %i.de, !5524, !DIExpression(), !15341)
    #dbg_value(ptr %i.de, !5516, !DIExpression(), !15342)
    #dbg_value(!DIArgList(ptr %i.bt, i64 %i.bv), !5517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15343)
    #dbg_value(ptr poison, !5527, !DIExpression(), !15345)
    #dbg_value(ptr poison, !5530, !DIExpression(), !15346)
  %i.df = add nuw nsw i64 %.promoted176.i.i, 3, !dbg !16802
  %i.dg = icmp samesign ne i64 %i.df, %i.bv, !dbg !16802
  tail call void @llvm.assume(i1 %i.dg), !dbg !16803
  %i.dh = load i8, ptr %i.de, align 1, !dbg !16804, !noalias !16172, !noundef !1568
    #dbg_value(i8 %i.dh, !16176, !DIExpression(), !15336)
    #dbg_value(i8 %i.dh, !16163, !DIExpression(), !15347)
  %i.di = shl nuw nsw i32 %i.ck, 18, !dbg !16805
  %i.dj = and i32 %i.di, 1835008, !dbg !16805
  %i.dk = shl nuw nsw i32 %i.da, 6, !dbg !16806
  %i.dl = and i8 %i.dh, 63, !dbg !16807
  %i.dm = zext nneg i8 %i.dl to i32, !dbg !16807
  %i.dn = or disjoint i32 %i.dk, %i.dm, !dbg !16806
  %i.do = or disjoint i32 %i.dn, %i.dj, !dbg !16808
    #dbg_value(i32 %i.do, !16160, !DIExpression(), !15322)
  br label %bb.ab, !dbg !16809

bb.aa:                                            ; preds = %bb.z
  %i.dp = zext nneg i8 %i.cg to i32, !dbg !16810
  br label %bb.ab, !dbg !16811

bb.ab:                                            ; preds = %bb.aa, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i
  %.sroa.4.0.i.ph.i.us.i.peel.i = phi i32 [ %i.dc, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i ], [ %i.do, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i ], [ %i.cr, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i ], [ %i.dp, %bb.aa ] ; 4 uses
    #dbg_value(i32 1, !16179, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !15352)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i, !16179, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !15352)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i, !16192, !DIExpression(), !15359)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i, !16188, !DIExpression(), !15360)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i, !16203, !DIExpression(), !15361)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i, !16199, !DIExpression(), !15362)
  %i.dq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 1114112, !dbg !16812
  tail call void @llvm.assume(i1 %i.dq), !dbg !16812
  br i1 %i.by, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.ac, !dbg !16813

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i, !16205, !DIExpression(), !15365)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i, !16076, !DIExpression(), !15366)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i, !16209, !DIExpression(), !15369)
  %i.dr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i, 128, !dbg !16814
  br i1 %i.dr, label %.lr.ph.i.i, label %bb.ad, !dbg !16814

bb.ad:                                            ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value8contains:bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !16357, !noalias !16358
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr234.i.i, i64 range(i64 0, -9223372036854775808) %i.fb), !dbg !16874
  %i.hn = add i64 %.fr234.i.i, -1, !dbg !16874    ; 2 uses
  %.first_iter.i35.i.i = icmp ult i64 %i.hn, %i.fb
  %exitcond.not.i36.i.i151.not = icmp ult i64 %.fr234.i.i, %i.fb
  %invariant.op191 = sub i64 1, %.fr234.i.i, !dbg !16874
  %.not58.i.us.i.i154 = icmp eq i64 %.fr234.i.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i.i, !dbg !16874

.lr.ph.split.us.i.i.i:                            ; preds = %bb.az, %.lr.ph.i34.i.i
  %.sink.i37.i56.i = phi i64 [ %.sink.i37.i.i, %bb.az ], [ %.promoted.i31.i.i, %.lr.ph.i34.i.i ] ; 5 uses
  %i.ho = phi i64 [ %i.im, %bb.az ], [ %i.hg, %.lr.ph.i34.i.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ho, !dbg !16875
  %i.hq = load i8, ptr %i.hp, align 1, !dbg !16876, !alias.scope !16355, !noalias !16359, !noundef !1568
    #dbg_value(i8 %i.hq, !16299, !DIExpression(), !15442)
    #dbg_value(i8 %i.hq, !16277, !DIExpression(), !15534)
  %i.hr = and i8 %i.hq, 63, !dbg !16877
  %i.hs = zext nneg i8 %i.hr to i64, !dbg !16878
  %i.ht = shl nuw i64 1, %i.hs, !dbg !16879
  %i.hu = and i64 %i.ht, %i.hj, !dbg !16879
  %.not.us.i.i.i = icmp eq i64 %i.hu, 0, !dbg !16879
  br i1 %.not.us.i.i.i, label %bb.ay, label %.preheader59.i.i.i.preheader, !dbg !16874

.preheader59.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
    #dbg_value(i64 %.fr234.i.i, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15535)
    #dbg_value(ptr undef, !16291, !DIExpression(), !15438)
    #dbg_value(ptr undef, !16287, !DIExpression(), !15436)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15431)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15536)
  br i1 %exitcond.not.i36.i.i151.not, label %.lr.ph153, label %.preheader.i38.preheader.i.i, !dbg !16880

.preheader59.i.i.i:                               ; preds = %.lr.ph153
  %i.hv = add i64 %.sroa.04.0.us.i.i.i152, 1, !dbg !16881 ; 2 uses
    #dbg_value(i64 %i.hv, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15535)
    #dbg_value(i64 %i.hv, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15535)
    #dbg_value(ptr undef, !16291, !DIExpression(), !15438)
    #dbg_value(ptr undef, !16287, !DIExpression(), !15436)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15431)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15536)
  %exitcond.not.i36.i.i = icmp eq i64 %i.hv, %umax.i.i.i, !dbg !16882
  br i1 %exitcond.not.i36.i.i, label %.preheader.i38.preheader.i.i, label %.lr.ph153, !dbg !16880

.preheader.i38.preheader.i.i:                     ; preds = %.preheader59.i.i.i, %.preheader59.i.i.i.preheader
    #dbg_value(ptr undef, !16261, !DIExpression(), !15423)
    #dbg_value(ptr undef, !16261, !DIExpression(), !15423)
    #dbg_value(ptr undef, !16248, !DIExpression(), !15421)
    #dbg_value(ptr undef, !16248, !DIExpression(), !15421)
    #dbg_value(ptr undef, !16245, !DIExpression(), !15419)
    #dbg_value(ptr undef, !16245, !DIExpression(), !15419)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15412)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15412)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15537)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15537)
  br i1 %.first_iter.i35.i.i, label %.preheader.i38.us.i.i.preheader, label %.preheader.i38.i.i

.preheader.i38.us.i.i.preheader:                  ; preds = %.preheader.i38.preheader.i.i
    #dbg_value(i64 %.fr234.i.i, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
  br i1 %.not58.i.us.i.i154, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph156, !dbg !16883

.preheader.i38.us.i.i:                            ; preds = %.lr.ph156
    #dbg_value(i64 %i.hw, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
    #dbg_value(ptr undef, !16261, !DIExpression(), !15423)
    #dbg_value(ptr undef, !16248, !DIExpression(), !15421)
    #dbg_value(ptr undef, !16245, !DIExpression(), !15419)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15412)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15537)
  %.not58.i.us.i.i = icmp eq i64 %i.hw, 0, !dbg !16884
  br i1 %.not58.i.us.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph156, !dbg !16883

.lr.ph156:                                        ; preds = %.preheader.i38.us.i.i.preheader, %.preheader.i38.us.i.i
  %.sroa.2.0.us.i.us.i.i155 = phi i64 [ %i.hw, %.preheader.i38.us.i.i ], [ %.fr234.i.i, %.preheader.i38.us.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i155, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i155, !16336, !DIExpression(), !15492)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i155, !16333, !DIExpression(), !15487)
  %i.hw = add i64 %.sroa.2.0.us.i.us.i.i155, -1, !dbg !16885 ; 4 uses
    #dbg_value(i64 %i.hw, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
    #dbg_value(i64 %i.hw, !16284, !DIExpression(), !15539)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.hw, !dbg !16886
  %i.hy = load i8, ptr %i.hx, align 1, !dbg !16886, !alias.scope !16356, !noalias !16360, !noundef !1568
  %i.hz = add i64 %i.hw, %.sink.i37.i56.i, !dbg !16887 ; 2 uses
    #dbg_value(i64 %i.hz, !16320, !DIExpression(), !15472)
    #dbg_value(i64 %i.hz, !16315, !DIExpression(), !15468)
  %i.ia = icmp ult i64 %i.hz, %i.ex, !dbg !16888
  tail call void @llvm.assume(i1 %i.ia), !dbg !16889
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.hz, !dbg !16890
  %i.ic = load i8, ptr %i.ib, align 1, !dbg !16891, !alias.scope !16355, !noalias !16359, !noundef !1568
  %.not44.us.i.us.i.i = icmp eq i8 %i.hy, %i.ic, !dbg !16886
  br i1 %.not44.us.i.us.i.i, label %.preheader.i38.us.i.i, label %.split.us.i.i, !dbg !16886

.split.us.i.i:                                    ; preds = %.lr.ph156
  %i.id = add i64 %.sink.i37.i56.i, %i.hm, !dbg !16892
  br label %bb.az, !dbg !16893

.lr.ph153:                                        ; preds = %.preheader59.i.i.i.preheader, %.preheader59.i.i.i
  %.sroa.04.0.us.i.i.i152 = phi i64 [ %i.hv, %.preheader59.i.i.i ], [ %.fr234.i.i, %.preheader59.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16330, !DIExpression(), !15482)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16288, !DIExpression(), !15540)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16325, !DIExpression(), !15477)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16280, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16281, !DIExpression(), !15541)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.04.0.us.i.i.i152, !dbg !16894
  %i.if = load i8, ptr %i.ie, align 1, !dbg !16894, !alias.scope !16356, !noalias !16360, !noundef !1568
  %i.ig = add i64 %.sroa.04.0.us.i.i.i152, %.sink.i37.i56.i, !dbg !16895 ; 2 uses
    #dbg_value(i64 %i.ig, !16320, !DIExpression(), !15464)
    #dbg_value(i64 %i.ig, !16315, !DIExpression(), !15459)
  %i.ih = icmp ult i64 %i.ig, %i.ex, !dbg !16896
  tail call void @llvm.assume(i1 %i.ih), !dbg !16897
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ig, !dbg !16898
  %i.ij = load i8, ptr %i.ii, align 1, !dbg !16899, !alias.scope !16355, !noalias !16359, !noundef !1568
  %.not45.us.i.i.i = icmp eq i8 %i.if, %i.ij, !dbg !16894
  br i1 %.not45.us.i.i.i, label %.preheader59.i.i.i, label %bb.ax, !dbg !16894

.preheader.i38.i.i:                               ; preds = %.preheader.i38.preheader.i.i
    #dbg_value(i64 %i.hk, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
  br i1 %.not58.i.us.i.i154, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.split56.us.i39.i.i, !dbg !16883

.split56.us.i39.i.i:                              ; preds = %.preheader.i38.i.i
    #dbg_value(i64 %i.hk, !16336, !DIExpression(), !15492)
    #dbg_value(i64 %i.hk, !16333, !DIExpression(), !15487)
    #dbg_value(i64 %i.hn, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
    #dbg_value(i64 %i.hn, !16284, !DIExpression(), !15539)
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hn, i64 noundef range(i64 0, -9223372036854775808) %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #25, !dbg !16886, !noalias !16361
  unreachable, !dbg !16886

bb.ax:                                            ; preds = %.lr.ph153
  %.reass301.i.reass.i.reass.reass = add i64 %.sink.i37.i56.i, %invariant.op191
  %i.ik = add i64 %.reass301.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i152, !dbg !16900
  br label %bb.az, !dbg !16901

bb.ay:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.il = add i64 %.sink.i37.i56.i, %i.fb, !dbg !16902
  br label %bb.az, !dbg !16903

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.split.us.i.i
  %.sink.i37.i.i = phi i64 [ %i.il, %bb.ay ], [ %i.ik, %bb.ax ], [ %i.id, %.split.us.i.i ] ; 2 uses
  %i.im = add i64 %.sink.i37.i.i, %i.fd, !dbg !16872 ; 2 uses
    #dbg_value(i64 %i.im, !16310, !DIExpression(), !15454)
    #dbg_value(i64 %i.im, !16304, !DIExpression(), !15449)
  %i.in = icmp ult i64 %i.im, %i.ex, !dbg !16873
  br i1 %i.in, label %.lr.ph.split.us.i.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16873

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i: ; preds = %.lr.ph.i.i15.i, %bb.am, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i, %bb.ai
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16904

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %bb.ar, %.preheader60.i.i.i.preheader, %.preheader60.i.i.i, %bb.az, %.preheader.i38.us.i.i.preheader, %.preheader.i38.us.i.i, %bb.an, %bb.y, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, %.preheader.i38.i.i, %bb.aw, %bb.ao, %bb.am, %bb.aj, %bb.ah, %bb.ab, %.preheader.i.i
  %storemerge.i.sink.i.i = phi i8 [ 1, %.preheader.i38.us.i.i ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.aw ], [ 1, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i ], [ 0, %bb.am ], [ 1, %.preheader60.i.i.i ], [ 0, %.preheader.i.i ], [ 1, %bb.ab ], [ 1, %bb.ah ], [ 0, %bb.an ], [ 1, %.preheader.i38.i.i ], [ %.promoted225.i.i, %bb.y ], [ 1, %.preheader.i38.us.i.i.preheader ], [ 0, %bb.az ], [ 0, %bb.ar ], [ 1, %.preheader60.i.i.i.preheader ]
    #dbg_value(i8 %storemerge.i.sink.i.i, !16002, !DIExpression(), !15542)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16904, !noalias !16037
  br label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, !dbg !16904

bb.ba:                                            ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16362), !dbg !16905
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16363), !dbg !16905
    #dbg_value(ptr poison, !16364, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !15576)
    #dbg_value(ptr poison, !16364, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15576)
    #dbg_value(ptr poison, !16411, !DIExpression(), !15591)
    #dbg_value(ptr poison, !16428, !DIExpression(), !15592)
    #dbg_value(ptr poison, !16441, !DIExpression(), !15593)
    #dbg_value(ptr poison, !16446, !DIExpression(), !15618)
    #dbg_value(ptr poison, !16449, !DIExpression(), !15619)
    #dbg_value(ptr poison, !16451, !DIExpression(), !15620)
    #dbg_value(ptr poison, !16476, !DIExpression(), !15621)
    #dbg_value(ptr poison, !16499, !DIExpression(), !15622)
    #dbg_value(ptr poison, !16364, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15576)
    #dbg_value(ptr poison, !16478, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15623)
    #dbg_value(ptr poison, !16500, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15622)
    #dbg_value(ptr poison, !16505, !DIExpression(), !15630)
    #dbg_value(ptr poison, !16430, !DIExpression(), !15592)
    #dbg_value(ptr poison, !16442, !DIExpression(), !15593)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15631)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16385, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15631)
    #dbg_value(ptr %.sroa.0.0.i33, !16386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15631)
    #dbg_value(i64 %.sroa.3.0.i32, !16386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15631)
    #dbg_declare(ptr %i.a, !16396, !DIExpression(), !15632)
    #dbg_value(i64 4, !16523, !DIExpression(), !15635)
    #dbg_value(i64 1, !16526, !DIExpression(), !15638)
    #dbg_value(i64 1, !16529, !DIExpression(), !15642)
    #dbg_value(i64 1, !16533, !DIExpression(), !15645)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15645)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15646)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16527, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15638)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15642)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15645)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15646)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16527, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15638)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15642)
    #dbg_value(ptr %.sroa.0.0.i33, !16388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15647)
    #dbg_value(i64 %.sroa.3.0.i32, !16388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15647)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16524, !DIExpression(), !15635)
  %i.io = load i8, ptr %.sroa.0.0.i.ph, align 1, !dbg !16906, !alias.scope !16537, !noalias !16538, !noundef !1568 ; 3 uses
    #dbg_value(i8 %i.io, !16389, !DIExpression(), !15648)
    #dbg_value(i8 %i.io, !16540, !DIExpression(), !15651)
  %i.ip = add nsw i64 %.sroa.3.0.i.ph, -1, !dbg !16907 ; 2 uses
    #dbg_value(i64 %i.ip, !16390, !DIExpression(), !15652)
  %i.iq = icmp eq i64 %.sroa.3.0.i.ph, 2, !dbg !16908
  br i1 %i.iq, label %.thread.i.i, label %bb.bb, !dbg !16908

bb.bb:                                            ; preds = %bb.ba
  %i.ir = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %.sroa.3.0.i.ph, i64 4), !dbg !16909
    #dbg_value(ptr undef, !16499, !DIExpression(), !15622)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15622)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15622)
    #dbg_value(ptr undef, !16500, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15622)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15623)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15623)
    #dbg_value(ptr undef, !16478, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15623)
    #dbg_value(ptr undef, !16476, !DIExpression(), !15621)
    #dbg_declare(ptr poison, !16477, !DIExpression(), !15653)
    #dbg_declare(ptr poison, !16479, !DIExpression(), !15654)
    #dbg_value(ptr undef, !16451, !DIExpression(), !15620)
    #dbg_value(ptr undef, !16449, !DIExpression(), !15619)
    #dbg_value(ptr undef, !16446, !DIExpression(), !15618)
    #dbg_value(ptr undef, !16447, !DIExpression(), !15618)
  br label %.lr.ph146, !dbg !16910

bb.bc:                                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i
    #dbg_value(ptr undef, !16451, !DIExpression(), !15620)
    #dbg_value(ptr undef, !16449, !DIExpression(), !15619)
    #dbg_value(ptr undef, !16446, !DIExpression(), !15618)
    #dbg_value(ptr undef, !16447, !DIExpression(), !15618)
  %i.is = icmp ult i64 %i.ir, %i.iu, !dbg !16911
  br i1 %i.is, label %.lr.ph146, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i, !dbg !16910

.lr.ph146:                                        ; preds = %bb.bb, %bb.bc
  %i.it = phi i64 [ %.sroa.3.0.i.ph, %bb.bb ], [ %i.iu, %bb.bc ]
    #dbg_value(i64 %i.it, !16545, !DIExpression(), !15659)
    #dbg_value(i64 %i.it, !16548, !DIExpression(), !15660)
    #dbg_value(i64 1, !16546, !DIExpression(), !15659)
    #dbg_value(i64 1, !16549, !DIExpression(), !15660)
  %i.iu = add nsw i64 %i.it, -1, !dbg !16912      ; 6 uses
    #dbg_value(i64 %i.iu, !16480, !DIExpression(), !15661)
    #dbg_value(ptr poison, !16551, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15664)
    #dbg_declare(ptr poison, !16556, !DIExpression(), !15665)
    #dbg_value(ptr undef, !16555, !DIExpression(DW_OP_deref), !15664)
    #dbg_value(ptr poison, !16561, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !15669)
    #dbg_value(ptr poison, !16567, !DIExpression(), !15669)
    #dbg_value(i64 %i.iu, !16566, !DIExpression(), !15670)
  %i.iv = icmp ult i64 %i.iu, %.sroa.3.0.i.ph, !dbg !16913
  br i1 %i.iv, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i, label %bb.bd, !dbg !16913

bb.bd:                                            ; preds = %.lr.ph146
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.iu, i64 noundef range(i64 2, 33) %.sroa.3.0.i.ph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #25, !dbg !16913, !noalias !16569
  unreachable, !dbg !16913

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i: ; preds = %.lr.ph146
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph, i64 %i.iu, !dbg !16913
  %i.ix = load i8, ptr %i.iw, align 1, !dbg !16913, !alias.scope !16537, !noalias !16570, !noundef !1568 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ix, %i.io, !dbg !16913
  br i1 %.not.i.not.i.i.i, label %bb.bc, label %bb.be, !dbg !16914

bb.be:                                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i
  %i.iy = add nuw nsw i64 %.sroa.3.0.i.ph, 15, !dbg !16915
  %i.iz = icmp ult i64 %.sroa.3.0.i32, %i.iy, !dbg !16916
  br i1 %i.iz, label %.lr.ph.split.us.i.i21.i, label %bb.bf, !dbg !16916

.thread.i.i:                                      ; preds = %bb.ba
  %i.ja = icmp ult i64 %.sroa.3.0.i32, 17, !dbg !16916
  br i1 %i.ja, label %.lr.ph.split.us.i.i21.i, label %.thread136.i.i, !dbg !16916

.thread136.i.i:                                   ; preds = %.thread.i.i
    #dbg_value(i8 %i.io, !16540, !DIExpression(), !15651)
    #dbg_value(i8 %i.io, !16389, !DIExpression(), !15648)
  %i.jb = insertelement <16 x i8> poison, i8 %i.io, i64 0, !dbg !16917
  %i.jc = shufflevector <16 x i8> %i.jb, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !16917
    #dbg_value(<16 x i8> %i.jc, !16393, !DIExpression(), !15678)
    #dbg_value(i64 1, !16391, !DIExpression(), !15679)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph, i64 1
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !dbg !16918, !alias.scope !16537, !noalias !16538
  br label %bb.bg, !dbg !16918

bb.bf:                                            ; preds = %bb.be
    #dbg_value(i8 %i.io, !16540, !DIExpression(), !15651)
    #dbg_value(i8 %i.io, !16389, !DIExpression(), !15648)
  %i.jd = insertelement <16 x i8> poison, i8 %i.io, i64 0, !dbg !16917
  %i.je = shufflevector <16 x i8> %i.jd, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !16917
    #dbg_value(<16 x i8> %i.je, !16393, !DIExpression(), !15678)
    #dbg_value(i64 %i.iu, !16391, !DIExpression(), !15679)
  br label %bb.bg, !dbg !16918

.lr.ph.split.us.i.i21.i:                          ; preds = %.thread.i.i, %bb.be
    #dbg_value(ptr undef, !16441, !DIExpression(), !15593)
    #dbg_value(ptr undef, !16442, !DIExpression(), !15593)
    #dbg_value(ptr undef, !16430, !DIExpression(), !15592)
    #dbg_value(ptr undef, !16428, !DIExpression(), !15592)
    #dbg_declare(ptr poison, !16429, !DIExpression(), !15680)
    #dbg_declare(ptr poison, !16431, !DIExpression(), !15681)
    #dbg_value(ptr undef, !16411, !DIExpression(), !15591)
    #dbg_value(i64 0, !16571, !DIExpression(), !15690)
    #dbg_value(i64 1, !16585, !DIExpression(), !15693)
    #dbg_value(i64 1, !16588, !DIExpression(), !15697)
    #dbg_value(i64 1, !16571, !DIExpression(), !15699)
    #dbg_value(ptr %.sroa.0.0.i33, !16572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15690)
    #dbg_value(i64 %.sroa.3.0.i32, !16572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15690)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16573, !DIExpression(), !15690)
    #dbg_value(ptr %.sroa.0.0.i33, !16418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15700)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16418, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15700)
    #dbg_value(ptr %.sroa.0.0.i33, !16572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15699)
    #dbg_value(ptr %.sroa.0.0.i33, !16586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15693)
    #dbg_value(ptr %.sroa.0.0.i33, !16589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15697)
    #dbg_value(i64 %.sroa.3.0.i32, !16572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15699)
    #dbg_value(i64 %.sroa.3.0.i32, !16586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15693)
    #dbg_value(i64 %.sroa.3.0.i32, !16589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15697)
  %bcmp.i.i.us24.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.sroa.0.0.i33, ptr noundef nonnull readonly dereferenceable(1) %.sroa.0.0.i.ph, i64 range(i64 2, 33) %.sroa.3.0.i.ph), !dbg !16919, !alias.scope !16593, !noalias !16594
  %i.jf = icmp eq i32 %bcmp.i.i.us24.i.i.i, 0, !dbg !16919
  br i1 %i.jf, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i, !dbg !16920

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1, !dbg !16921 ; 2 uses
    #dbg_value(ptr %i.jg, !16572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15690)
    #dbg_value(i64 %i.ji, !16572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15690)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16573, !DIExpression(), !15690)
    #dbg_value(ptr %i.jg, !16572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15699)
    #dbg_value(ptr %i.jg, !16586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15693)
    #dbg_value(ptr %i.jg, !16589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15697)
    #dbg_value(i64 %i.ji, !16572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15699)
    #dbg_value(i64 %i.ji, !16586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15693)
    #dbg_value(i64 %i.ji, !16589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15697)
    #dbg_value(i64 %i.ji, !16573, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !15699)
    #dbg_value(i64 %i.ji, !16590, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !15709)
    #dbg_value(ptr %i.jg, !16418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15700)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16418, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15700)
    #dbg_value(ptr %i.jg, !16432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15710)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15710)
    #dbg_value(ptr poison, !16518, !DIExpression(DW_OP_deref), !15711)
    #dbg_declare(ptr poison, !16519, !DIExpression(), !15712)
    #dbg_value(ptr %i.jg, !16517, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15711)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16517, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15711)
    #dbg_value(ptr poison, !16512, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15713)
    #dbg_value(ptr %i.jg, !16511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15713)
    #dbg_value(ptr %i.jg, !16600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15714)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15713)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15714)
    #dbg_value(ptr poison, !16506, !DIExpression(), !15715)
    #dbg_value(ptr undef, !16505, !DIExpression(), !15630)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15714)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16598, !DIExpression(), !15716)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16602, !DIExpression(), !15717)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16597, !DIExpression(), !15718)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15714)
    #dbg_value(ptr %i.jg, !16595, !DIExpression(), !15718)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16596, !DIExpression(), !15718)
  %bcmp.i.i.us.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.jg, ptr noundef nonnull readonly dereferenceable(1) %.sroa.0.0.i.ph, i64 range(i64 2, 33) %.sroa.3.0.i.ph), !dbg !16919, !alias.scope !16593, !noalias !16594
  %i.jh = icmp eq i32 %bcmp.i.i.us.i.i.i, 0, !dbg !16919
  br i1 %i.jh, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i, !dbg !16920

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i: ; preds = %.lr.ph.split.us.i.i21.i, %.split.us.i.i.i
  %.pn.i.i = phi ptr [ %i.jg, %.split.us.i.i.i ], [ %.sroa.0.0.i33, %.lr.ph.split.us.i.i21.i ]
  %.in.i.i = phi i64 [ %i.ji, %.split.us.i.i.i ], [ %.sroa.3.0.i32, %.lr.ph.split.us.i.i21.i ]
  %i.ji = add i64 %.in.i.i, -1, !dbg !16922       ; 2 uses
    #dbg_value(ptr undef, !16411, !DIExpression(), !15591)
    #dbg_value(i64 0, !16571, !DIExpression(), !15690)
    #dbg_value(i64 1, !16585, !DIExpression(), !15693)
    #dbg_value(i64 1, !16588, !DIExpression(), !15697)
    #dbg_value(i64 1, !16571, !DIExpression(), !15699)
  %.not29.i.i.i = icmp ugt i64 %.sroa.3.0.i.ph, %i.ji, !dbg !16923
  br i1 %.not29.i.i.i, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i, !dbg !16923

bb.bg:                                            ; preds = %bb.bf, %.thread136.i.i
  %i.jj = phi i8 [ %.pre.i.i, %.thread136.i.i ], [ %i.ix, %bb.bf ], !dbg !16918
  %i.jk = phi <16 x i8> [ %i.jc, %.thread136.i.i ], [ %i.je, %bb.bf ] ; 6 uses
  %storemerge135138.i.i = phi i64 [ 1, %.thread136.i.i ], [ %i.iu, %bb.bf ] ; 6 uses
    #dbg_value(i8 %i.jj, !16540, !DIExpression(), !15720)
  %i.jl = insertelement <16 x i8> poison, i8 %i.jj, i64 0, !dbg !16924
  %i.jm = shufflevector <16 x i8> %i.jl, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !16924 ; 6 uses
    #dbg_value(<16 x i8> %i.jm, !16394, !DIExpression(), !15721)
    #dbg_value(i64 %i.ip, !16535, !DIExpression(), !15645)
    #dbg_value(i64 %i.ip, !16531, !DIExpression(), !15722)
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph, i64 1, !dbg !16925
    #dbg_value(ptr %i.jn, !16395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15723)
    #dbg_value(i64 %i.ip, !16395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15723)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16926, !noalias !16593
  store ptr %.sroa.0.0.i33, ptr %i.a, align 8, !dbg !16927, !noalias !16593
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16927
  store i64 %.sroa.3.0.i32, ptr %i.jo, align 8, !dbg !16927, !noalias !16593
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !16927
  store ptr %i.jn, ptr %i.jp, align 8, !dbg !16927, !noalias !16593
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !16927
  store i64 %i.ip, ptr %i.jq, align 8, !dbg !16927, !noalias !16593
    #dbg_value(ptr %.sroa.0.0.i33, !16364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15576)
    #dbg_value(i64 %.sroa.3.0.i32, !16364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15576)
    #dbg_value(ptr undef, !16364, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15576)
    #dbg_value(ptr undef, !16364, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15576)
    #dbg_value(ptr undef, !16364, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !15576)
    #dbg_value(i64 0, !16397, !DIExpression(), !15724)
    #dbg_value(i8 0, !16398, !DIExpression(), !15725)
  %i.jr = add nuw nsw i64 %.sroa.3.0.i.ph, 63     ; 2 uses
  %.not.i17.i = icmp ult i64 %i.jr, %.sroa.3.0.i32, !dbg !16928
  br i1 %.not.i17.i, label %.lr.ph.i19.i, label %.preheader.i18.i, !dbg !16928

.preheader.i18.i:                                 ; preds = %bb.bk, %bb.bg
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %bb.bg ], [ %.sroa.014.2.3.i.i, %bb.bk ], !dbg !16929 ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.bg ], [ %i.ln, %bb.bk ], !dbg !16930 ; 2 uses
  %i.js = add nuw nsw i64 %.sroa.3.0.i.ph, 15     ; 2 uses
    #dbg_value(i64 %.sroa.06.0.lcssa.i.i, !16397, !DIExpression(), !15724)
    #dbg_value(i8 %.sroa.014.0.lcssa.i.i, !16398, !DIExpression(), !15725)
  %i.jt = add i64 %.sroa.06.0.lcssa.i.i, %i.js, !dbg !16931
  %i.ju = icmp uge i64 %i.jt, %.sroa.3.0.i32, !dbg !16931
  %i.jv = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3148.i.i = select i1 %i.ju, i1 true, i1 %i.jv, !dbg !16931
  br i1 %or.cond3148.i.i, label %._crit_edge.i.i, label %.lr.ph150.i.i, !dbg !16931

.lr.ph.i19.i:                                     ; preds = %bb.bg, %bb.bk
  %.sroa.06.0146.i.i = phi i64 [ %i.ln, %bb.bk ], [ 0, %bb.bg ] ; 6 uses
    #dbg_value(i64 %.sroa.06.0146.i.i, !16397, !DIExpression(), !15724)
    #dbg_value(i16 0, !16400, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !15726)
    #dbg_value(i16 0, !16400, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !15726)
    #dbg_value(i16 0, !16400, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !15726)
    #dbg_value(i16 0, !16400, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !15726)
    #dbg_value(i64 0, !16401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15727)
    #dbg_value(i64 4, !16401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15727)
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i33, i64 %.sroa.06.0146.i.i ; 5 uses
    #dbg_value(i64 0, !16401, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15727)
    #dbg_value(i64 0, !16402, !DIExpression(), !15728)
    #dbg_value(ptr poison, !16609, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15738)
    #dbg_value(ptr poison, !16615, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !15738)
    #dbg_value(ptr poison, !16616, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15738)
    #dbg_value(!DIArgList(i64 %.sroa.06.0146.i.i, i64 0), !16630, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !15741)
    #dbg_value(!DIArgList(i64 %.sroa.06.0146.i.i, i64 0), !16613, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !15738)
    #dbg_value(!DIArgList(i64 %.sroa.06.0146.i.i, i64 0), !16630, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !15743)
    #dbg_value(ptr %.sroa.0.0.i33, !16631, !DIExpression(), !15743)
    #dbg_value(ptr %i.jw, !16634, !DIExpression(), !15746)
    #dbg_value(ptr %i.jw, !16640, !DIExpression(), !15749)
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.jw, align 1, !dbg !16932, !alias.scope !16538, !noalias !16642
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.i.i, !16651, !DIExpression(), !15757)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.i.i, !16617, !DIExpression(), !15758)
end_hunk_1
begin_hunk_2_@llvm.smin.i128
!16710 = !DILocation(line: 659, column: 9, scope: !1047, inlinedAt: !15055)
!16711 = !DILocation(line: 660, column: 45, scope: !1046, inlinedAt: !15055)
!16712 = !DILocation(line: 128, column: 15, scope: !378, inlinedAt: !15060)
!16713 = !DILocation(line: 128, column: 9, scope: !378, inlinedAt: !15060)
!16714 = !DILocation(line: 454, column: 20, scope: !397, inlinedAt: !15074)
!16715 = !DILocation(line: 2573, column: 9, scope: !394, inlinedAt: !15070)
!16716 = !DILocation(line: 133, column: 34, scope: !378, inlinedAt: !15060)
!16717 = !DILocation(line: 131, column: 64, scope: !377, inlinedAt: !15060)
!16718 = !DILocation(line: 1122, column: 16, scope: !393, inlinedAt: !15067)
!16719 = !DILocation(line: 129, column: 32, scope: !378, inlinedAt: !15060)
!16720 = !DILocation(line: 132, column: 13, scope: !378, inlinedAt: !15060)
!16721 = !DILocation(line: 413, column: 13, scope: !384, inlinedAt: !15065)
!16722 = !DILocation(line: 454, column: 20, scope: !15082, inlinedAt: !15920)
!16723 = !DILocation(line: 627, column: 9, scope: !15086, inlinedAt: !15936)
!16724 = !DILocation(line: 1873, column: 86, scope: !15084, inlinedAt: !15928)
!16725 = !DILocation(line: 971, column: 18, scope: !1086, inlinedAt: !15099)
!16726 = !DILocation(line: 1663, column: 9, scope: !1088, inlinedAt: !15107)
!16727 = !DILocation(line: 180, column: 28, scope: !1078, inlinedAt: !15092)
!16728 = !DILocation(line: 627, column: 28, scope: !1087, inlinedAt: !15103)
!16729 = !DILocation(line: 391, column: 26, scope: !1089, inlinedAt: !15111)
!16730 = !DILocation(line: 327, column: 24, scope: !1074, inlinedAt: !15090)
!16731 = !DILocation(line: 874, column: 39, scope: !15043)
!16732 = !DILocation(line: 874, column: 62, scope: !15044)
!16733 = !DILocation(line: 883, column: 42, scope: !15040)
!16734 = !DILocation(line: 883, column: 49, scope: !15040)
!16735 = !DILocation(line: 883, column: 41, scope: !15040)
!16736 = !DILocation(line: 883, column: 35, scope: !15040)
!16737 = !DILocation(line: 877, column: 26, scope: !15041)
!16738 = !DILocation(line: 128, column: 15, scope: !378, inlinedAt: !15120)
!16739 = !DILocation(line: 128, column: 9, scope: !378, inlinedAt: !15120)
!16740 = !DILocation(line: 454, column: 20, scope: !397, inlinedAt: !15134)
!16741 = !DILocation(line: 2573, column: 9, scope: !394, inlinedAt: !15130)
!16742 = !DILocation(line: 133, column: 34, scope: !378, inlinedAt: !15120)
!16743 = !DILocation(line: 131, column: 64, scope: !377, inlinedAt: !15120)
!16744 = !DILocation(line: 1122, column: 16, scope: !393, inlinedAt: !15127)
!16745 = !DILocation(line: 129, column: 32, scope: !378, inlinedAt: !15120)
!16746 = !DILocation(line: 132, column: 13, scope: !378, inlinedAt: !15120)
!16747 = !DILocation(line: 413, column: 13, scope: !384, inlinedAt: !15125)
!16748 = !DILocation(line: 0, scope: !378, inlinedAt: !15120)
!16749 = !DILocation(line: 1383, column: 13, scope: !15117, inlinedAt: !15953)
!16750 = !DILocation(line: 990, column: 12, scope: !15154, inlinedAt: !15155)
!16751 = !DILocation(line: 994, column: 9, scope: !15154, inlinedAt: !15155)
!16752 = !DILocation(line: 996, column: 20, scope: !15154, inlinedAt: !15155)
!16753 = !DILocation(line: 21, column: 12, scope: !15164, inlinedAt: !15168)
!16754 = !DILocation(line: 1005, column: 20, scope: !15154, inlinedAt: !15155)
!16755 = !DILocation(line: 2606, column: 9, scope: !15176, inlinedAt: !15177)
!16756 = !DILocation(line: 28, column: 12, scope: !935, inlinedAt: !15188)
!16757 = !DILocation(line: 28, column: 74, scope: !935, inlinedAt: !15188)
!16758 = !DILocation(line: 29, column: 12, scope: !933, inlinedAt: !15188)
!16759 = !DILocation(line: 28, scope: !935, inlinedAt: !15188)
!16760 = !DILocation(line: 31, column: 48, scope: !933, inlinedAt: !15188)
!16761 = !DILocation(line: 210, column: 9, scope: !936, inlinedAt: !15194)
!16762 = !DILocation(line: 29, column: 5, scope: !934, inlinedAt: !15188)
!16763 = !DILocation(line: 42, column: 12, scope: !931, inlinedAt: !15189)
!16764 = !DILocation(line: 46, column: 9, scope: !931, inlinedAt: !15189)
!16765 = !DILocation(line: 41, column: 11, scope: !931, inlinedAt: !15189)
!16766 = !DILocation(line: 1011, column: 17, scope: !15154, inlinedAt: !15155)
!16767 = !DILocation(line: 978, column: 9, scope: !15152, inlinedAt: !15156)
!16768 = !DILocation(line: 1011, column: 46, scope: !15154, inlinedAt: !15155)
!16769 = !DILocation(line: 1206, column: 15, scope: !15210, inlinedAt: !15211)
!16770 = !DILocation(line: 1206, column: 9, scope: !15210, inlinedAt: !15211)
!16771 = !DILocation(line: 1141, column: 20, scope: !15232, inlinedAt: !15233)
!16772 = !DILocation(line: 1145, column: 32, scope: !15232, inlinedAt: !15233)
!16773 = !DILocation(line: 380, column: 12, scope: !15256, inlinedAt: !15257)
!16774 = !DILocation(line: 384, column: 12, scope: !15256, inlinedAt: !15257)
!16775 = !DILocation(line: 394, column: 13, scope: !15256, inlinedAt: !15257)
!16776 = !DILocation(line: 493, column: 12, scope: !15245, inlinedAt: !15246)
!16777 = !DILocation(line: 396, column: 13, scope: !15256, inlinedAt: !15257)
!16778 = !DILocation(line: 1231, column: 9, scope: !15268, inlinedAt: !15269)
!16779 = !DILocation(line: 872, column: 18, scope: !15260, inlinedAt: !15261)
!16780 = !DILocation(line: 1663, column: 9, scope: !1099, inlinedAt: !15302)
!16781 = !DILocation(line: 180, column: 28, scope: !1095, inlinedAt: !15296)
!16782 = !DILocation(line: 37, column: 13, scope: !15290, inlinedAt: !15291)
!16783 = !DILocation(line: 38, column: 8, scope: !15289, inlinedAt: !15291)
!16784 = !DILocation(line: 627, column: 28, scope: !1098, inlinedAt: !15298)
!16785 = !DILocation(line: 11, column: 5, scope: !15293, inlinedAt: !15294)
!16786 = !DILocation(line: 1663, column: 9, scope: !1099, inlinedAt: !15318)
!16787 = !DILocation(line: 180, column: 28, scope: !1095, inlinedAt: !15312)
!16788 = !DILocation(line: 48, column: 22, scope: !15286, inlinedAt: !15291)
!16789 = !DILocation(line: 17, column: 5, scope: !15308, inlinedAt: !15309)
!16790 = !DILocation(line: 17, column: 17, scope: !15308, inlinedAt: !15309)
!16791 = !DILocation(line: 50, column: 8, scope: !15284, inlinedAt: !15291)
!16792 = !DILocation(line: 627, column: 28, scope: !1098, inlinedAt: !15314)
!16793 = !DILocation(line: 1663, column: 9, scope: !1099, inlinedAt: !15329)
!16794 = !DILocation(line: 180, column: 28, scope: !1095, inlinedAt: !15323)
!16795 = !DILocation(line: 55, column: 26, scope: !15284, inlinedAt: !15291)
!16796 = !DILocation(line: 17, column: 5, scope: !15308, inlinedAt: !15332)
!16797 = !DILocation(line: 17, column: 17, scope: !15308, inlinedAt: !15332)
!16798 = !DILocation(line: 57, column: 14, scope: !15282, inlinedAt: !15291)
!16799 = !DILocation(line: 57, column: 9, scope: !15282, inlinedAt: !15291)
!16800 = !DILocation(line: 58, column: 12, scope: !15282, inlinedAt: !15291)
!16801 = !DILocation(line: 627, column: 28, scope: !1098, inlinedAt: !15325)
!16802 = !DILocation(line: 1663, column: 9, scope: !1099, inlinedAt: !15344)
!16803 = !DILocation(line: 180, column: 28, scope: !1095, inlinedAt: !15338)
!16804 = !DILocation(line: 63, column: 30, scope: !15282, inlinedAt: !15291)
!16805 = !DILocation(line: 64, column: 18, scope: !15281, inlinedAt: !15291)
!16806 = !DILocation(line: 17, column: 5, scope: !15308, inlinedAt: !15335)
!16807 = !DILocation(line: 17, column: 17, scope: !15308, inlinedAt: !15335)
!16808 = !DILocation(line: 64, column: 13, scope: !15281, inlinedAt: !15291)
!16809 = !DILocation(line: 58, column: 9, scope: !15282, inlinedAt: !15291)
!16810 = !DILocation(line: 39, column: 21, scope: !15289, inlinedAt: !15291)
!16811 = !DILocation(line: 0, scope: !16178, inlinedAt: !15291)
!16812 = !DILocation(line: 34, column: 9, scope: !15353, inlinedAt: !15358)
!16813 = !DILocation(line: 1149, column: 26, scope: !15229, inlinedAt: !15233)
!16814 = !DILocation(line: 2475, column: 9, scope: !15367, inlinedAt: !15368)
!16815 = !DILocation(line: 2476, column: 9, scope: !15367, inlinedAt: !15368)
!16816 = !DILocation(line: 2477, column: 9, scope: !15367, inlinedAt: !15368)
!16817 = !DILocation(line: 0, scope: !15367, inlinedAt: !15368)
!16818 = !DILocation(line: 1155, column: 25, scope: !15228, inlinedAt: !15233)
!16819 = !DILocation(line: 528, column: 21, scope: !15237, inlinedAt: !15240)
!16820 = !DILocation(line: 1215, column: 29, scope: !15208, inlinedAt: !15211)
!16821 = !DILocation(line: 1216, column: 20, scope: !15207, inlinedAt: !15211)
!16822 = !DILocation(line: 1231, column: 37, scope: !15210, inlinedAt: !15211)
!16823 = !DILocation(line: 1232, column: 31, scope: !15204, inlinedAt: !15211)
!16824 = !DILocation(line: 0, scope: !15203, inlinedAt: !15211)
!16825 = !DILocation(line: 1546, column: 23, scope: !15400, inlinedAt: !15495)
!16826 = !DILocation(line: 1547, column: 27, scope: !15401, inlinedAt: !15495)
!16827 = !DILocation(line: 1235, column: 20, scope: !15203, inlinedAt: !15211)
!16828 = !DILocation(line: 1219, column: 38, scope: !15207, inlinedAt: !15211)
!16829 = !DILocation(line: 549, column: 27, scope: !15376, inlinedAt: !15380)
!16830 = !DILocation(line: 90, column: 24, scope: !15375, inlinedAt: !15381)
!16831 = !DILocation(line: 28, column: 12, scope: !935, inlinedAt: !15499)
!16832 = !DILocation(line: 28, column: 74, scope: !935, inlinedAt: !15499)
!16833 = !DILocation(line: 29, column: 12, scope: !933, inlinedAt: !15499)
!16834 = !DILocation(line: 42, column: 12, scope: !931, inlinedAt: !15500)
!16835 = !DILocation(line: 46, column: 9, scope: !931, inlinedAt: !15500)
!16836 = !DILocation(line: 41, column: 11, scope: !931, inlinedAt: !15500)
!16837 = !DILocation(line: 1242, column: 30, scope: !15203, inlinedAt: !15211)
!16838 = !DILocation(line: 1552, column: 48, scope: !15402, inlinedAt: !15413)
!16839 = !DILocation(line: 184, column: 12, scope: !15452, inlinedAt: !15455)
!16840 = !DILocation(line: 1565, column: 17, scope: !15403, inlinedAt: !15413)
!16841 = !DILocation(line: 186, column: 27, scope: !15452, inlinedAt: !15455)
!16842 = !DILocation(line: 1553, column: 23, scope: !15402, inlinedAt: !15413)
!16843 = !DILocation(line: 1532, column: 27, scope: !15440, inlinedAt: !15443)
!16844 = !DILocation(line: 1532, column: 26, scope: !15440, inlinedAt: !15443)
!16845 = !DILocation(line: 1532, column: 9, scope: !15440, inlinedAt: !15443)
!16846 = !DILocation(line: 1566, column: 17, scope: !15403, inlinedAt: !15413)
!16847 = !DILocation(line: 1567, column: 17, scope: !15403, inlinedAt: !15413)
!16848 = !DILocation(line: 2325, column: 17, scope: !15514, inlinedAt: !15517)
!16849 = !DILocation(line: 2224, column: 50, scope: !15388, inlinedAt: !15434)
!16850 = !DILocation(line: 1100, column: 12, scope: !15426, inlinedAt: !15433)
!16851 = !DILocation(line: 1043, column: 17, scope: !15480, inlinedAt: !15483)
!16852 = !DILocation(line: 2224, column: 50, scope: !15388, inlinedAt: !15417)
!16853 = !DILocation(line: 1142, column: 12, scope: !15389, inlinedAt: !15416)
!16854 = !DILocation(line: 1583, column: 20, scope: !15397, inlinedAt: !15413)
!16855 = !DILocation(line: 1583, column: 66, scope: !15397, inlinedAt: !15413)
!16856 = !DILocation(line: 218, column: 39, scope: !15462, inlinedAt: !15465)
!16857 = !DILocation(line: 218, column: 13, scope: !15462, inlinedAt: !15465)
!16858 = !DILocation(line: 219, column: 13, scope: !15462, inlinedAt: !15465)
!16859 = !DILocation(line: 1583, column: 42, scope: !15397, inlinedAt: !15413)
!16860 = !DILocation(line: 1222, column: 17, scope: !15490, inlinedAt: !15493)
!16861 = !DILocation(line: 1601, column: 20, scope: !15396, inlinedAt: !15413)
!16862 = !DILocation(line: 1601, column: 66, scope: !15396, inlinedAt: !15413)
!16863 = !DILocation(line: 218, column: 39, scope: !15462, inlinedAt: !15473)
!16864 = !DILocation(line: 218, column: 13, scope: !15462, inlinedAt: !15473)
!16865 = !DILocation(line: 219, column: 13, scope: !15462, inlinedAt: !15473)
!16866 = !DILocation(line: 1601, column: 42, scope: !15396, inlinedAt: !15413)
!16867 = !DILocation(line: 1602, column: 21, scope: !15396, inlinedAt: !15413)
!16868 = !DILocation(line: 1603, column: 21, scope: !15396, inlinedAt: !15413)
!16869 = !DILocation(line: 1584, column: 21, scope: !15397, inlinedAt: !15413)
!16870 = !DILocation(line: 1585, column: 21, scope: !15397, inlinedAt: !15413)
!16871 = !DILocation(line: 1236, column: 30, scope: !15203, inlinedAt: !15211)
!16872 = !DILocation(line: 1552, column: 48, scope: !15402, inlinedAt: !15407)
!16873 = !DILocation(line: 184, column: 12, scope: !15452, inlinedAt: !15453)
!16874 = !DILocation(line: 1565, column: 17, scope: !15403, inlinedAt: !15407)
!16875 = !DILocation(line: 186, column: 27, scope: !15452, inlinedAt: !15453)
!16876 = !DILocation(line: 1553, column: 23, scope: !15402, inlinedAt: !15407)
!16877 = !DILocation(line: 1532, column: 27, scope: !15440, inlinedAt: !15441)
!16878 = !DILocation(line: 1532, column: 26, scope: !15440, inlinedAt: !15441)
!16879 = !DILocation(line: 1532, column: 9, scope: !15440, inlinedAt: !15441)
!16880 = !DILocation(line: 1100, column: 12, scope: !15426, inlinedAt: !15429)
!16881 = !DILocation(line: 1043, column: 17, scope: !15480, inlinedAt: !15481)
!16882 = !DILocation(line: 2224, column: 50, scope: !15388, inlinedAt: !15430)
!16883 = !DILocation(line: 1142, column: 12, scope: !15389, inlinedAt: !15410)
!16884 = !DILocation(line: 2224, column: 50, scope: !15388, inlinedAt: !15411)
!16885 = !DILocation(line: 1222, column: 17, scope: !15490, inlinedAt: !15491)
!16886 = !DILocation(line: 1601, column: 20, scope: !15396, inlinedAt: !15407)
!16887 = !DILocation(line: 1601, column: 66, scope: !15396, inlinedAt: !15407)
!16888 = !DILocation(line: 218, column: 39, scope: !15462, inlinedAt: !15471)
!16889 = !DILocation(line: 218, column: 13, scope: !15462, inlinedAt: !15471)
!16890 = !DILocation(line: 219, column: 13, scope: !15462, inlinedAt: !15471)
!16891 = !DILocation(line: 1601, column: 42, scope: !15396, inlinedAt: !15407)
!16892 = !DILocation(line: 1602, column: 21, scope: !15396, inlinedAt: !15407)
!16893 = !DILocation(line: 1603, column: 25, scope: !15396, inlinedAt: !15407)
!16894 = !DILocation(line: 1583, column: 20, scope: !15397, inlinedAt: !15407)
!16895 = !DILocation(line: 1583, column: 66, scope: !15397, inlinedAt: !15407)
!16896 = !DILocation(line: 218, column: 39, scope: !15462, inlinedAt: !15463)
!16897 = !DILocation(line: 218, column: 13, scope: !15462, inlinedAt: !15463)
!16898 = !DILocation(line: 219, column: 13, scope: !15462, inlinedAt: !15463)
!16899 = !DILocation(line: 1583, column: 42, scope: !15397, inlinedAt: !15407)
!16900 = !DILocation(line: 1584, column: 21, scope: !15397, inlinedAt: !15407)
!16901 = !DILocation(line: 1585, column: 25, scope: !15397, inlinedAt: !15407)
!16902 = !DILocation(line: 1566, column: 17, scope: !15403, inlinedAt: !15407)
!16903 = !DILocation(line: 1567, column: 21, scope: !15403, inlinedAt: !15407)
!16904 = !DILocation(line: 1011, column: 67, scope: !15154, inlinedAt: !15155)
!16905 = !DILocation(line: 1006, column: 43, scope: !15153, inlinedAt: !15155)
!16906 = !DILocation(line: 1904, column: 23, scope: !15566, inlinedAt: !15575)
!16907 = !DILocation(line: 1905, column: 28, scope: !15567, inlinedAt: !15575)
!16908 = !DILocation(line: 1908, column: 34, scope: !15568, inlinedAt: !15575)
!16909 = !DILocation(line: 2570, column: 13, scope: !15633, inlinedAt: !15634)
!16910 = !DILocation(line: 1142, column: 12, scope: !15595, inlinedAt: !15616)
!16911 = !DILocation(line: 2224, column: 50, scope: !15594, inlinedAt: !15617)
!16912 = !DILocation(line: 1222, column: 17, scope: !15655, inlinedAt: !15658)
!16913 = !DILocation(line: 1915, column: 73, scope: !15666, inlinedAt: !15668)
!16914 = !DILocation(line: 290, column: 21, scope: !15611, inlinedAt: !15614)
!16915 = !DILocation(line: 1925, column: 25, scope: !15569, inlinedAt: !15575)
!16916 = !DILocation(line: 1925, column: 8, scope: !15569, inlinedAt: !15575)
!16917 = !DILocation(line: 153, column: 18, scope: !15649, inlinedAt: !15650)
!16918 = !DILocation(line: 1930, column: 44, scope: !15570, inlinedAt: !15575)
!16919 = !DILocation(line: 157, column: 13, scope: !15704, inlinedAt: !15708)
!16920 = !DILocation(line: 2490, column: 21, scope: !15586, inlinedAt: !15589)
!16921 = !DILocation(line: 90, column: 24, scope: !15682, inlinedAt: !15698)
!16922 = !DILocation(line: 549, column: 27, scope: !15695, inlinedAt: !15696)
!16923 = !DILocation(line: 1355, column: 12, scope: !15579, inlinedAt: !15590)
!16924 = !DILocation(line: 153, column: 18, scope: !15649, inlinedAt: !15719)
!16925 = !DILocation(line: 90, column: 24, scope: !15643, inlinedAt: !15644)
!16926 = !DILocation(line: 1936, column: 9, scope: !15572, inlinedAt: !15575)
!16927 = !DILocation(line: 1937, column: 5, scope: !15572, inlinedAt: !15575)
!16928 = !DILocation(line: 1980, column: 11, scope: !15561, inlinedAt: !15575)
!16929 = !DILocation(line: 1976, column: 22, scope: !15562, inlinedAt: !15575)
!16930 = !DILocation(line: 0, scope: !15574, inlinedAt: !15575)
!16931 = !DILocation(line: 1993, column: 11, scope: !15561, inlinedAt: !15575)
!16932 = !DILocation(line: 1758, column: 9, scope: !15753, inlinedAt: !15754)
!16933 = !DILocation(line: 872, column: 18, scope: !15739, inlinedAt: !15759)
!16934 = !DILocation(line: 1758, column: 9, scope: !15753, inlinedAt: !15765)
!16935 = !DILocation(line: 31, column: 52, scope: !15755, inlinedAt: !15756)
!16936 = !DILocation(line: 31, column: 52, scope: !15755, inlinedAt: !15766)
!16937 = !DILocation(line: 549, column: 23, scope: !15769, inlinedAt: !15770)
!16938 = !DILocation(line: 1983, column: 13, scope: !15558, inlinedAt: !15575)
!16939 = !DILocation(line: 872, column: 18, scope: !15739, inlinedAt: !15742)
!16940 = !DILocation(line: 1987, column: 16, scope: !15555, inlinedAt: !15575)
!16941 = !DILocation(line: 0, scope: !15562, inlinedAt: !15575)
!16942 = !DILocation(line: 1988, column: 38, scope: !15555, inlinedAt: !15575)
!16943 = !DILocation(line: 1988, column: 64, scope: !15555, inlinedAt: !15575)
!16944 = !DILocation(line: 1988, column: 27, scope: !15555, inlinedAt: !15575)
!16945 = !DILocation(line: 1988, column: 17, scope: !15555, inlinedAt: !15575)
!16946 = !DILocation(line: 1987, column: 13, scope: !15555, inlinedAt: !15575)
!16947 = !DILocation(line: 1991, column: 9, scope: !15560, inlinedAt: !15575)
!16948 = !DILocation(line: 2005, column: 13, scope: !15561, inlinedAt: !15575)
!16949 = !DILocation(line: 872, column: 18, scope: !15739, inlinedAt: !15792)
!16950 = !DILocation(line: 1758, column: 9, scope: !15753, inlinedAt: !15800)
!16951 = !DILocation(line: 872, column: 18, scope: !15739, inlinedAt: !15804)
!16952 = !DILocation(line: 1758, column: 9, scope: !15753, inlinedAt: !15810)
!16953 = !DILocation(line: 31, column: 52, scope: !15755, inlinedAt: !15801)
!16954 = !DILocation(line: 31, column: 52, scope: !15755, inlinedAt: !15811)
!16955 = !DILocation(line: 549, column: 23, scope: !15769, inlinedAt: !15814)
!16956 = !DILocation(line: 317, column: 39, scope: !15779, inlinedAt: !15821)
!16957 = !DILocation(line: 2007, column: 8, scope: !15552, inlinedAt: !15575)
!16958 = !DILocation(line: 872, column: 18, scope: !15739, inlinedAt: !15829)
!16959 = !DILocation(line: 1758, column: 9, scope: !15753, inlinedAt: !15837)
!16960 = !DILocation(line: 872, column: 18, scope: !15739, inlinedAt: !15841)
!16961 = !DILocation(line: 1758, column: 9, scope: !15753, inlinedAt: !15847)
!16962 = !DILocation(line: 31, column: 52, scope: !15755, inlinedAt: !15838)
!16963 = !DILocation(line: 31, column: 52, scope: !15755, inlinedAt: !15848)
!16964 = !DILocation(line: 549, column: 23, scope: !15769, inlinedAt: !15851)
!16965 = !DILocation(line: 317, column: 39, scope: !15779, inlinedAt: !15858)
!16966 = !DILocation(line: 1995, column: 12, scope: !15554, inlinedAt: !15575)
!16967 = !DILocation(line: 1998, column: 9, scope: !15554, inlinedAt: !15575)
!16968 = !DILocation(line: 1996, column: 23, scope: !15554, inlinedAt: !15575)
!16969 = !DILocation(line: 1996, column: 13, scope: !15554, inlinedAt: !15575)
!16970 = !DILocation(line: 1995, column: 9, scope: !15554, inlinedAt: !15575)
!16971 = !DILocation(line: 2012, column: 1, scope: !15572, inlinedAt: !15575)
!16972 = !DILocation(line: 2012, column: 2, scope: !15564, inlinedAt: !15575)
!16973 = !DILocation(line: 2008, column: 19, scope: !15552, inlinedAt: !15575)
!16974 = !DILocation(line: 2008, column: 9, scope: !15552, inlinedAt: !15575)
!16975 = !DILocation(line: 2007, column: 5, scope: !15552, inlinedAt: !15575)
!16976 = !DILocation(line: 157, column: 13, scope: !15171, inlinedAt: !15172)
!16977 = !DILocation(line: 21, column: 9, scope: !15164, inlinedAt: !15168)
!16978 = !DILocation(line: 0, scope: !15154, inlinedAt: !15155)
!16979 = !DILocation(line: 877, column: 21, scope: !15041)
!16980 = !DILocation(line: 876, column: 17, scope: !15042)
!16981 = !DILocation(line: 879, column: 21, scope: !15042)
!16982 = !DILocation(line: 892, column: 6, scope: !15044)
!16983 = !DILocation(line: 885, column: 27, scope: !15040)
!16984 = !DILocation(line: 884, column: 20, scope: !15040)
!16985 = !DILocation(line: 454, column: 20, scope: !15863, inlinedAt: !16697)
!16986 = !DILocation(line: 1273, column: 9, scope: !15862, inlinedAt: !16693)
!16987 = !DILocation(line: 1273, column: 19, scope: !15862, inlinedAt: !16693)
!16988 = !DILocation(line: 886, column: 13, scope: !15044)
!16989 = !DILocation(line: 884, column: 26, scope: !15039)
!16990 = !DILocation(line: 884, column: 46, scope: !15040)
!16991 = !DILocation(line: 0, scope: !15040)
!16992 = !DILocation(line: 872, column: 5, scope: !15044)
!16993 = distinct !DILexicalBlock(scope: !16995, file: !1885, line: 910, column: 13)
!16994 = distinct !DILexicalBlock(scope: !16995, file: !1885, line: 904, column: 13)
!16995 = distinct !DISubprogram(name: "get_attr", linkageName: "_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value8get_attr", scope: !47, file: !1885, line: 895, type: !4846, scopeLine: 895, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, declaration: !17223, retainedNodes: !17229)
!16996 = distinct !DISubprogram(name: "eq<str, str>", linkageName: "_RNvXs7_NtNtCsf3Ta7LF998c_4core3cmp5implsReNtB7_9PartialEq2eqCs5yXxDE1DkoT_4tera", scope: !4903, file: !4901, line: 2461, type: !5504, scopeLine: 2461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !4908, retainedNodes: !17232)
!16997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !17233, file: !1313, size: 64, align: 64, elements: !17238, templateParams: !1568, identifier: "ddb44917a7ef46947863695fbdeec83b")
!16998 = distinct !DILexicalBlock(scope: !17000, file: !1885, line: 906, column: 21)
!16999 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB7_5Value8get_attr0B9_", scope: !17233, file: !1885, line: 905, type: !17236, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1568, retainedNodes: !17245)
!17000 = distinct !DILexicalBlock(scope: !16999, file: !1885, line: 905, column: 44)
!17001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(&tera::value::key::Key, &tera::value::Value), &tera::value::Value, tera::value::{impl#9}::get_attr::{closure_env#0}>", scope: !17247, file: !1313, size: 64, align: 64, elements: !17252, templateParams: !1568, identifier: "9a2b459046bd94f7fee036e03d3ef8b7")
!17002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !17005, file: !1313, size: 64, align: 64, flags: DIFlagPublic, elements: !17258, templateParams: !17260, identifier: "4867a14e8129215a51284f68af0a8c12")
!17003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !17005, file: !1313, size: 64, align: 64, flags: DIFlagPublic, elements: !17262, templateParams: !17260, identifier: "582d242efb60258bd18cc58fe9be6b1")
!17004 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !17005, file: !1313, size: 64, align: 64, elements: !17256, templateParams: !1568, identifier: "3f3cf738946525cc4bd1671b9c897ce1", discriminator: !17263)
!17005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<&tera::value::Value, ()>", scope: !2935, file: !1313, size: 64, align: 64, flags: DIFlagPublic, elements: !17253, templateParams: !1568, identifier: "1e6df10791e9628dbb9f991c29266b8e")
!17006 = distinct !DILexicalBlock(scope: !17007, file: !3045, line: 2995, column: 17)
!17007 = distinct !DISubprogram(name: "{closure#0}<(&tera::value::key::Key, &tera::value::Value), &tera::value::Value, tera::value::{impl#9}::get_attr::{closure_env#0}>", linkageName: "_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1m_5ValueEB1V_NCNvMs7_B1m_B1W_8get_attr0E0B1o_", scope: !17247, file: !3045, line: 2994, type: !17250, scopeLine: 2994, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !17270, retainedNodes: !17268)
!17008 = distinct !DILexicalBlock(scope: !17016, file: !3045, line: 2490, column: 32)
!17009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !17012, file: !1313, size: 64, align: 64, flags: DIFlagPublic, elements: !17286, templateParams: !17287, identifier: "3075696b764c0751c9415445e52d960e")
!17010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !17012, file: !1313, size: 64, align: 64, flags: DIFlagPublic, elements: !17289, templateParams: !17287, identifier: "215b807fe3c0c0801c2fee226f931e0")
!17011 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !17012, file: !1313, size: 64, align: 64, elements: !17284, templateParams: !1568, identifier: "8e8f3db170aa250b2943f94fad0be40a")
!17012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<&tera::value::Value, !>", scope: !2935, file: !1313, size: 64, align: 64, flags: DIFlagPublic, elements: !17281, templateParams: !1568, identifier: "94ebf5452122b190e9039b9aa85043b1")
!17013 = distinct !DILexicalBlock(scope: !17016, file: !3045, line: 2490, column: 32)
!17014 = distinct !DISubprogram(name: "try_fold<std::collections::hash::map::Iter<tera::value::key::Key, tera::value::Value>, (), core::iter::traits::iterator::Iterator::find_map::check::{closure_env#0}<(&tera::value::key::Key, &tera::value::Value), &tera::value::Value, tera::value::{impl#9}::get_attr::{closure_env#0}>, core::ops::control_flow::ControlFlow<&tera::value::Value, ()>>", linkageName: "_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBZ_5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_8find_map5checkTRBV_RB1y_EB3k_NCNvMs7_BZ_B1y_8get_attr0E0INtNtNtB1S_3ops12control_flow11ControlFlowB3k_EEB11_", scope: !3048, file: !3045, line: 2482, type: !17272, scopeLine: 2482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !17292, retainedNodes: !17280)
!17015 = distinct !DILexicalBlock(scope: !17014, file: !3045, line: 2488, column: 9)
!17016 = distinct !DILexicalBlock(scope: !17015, file: !3045, line: 2489, column: 41)
!17017 = distinct !DISubprogram(name: "find_map<std::collections::hash::map::Iter<tera::value::key::Key, tera::value::Value>, &tera::value::Value, tera::value::{impl#9}::get_attr::{closure_env#0}>", linkageName: "_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBZ_5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_mapRB1y_NCNvMs7_BZ_B1y_8get_attr0EB11_", scope: !3048, file: !3045, line: 2987, type: !17294, scopeLine: 2987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !17299, retainedNodes: !17297)
!17018 = distinct !DILocation(line: 3000, column: 14, scope: !17017, inlinedAt: !17300)
!17019 = distinct !DILocation(line: 2490, column: 21, scope: !17016, inlinedAt: !17018)
!17020 = distinct !DILocation(line: 2994, column: 32, scope: !17007, inlinedAt: !17019)
!17021 = distinct !DILocation(line: 906, column: 32, scope: !17000, inlinedAt: !17020)
!17022 = distinct !DILocation(line: 0, scope: !16996, inlinedAt: !17021)
!17023 = distinct !DILocation(line: 0, scope: !17014, inlinedAt: !17018)
!17024 = distinct !DISubprogram(name: "deref<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefB1H_", scope: !2896, file: !2894, line: 2572, type: !3007, scopeLine: 2572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1815, retainedNodes: !17305)
!17025 = distinct !DISubprogram(name: "inner<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1F_5ValueEE5innerB1H_", scope: !68, file: !2894, line: 2232, type: !3010, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1815, declaration: !3011, retainedNodes: !17309)
!17026 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB2v_5ValueEEE6as_refB2x_", scope: !67, file: !2557, line: 450, type: !3014, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1634, declaration: !3015)
!17027 = distinct !DISubprogram(name: "len<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs1_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB17_5ValueE3lenB19_", scope: !64, file: !3016, line: 727, type: !5054, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1809, declaration: !5055, retainedNodes: !17319)
!17028 = distinct !DISubprogram(name: "len<(tera::value::key::Key, tera::value::Value), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBT_5ValueEE3lenBV_", scope: !61, file: !4338, line: 1330, type: !4346, scopeLine: 1330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1800, declaration: !4347)
!17029 = distinct !DISubprogram(name: "len<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBR_5ValueNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3lenBT_", scope: !63, file: !4321, line: 807, type: !5057, scopeLine: 807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !1809, declaration: !5058)
!17030 = distinct !DISubprogram(name: "get<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global, tera::value::key::Key>", linkageName: "_RINvMs2_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB18_5ValueE3getB14_EB1a_", scope: !64, file: !3016, line: 1034, type: !4316, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !277, templateParams: !4318, declaration: !4319, retainedNodes: !17332)
!17031 = distinct !DILocation(line: 1039, column: 19, scope: !17030, inlinedAt: !17333)
!17032 = distinct !DILocation(line: 0, scope: !787, inlinedAt: !17031)
!17033 = distinct !DILocation(line: 1287, column: 24, scope: !787, inlinedAt: !17031)
!17034 = distinct !DILocation(line: 0, scope: !788, inlinedAt: !17033)
!17035 = distinct !DILocation(line: 1288, column: 30, scope: !786, inlinedAt: !17031)
!17036 = distinct !DILocation(line: 0, scope: !796, inlinedAt: !17035)
!17037 = distinct !DILocation(line: 0, scope: !786, inlinedAt: !17031)
!17038 = distinct !{!17038, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBU_5ValueEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1t_E0EBW_"}
!17039 = distinct !{!17039, !17038, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBU_5ValueEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1t_E0EBW_: argument 0"}
!17040 = distinct !DILocation(line: 1217, column: 20, scope: !796, inlinedAt: !17035)
!17041 = distinct !DILocation(line: 1202, column: 18, scope: !816, inlinedAt: !17040)
!17042 = distinct !DILocation(line: 0, scope: !809, inlinedAt: !17041)
!17043 = distinct !DILocation(line: 0, scope: !816, inlinedAt: !17040)
!17044 = distinct !{!17044, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!17045 = distinct !{!17045, !17044, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!17046 = distinct !DILocation(line: 2029, column: 24, scope: !4437, inlinedAt: !17041)
!17047 = distinct !DILocation(line: 102, column: 13, scope: !820, inlinedAt: !17046)
!17048 = distinct !DILocation(line: 2043, column: 23, scope: !804, inlinedAt: !17041)
!17049 = distinct !DILocation(line: 82, column: 18, scope: !821, inlinedAt: !17048)
!17050 = distinct !DILocation(line: 2027, column: 51, scope: !806, inlinedAt: !17041)
!17051 = distinct !DILocation(line: 0, scope: !822, inlinedAt: !17050)
!17052 = distinct !DILocation(line: 2010, column: 34, scope: !808, inlinedAt: !17041)
!17053 = distinct !DILocation(line: 0, scope: !823, inlinedAt: !17052)
!17054 = distinct !DILocation(line: 2009, column: 24, scope: !809, inlinedAt: !17041)
!17055 = distinct !DILocation(line: 0, scope: !824, inlinedAt: !17054)
!17056 = distinct !DILocation(line: 2039, column: 29, scope: !804, inlinedAt: !17041)
!17057 = distinct !DILocation(line: 92, column: 14, scope: !828, inlinedAt: !17056)
!17058 = distinct !DILocation(line: 0, scope: !827, inlinedAt: !17057)
!17059 = distinct !DILocation(line: 2029, column: 30, scope: !804, inlinedAt: !17041)
!17060 = distinct !DILocation(line: 0, scope: !827, inlinedAt: !17059)
!17061 = distinct !DILocation(line: 0, scope: !808, inlinedAt: !17041)
!17062 = distinct !{!17062, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBS_5ValueNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBU_"}
!17063 = distinct !{!17063, !17062, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBS_5ValueNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBU_: argument 0"}
!17064 = distinct !{!17064, !17062, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBS_5ValueNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBU_: argument 1"}
!17065 = distinct !DILocation(line: 0, scope: !806, inlinedAt: !17041)
!17066 = distinct !DILocation(line: 2624, column: 37, scope: !822, inlinedAt: !17050)
!17067 = distinct !DILocation(line: 2027, column: 34, scope: !806, inlinedAt: !17041)
!17068 = distinct !DILocation(line: 0, scope: !830, inlinedAt: !17067)
!17069 = distinct !DILocation(line: 49, column: 24, scope: !830, inlinedAt: !17067)
!17070 = distinct !DILocation(line: 0, scope: !832, inlinedAt: !17069)
!17071 = distinct !DILocation(line: 0, scope: !831, inlinedAt: !17069)
!17072 = distinct !DILocation(line: 1341, column: 5, scope: !831, inlinedAt: !17069)
!17073 = distinct !DILocation(line: 0, scope: !833, inlinedAt: !17072)
!17074 = distinct !{!17074, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!17075 = distinct !{!17075, !17074, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!17076 = distinct !DILocation(line: 0, scope: !804, inlinedAt: !17041)
!17077 = distinct !DILocation(line: 0, scope: !828, inlinedAt: !17056)
!17078 = distinct !DILocation(line: 83, column: 23, scope: !827, inlinedAt: !17059)
!17079 = distinct !DILocation(line: 919, column: 29, scope: !834, inlinedAt: !17078)
!17080 = distinct !DILocation(line: 919, column: 41, scope: !834, inlinedAt: !17078)
!17081 = distinct !DILocation(line: 0, scope: !826, inlinedAt: !17059)
!17082 = distinct !DILocation(line: 84, column: 21, scope: !826, inlinedAt: !17059)
!17083 = distinct !DILocation(line: 1566, column: 32, scope: !838, inlinedAt: !17082)
!17084 = distinct !DILocation(line: 0, scope: !837, inlinedAt: !17082)
!17085 = distinct !DILocation(line: 0, scope: !835, inlinedAt: !17082)
!17086 = distinct !DILocation(line: 0, scope: !801, inlinedAt: !17041)
!17087 = distinct !DILocation(line: 103, column: 26, scope: !820, inlinedAt: !17046)
!17088 = distinct !DILocation(line: 0, scope: !842, inlinedAt: !17087)
!17089 = distinct !DILocation(line: 41, column: 18, scope: !841, inlinedAt: !17087)
!17090 = distinct !DILocation(line: 70, column: 21, scope: !846, inlinedAt: !17089)
!17091 = distinct !DILocation(line: 628, column: 51, scope: !844, inlinedAt: !17090)
!17092 = distinct !DILocation(line: 0, scope: !843, inlinedAt: !17091)
!17093 = distinct !DILocation(line: 0, scope: !841, inlinedAt: !17087)
!17094 = distinct !DILocation(line: 0, scope: !846, inlinedAt: !17089)
!17095 = distinct !DILocation(line: 0, scope: !844, inlinedAt: !17090)
!17096 = distinct !DILocation(line: 0, scope: !819, inlinedAt: !17046)
!17097 = distinct !DILocation(line: 104, column: 25, scope: !819, inlinedAt: !17046)
!17098 = distinct !DILocation(line: 0, scope: !847, inlinedAt: !17097)
!17099 = distinct !DILocation(line: 0, scope: !800, inlinedAt: !17041)
!17100 = distinct !DILocation(line: 0, scope: !799, inlinedAt: !17041)
!17101 = distinct !DILocation(line: 2034, column: 27, scope: !799, inlinedAt: !17041)
!17102 = distinct !DILocation(line: 0, scope: !848, inlinedAt: !17101)
!17103 = distinct !DILocation(line: 1202, column: 56, scope: !848, inlinedAt: !17101)
!17104 = distinct !DILocation(line: 765, column: 18, scope: !854, inlinedAt: !17103)
!17105 = distinct !DILocation(line: 329, column: 36, scope: !851, inlinedAt: !17104)
!17106 = distinct !DILocation(line: 0, scope: !849, inlinedAt: !17105)
!17107 = distinct !DILocation(line: 0, scope: !854, inlinedAt: !17103)
!17108 = distinct !DILocation(line: 0, scope: !851, inlinedAt: !17104)
!17109 = distinct !DILocation(line: 1202, column: 70, scope: !848, inlinedAt: !17101)
!17110 = distinct !DILocation(line: 535, column: 25, scope: !856, inlinedAt: !17109)
!17111 = distinct !DILocation(line: 418, column: 40, scope: !855, inlinedAt: !17110)
end_hunk_2
