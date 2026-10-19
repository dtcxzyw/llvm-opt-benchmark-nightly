Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/find_msvc_tools-762109e8b810eaf1.find_msvc_tools.2d7dcf19d5894587-cgu.0?download=true
inline.NumInlined: 322
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 15 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [56 x i8], align 8                ; 5 uses
  switch i64 %2, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit [
    i64 3, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit.i
    i64 6, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit3.i
    i64 5, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit6.i
    i64 7, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit9.i
    i64 4, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit18.i
    i64 8, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit27.i
  ]

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.a
  %i.p = load i16, ptr %1, align 1
  %i.q = xor i16 %i.p, 13944
  %i.r = getelementptr i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i16
  %i.u = xor i16 %i.t, 52
  %i.v = or i16 %i.q, %i.u
  %i.w = icmp ne i16 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %select.unfold, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit15.i

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit3.i: ; preds = %bb.a
  %i.z = load i32, ptr %1, align 1
  %i.aa = xor i32 %i.z, 1597388920
  %i.ab = getelementptr i8, ptr %1, i64 4
  %i.ac = load i16, ptr %i.ab, align 1
  %i.ad = zext i16 %i.ac to i32
  %i.ae = xor i32 %i.ad, 13366
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %select.unfold, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit6.i: ; preds = %bb.a
  %i.aj = load i32, ptr %1, align 1
  %i.ak = xor i32 %i.aj, 913142369
  %i.al = getelementptr i8, ptr %1, i64 4
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = xor i32 %i.an, 52
  %i.ap = or i32 %i.ak, %i.ao
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %select.unfold, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit9.i: ; preds = %bb.a
  %i.at = load i32, ptr %1, align 1
  %i.au = xor i32 %i.at, 1668440417
  %i.av = getelementptr i8, ptr %1, i64 3
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = xor i32 %i.aw, 875980899
  %i.ay = or i32 %i.au, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %select.unfold, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit12.i

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit12.i: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit9.i
  %i.bc = load i32, ptr %1, align 1
  %i.bd = xor i32 %i.bc, 913142369
  %i.be = getelementptr i8, ptr %1, i64 3
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 1667576886
  %i.bh = or i32 %i.bd, %i.bg
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %select.unfold, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit15.i: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit.i
  %i.bl = load i16, ptr %1, align 1
  %i.bm = xor i16 %i.bl, 14456
  %i.bn = getelementptr i8, ptr %1, i64 2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i16
  %i.bq = xor i16 %i.bp, 54
  %i.br = or i16 %i.bm, %i.bq
  %i.bs = icmp ne i16 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %select.unfold, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit24.i

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit18.i: ; preds = %bb.a
  %i.bv = load i32, ptr %1, align 1
  %i.bw = icmp ne i32 %i.bv, 909653609
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %select.unfold, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit21.i

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit21.i: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit18.i
  %i.bz = load i32, ptr %1, align 1
  %i.ca = icmp ne i32 %i.bz, 909653353
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %select.unfold, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit24.i: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit15.i
  %i.cd = load i16, ptr %1, align 1
  %i.ce = xor i16 %i.cd, 29281
  %i.cf = getelementptr i8, ptr %1, i64 2
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i16
  %i.ci = xor i16 %i.ch, 109
  %i.cj = or i16 %i.ce, %i.ci
  %i.ck = icmp ne i16 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %select.unfold, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit27.i: ; preds = %bb.a
  %i.cn = load i64, ptr %1, align 1
  %i.co = icmp ne i64 %i.cn, 7005197910513379444
  %i.cp = zext i1 %i.co to i32
  %bcmp.i26.fr.i = freeze i32 %i.cp
  %i.cq = icmp eq i32 %bcmp.i26.fr.i, 0
  br i1 %i.cq, label %select.unfold, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

select.unfold:                                    ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit27.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit24.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit6.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit12.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit15.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit3.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit9.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit21.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit18.i
  %i.cr = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @18, i64 7) #32
  br i1 %i.cr, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %bb.b

bb.b:                                             ; preds = %select.unfold
  %i.cs = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @19, i64 6) #32
  br i1 %i.cs, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.ct = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @20, i64 5) #32
  br i1 %i.ct, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.cu = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @21, i64 4) #32
  br i1 %i.cu, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.cv = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @22, i64 4) #32
  br i1 %i.cv, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.cw = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @23, i64 2) #32
  br i1 %i.cw, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.cx = tail call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %3, i64 %4, ptr nonnull @24, i64 3) #32
  br i1 %i.cx, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit: ; preds = %.preheader.4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %3, ptr %i.n, align 8, !noalias !80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %4, ptr %i.cy, align 8, !noalias !80
  store ptr %5, ptr %i.m, align 8, !noalias !80
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %6, ptr %i.cz, align 8, !noalias !80
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !invariant.load !5, !noalias !80, !nonnull !5 ; 2 uses
  call void %i.db(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr %5, ptr nonnull @27, i64 12) #32, !noalias !80, !inline_history !77
  %i.dc = load i64, ptr %i.k, align 8, !noalias !80 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dc, -2
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit
  store i64 -1, ptr %i.o, align 8, !alias.scope !80
  br label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.d:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env0EB1I_.exit
  %.sroa.4.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx16.i, i64 16, i1 false), !noalias !80
  store i64 %i.dc, ptr %i.l, align 8, !noalias !80
  invoke void %i.db(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr %5, ptr nonnull @28, i64 12)
          to label %bb.f unwind label %bb.e, !noalias !80

.body.i:                                          ; preds = %bb.o, %7, %bb.e
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %7 ], [ %i.dd, %bb.e ], [ %i.dm, %bb.o ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_(ptr nonnull align 8 %i.l) #35
          to label %common.resume.i unwind label %bb.x, !noalias !80

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i, %bb.d
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.d
  %i.de = load i64, ptr %i.i, align 8, !noalias !80 ; 2 uses
  %.not.i2.i = icmp eq i64 %i.de, -2
  br i1 %.not.i2.i, label %bb.y, label %bb.g

.loopexit.i:                                      ; preds = %bb.h, %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %7

.loopexit.split-lp.i:                             ; preds = %bb.l, %bb.k
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %7

7:                                                ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_(ptr nonnull align 8 %i.j) #35
          to label %.body.i unwind label %bb.x, !noalias !80

bb.g:                                             ; preds = %bb.f
  %.sroa.420.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.223.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx21.i, i64 16, i1 false), !noalias !80
  store i64 %i.de, ptr %i.j, align 8, !noalias !80
  store ptr %i.n, ptr %i.h, align 8, !noalias !80
  %i.df = load i64, ptr %i.l, align 8, !noalias !80
  %i.dg = icmp eq i64 %i.df, -1
  %i.dh = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !80
  %.pn6.idx.i.i.i = select i1 %i.dg, i64 16, i64 0
  %.pn6.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.pn6.idx.i.i.i
  %.pn4.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pn4.i.i.i = load i64, ptr %.pn4.in.i.i.i, align 8, !noalias !80
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !80
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.pn6.i.i.i, ptr %i.di, align 8, !noalias !82
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.pn4.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !82
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %.sroa.32.0..sroa_idx.i.i, align 8, !noalias !82
  store ptr %i.n, ptr %i.e, align 8, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !82
  store ptr %i.e, ptr %i.d, align 8, !noalias !82
  br label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i

_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i: ; preds = %.noexc4.i, %bb.g
  invoke void @_RNvXs6_NtCsaL1QbXo9JQH_3std3envNtB5_10SplitPathsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.di)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !80

.noexc.i:                                         ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i
  %i.dj = load i64, ptr %i.c, align 8, !noalias !82
  %.not.i.i.i.i.i = icmp eq i64 %i.dj, -1
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !82
  invoke void @_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCsaL1QbXo9JQH_3std4path7PathBufBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCNCNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkBZ_NCB2n_s_0E0E0B2v_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.a) #32
          to label %.noexc4.i unwind label %.loopexit.i, !noalias !80

.noexc4.i:                                        ; preds = %bb.h
  %i.dk = load i64, ptr %i.b, align 8, !noalias !82 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dk, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtB4_9try_trait3Try6branchCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc4.i
  %.sroa.4.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx3.i.i.i.i.i, i64 16, i1 false), !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82
  store i64 %i.dk, ptr %i.f, align 8, !alias.scope !81, !noalias !80
  %.sroa.2.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.2.0..sroa_idx.i1.i.i, align 8, !alias.scope !81, !noalias !80
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !81, !noalias !80
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !81, !noalias !80
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !81, !noalias !80
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82
  store i64 -1, ptr %i.f, align 8, !alias.scope !81, !noalias !80
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !80
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtNtBM_10find_tools5impl_21find_msvc_environments_0EBM_(ptr nonnull sret([56 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %.loopexit.split-lp.i, !noalias !80

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtNtBM_10find_tools5impl_21find_msvc_environments0_0EBM_(ptr nonnull sret([56 x i8]) align 8 %i.o, ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.h)
          to label %bb.m unwind label %.loopexit.split-lp.i

bb.m:                                             ; preds = %bb.l
  %i.dl = load i64, ptr %i.j, align 8, !noalias !80
  %.not.i5.i = icmp eq i64 %i.dl, -1
  br i1 %.not.i5.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i unwind label %bb.o, !noalias !80

bb.o:                                             ; preds = %bb.n
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.j)
          to label %.body.i unwind label %bb.p, !noalias !80

bb.p:                                             ; preds = %bb.o
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !80
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i unwind label %bb.e, !noalias !80

bb.q:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %.sroa.223.0..sroa_idx.i, align 8, !noalias !80
  %i.dp = atomicrmw sub ptr %i.do, i64 1 release, align 8, !noalias !80
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %.sroa.223.0..sroa_idx.i) #36, !noalias !80
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i: ; preds = %bb.r, %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  %i.dr = load i64, ptr %i.l, align 8, !noalias !80
  %.not.i7.i = icmp eq i64 %i.dr, -1
  br i1 %.not.i7.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i9.i unwind label %bb.t, !noalias !80

bb.t:                                             ; preds = %bb.s
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l)
          to label %common.resume.i unwind label %bb.u, !noalias !80

bb.u:                                             ; preds = %bb.t
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !80
  unreachable

common.resume.i:                                  ; preds = %bb.aa, %bb.t, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dz, %bb.aa ], [ %i.ds, %bb.t ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i9.i: ; preds = %bb.s
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l), !noalias !80
  br label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit.i
  %i.du = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !80
  %i.dv = atomicrmw sub ptr %i.du, i64 1 release, align 8, !noalias !80
  %i.dw = icmp eq i64 %i.dv, 1
  br i1 %i.dw, label %bb.w, label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %.sroa.2.0..sroa_idx.i) #36, !noalias !80
  br label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.x:                                             ; preds = %7, %.body.i
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !80
  unreachable

bb.y:                                             ; preds = %bb.f
  store i64 -1, ptr %i.o, align 8, !alias.scope !80
  %i.dy = load i64, ptr %i.l, align 8, !noalias !80
  %.not.i11.i = icmp eq i64 %i.dy, -1
  br i1 %.not.i11.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i13.i unwind label %bb.aa, !noalias !80

bb.aa:                                            ; preds = %bb.z
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l)
          to label %common.resume.i unwind label %bb.ab, !noalias !80

bb.ab:                                            ; preds = %bb.aa
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !80
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i13.i: ; preds = %bb.z
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.l), !noalias !80
  br label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.ac:                                            ; preds = %bb.y
  %i.eb = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !80
  %i.ec = atomicrmw sub ptr %i.eb, i64 1 release, align 8, !noalias !80
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ad, label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull readonly align 8 %.sroa.2.0..sroa_idx.i) #36, !noalias !80
  br label %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit

_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i9.i, %bb.v, %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i13.i, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ee = load i64, ptr %i.o, align 8             ; 2 uses
  %.not.i = icmp eq i64 %i.ee, -1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit, label %bb.ae

bb.ae:                                            ; preds = %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, i64 48, i1 false)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_.exit: ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit, %bb.b, %select.unfold, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit27.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit24.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit21.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit12.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit6.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit3.i, %bb.a, %bb.ae
  %.sink = phi i64 [ %i.ee, %bb.ae ], [ -1, %bb.b ], [ -1, %_RNvNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools5impl_21find_msvc_environment.exit ], [ -1, %select.unfold ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit27.i ], [ -1, %bb.a ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit3.i ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit6.i ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit12.i ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit21.i ], [ -1, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit24.i ], [ -1, %.preheader.4 ], [ -1, %.preheader.3 ], [ -1, %.preheader.2 ], [ -1, %.preheader.1 ], [ -1, %.preheader.preheader ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools4find(ptr nofree writeonly sret([200 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.a, ptr %1, i64 %2, ptr nonnull @25, i64 1)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs3U9i7nQCKwt_15find_msvc_tools(ptr noalias align 8 %i.b, ptr align 8 %i.a) #32
  %i.d = load i64, ptr %i.b, align 8
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = sub nuw i64 %2, %i.i
  %i.l = call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull %i.j, i64 %i.k, ptr nonnull @26, i64 4) #32
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  br label %_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools9find_tool.exit

bb.d:                                             ; preds = %bb.b, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i
  %.sroa.3.0.i = phi i64 [ %2, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i ], [ %i.g, %bb.b ], [ %2, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i ]
  %.sroa.0.0.i = phi ptr [ null, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.i ], [ %1, %bb.b ], [ %1, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i ]
  call void @_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env(ptr nonnull sret([56 x i8]) align 8 %i.c, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i, ptr %3, i64 %4, ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull align 8 @17)
  br label %_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools9find_tool.exit

_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools9find_tool.exit: ; preds = %bb.c, %bb.d
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE3mapNtNtCsaL1QbXo9JQH_3std7process7CommandNCNvNtBM_10find_tools4find0EBM_(ptr sret([200 x i8]) align 8 %0, ptr nonnull align 8 %i.c) #32
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools9find_tool(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.a, ptr %1, i64 %2, ptr nonnull @25, i64 1)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs3U9i7nQCKwt_15find_msvc_tools(ptr noalias align 8 %i.b, ptr align 8 %i.a) #32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = sub nuw i64 %2, %i.h
  %i.k = call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull %i.i, i64 %i.j, ptr nonnull @26, i64 4) #32
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit
  %.sroa.3.0 = phi i64 [ %2, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit ], [ %i.f, %bb.b ], [ %2, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread ]
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit ], [ %1, %bb.b ], [ %1, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools.exit.thread ]
  call void @_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools18find_tool_with_env(ptr sret([56 x i8]) align 8 %0, ptr %.sroa.0.0, i64 %.sroa.3.0, ptr %3, i64 %4, ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull align 8 @17)
  br label %bb.d
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #18 {
bb.a:
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_nounwind_fmt(ptr nonnull @29, ptr nonnull inttoptr (i64 399 to ptr), i1 zeroext false, ptr align 8 %0) #40
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB2_5AsRefBw_E6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB2_5AsRefNtNtNtBA_3ffi6os_str5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.val1, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtB2_5AsRefNtBy_5OsStrE6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
end_hunk_0
