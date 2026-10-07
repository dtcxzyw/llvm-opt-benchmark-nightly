Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog-2e3720e2d56e44fb.qlog.2b827698b949cf29-cgu.4?download=true
inline.NumInlined: 433
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXse_NtCsenfyI6F4F2A_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvCs3JBf551F2Kj_4qlogsb_1__NtB39_10TimeFormatNtB1p_11Deserialize11deserialize7___FieldEEB39_:bb.a
    #dbg_value(ptr %.sroa.93.17, !12307, !DIExpression(), !12368)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12404
  store ptr %.sroa.93.17, ptr %i.ab, align 8, !dbg !12404
  store i8 2, ptr %0, align 8, !dbg !12404
  br label %bb.i, !dbg !12405

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !12406
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !12406, !range !1418, !noalias !12355, !noundef !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12396, !noalias !12355
    #dbg_value(i8 %i.ad, !12305, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12369)
  store i8 %i.ad, ptr %0, align 8, !dbg !12407
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12407
  store ptr %1, ptr %i.ae, align 8, !dbg !12407
  br label %bb.i, !dbg !12405

bb.i:                                             ; preds = %bb.h, %_RINvXs3_NtCs9xKKqPmwf7Y_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvCs3JBf551F2Kj_4qlogsb_1__NtB1q_10TimeFormatNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB3r_4read9SliceReadEEB1q_.exit.thread
  ret void, !dbg !12408
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs3JBf551F2Kj_4qlog(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12409 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !12761, !DIExpression(), !12765)
    #dbg_value(ptr poison, !12766, !DIExpression(), !12415)
    #dbg_declare(ptr poison, !12770, !DIExpression(), !12416)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12776), !dbg !13028
    #dbg_value(ptr %.0.val, !1707, !DIExpression(), !12420)
    #dbg_value(ptr %.0.val, !1712, !DIExpression(), !12422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12777), !dbg !13029
    #dbg_value(ptr %.0.val, !957, !DIExpression(), !12426)
    #dbg_value(ptr %.0.val, !976, !DIExpression(), !12428)
    #dbg_value(ptr %.0.val, !979, !DIExpression(), !12430)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !12778, !noalias !12779, !noundef !594 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !12780, !noalias !12781 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s, !dbg !13030
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i, !dbg !13030

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !12778, !noalias !12779, !nonnull !594, !noundef !594 ; 2 uses
  br label %bb.b, !dbg !13030

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12782), !dbg !13031
    #dbg_value(ptr %i.u, !989, !DIExpression(), !12436)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w, !dbg !13032
  %i.y = load i8, ptr %i.x, align 1, !dbg !13032, !noalias !12783, !noundef !594
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !dbg !13033, !prof !1428

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %.0.val, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12438)
  %i.z = add i64 %i.w, 1, !dbg !13034             ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !dbg !13034, !alias.scope !12784, !noalias !12781
    #dbg_value(ptr %.0.val, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12436)
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s, !dbg !13030
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b, !dbg !13030

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !13035, !noalias !12776
  store i64 3, ptr %i.o, align 8, !dbg !13035, !noalias !12776
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !13036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !13037, !noalias !12776
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13038

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !13039, !noalias !12776
  store i64 6, ptr %i.p, align 8, !dbg !13039, !noalias !12776
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !dbg !13040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !13041, !noalias !12776
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13042

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr %.0.val, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12442)
  %i.ac = add i64 %i.w, 1, !dbg !13043            ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !dbg !13043, !alias.scope !12785
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12786), !dbg !13044
    #dbg_declare(ptr poison, !12787, !DIExpression(), !12449)
    #dbg_value(ptr %.0.val, !12791, !DIExpression(), !12450)
    #dbg_declare(ptr poison, !12790, !DIExpression(), !12449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12794), !dbg !13045
    #dbg_value(ptr %.0.val, !12796, !DIExpression(), !12455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12801), !dbg !13046
    #dbg_value(ptr %.0.val, !12802, !DIExpression(), !12462)
    #dbg_declare(ptr poison, !12805, !DIExpression(), !12463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12810), !dbg !13047
    #dbg_value(ptr %.0.val, !12811, !DIExpression(), !12500)
    #dbg_value(ptr %.0.val, !12847, !DIExpression(), !12503)
    #dbg_value(ptr %.0.val, !12847, !DIExpression(), !12505)
    #dbg_value(ptr %.0.val, !12847, !DIExpression(), !12507)
    #dbg_value(ptr %.0.val, !12847, !DIExpression(), !12509)
    #dbg_value(ptr %.0.val, !12847, !DIExpression(), !12511)
    #dbg_value(ptr %.0.val, !12847, !DIExpression(), !12513)
    #dbg_value(ptr %.0.val, !12847, !DIExpression(), !12515)
    #dbg_value(ptr %.0.val, !12847, !DIExpression(), !12517)
    #dbg_value(ptr %.0.val, !12847, !DIExpression(), !12519)
    #dbg_value(ptr %.0.val, !12847, !DIExpression(), !12521)
    #dbg_value(i64 1, !12850, !DIExpression(), !12530)
    #dbg_value(i64 1, !12850, !DIExpression(), !12535)
    #dbg_value(ptr %.0.val, !12877, !DIExpression(), !12539)
    #dbg_value(ptr %.0.val, !12880, !DIExpression(), !12542)
    #dbg_value(ptr %.0.val, !12882, !DIExpression(), !12545)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !13048 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !13049 ; 5 uses
    #dbg_value(ptr poison, !12878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12552)
    #dbg_value(i64 poison, !12878, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12552)
  store i64 0, ptr %i.ae, align 8, !dbg !13050, !alias.scope !12897
    #dbg_value(i8 undef, !12813, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12553)
    #dbg_value(i8 poison, !12813, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12553)
  %i.af = icmp ult i64 %i.ac, %i.s, !dbg !13051
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i, label %.loopexit161.i.i.i.i.i, !dbg !13051

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %bb.bf
  %i.ag = phi ptr [ %i.eh, %bb.bf ], [ %i.v, %bb.e ] ; 11 uses
  %.promoted.i210.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i, %bb.bf ], [ %i.ac, %bb.e ]
  %i.ah = phi i64 [ %i.eg, %bb.bf ], [ %i.s, %bb.e ] ; 7 uses
  %.sroa.7.0209.i.i.i.i.i = phi i8 [ %.sroa.027.2194.i.i.i.i.i, %bb.bf ], [ undef, %bb.e ] ; 2 uses
  %.sroa.039.0208.i.i.i.i.i = phi i1 [ true, %bb.bf ], [ false, %bb.e ] ; 2 uses
    #dbg_value(i8 %.sroa.7.0209.i.i.i.i.i, !12813, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12898), !dbg !13052
  br label %bb.f, !dbg !13051

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i210.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
    #dbg_value(ptr %i.u, !989, !DIExpression(), !12559)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai, !dbg !13053
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !13053, !noalias !12899, !noundef !594 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ], !dbg !13054

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
    #dbg_value(ptr %.0.val, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12566)
  %i.al = add i64 %i.ai, 1, !dbg !13055           ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !dbg !13055, !alias.scope !12900, !noalias !12901
    #dbg_value(ptr %.0.val, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12559)
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah, !dbg !13051
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit161.i.i.i.i.i, label %bb.f, !dbg !13051

.loopexit161.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
    #dbg_value(i8 0, !12818, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12569)
    #dbg_value(i8 poison, !12818, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !13056, !noalias !12897
  store i64 5, ptr %i.n, align 8, !dbg !13056, !noalias !12897
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !dbg !13057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !13058, !noalias !12897
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13059

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48, !dbg !13060
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10, !dbg !13060
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !dbg !13060, !prof !1830

bb.i:                                             ; preds = %bb.f
    #dbg_value(ptr %i.u, !993, !DIExpression(), !12571)
  %i.ao = add i64 %i.ai, 1, !dbg !13061           ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !dbg !13061, !alias.scope !12903
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12904), !dbg !13062
    #dbg_value(ptr %.0.val, !1831, !DIExpression(), !12577)
    #dbg_value(ptr %.0.val, !1850, !DIExpression(), !12579)
    #dbg_value(ptr poison, !1835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(i64 3, !1835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12580)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12580)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ah), !dbg !13063 ; 2 uses
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12580)
    #dbg_value(ptr poison, !1838, !DIExpression(), !12581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12905), !dbg !13064
    #dbg_value(ptr %.0.val, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12585)
  %exitcond.not.i84.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah, !dbg !13065
  br i1 %exitcond.not.i84.not.i.i.i.i.i, label %bb.j, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, !dbg !13065

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.u, !1854, !DIExpression(), !12585)
    #dbg_value(!DIArgList(ptr poison, i64 1), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12580)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao, !dbg !13066
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !13066, !noalias !12906, !noundef !594
    #dbg_value(i8 %i.aq, !1855, !DIExpression(), !12588)
  %i.ar = add i64 %i.ai, 2, !dbg !13067           ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !dbg !13067, !alias.scope !12907, !noalias !12908
    #dbg_value(i8 %i.aq, !1841, !DIExpression(), !12589)
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117, !dbg !13068
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit277.i.i.i.i.i, !dbg !13068, !prof !1858

bb.k:                                             ; preds = %bb.j
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12580)
    #dbg_value(ptr poison, !1838, !DIExpression(), !12581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12909), !dbg !13064
    #dbg_value(ptr %.0.val, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12585)
  %exitcond.not.i84.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i, !dbg !13065
  br i1 %exitcond.not.i84.1.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l, !dbg !13065

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %i.u, !1854, !DIExpression(), !12585)
    #dbg_value(!DIArgList(ptr poison, i64 2), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12580)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar, !dbg !13066
  %i.at = load i8, ptr %i.as, align 1, !dbg !13066, !noalias !12910, !noundef !594
    #dbg_value(i8 %i.at, !1855, !DIExpression(), !12588)
  %i.au = add i64 %i.ai, 3, !dbg !13067           ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !dbg !13067, !alias.scope !12911, !noalias !12908
    #dbg_value(i8 %i.at, !1841, !DIExpression(), !12589)
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108, !dbg !13068
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit277.i.i.i.i.i, !dbg !13068, !prof !1858

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12580)
    #dbg_value(ptr poison, !1838, !DIExpression(), !12581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12912), !dbg !13064
    #dbg_value(ptr %.0.val, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12585)
  %exitcond.not.i84.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i, !dbg !13065
  br i1 %exitcond.not.i84.2.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n, !dbg !13065

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %i.u, !1854, !DIExpression(), !12585)
    #dbg_value(!DIArgList(ptr poison, i64 3), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12580)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au, !dbg !13066
  %i.aw = load i8, ptr %i.av, align 1, !dbg !13066, !noalias !12913, !noundef !594
    #dbg_value(i8 %i.aw, !1855, !DIExpression(), !12588)
  %i.ax = add i64 %i.ai, 4, !dbg !13067
  store i64 %i.ax, ptr %i.q, align 8, !dbg !13067, !alias.scope !12914, !noalias !12908
    #dbg_value(i8 %i.aw, !1841, !DIExpression(), !12589)
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108, !dbg !13068
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i, label %.loopexit277.i.i.i.i.i, !dbg !13068, !prof !1858

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13069, !noalias !12915
  store i64 5, ptr %i.f, align 8, !dbg !13069, !noalias !12915
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !dbg !13070, !noalias !12916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13071, !noalias !12915
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13072

.loopexit277.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13073, !noalias !12915
  store i64 9, ptr %i.e, align 8, !dbg !13073, !noalias !12915
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !13074, !noalias !12916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13075, !noalias !12915
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13076

bb.o:                                             ; preds = %bb.f
    #dbg_value(ptr %i.u, !993, !DIExpression(), !12593)
  %i.ba = add i64 %i.ai, 1, !dbg !13077           ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !dbg !13077, !alias.scope !12917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12918), !dbg !13078
    #dbg_value(ptr %.0.val, !1831, !DIExpression(), !12599)
    #dbg_value(ptr %.0.val, !1850, !DIExpression(), !12601)
    #dbg_value(ptr poison, !1835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12599)
    #dbg_value(i64 3, !1835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12599)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12602)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12602)
  %umax.i87.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ah), !dbg !13079 ; 2 uses
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12602)
    #dbg_value(ptr poison, !1838, !DIExpression(), !12603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12919), !dbg !13080
    #dbg_value(ptr %.0.val, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12607)
  %exitcond.not.i89.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah, !dbg !13081
  br i1 %exitcond.not.i89.not.i.i.i.i.i, label %bb.p, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i, !dbg !13081

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr %i.u, !1854, !DIExpression(), !12607)
    #dbg_value(!DIArgList(ptr poison, i64 1), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12602)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba, !dbg !13082
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !13082, !noalias !12920, !noundef !594
    #dbg_value(i8 %i.bc, !1855, !DIExpression(), !12610)
  %i.bd = add i64 %i.ai, 2, !dbg !13083           ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !dbg !13083, !alias.scope !12921, !noalias !12922
    #dbg_value(i8 %i.bc, !1841, !DIExpression(), !12611)
  %.not.i90.i.i.i.i.i = icmp eq i8 %i.bc, 114, !dbg !13084
  br i1 %.not.i90.i.i.i.i.i, label %bb.q, label %.loopexit270.i.i.i.i.i, !dbg !13084, !prof !1858

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12602)
    #dbg_value(ptr poison, !1838, !DIExpression(), !12603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12923), !dbg !13080
    #dbg_value(ptr %.0.val, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12607)
  %exitcond.not.i89.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i87.i.i.i.i.i, !dbg !13081
  br i1 %exitcond.not.i89.1.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i, label %bb.r, !dbg !13081

bb.r:                                             ; preds = %bb.q
    #dbg_value(ptr %i.u, !1854, !DIExpression(), !12607)
    #dbg_value(!DIArgList(ptr poison, i64 2), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12602)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd, !dbg !13082
  %i.bf = load i8, ptr %i.be, align 1, !dbg !13082, !noalias !12924, !noundef !594
    #dbg_value(i8 %i.bf, !1855, !DIExpression(), !12610)
  %i.bg = add i64 %i.ai, 3, !dbg !13083           ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !dbg !13083, !alias.scope !12925, !noalias !12922
    #dbg_value(i8 %i.bf, !1841, !DIExpression(), !12611)
  %.not.i90.1.i.i.i.i.i = icmp eq i8 %i.bf, 117, !dbg !13084
  br i1 %.not.i90.1.i.i.i.i.i, label %bb.s, label %.loopexit270.i.i.i.i.i, !dbg !13084, !prof !1858

bb.s:                                             ; preds = %bb.r
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12602)
    #dbg_value(ptr poison, !1838, !DIExpression(), !12603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12926), !dbg !13080
    #dbg_value(ptr %.0.val, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12607)
  %exitcond.not.i89.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i87.i.i.i.i.i, !dbg !13081
  br i1 %exitcond.not.i89.2.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i, label %bb.t, !dbg !13081

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %i.u, !1854, !DIExpression(), !12607)
    #dbg_value(!DIArgList(ptr poison, i64 3), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12602)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg, !dbg !13082
  %i.bi = load i8, ptr %i.bh, align 1, !dbg !13082, !noalias !12927, !noundef !594
    #dbg_value(i8 %i.bi, !1855, !DIExpression(), !12610)
  %i.bj = add i64 %i.ai, 4, !dbg !13083
  store i64 %i.bj, ptr %i.q, align 8, !dbg !13083, !alias.scope !12928, !noalias !12922
    #dbg_value(i8 %i.bi, !1841, !DIExpression(), !12611)
  %.not.i90.2.i.i.i.i.i = icmp eq i8 %i.bi, 101, !dbg !13084
  br i1 %.not.i90.2.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i, label %.loopexit270.i.i.i.i.i, !dbg !13084, !prof !1858

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13085, !noalias !12929
  store i64 5, ptr %i.d, align 8, !dbg !13085, !noalias !12929
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !13086, !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13087, !noalias !12929
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13088

.loopexit270.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13089, !noalias !12929
  store i64 9, ptr %i.c, align 8, !dbg !13089, !noalias !12929
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !13090, !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13091, !noalias !12929
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13092

bb.u:                                             ; preds = %bb.f
    #dbg_value(ptr %i.u, !993, !DIExpression(), !12615)
  %i.bm = add i64 %i.ai, 1, !dbg !13093           ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !dbg !13093, !alias.scope !12931
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12932), !dbg !13094
    #dbg_value(ptr %.0.val, !1831, !DIExpression(), !12621)
    #dbg_value(ptr %.0.val, !1850, !DIExpression(), !12623)
    #dbg_value(ptr poison, !1835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12621)
    #dbg_value(i64 4, !1835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12621)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12624)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12624)
  %umax.i96.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ah), !dbg !13095 ; 3 uses
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12624)
    #dbg_value(ptr poison, !1838, !DIExpression(), !12625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12933), !dbg !13096
    #dbg_value(ptr %.0.val, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12629)
  %exitcond.not.i98.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah, !dbg !13097
  br i1 %exitcond.not.i98.not.i.i.i.i.i, label %bb.v, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i, !dbg !13097

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.u, !1854, !DIExpression(), !12629)
    #dbg_value(!DIArgList(ptr poison, i64 1), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12624)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm, !dbg !13098
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !13098, !noalias !12934, !noundef !594
    #dbg_value(i8 %i.bo, !1855, !DIExpression(), !12632)
  %i.bp = add i64 %i.ai, 2, !dbg !13099           ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !dbg !13099, !alias.scope !12935, !noalias !12936
    #dbg_value(i8 %i.bo, !1841, !DIExpression(), !12633)
  %.not.i99.i.i.i.i.i = icmp eq i8 %i.bo, 97, !dbg !13100
  br i1 %.not.i99.i.i.i.i.i, label %bb.w, label %.loopexit263.i.i.i.i.i, !dbg !13100, !prof !1858

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12624)
    #dbg_value(ptr poison, !1838, !DIExpression(), !12625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12937), !dbg !13096
    #dbg_value(ptr %.0.val, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12629)
  %exitcond.not.i98.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i96.i.i.i.i.i, !dbg !13097
  br i1 %exitcond.not.i98.1.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i, label %bb.x, !dbg !13097

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %i.u, !1854, !DIExpression(), !12629)
    #dbg_value(!DIArgList(ptr poison, i64 2), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12624)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp, !dbg !13098
  %i.br = load i8, ptr %i.bq, align 1, !dbg !13098, !noalias !12938, !noundef !594
    #dbg_value(i8 %i.br, !1855, !DIExpression(), !12632)
  %i.bs = add i64 %i.ai, 3, !dbg !13099           ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !dbg !13099, !alias.scope !12939, !noalias !12936
    #dbg_value(i8 %i.br, !1841, !DIExpression(), !12633)
  %.not.i99.1.i.i.i.i.i = icmp eq i8 %i.br, 108, !dbg !13100
  br i1 %.not.i99.1.i.i.i.i.i, label %bb.y, label %.loopexit263.i.i.i.i.i, !dbg !13100, !prof !1858

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12624)
    #dbg_value(ptr poison, !1838, !DIExpression(), !12625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12940), !dbg !13096
    #dbg_value(ptr %.0.val, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12629)
  %exitcond.not.i98.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i96.i.i.i.i.i, !dbg !13097
  br i1 %exitcond.not.i98.2.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i, label %bb.z, !dbg !13097

bb.z:                                             ; preds = %bb.y
    #dbg_value(ptr %i.u, !1854, !DIExpression(), !12629)
    #dbg_value(!DIArgList(ptr poison, i64 3), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12624)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs, !dbg !13098
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !13098, !noalias !12941, !noundef !594
    #dbg_value(i8 %i.bu, !1855, !DIExpression(), !12632)
  %i.bv = add i64 %i.ai, 4, !dbg !13099           ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !dbg !13099, !alias.scope !12942, !noalias !12936
    #dbg_value(i8 %i.bu, !1841, !DIExpression(), !12633)
  %.not.i99.2.i.i.i.i.i = icmp eq i8 %i.bu, 115, !dbg !13100
  br i1 %.not.i99.2.i.i.i.i.i, label %bb.aa, label %.loopexit263.i.i.i.i.i, !dbg !13100, !prof !1858

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12624)
    #dbg_value(ptr poison, !1838, !DIExpression(), !12625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12943), !dbg !13096
    #dbg_value(ptr %.0.val, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12629)
  %exitcond.not.i98.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i96.i.i.i.i.i, !dbg !13097
  br i1 %exitcond.not.i98.3.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i, label %bb.ab, !dbg !13097

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr %i.u, !1854, !DIExpression(), !12629)
    #dbg_value(!DIArgList(ptr poison, i64 4), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12624)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv, !dbg !13098
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !13098, !noalias !12944, !noundef !594
    #dbg_value(i8 %i.bx, !1855, !DIExpression(), !12632)
  %i.by = add i64 %i.ai, 5, !dbg !13099
  store i64 %i.by, ptr %i.q, align 8, !dbg !13099, !alias.scope !12945, !noalias !12936
    #dbg_value(i8 %i.bx, !1841, !DIExpression(), !12633)
  %.not.i99.3.i.i.i.i.i = icmp eq i8 %i.bx, 101, !dbg !13100
  br i1 %.not.i99.3.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i, label %.loopexit263.i.i.i.i.i, !dbg !13100, !prof !1858

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13101, !noalias !12946
  store i64 5, ptr %i.b, align 8, !dbg !13101, !noalias !12946
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !13102, !noalias !12947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13103, !noalias !12946
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13104

.loopexit263.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13105, !noalias !12946
  store i64 9, ptr %i.a, align 8, !dbg !13105, !noalias !12946
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !13106, !noalias !12947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13107, !noalias !12946
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13108

bb.ac:                                            ; preds = %bb.f
    #dbg_value(ptr %.0.val, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12638)
  %i.cb = add i64 %i.ai, 1, !dbg !13109
  store i64 %i.cb, ptr %i.q, align 8, !dbg !13109, !alias.scope !12948
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val), !dbg !13110 ; 2 uses
  %.not76.i.i.i.i.i = icmp eq ptr %i.cc, null, !dbg !13111
  br i1 %.not76.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i, label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13112

bb.ad:                                            ; preds = %bb.f
    #dbg_value(ptr %i.u, !993, !DIExpression(), !12642)
  %i.cd = add i64 %i.ai, 1, !dbg !13113
  store i64 %i.cd, ptr %i.q, align 8, !dbg !13113, !alias.scope !12950
  %i.ce = tail call noundef align 8 ptr @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u), !dbg !13114 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null, !dbg !13115
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i, label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13112

bb.ae:                                            ; preds = %bb.f, %bb.f
    #dbg_value(ptr %.0.val, !12951, !DIExpression(), !12647)
    #dbg_value(ptr %.0.val, !12960, !DIExpression(), !12652)
    #dbg_value(i1 %.sroa.039.0208.i.i.i.i.i, !12955, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !12647)
    #dbg_value(i8 %.sroa.7.0209.i.i.i.i.i, !12955, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12647)
    #dbg_value(i1 false, !12813, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !12553)
    #dbg_value(i8 poison, !12813, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12553)
    #dbg_value(i1 %.sroa.039.0208.i.i.i.i.i, !12970, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !12652)
    #dbg_value(i8 %.sroa.7.0209.i.i.i.i.i, !12970, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12652)
  tail call void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterhEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i1 noundef zeroext %.sroa.039.0208.i.i.i.i.i, i8 %.sroa.7.0209.i.i.i.i.i), !dbg !13116
    #dbg_value(ptr %.0.val, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12654)
  %i.cf = load i64, ptr %i.q, align 8, !dbg !13117, !alias.scope !12975, !noundef !594
  %i.cg = add i64 %i.cf, 1, !dbg !13117
  store i64 %i.cg, ptr %i.q, align 8, !dbg !13117, !alias.scope !12975
    #dbg_value(i8 %i.ak, !12833, !DIExpression(), !12657)
    #dbg_value(i8 0, !12832, !DIExpression(), !12657)
  br label %bb.ag, !dbg !13118

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
    #dbg_value(i1 false, !12813, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !12553)
    #dbg_value(i8 poison, !12813, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12553)
  br i1 %.sroa.039.0208.i.i.i.i.i, label %bb.ag, label %bb.af, !dbg !13119

bb.af:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i
    #dbg_value(ptr %.0.val, !12872, !DIExpression(), !12658)
    #dbg_value(ptr %.0.val, !12867, !DIExpression(), !12659)
    #dbg_value(ptr %.0.val, !12976, !DIExpression(), !12662)
  %i.ch = load i64, ptr %i.ae, align 8, !dbg !13120, !alias.scope !12897, !noundef !594 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0, !dbg !13120
  br i1 %i.ci, label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, label %bb.aj, !dbg !13120

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.cv, %bb.aj ], [ %.sroa.7.0209.i.i.i.i.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i ], !dbg !13121 ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i ], !dbg !13121
    #dbg_value(i8 poison, !12832, !DIExpression(), !12657)
    #dbg_value(i8 %.sroa.027.0.i.i.i.i.i, !12833, !DIExpression(), !12657)
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !12981, !noalias !12982, !noundef !594 ; 6 uses
  %.promoted.i104193.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !12983, !noalias !12984 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i104193.i.i.i.i.i, %i.cj, !dbg !13122
  br i1 %i.ck, label %.lr.ph.i106.lr.ph.i.i.i.i.i, label %.loopexit154.i.i.i.i.i, !dbg !13122

.lr.ph.i106.lr.ph.i.i.i.i.i:                      ; preds = %bb.ag
  %.promoted.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !12897
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !12981, !noalias !12982, !nonnull !594, !noundef !594 ; 3 uses
  %i.cm = load i64, ptr %.0.val, align 8, !range !12985, !alias.scope !12897
  %i.cn = load ptr, ptr %i.ad, align 8, !alias.scope !12897, !nonnull !594
  br label %.lr.ph.i106.i.i.i.i.i, !dbg !13122

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !13123, !noalias !12897
  store i64 10, ptr %i.m, align 8, !dbg !13123, !noalias !12897
  %i.co = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !dbg !13124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13125, !noalias !12897
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13126

bb.ai:                                            ; preds = %bb.h
  %i.cp = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val), !dbg !13127 ; 2 uses
  %.not80.i.i.i.i.i = icmp eq ptr %i.cp, null, !dbg !13128
  br i1 %.not80.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.i.i.i.i.i, label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13112

bb.aj:                                            ; preds = %bb.af
  %i.cq = add i64 %i.ch, -1, !dbg !13129          ; 3 uses
  store i64 %i.cq, ptr %i.ae, align 8, !dbg !13129, !alias.scope !12897
  %i.cr = load i64, ptr %.0.val, align 8, !dbg !13130, !range !12985, !alias.scope !12897, !noundef !594
  %i.cs = icmp ult i64 %i.cq, %i.cr, !dbg !13131
    #dbg_value(i1 true, !12987, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12675)
  tail call void @llvm.assume(i1 %i.cs), !dbg !13132
  %i.ct = load ptr, ptr %i.ad, align 8, !dbg !13133, !alias.scope !12897, !nonnull !594, !noundef !594
    #dbg_value(ptr %i.ct, !12995, !DIExpression(), !12681)
    #dbg_value(i64 %i.cq, !13000, !DIExpression(), !12681)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq, !dbg !13134
    #dbg_value(ptr %i.cu, !13002, !DIExpression(), !12684)
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !13135, !noundef !594
    #dbg_value(i8 %i.cv, !12833, !DIExpression(), !12657)
    #dbg_value(i8 1, !12832, !DIExpression(), !12657)
  br label %bb.ag, !dbg !13136

.lr.ph.i106.i.i.i.i.i:                            ; preds = %bb.au, %.lr.ph.i106.lr.ph.i.i.i.i.i
  %.promoted.i104201.i.i.i.i.i = phi i64 [ %.promoted.i104193.i.i.i.i.i, %.lr.ph.i106.lr.ph.i.i.i.i.i ], [ %i.dg, %bb.au ]
  %.sroa.042.2195.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i106.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2194.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i106.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.au ] ; 6 uses
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i106.lr.ph.i.i.i.i.i ], [ %i.di, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13006), !dbg !13137
  br label %bb.ak, !dbg !13122

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i106.i.i.i.i.i
  %i.cx = phi i64 [ %.promoted.i104201.i.i.i.i.i, %.lr.ph.i106.i.i.i.i.i ], [ %i.da, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13007), !dbg !13138
    #dbg_value(ptr %i.u, !989, !DIExpression(), !12685)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx, !dbg !13139
  %i.cz = load i8, ptr %i.cy, align 1, !dbg !13139, !noalias !13008, !noundef !594
end_hunk_0
begin_hunk_1_@_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs3JBf551F2Kj_4qlog:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13012), !dbg !13164
    #dbg_value(ptr %.0.val, !957, !DIExpression(), !12715)
    #dbg_value(ptr %.0.val, !976, !DIExpression(), !12717)
    #dbg_value(ptr %.0.val, !979, !DIExpression(), !12719)
  %i.dn = icmp ult i64 %.promoted.i111.i.i.i.i.i, %i.cj, !dbg !13165
  br i1 %i.dn, label %.lr.ph.i113.i.i.i.i.i, label %.loopexit156.i.i.i.i.i, !dbg !13165

.lr.ph.i113.i.i.i.i.i:                            ; preds = %bb.aw, %bb.ax
  %i.do = phi i64 [ %i.dr, %bb.ax ], [ %.promoted.i111.i.i.i.i.i, %bb.aw ] ; 3 uses
    #dbg_value(ptr %i.u, !989, !DIExpression(), !12721)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.do, !dbg !13166
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !13166, !noalias !13013, !noundef !594
  switch i8 %i.dq, label %bb.az [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 34, label %bb.ay
  ], !dbg !13167, !prof !1428

bb.ax:                                            ; preds = %.lr.ph.i113.i.i.i.i.i, %.lr.ph.i113.i.i.i.i.i, %.lr.ph.i113.i.i.i.i.i, %.lr.ph.i113.i.i.i.i.i
    #dbg_value(ptr %.0.val, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12727)
  %i.dr = add i64 %i.do, 1, !dbg !13168           ; 3 uses
  store i64 %i.dr, ptr %i.q, align 8, !dbg !13168, !alias.scope !13014, !noalias !13015
    #dbg_value(ptr %.0.val, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12721)
  %exitcond.not.i114.i.i.i.i.i = icmp eq i64 %i.dr, %i.cj, !dbg !13165
  br i1 %exitcond.not.i114.i.i.i.i.i, label %.loopexit156.i.i.i.i.i, label %.lr.ph.i113.i.i.i.i.i, !dbg !13165

.loopexit156.i.i.i.i.i:                           ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13169, !noalias !12897
  store i64 3, ptr %i.i, align 8, !dbg !13169, !noalias !12897
  %i.ds = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !dbg !13170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13171, !noalias !12897
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13172

bb.ay:                                            ; preds = %.lr.ph.i113.i.i.i.i.i
    #dbg_value(ptr %i.u, !993, !DIExpression(), !12731)
  %i.dt = add i64 %i.do, 1, !dbg !13173
  store i64 %i.dt, ptr %i.q, align 8, !dbg !13173, !alias.scope !13016
  %i.du = tail call noundef align 8 ptr @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u), !dbg !13174 ; 2 uses
  %.not81.i.i.i.i.i = icmp eq ptr %i.du, null, !dbg !13175
  br i1 %.not81.i.i.i.i.i, label %bb.ba, label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13176

bb.az:                                            ; preds = %.lr.ph.i113.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13177, !noalias !12897
  store i64 17, ptr %i.j, align 8, !dbg !13177, !noalias !12897
  %i.dv = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !dbg !13178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13179, !noalias !12897
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13180

bb.ba:                                            ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13018), !dbg !13181
    #dbg_value(ptr %.0.val, !957, !DIExpression(), !12737)
    #dbg_value(ptr %.0.val, !976, !DIExpression(), !12739)
    #dbg_value(ptr %.0.val, !979, !DIExpression(), !12741)
  %i.dw = load i64, ptr %i.r, align 8, !alias.scope !13019, !noalias !13020, !noundef !594 ; 3 uses
  %.promoted.i118.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !13021, !noalias !13022 ; 2 uses
  %i.dx = icmp ult i64 %.promoted.i118.i.i.i.i.i, %i.dw, !dbg !13182
  br i1 %i.dx, label %.lr.ph.i120.i.i.i.i.i, label %.loopexit155.i.i.i.i.i, !dbg !13182

.lr.ph.i120.i.i.i.i.i:                            ; preds = %bb.ba
  %i.dy = load ptr, ptr %i.u, align 8, !alias.scope !13019, !noalias !13020, !nonnull !594, !noundef !594 ; 2 uses
  br label %bb.bb, !dbg !13182

bb.bb:                                            ; preds = %bb.bc, %.lr.ph.i120.i.i.i.i.i
  %i.dz = phi i64 [ %.promoted.i118.i.i.i.i.i, %.lr.ph.i120.i.i.i.i.i ], [ %i.ec, %bb.bc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13023), !dbg !13183
    #dbg_value(ptr %i.u, !989, !DIExpression(), !12747)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz, !dbg !13184
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !13184, !noalias !13024, !noundef !594
  switch i8 %i.eb, label %bb.be [
    i8 32, label %bb.bc
    i8 10, label %bb.bc
    i8 9, label %bb.bc
    i8 13, label %bb.bc
    i8 58, label %bb.bd
  ], !dbg !13185, !prof !1428

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb
    #dbg_value(ptr %.0.val, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12749)
  %i.ec = add i64 %i.dz, 1, !dbg !13186           ; 3 uses
  store i64 %i.ec, ptr %i.q, align 8, !dbg !13186, !alias.scope !13025, !noalias !13022
    #dbg_value(ptr %.0.val, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12747)
  %exitcond.not.i121.i.i.i.i.i = icmp eq i64 %i.ec, %i.dw, !dbg !13182
  br i1 %exitcond.not.i121.i.i.i.i.i, label %.loopexit155.i.i.i.i.i, label %bb.bb, !dbg !13182

.loopexit155.i.i.i.i.i:                           ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13187, !noalias !12897
  store i64 3, ptr %i.g, align 8, !dbg !13187, !noalias !12897
  %i.ed = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !13188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13189, !noalias !12897
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13190

bb.bd:                                            ; preds = %bb.bb
    #dbg_value(ptr %i.u, !993, !DIExpression(), !12753)
  %i.ee = add i64 %i.dz, 1, !dbg !13191           ; 2 uses
  store i64 %i.ee, ptr %i.q, align 8, !dbg !13191, !alias.scope !13026
  br label %bb.bf, !dbg !13192

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13193, !noalias !12897
  store i64 6, ptr %i.h, align 8, !dbg !13193, !noalias !12897
  %i.ef = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !dbg !13194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13195, !noalias !12897
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13196

bb.bf:                                            ; preds = %bb.bd, %.critedge.i.i.i.i.i
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i111.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %i.ee, %bb.bd ] ; 2 uses
  %i.eg = phi i64 [ %i.cj, %.critedge.i.i.i.i.i ], [ %i.dw, %bb.bd ] ; 2 uses
  %i.eh = phi ptr [ %i.cl, %.critedge.i.i.i.i.i ], [ %i.dy, %bb.bd ]
    #dbg_value(i8 %.sroa.027.2194.i.i.i.i.i, !12813, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12553)
    #dbg_value(i8 poison, !12813, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12553)
    #dbg_value(ptr %.0.val, !957, !DIExpression(), !12756)
    #dbg_value(ptr %.0.val, !976, !DIExpression(), !12757)
    #dbg_value(ptr %.0.val, !979, !DIExpression(), !12758)
  %i.ei = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.eg, !dbg !13051
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i, label %.loopexit161.i.i.i.i.i, !dbg !13051

bb.bg:                                            ; preds = %bb.av
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #17, !dbg !13197
  unreachable, !dbg !13197

bb.bh:                                            ; preds = %bb.av
  br label %bb.bi, !dbg !13198

bb.bi:                                            ; preds = %bb.bh, %bb.av
  %storemerge82.i.i.i.i.i = phi i64 [ 8, %bb.bh ], [ 7, %bb.av ], !dbg !13145
  store i64 %storemerge82.i.i.i.i.i, ptr %i.l, align 8, !dbg !13145, !noalias !12897
  %i.ej = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !dbg !13199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !13200, !noalias !12897
  br label %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit, !dbg !13201

_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs3JBf551F2Kj_4qlog.exit: ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ai, %bb.ay, %bb.at, %.loopexit.i.i, %bb.d, %.loopexit161.i.i.i.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, %.loopexit277.i.i.i.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i, %.loopexit270.i.i.i.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i, %.loopexit263.i.i.i.i.i, %bb.ah, %bb.ao, %.loopexit156.i.i.i.i.i, %bb.az, %.loopexit155.i.i.i.i.i, %bb.be, %bb.bi
  %.sroa.0.0.i = phi ptr [ null, %bb.at ], [ %i.ca, %.loopexit263.i.i.i.i.i ], [ %i.am, %.loopexit161.i.i.i.i.i ], [ %i.ej, %bb.bi ], [ %i.ay, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i ], [ %i.ed, %.loopexit155.i.i.i.i.i ], [ %i.ab, %bb.d ], [ %i.ds, %.loopexit156.i.i.i.i.i ], [ %i.db, %bb.ao ], [ %i.bl, %.loopexit270.i.i.i.i.i ], [ %i.az, %.loopexit277.i.i.i.i.i ], [ %i.ef, %bb.be ], [ %i.co, %bb.ah ], [ %i.bz, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i ], [ %i.bk, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i ], [ %i.dv, %bb.az ], [ %i.aa, %.loopexit.i.i ], [ %i.cc, %bb.ac ], [ %i.cp, %bb.ai ], [ %i.du, %bb.ay ], [ %i.ce, %bb.ad ], [ null, %bb.af ], !dbg !13202
  ret ptr %.sroa.0.0.i, !dbg !13203
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13205 {
bb.a:
    #dbg_value(ptr %0, !13207, !DIExpression(), !13211)
    #dbg_declare(ptr %1, !13208, !DIExpression(), !13212)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13214
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d, !dbg !13215 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !13214
  %i.d = extractvalue { i64, i64 } %i.b, 1, !dbg !13214
    #dbg_value(i64 %i.c, !13209, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13213)
    #dbg_value(i64 %i.d, !13209, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13213)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d), !dbg !13216
  ret ptr %i.e, !dbg !13217

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f, !dbg !13218

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error9ErrorCodeECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #14
          to label %bb.c unwind label %bb.e, !dbg !13219

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !13218
  unreachable, !dbg !13218
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 !dbg !378 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !13245, !DIExpression(), !13262)
    #dbg_value(ptr %0, !1831, !DIExpression(), !13263)
    #dbg_value(ptr %0, !1850, !DIExpression(), !13265)
    #dbg_value(ptr %1, !1835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13263)
    #dbg_value(ptr %1, !13267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13273)
    #dbg_value(ptr %1, !13274, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13277)
    #dbg_value(ptr %1, !13278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13285)
    #dbg_value(i64 %2, !1835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13263)
    #dbg_value(i64 %2, !13267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13273)
    #dbg_value(i64 %2, !13274, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13277)
    #dbg_value(i64 %2, !13278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13285)
    #dbg_value(i64 1, !13286, !DIExpression(), !13293)
    #dbg_value(i64 %2, !13280, !DIExpression(), !13294)
    #dbg_value(i64 %2, !13295, !DIExpression(), !13301)
    #dbg_value(ptr %1, !13281, !DIExpression(), !13302)
    #dbg_value(ptr %1, !13298, !DIExpression(), !13301)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !13321
    #dbg_value(ptr %1, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13303)
    #dbg_value(ptr %i.c, !1836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13303)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !594
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.f), !dbg !13322
    #dbg_value(ptr %1, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13303)
    #dbg_value(ptr undef, !13245, !DIExpression(), !13262)
    #dbg_value(ptr %1, !13256, !DIExpression(), !13304)
    #dbg_value(ptr %1, !13290, !DIExpression(), !13293)
    #dbg_value(ptr %i.c, !13257, !DIExpression(), !13305)
    #dbg_value(ptr poison, !13307, !DIExpression(), !13314)
    #dbg_value(ptr poison, !13311, !DIExpression(), !13315)
  %i.i = icmp samesign eq i64 %2, 0, !dbg !13323
  br i1 %i.i, label %.loopexit, label %.lr.ph, !dbg !13313

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.024, i64 1, !dbg !13324 ; 2 uses
    #dbg_value(ptr %i.j, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13303)
    #dbg_value(ptr %i.j, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13303)
    #dbg_value(ptr undef, !13245, !DIExpression(), !13262)
    #dbg_value(ptr %i.j, !13256, !DIExpression(), !13304)
    #dbg_value(ptr %i.j, !13290, !DIExpression(), !13293)
    #dbg_value(ptr %i.c, !13257, !DIExpression(), !13305)
    #dbg_value(ptr poison, !13307, !DIExpression(), !13314)
    #dbg_value(ptr poison, !13311, !DIExpression(), !13315)
  %i.k = icmp eq ptr %i.j, %i.c, !dbg !13323
  br i1 %i.k, label %.loopexit, label %.lr.ph, !dbg !13313

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.024 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
    #dbg_value(ptr %.sroa.01.024, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13303)
    #dbg_value(ptr %.sroa.01.024, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13303)
    #dbg_value(ptr %.sroa.01.024, !1838, !DIExpression(), !13316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13317), !dbg !13325
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13240)
  %exitcond.not = icmp eq i64 %i.l, %umax, !dbg !13326
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c, !dbg !13326

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.g, !1854, !DIExpression(), !13240)
    #dbg_value(ptr %.sroa.01.024, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13303)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l, !dbg !13327
  %i.n = load i8, ptr %i.m, align 1, !dbg !13327, !noalias !13318, !noundef !594
    #dbg_value(i8 %i.n, !1855, !DIExpression(), !13242)
  %i.o = add i64 %i.l, 1, !dbg !13328             ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !dbg !13328, !alias.scope !13317, !noalias !13319
    #dbg_value(i8 %i.n, !1841, !DIExpression(), !13320)
  %i.p = load i8, ptr %.sroa.01.024, align 1, !dbg !13329, !noundef !594
  %.not = icmp eq i8 %i.n, %i.p, !dbg !13330
  br i1 %.not, label %bb.b, label %bb.d, !dbg !13330, !prof !1419

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13331
  store i64 5, ptr %i.b, align 8, !dbg !13331
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !13332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13333
  br label %.loopexit, !dbg !13334

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13335
  store i64 9, ptr %i.a, align 8, !dbg !13335
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !13336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13337
  br label %.loopexit, !dbg !13338

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ], !dbg !13339
  ret ptr %.sroa.0.1, !dbg !13340
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !13353 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(i64 %3, !13396, !DIExpression(), !13411)
    #dbg_value(ptr %1, !13394, !DIExpression(), !13411)
    #dbg_value(ptr %1, !13412, !DIExpression(), !13415)
    #dbg_value(ptr %1, !13416, !DIExpression(), !13423)
    #dbg_value(ptr %1, !13424, !DIExpression(), !13427)
    #dbg_value(ptr %1, !13412, !DIExpression(), !13429)
    #dbg_value(ptr %1, !13424, !DIExpression(), !13431)
    #dbg_value(ptr %1, !13416, !DIExpression(), !13433)
    #dbg_value(ptr %1, !13424, !DIExpression(), !13436)
    #dbg_value(i1 %2, !13395, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13411)
    #dbg_value(i32 %4, !13397, !DIExpression(), !13411)
    #dbg_value(i64 -1, !13403, !DIExpression(), !13437)
    #dbg_value(ptr %1, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13362)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !13453 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !13453, !alias.scope !13438, !noundef !594 ; 2 uses
  %i.g = add i64 %i.f, 1, !dbg !13453             ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !dbg !13453, !alias.scope !13438
    #dbg_value(i32 0, !13398, !DIExpression(), !13439)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !13440, !noalias !13441, !noundef !594 ; 3 uses
  %i.j = icmp ult i64 %i.g, %i.i, !dbg !13454
  br i1 %i.j, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread.thread, !dbg !13454

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !13455
    #dbg_value(ptr %i.k, !993, !DIExpression(), !13362)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !13440, !noalias !13441, !nonnull !594, !noundef !594
  %i.m = trunc i64 %i.f to i32, !dbg !13454
  %i.n = add i32 %i.m, 1, !dbg !13454             ; 2 uses
  %i.o = trunc i64 %i.i to i32, !dbg !13454       ; 2 uses
  %i.p = sub i32 %i.n, %i.o, !dbg !13454
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !13454

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.o
  %.sroa.0.077 = phi i64 [ %3, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.be, %bb.o ] ; 6 uses
  %.sroa.07.076 = phi i32 [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bf, %bb.o ] ; 4 uses
  %i.q = phi i64 [ %i.g, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
    #dbg_value(i64 %.sroa.0.077, !13396, !DIExpression(), !13411)
    #dbg_value(i32 %.sroa.07.076, !13398, !DIExpression(), !13439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13440), !dbg !13456
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q, !dbg !13457
  %i.s = load i8, ptr %i.r, align 1, !dbg !13457, !noalias !13442, !noundef !594 ; 2 uses
    #dbg_value(i8 poison, !13401, !DIExpression(), !13443)
  %i.t = add i8 %i.s, -48, !dbg !13458            ; 3 uses
  %or.cond = icmp ult i8 %i.t, 10, !dbg !13458
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !13458

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.u = icmp eq i32 %.sroa.07.076, 0, !dbg !13459
  br i1 %i.u, label %bb.d, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, !dbg !13459

.thread:                                          ; preds = %bb.o
    #dbg_value(i8 poison, !13401, !DIExpression(), !13443)
  %i.v = icmp eq i32 %i.n, %i.o, !dbg !13459
  br i1 %i.v, label %.thread.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !13459

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread: ; preds = %.thread
  %i.w = add i32 %i.p, %4, !dbg !13460
    #dbg_value(i32 %i.w, !13407, !DIExpression(), !13444)
    #dbg_value(ptr %1, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13370)
  br label %bb.e, !dbg !13461

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.x = zext nneg i8 %i.t to i64, !dbg !13462
    #dbg_value(i64 %i.x, !13402, !DIExpression(), !13446)
  %i.y = icmp ugt i64 %.sroa.0.077, 1844674407370955160, !dbg !13463
  br i1 %i.y, label %bb.n, label %bb.o, !dbg !13463

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13464
  store i64 13, ptr %i.d, align 8, !dbg !13464
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !13465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13466
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13467
  store ptr %i.z, ptr %i.aa, align 8, !dbg !13467
  store i64 1, ptr %0, align 8, !dbg !13467
  br label %bb.m, !dbg !13468

.thread.thread:                                   ; preds = %bb.a, %.thread
    #dbg_value(ptr %1, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13469
  store i64 5, ptr %i.c, align 8, !dbg !13469
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !13470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13471
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13472
  store ptr %i.ab, ptr %i.ac, align 8, !dbg !13472
  store i64 1, ptr %0, align 8, !dbg !13472
  br label %bb.m, !dbg !13473

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45: ; preds = %bb.b
  %i.ad = add i32 %.sroa.07.076, %4, !dbg !13460  ; 2 uses
    #dbg_value(i32 %i.ad, !13407, !DIExpression(), !13444)
    #dbg_value(ptr %1, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !13370)
  switch i8 %i.s, label %bb.e [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ], !dbg !13461

bb.e:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45
  %.sroa.0.073 = phi i64 [ %i.be, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread ], [ %.sroa.0.077, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ]
  %i.ae = phi i32 [ %i.w, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread ], [ %i.ad, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13447), !dbg !13474
    #dbg_value(i32 %i.ae, !1895, !DIExpression(), !13376)
    #dbg_value(ptr %1, !1897, !DIExpression(), !13376)
    #dbg_value(i1 %2, !1898, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13376)
    #dbg_value(i64 %.sroa.0.073, !1899, !DIExpression(), !13376)
  %i.af = uitofp i64 %.sroa.0.073 to double, !dbg !13475 ; 2 uses
    #dbg_value(double %i.af, !1900, !DIExpression(), !13377)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !1903, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13379)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !1925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13381)
    #dbg_value(i64 309, !1903, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13379)
    #dbg_value(i64 309, !1925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13381)
    #dbg_value(i32 %i.ae, !1934, !DIExpression(), !13383)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 false), !dbg !13476 ; 2 uses
  %i.ag = icmp ult i32 %.sroa.012.028.i, 309, !dbg !13477
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i, !dbg !13477

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.0.030.i = phi i32 [ %i.ao, %bb.g ], [ %i.ae, %bb.e ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.an, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !1895, !DIExpression(), !13376)
    #dbg_value(double %.sroa.04.029.i, !1900, !DIExpression(), !13377)
  %i.ah = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !13478
  br i1 %i.ah, label %.loopexit.i, label %bb.f, !dbg !13478

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCs3JBf551F2Kj_4qlog:bb.a
.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !14499 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !1900, !DIExpression(), !14355)
  %i.ay = fneg double %.sroa.04.1.i, !dbg !14512
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay, !dbg !14512
    #dbg_value(double %.sroa.04.2.i, !1900, !DIExpression(), !14355)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14513
  store double %.sroa.04.2.i, ptr %i.az, align 8, !dbg !14513, !alias.scope !14453, !noalias !14455
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs3JBf551F2Kj_4qlog.exit, !dbg !14514

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq, !dbg !14515
    #dbg_value(double %i.ba, !1900, !DIExpression(), !14355)
  br label %.loopexit.i, !dbg !14516

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq, !dbg !14517 ; 2 uses
    #dbg_value(double %i.bb, !1900, !DIExpression(), !14355)
    #dbg_value(double %i.bb, !1942, !DIExpression(), !14365)
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb), !dbg !14518
  %i.bd = fcmp oeq double %i.bc, +inf, !dbg !14518
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !dbg !14519, !prof !1429

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14520, !noalias !14454
  store i64 14, ptr %i.b, align 8, !dbg !14520, !noalias !14454
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !14521, !noalias !14453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14522, !noalias !14454
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14523
  store ptr %i.be, ptr %i.bf, align 8, !dbg !14523, !alias.scope !14453, !noalias !14455
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs3JBf551F2Kj_4qlog.exit, !dbg !14511

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs3JBf551F2Kj_4qlog.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ], !dbg !14524
  store i64 %storemerge.i, ptr %0, align 8, !dbg !14524, !alias.scope !14453, !noalias !14455
  br label %bb.q, !dbg !14525

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCs3JBf551F2Kj_4qlog.exit
  ret void, !dbg !14525

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.071, 214748364, !dbg !14526
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh, !dbg !14526
  br i1 %or.cond2, label %bb.t, label %bb.s, !dbg !14526, !prof !1948

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.071, 10, !dbg !14527
  %i.bj = add i32 %i.bi, %i.ah, !dbg !14528       ; 2 uses
    #dbg_value(i32 %i.bj, !14429, !DIExpression(), !14432)
    #dbg_value(i32 %i.bj, !14424, !DIExpression(), !14427)
    #dbg_value(i32 %i.bj, !14379, !DIExpression(), !14447)
    #dbg_value(ptr %i.e, !989, !DIExpression(), !14366)
  %exitcond.not = icmp eq i64 %i.ag, %i.j, !dbg !14484
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, !dbg !14484

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0, !dbg !14529
    #dbg_value(i1 %i.bk, !14386, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14456)
  tail call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #18, !dbg !14530
  br label %bb.q, !dbg !14531
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 !dbg !150 {
bb.a:
    #dbg_value(ptr %1, !957, !DIExpression(), !14541)
    #dbg_value(ptr %1, !976, !DIExpression(), !14543)
    #dbg_value(ptr %1, !979, !DIExpression(), !14545)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !14546, !noalias !14547, !noundef !594 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c, !dbg !14550
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !14550

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !14546, !noalias !14547, !nonnull !594, !noundef !594
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !14547, !noalias !14546
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b, !dbg !14550

._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !dbg !14551, !alias.scope !14547, !noalias !14546
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !14550

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14551
  store i8 0, ptr %i.i, align 1, !dbg !14551, !alias.scope !14547, !noalias !14546
  br label %bb.d, !dbg !14552

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14547), !dbg !14553
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14546), !dbg !14553
    #dbg_value(ptr %i.e, !989, !DIExpression(), !14536)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !14554
  %i.l = load i8, ptr %i.k, align 1, !dbg !14554, !noalias !14548, !noundef !594 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !14552

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14538)
  %i.m = add i64 %i.j, 1, !dbg !14555             ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !dbg !14555, !alias.scope !14549
    #dbg_value(ptr %1, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14536)
  %exitcond.not = icmp eq i64 %i.m, %i.c, !dbg !14550
  br i1 %exitcond.not, label %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b, !dbg !14550

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !dbg !14551, !alias.scope !14547, !noalias !14546
  br label %bb.d, !dbg !14556

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8, !dbg !14551
  ret void, !dbg !14556
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 !dbg !14569 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !14672, !DIExpression(), !14685)
    #dbg_value(ptr %0, !14686, !DIExpression(), !14691)
    #dbg_value(ptr %0, !14692, !DIExpression(), !14695)
    #dbg_value(ptr %0, !14696, !DIExpression(), !14701)
    #dbg_value(ptr %0, !14702, !DIExpression(), !14705)
    #dbg_value(ptr %0, !14702, !DIExpression(), !14707)
    #dbg_value(ptr %0, !14702, !DIExpression(), !14709)
    #dbg_value(ptr %0, !14702, !DIExpression(), !14711)
    #dbg_value(ptr %0, !14702, !DIExpression(), !14713)
    #dbg_value(ptr %0, !14696, !DIExpression(), !14715)
    #dbg_value(ptr %1, !14673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14685)
    #dbg_value(ptr %2, !14673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14685)
    #dbg_declare(ptr %i.m, !14678, !DIExpression(), !14716)
    #dbg_declare(ptr %i.l, !14680, !DIExpression(), !14717)
    #dbg_value(i8 1, !14698, !DIExpression(), !14701)
    #dbg_value(i8 0, !14698, !DIExpression(), !14715)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14786 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14718), !dbg !14787
    #dbg_value(ptr %i.q, !989, !DIExpression(), !14579)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14788 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !14788, !alias.scope !14718, !noalias !14719, !noundef !594 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14789
  %i.u = load i64, ptr %i.t, align 8, !dbg !14789, !alias.scope !14718, !noalias !14719, !noundef !594 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u, !dbg !14788
  br i1 %i.v, label %bb.b, label %.thread73, !dbg !14788

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !dbg !14790, !alias.scope !14718, !noalias !14719, !nonnull !594, !noundef !594
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s, !dbg !14790
  %i.y = load i8, ptr %i.x, align 1, !dbg !14790, !noalias !14720, !noundef !594 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !dbg !14791, !prof !14721

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48, !dbg !14792
  %or.cond = icmp ult i8 %i.z, 10, !dbg !14792
  br i1 %or.cond, label %bb.aj, label %.thread73, !dbg !14792, !prof !1858

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %i.q, !993, !DIExpression(), !14582)
  %i.aa = add nuw i64 %i.s, 1, !dbg !14793        ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !dbg !14793, !alias.scope !14722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14723), !dbg !14794
    #dbg_value(ptr %0, !1831, !DIExpression(), !14588)
    #dbg_value(ptr %0, !1850, !DIExpression(), !14590)
    #dbg_value(ptr poison, !1835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14588)
    #dbg_value(i64 3, !1835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14588)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14591)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14591)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !14723, !noalias !14724, !nonnull !594 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u), !dbg !14795
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14591)
    #dbg_value(ptr poison, !1838, !DIExpression(), !14593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14725), !dbg !14796
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14597)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u, !dbg !14797
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, !dbg !14797

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.q, !1854, !DIExpression(), !14597)
    #dbg_value(!DIArgList(ptr poison, i64 1), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14591)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa, !dbg !14798
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !14798, !noalias !14726, !noundef !594
    #dbg_value(i8 %i.ad, !1855, !DIExpression(), !14599)
  %i.ae = add nuw i64 %i.s, 2, !dbg !14799        ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !dbg !14799, !alias.scope !14727, !noalias !14728
    #dbg_value(i8 %i.ad, !1841, !DIExpression(), !14600)
  %.not.i = icmp eq i8 %i.ad, 117, !dbg !14800
  br i1 %.not.i, label %bb.f, label %bb.j, !dbg !14800, !prof !1858

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14591)
    #dbg_value(ptr poison, !1838, !DIExpression(), !14593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14729), !dbg !14796
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14597)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae, !dbg !14797
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g, !dbg !14797

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.q, !1854, !DIExpression(), !14597)
    #dbg_value(!DIArgList(ptr poison, i64 2), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14591)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae, !dbg !14798
  %i.ag = load i8, ptr %i.af, align 1, !dbg !14798, !noalias !14730, !noundef !594
    #dbg_value(i8 %i.ag, !1855, !DIExpression(), !14599)
  %i.ah = add i64 %i.s, 3, !dbg !14799            ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !dbg !14799, !alias.scope !14731, !noalias !14728
    #dbg_value(i8 %i.ag, !1841, !DIExpression(), !14600)
  %.not.i.1 = icmp eq i8 %i.ag, 108, !dbg !14800
  br i1 %.not.i.1, label %bb.h, label %bb.j, !dbg !14800, !prof !1858

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14591)
    #dbg_value(ptr poison, !1838, !DIExpression(), !14593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14732), !dbg !14796
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14597)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i, !dbg !14797
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i, !dbg !14797

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.q, !1854, !DIExpression(), !14597)
    #dbg_value(!DIArgList(ptr poison, i64 3), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14591)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah, !dbg !14798
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !14798, !noalias !14733, !noundef !594
    #dbg_value(i8 %i.aj, !1855, !DIExpression(), !14599)
  %i.ak = add i64 %i.s, 4, !dbg !14799
  store i64 %i.ak, ptr %i.r, align 8, !dbg !14799, !alias.scope !14734, !noalias !14728
    #dbg_value(i8 %i.aj, !1841, !DIExpression(), !14600)
  %.not.i.2 = icmp eq i8 %i.aj, 108, !dbg !14800
  br i1 %.not.i.2, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit, label %bb.j, !dbg !14800, !prof !1858

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14801, !noalias !14735
  store i64 5, ptr %i.f, align 8, !dbg !14801, !noalias !14735
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !dbg !14802, !noalias !14724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14803, !noalias !14735
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.thread, !dbg !14804

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14805, !noalias !14735
  store i64 9, ptr %i.e, align 8, !dbg !14805, !noalias !14735
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !14806, !noalias !14724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14807, !noalias !14735
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.thread, !dbg !14808

bb.k:                                             ; preds = %bb.b
    #dbg_value(ptr %i.q, !993, !DIExpression(), !14604)
  %i.an = add nuw i64 %i.s, 1, !dbg !14809        ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !dbg !14809, !alias.scope !14736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14737), !dbg !14810
    #dbg_value(ptr %0, !1831, !DIExpression(), !14610)
    #dbg_value(ptr %0, !1850, !DIExpression(), !14612)
    #dbg_value(ptr poison, !1835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14610)
    #dbg_value(i64 3, !1835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14610)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14613)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14613)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !14737, !noalias !14738, !nonnull !594 ; 3 uses
  %umax.i33 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u), !dbg !14811
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14613)
    #dbg_value(ptr poison, !1838, !DIExpression(), !14615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14739), !dbg !14812
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14619)
  %exitcond.not.i35.not = icmp ult i64 %i.an, %i.u, !dbg !14813
  br i1 %exitcond.not.i35.not, label %bb.l, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38, !dbg !14813

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %i.q, !1854, !DIExpression(), !14619)
    #dbg_value(!DIArgList(ptr poison, i64 1), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14613)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an, !dbg !14814
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !14814, !noalias !14740, !noundef !594
    #dbg_value(i8 %i.aq, !1855, !DIExpression(), !14621)
  %i.ar = add nuw i64 %i.s, 2, !dbg !14815        ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !dbg !14815, !alias.scope !14741, !noalias !14742
    #dbg_value(i8 %i.aq, !1841, !DIExpression(), !14622)
  %.not.i36 = icmp eq i8 %i.aq, 114, !dbg !14816
  br i1 %.not.i36, label %bb.m, label %bb.q, !dbg !14816, !prof !1858

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14613)
    #dbg_value(ptr poison, !1838, !DIExpression(), !14615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14743), !dbg !14812
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14619)
  %exitcond.not.i35.1 = icmp eq i64 %i.u, %i.ar, !dbg !14813
  br i1 %exitcond.not.i35.1, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38, label %bb.n, !dbg !14813

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %i.q, !1854, !DIExpression(), !14619)
    #dbg_value(!DIArgList(ptr poison, i64 2), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14613)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar, !dbg !14814
  %i.at = load i8, ptr %i.as, align 1, !dbg !14814, !noalias !14744, !noundef !594
    #dbg_value(i8 %i.at, !1855, !DIExpression(), !14621)
  %i.au = add i64 %i.s, 3, !dbg !14815            ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !dbg !14815, !alias.scope !14745, !noalias !14742
    #dbg_value(i8 %i.at, !1841, !DIExpression(), !14622)
  %.not.i36.1 = icmp eq i8 %i.at, 117, !dbg !14816
  br i1 %.not.i36.1, label %bb.o, label %bb.q, !dbg !14816, !prof !1858

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14613)
    #dbg_value(ptr poison, !1838, !DIExpression(), !14615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14746), !dbg !14812
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14619)
  %exitcond.not.i35.2 = icmp eq i64 %i.au, %umax.i33, !dbg !14813
  br i1 %exitcond.not.i35.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38, label %bb.p, !dbg !14813

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr %i.q, !1854, !DIExpression(), !14619)
    #dbg_value(!DIArgList(ptr poison, i64 3), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14613)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au, !dbg !14814
  %i.aw = load i8, ptr %i.av, align 1, !dbg !14814, !noalias !14747, !noundef !594
    #dbg_value(i8 %i.aw, !1855, !DIExpression(), !14621)
  %i.ax = add i64 %i.s, 4, !dbg !14815
  store i64 %i.ax, ptr %i.r, align 8, !dbg !14815, !alias.scope !14748, !noalias !14742
    #dbg_value(i8 %i.aw, !1841, !DIExpression(), !14622)
  %.not.i36.2 = icmp eq i8 %i.aw, 101, !dbg !14816
  br i1 %.not.i36.2, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit39, label %bb.q, !dbg !14816, !prof !1858

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14817, !noalias !14749
  store i64 5, ptr %i.d, align 8, !dbg !14817, !noalias !14749
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !14818, !noalias !14738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14819, !noalias !14749
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.thread, !dbg !14820

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14821, !noalias !14749
  store i64 9, ptr %i.c, align 8, !dbg !14821, !noalias !14749
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !14822, !noalias !14738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14823, !noalias !14749
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.thread, !dbg !14824

bb.r:                                             ; preds = %bb.b
    #dbg_value(ptr %i.q, !993, !DIExpression(), !14626)
  %i.ba = add nuw i64 %i.s, 1, !dbg !14825        ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !dbg !14825, !alias.scope !14750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14751), !dbg !14826
    #dbg_value(ptr %0, !1831, !DIExpression(), !14632)
    #dbg_value(ptr %0, !1850, !DIExpression(), !14634)
    #dbg_value(ptr poison, !1835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14632)
    #dbg_value(i64 4, !1835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14632)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14635)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14635)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !14751, !noalias !14752, !nonnull !594 ; 4 uses
  %umax.i41 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u), !dbg !14827 ; 2 uses
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14635)
    #dbg_value(ptr poison, !1838, !DIExpression(), !14637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14753), !dbg !14828
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14641)
  %exitcond.not.i43.not = icmp ult i64 %i.ba, %i.u, !dbg !14829
  br i1 %exitcond.not.i43.not, label %bb.s, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, !dbg !14829

bb.s:                                             ; preds = %bb.r
    #dbg_value(ptr %i.q, !1854, !DIExpression(), !14641)
    #dbg_value(!DIArgList(ptr poison, i64 1), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14635)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba, !dbg !14830
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !14830, !noalias !14754, !noundef !594
    #dbg_value(i8 %i.bd, !1855, !DIExpression(), !14643)
  %i.be = add nuw i64 %i.s, 2, !dbg !14831        ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !dbg !14831, !alias.scope !14755, !noalias !14756
    #dbg_value(i8 %i.bd, !1841, !DIExpression(), !14644)
  %.not.i44 = icmp eq i8 %i.bd, 97, !dbg !14832
  br i1 %.not.i44, label %bb.t, label %bb.z, !dbg !14832, !prof !1858

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14635)
    #dbg_value(ptr poison, !1838, !DIExpression(), !14637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14757), !dbg !14828
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14641)
  %exitcond.not.i43.1 = icmp eq i64 %i.u, %i.be, !dbg !14829
  br i1 %exitcond.not.i43.1, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, label %bb.u, !dbg !14829

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr %i.q, !1854, !DIExpression(), !14641)
    #dbg_value(!DIArgList(ptr poison, i64 2), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14635)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be, !dbg !14830
  %i.bg = load i8, ptr %i.bf, align 1, !dbg !14830, !noalias !14758, !noundef !594
    #dbg_value(i8 %i.bg, !1855, !DIExpression(), !14643)
  %i.bh = add i64 %i.s, 3, !dbg !14831            ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !dbg !14831, !alias.scope !14759, !noalias !14756
    #dbg_value(i8 %i.bg, !1841, !DIExpression(), !14644)
  %.not.i44.1 = icmp eq i8 %i.bg, 108, !dbg !14832
  br i1 %.not.i44.1, label %bb.v, label %bb.z, !dbg !14832, !prof !1858

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14635)
    #dbg_value(ptr poison, !1838, !DIExpression(), !14637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14760), !dbg !14828
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14641)
  %exitcond.not.i43.2 = icmp eq i64 %i.bh, %umax.i41, !dbg !14829
  br i1 %exitcond.not.i43.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, label %bb.w, !dbg !14829

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr %i.q, !1854, !DIExpression(), !14641)
    #dbg_value(!DIArgList(ptr poison, i64 3), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14635)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh, !dbg !14830
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !14830, !noalias !14761, !noundef !594
    #dbg_value(i8 %i.bj, !1855, !DIExpression(), !14643)
  %i.bk = add i64 %i.s, 4, !dbg !14831            ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !dbg !14831, !alias.scope !14762, !noalias !14756
    #dbg_value(i8 %i.bj, !1841, !DIExpression(), !14644)
  %.not.i44.2 = icmp eq i8 %i.bj, 115, !dbg !14832
  br i1 %.not.i44.2, label %bb.x, label %bb.z, !dbg !14832, !prof !1858

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14635)
    #dbg_value(ptr poison, !1838, !DIExpression(), !14637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14763), !dbg !14828
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14641)
  %exitcond.not.i43.3 = icmp eq i64 %i.bk, %umax.i41, !dbg !14829
  br i1 %exitcond.not.i43.3, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, label %bb.y, !dbg !14829

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr %i.q, !1854, !DIExpression(), !14641)
    #dbg_value(!DIArgList(ptr poison, i64 4), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14635)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk, !dbg !14830
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !14830, !noalias !14764, !noundef !594
    #dbg_value(i8 %i.bm, !1855, !DIExpression(), !14643)
  %i.bn = add i64 %i.s, 5, !dbg !14831
  store i64 %i.bn, ptr %i.r, align 8, !dbg !14831, !alias.scope !14765, !noalias !14756
    #dbg_value(i8 %i.bm, !1841, !DIExpression(), !14644)
  %.not.i44.3 = icmp eq i8 %i.bm, 101, !dbg !14832
  br i1 %.not.i44.3, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit47, label %bb.z, !dbg !14832, !prof !1858

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14833, !noalias !14766
  store i64 5, ptr %i.b, align 8, !dbg !14833, !noalias !14766
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !14834, !noalias !14752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14835, !noalias !14766
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.thread, !dbg !14836

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14837, !noalias !14766
  store i64 9, ptr %i.a, align 8, !dbg !14837, !noalias !14766
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14838, !noalias !14752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14839, !noalias !14766
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.thread, !dbg !14840

bb.aa:                                            ; preds = %bb.b
    #dbg_value(ptr %i.q, !993, !DIExpression(), !14649)
  %i.bq = add nuw i64 %i.s, 1, !dbg !14841
  store i64 %i.bq, ptr %i.r, align 8, !dbg !14841, !alias.scope !14767
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false), !dbg !14842
  %i.br = load i64, ptr %i.m, align 8, !dbg !14843, !range !14768, !noundef !594
  %i.bs = icmp eq i64 %i.br, -1, !dbg !14843
  br i1 %i.bs, label %bb.af, label %bb.ag, !dbg !14844, !prof !1419

bb.ab:                                            ; preds = %bb.b
    #dbg_value(ptr %i.q, !993, !DIExpression(), !14653)
  %i.bt = add nuw i64 %i.s, 1, !dbg !14845
  store i64 %i.bt, ptr %i.r, align 8, !dbg !14845, !alias.scope !14769
    #dbg_value(ptr %0, !14770, !DIExpression(), !14774)
    #dbg_value(ptr %0, !14775, !DIExpression(), !14778)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14846
    #dbg_value(ptr poison, !14771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14779)
    #dbg_value(i64 poison, !14771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14779)
  store i64 0, ptr %i.bu, align 8, !dbg !14847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14848
  call void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !14849
  %i.bv = load i64, ptr %i.k, align 8, !dbg !14848, !range !1469, !noundef !594
  %i.bw = icmp eq i64 %i.bv, 2, !dbg !14848
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14685
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !14685, !nonnull !594, !noundef !594 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !dbg !14850, !prof !1419

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14851
  store i8 10, ptr %i.i, align 8, !dbg !14851
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !14852
    #dbg_value(ptr %i.bz, !14674, !DIExpression(), !14780)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14853
  br label %bb.ae, !dbg !14853

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14854
  store i8 11, ptr %i.h, align 8, !dbg !14854
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !14855
    #dbg_value(ptr %i.ca, !14674, !DIExpression(), !14780)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14856
  br label %bb.ae, !dbg !14856

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit: ; preds = %bb.i
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !14857
  store i8 7, ptr %i.p, align 8, !dbg !14857
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !14858
    #dbg_value(ptr %i.cb, !14674, !DIExpression(), !14780)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !14859
  br label %bb.ae, !dbg !14859

bb.ae:                                            ; preds = %bb.al, %.thread73, %bb.ai, %bb.ag, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit47, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit39, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread73 ], [ %i.cb, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit ], [ %i.ce, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit39 ], [ %i.cg, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit47 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ], !dbg !14685
    #dbg_value(ptr %.sroa.02.0, !14674, !DIExpression(), !14780)
    #dbg_value(ptr %0, !1432, !DIExpression(), !14660)
    #dbg_value(ptr %.sroa.02.0, !1436, !DIExpression(), !14660)
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs3JBf551F2Kj_4qlog(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0), !dbg !14860
    #dbg_value(ptr %i.cc, !14675, !DIExpression(), !14781)
    #dbg_value(ptr %i.cc, !14676, !DIExpression(), !14782)
    #dbg_value(ptr %i.cc, !14677, !DIExpression(), !14783)
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.thread, !dbg !14861

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit39: ; preds = %bb.p
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !14862
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !14862
  store i8 1, ptr %i.cd, align 1, !dbg !14862
  store i8 0, ptr %i.o, align 8, !dbg !14862
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !14863
    #dbg_value(ptr %i.ce, !14674, !DIExpression(), !14780)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !14864
  br label %bb.ae, !dbg !14864

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit47: ; preds = %bb.y
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !14865
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !14865
  store i8 0, ptr %i.cf, align 1, !dbg !14865
  store i8 0, ptr %i.n, align 8, !dbg !14865
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !14866
    #dbg_value(ptr %i.cg, !14674, !DIExpression(), !14780)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !14867
  br label %bb.ae, !dbg !14867

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !14868
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !14868, !nonnull !594, !align !1416, !noundef !594
    #dbg_value(ptr %i.ci, !14675, !DIExpression(), !14781)
    #dbg_value(ptr %i.ci, !14676, !DIExpression(), !14782)
    #dbg_value(ptr %i.ci, !14677, !DIExpression(), !14783)
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.thread, !dbg !14869

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !14870
    #dbg_value(ptr %i.cj, !14674, !DIExpression(), !14780)
  br label %bb.ae, !dbg !14871

bb.ah:                                            ; preds = %bb.ab
    #dbg_value(ptr %i.by, !14675, !DIExpression(), !14781)
    #dbg_value(ptr %i.by, !14676, !DIExpression(), !14782)
    #dbg_value(ptr %i.by, !14677, !DIExpression(), !14783)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14872
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs3JBf551F2Kj_4qlog.exit.thread, !dbg !14869

bb.ai:                                            ; preds = %bb.ab
    #dbg_value(i64 %i.bv, !14682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14785)
end_hunk_2
begin_hunk_3_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs3JBf551F2Kj_4qlog:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15275
  store i64 21, ptr %i.c, align 8, !dbg !15275
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !15276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15277
  br label %bb.g, !dbg !15278

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ], !dbg !15246
  ret ptr %.sroa.0.0, !dbg !15279
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15282 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !15329, !DIExpression(), !15333)
    #dbg_value(ptr %0, !15334, !DIExpression(), !15337)
    #dbg_value(ptr %0, !15334, !DIExpression(), !15339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15340), !dbg !15353
    #dbg_value(ptr %0, !957, !DIExpression(), !15287)
    #dbg_value(ptr %0, !976, !DIExpression(), !15289)
    #dbg_value(ptr %0, !979, !DIExpression(), !15291)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !15341, !noalias !15342, !noundef !594 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !15340, !noalias !15343 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g, !dbg !15354
  br i1 %i.h, label %.lr.ph.i, label %.loopexit, !dbg !15354

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !15341, !noalias !15342, !nonnull !594, !noundef !594 ; 2 uses
  br label %bb.b, !dbg !15354

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15344), !dbg !15355
    #dbg_value(ptr %i.i, !989, !DIExpression(), !15297)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k, !dbg !15356
  %i.m = load i8, ptr %i.l, align 1, !dbg !15356, !noalias !15345, !noundef !594
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !dbg !15357, !prof !1425

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %0, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15299)
  %i.n = add i64 %i.k, 1, !dbg !15358             ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !dbg !15358, !alias.scope !15346, !noalias !15343
    #dbg_value(ptr %0, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15297)
  %exitcond.not.i = icmp eq i64 %i.n, %i.g, !dbg !15354
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b, !dbg !15354

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15359
  store i64 2, ptr %i.a, align 8, !dbg !15359
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15361
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECs3JBf551F2Kj_4qlog.exit19, !dbg !15362

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15363
  store i64 22, ptr %i.b, align 8, !dbg !15363
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !15364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15365
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECs3JBf551F2Kj_4qlog.exit19, !dbg !15366

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15303)
  %i.q = add i64 %i.k, 1, !dbg !15367
  store i64 %i.q, ptr %i.e, align 8, !dbg !15367, !alias.scope !15347
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECs3JBf551F2Kj_4qlog.exit19, !dbg !15368

bb.f:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15307)
  %i.r = add i64 %i.k, 1, !dbg !15369             ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !dbg !15369, !alias.scope !15348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15349), !dbg !15370
    #dbg_value(ptr %0, !957, !DIExpression(), !15313)
    #dbg_value(ptr %0, !976, !DIExpression(), !15315)
    #dbg_value(ptr %0, !979, !DIExpression(), !15317)
  %i.s = icmp ult i64 %i.r, %i.g, !dbg !15371
  br i1 %i.s, label %.lr.ph.i14, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit18.thread, !dbg !15371

.lr.ph.i14:                                       ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
    #dbg_value(ptr %0, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15319)
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t, !dbg !15372
  %i.v = load i8, ptr %i.u, align 1, !dbg !15372, !noalias !15350, !noundef !594
  switch i8 %i.v, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit18.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ], !dbg !15373

bb.g:                                             ; preds = %.lr.ph.i14, %.lr.ph.i14, %.lr.ph.i14, %.lr.ph.i14
    #dbg_value(ptr %0, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15325)
  %i.w = add i64 %i.t, 1, !dbg !15374             ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !dbg !15374, !alias.scope !15351, !noalias !15352
    #dbg_value(ptr %0, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15319)
  %exitcond.not.i15 = icmp eq i64 %i.w, %i.g, !dbg !15371
  br i1 %exitcond.not.i15, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit18.thread, label %.lr.ph.i14, !dbg !15371

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit18.thread: ; preds = %.lr.ph.i14, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15375
  store i64 22, ptr %i.c, align 8, !dbg !15375
  %i.x = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !15376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15377
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECs3JBf551F2Kj_4qlog.exit19, !dbg !15378

bb.h:                                             ; preds = %.lr.ph.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15379
  store i64 21, ptr %i.d, align 8, !dbg !15379
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !15380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15381
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECs3JBf551F2Kj_4qlog.exit19, !dbg !15382

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECs3JBf551F2Kj_4qlog.exit19: ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit18.thread, %bb.h, %.loopexit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %i.o, %.loopexit ], [ %i.x, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs3JBf551F2Kj_4qlog.exit18.thread ], [ %i.y, %bb.h ], !dbg !15333
  ret ptr %.sroa.0.0, !dbg !15383
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsc_NtCsenfyI6F4F2A_10serde_json2deINtB5_13VariantAccessNtNtB7_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de13VariantAccess12unit_variantCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15384 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !15451, !DIExpression(), !15453)
    #dbg_value(ptr %0, !15454, !DIExpression(), !15458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15459), !dbg !15501
    #dbg_value(ptr %0, !15460, !DIExpression(), !15399)
    #dbg_value(ptr %0, !15476, !DIExpression(), !15402)
    #dbg_declare(ptr %i.a, !15463, !DIExpression(), !15403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15478), !dbg !15502
    #dbg_value(ptr %0, !957, !DIExpression(), !15407)
    #dbg_value(ptr %0, !976, !DIExpression(), !15409)
    #dbg_value(ptr %0, !979, !DIExpression(), !15411)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !15479, !noalias !15480, !noundef !594 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !15481, !noalias !15482 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g, !dbg !15503
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i, !dbg !15503

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !15479, !noalias !15480, !nonnull !594, !noundef !594 ; 4 uses
  br label %bb.b, !dbg !15503

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15483), !dbg !15504
    #dbg_value(ptr %i.i, !989, !DIExpression(), !15417)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k, !dbg !15505
  %i.m = load i8, ptr %i.l, align 1, !dbg !15505, !noalias !15484, !noundef !594
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !dbg !15506, !prof !1428

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %0, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15419)
  %i.n = add i64 %i.k, 1, !dbg !15507             ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !dbg !15507, !alias.scope !15485, !noalias !15482
    #dbg_value(ptr %0, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15417)
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g, !dbg !15503
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b, !dbg !15503

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15508, !noalias !15459
  store i64 5, ptr %i.d, align 8, !dbg !15508, !noalias !15459
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !15509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15510, !noalias !15459
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECs3JBf551F2Kj_4qlog.exit, !dbg !15511

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %i.i, !993, !DIExpression(), !15423)
  %i.p = add i64 %i.k, 1, !dbg !15512             ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !dbg !15512, !alias.scope !15487
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15488), !dbg !15513
    #dbg_value(ptr %0, !1831, !DIExpression(), !15429)
    #dbg_value(ptr %0, !1850, !DIExpression(), !15431)
    #dbg_value(ptr poison, !1835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15429)
    #dbg_value(i64 3, !1835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15429)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15432)
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15432)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.g), !dbg !15514 ; 2 uses
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15432)
    #dbg_value(ptr poison, !1838, !DIExpression(), !15433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15489), !dbg !15515
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15437)
  %exitcond.not.i14.not.i = icmp ult i64 %i.p, %i.g, !dbg !15516
  br i1 %exitcond.not.i14.not.i, label %bb.e, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, !dbg !15516

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.i, !1854, !DIExpression(), !15437)
    #dbg_value(!DIArgList(ptr poison, i64 1), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15432)
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p, !dbg !15517
  %i.r = load i8, ptr %i.q, align 1, !dbg !15517, !noalias !15490, !noundef !594
    #dbg_value(i8 %i.r, !1855, !DIExpression(), !15440)
  %i.s = add i64 %i.k, 2, !dbg !15518             ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !dbg !15518, !alias.scope !15491, !noalias !15492
    #dbg_value(i8 %i.r, !1841, !DIExpression(), !15441)
  %.not.i.i = icmp eq i8 %i.r, 117, !dbg !15519
  br i1 %.not.i.i, label %bb.f, label %bb.j, !dbg !15519, !prof !1858

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15432)
    #dbg_value(ptr poison, !1838, !DIExpression(), !15433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15493), !dbg !15515
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15437)
  %exitcond.not.i14.1.i = icmp eq i64 %i.s, %umax.i.i, !dbg !15516
  br i1 %exitcond.not.i14.1.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.g, !dbg !15516

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.i, !1854, !DIExpression(), !15437)
    #dbg_value(!DIArgList(ptr poison, i64 2), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15432)
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s, !dbg !15517
  %i.u = load i8, ptr %i.t, align 1, !dbg !15517, !noalias !15494, !noundef !594
    #dbg_value(i8 %i.u, !1855, !DIExpression(), !15440)
  %i.v = add i64 %i.k, 3, !dbg !15518             ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !dbg !15518, !alias.scope !15495, !noalias !15492
    #dbg_value(i8 %i.u, !1841, !DIExpression(), !15441)
  %.not.i.1.i = icmp eq i8 %i.u, 108, !dbg !15519
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !dbg !15519, !prof !1858

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !1836, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15432)
    #dbg_value(ptr poison, !1838, !DIExpression(), !15433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15496), !dbg !15515
    #dbg_value(ptr %0, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15437)
  %exitcond.not.i14.2.i = icmp eq i64 %i.v, %umax.i.i, !dbg !15516
  br i1 %exitcond.not.i14.2.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.i, !dbg !15516

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.i, !1854, !DIExpression(), !15437)
    #dbg_value(!DIArgList(ptr poison, i64 3), !1836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15432)
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v, !dbg !15517
  %i.x = load i8, ptr %i.w, align 1, !dbg !15517, !noalias !15497, !noundef !594
    #dbg_value(i8 %i.x, !1855, !DIExpression(), !15440)
  %i.y = add i64 %i.k, 4, !dbg !15518
  store i64 %i.y, ptr %i.e, align 8, !dbg !15518, !alias.scope !15498, !noalias !15492
    #dbg_value(i8 %i.x, !1841, !DIExpression(), !15441)
  %.not.i.2.i = icmp eq i8 %i.x, 108, !dbg !15519
  br i1 %.not.i.2.i, label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECs3JBf551F2Kj_4qlog.exit, label %bb.j, !dbg !15519, !prof !1858

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15520, !noalias !15499
  store i64 5, ptr %i.c, align 8, !dbg !15520, !noalias !15499
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !15521, !noalias !15500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15522, !noalias !15499
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECs3JBf551F2Kj_4qlog.exit, !dbg !15523

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15524, !noalias !15499
  store i64 9, ptr %i.b, align 8, !dbg !15524, !noalias !15499
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !15525, !noalias !15500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15526, !noalias !15499
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECs3JBf551F2Kj_4qlog.exit, !dbg !15527

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35), !dbg !15528
    #dbg_value(ptr %i.ab, !15468, !DIExpression(), !15444)
    #dbg_value(ptr %i.ab, !15472, !DIExpression(), !15445)
    #dbg_value(ptr %0, !1432, !DIExpression(), !15447)
    #dbg_value(ptr %i.ab, !1436, !DIExpression(), !15447)
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs3JBf551F2Kj_4qlog(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0), !dbg !15529
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECs3JBf551F2Kj_4qlog.exit, !dbg !15530

_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECs3JBf551F2Kj_4qlog.exit: ; preds = %.loopexit.i, %bb.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, %bb.j, %bb.k
  %.sroa.0.2.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ null, %bb.i ], !dbg !15531
  ret ptr %.sroa.0.2.i, !dbg !15532
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvCs3JBf551F2Kj_4qlogs1_1__NtB5_7QlogSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1K_4read9SliceReadEEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([352 x i8]) align 8 captures(address) dereferenceable(352), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvYNtNtCsenfyI6F4F2A_10serde_json5error5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error15duplicate_fieldCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCs3JBf551F2Kj_4qlogs5_1__NtB3f_8TraceSeqNtB28_11Deserialize11deserialize9___VisitorEB3f_(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs9xKKqPmwf7Y_10serde_core2deReNtB5_8Expected3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvYNtNtCsenfyI6F4F2A_10serde_json5error5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error14invalid_lengthCs3JBf551F2Kj_4qlog(i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtB3y_6string6StringEECs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCs3JBf551F2Kj_4qlogs9_1__NtB3f_16VantagePointTypeNtB28_11Deserialize11deserialize9___VisitorEB3f_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCs3JBf551F2Kj_4qlogsd_1__NtB3f_13ReferenceTimeNtB28_11Deserialize11deserialize9___VisitorEB3f_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1q_6string6StringEENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2R_4read9SliceReadEECs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2u_4read9SliceReadEEB1n_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog12CommonFieldsENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2w_4read9SliceReadEEB1n_(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog12VantagePointENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2w_4read9SliceReadEEB1n_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog16VantagePointTypeENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2A_4read9SliceReadEEB1n_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2z_4read9SliceReadEECs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsh_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2d_4read9SliceReadEECs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvCs3JBf551F2Kj_4qlogsd_1__NtB5_13ReferenceTimeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1R_4read9SliceReadEEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvCs3JBf551F2Kj_4qlogs9_1__NtB5_16VantagePointTypeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1U_4read9SliceReadEEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvCs3JBf551F2Kj_4qlogs5_1__NtB5_8TraceSeqNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1L_4read9SliceReadEEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(address) dereferenceable(256), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXsh_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtBR_6string6StringENtBb_7Visitor9visit_seqINtNtCsenfyI6F4F2A_10serde_json2de9SeqAccessNtNtB2W_4read9SliceReadEECs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs9xKKqPmwf7Y_10serde_core2deINtNvXsh_NtB4_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtNtBY_6string6StringENtB4_8Expected3fmtCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECs3JBf551F2Kj_4qlog(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs9xKKqPmwf7Y_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXNvCs3JBf551F2Kj_4qlogs9_1__NtB8_16VantagePointTypeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBW_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0
end_hunk_3
