Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_color-1d697e6a0cff9662.fish_color.99c63356aa944a30-cgu.0?download=true
inline.NumInlined: 99
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color9from_wstr:bb.a
  %i.m = icmp eq i8 %i.l, 1
  %i.n = select i1 %i.m, i64 0, i64 11, !unpredictable !5 ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 5                  ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.o ; 2 uses
  %.val13.1.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !181, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val14.1.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !181, !noundef !5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val13.1.i.i.i.i, i64 %.val14.1.i.i.i.i
  %i.s = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %.val13.1.i.i.i.i, ptr noundef nonnull readonly %i.r, ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j)
  %i.t = icmp eq i8 %i.s, 1
  %i.u = select i1 %i.t, i64 %i.n, i64 %i.o, !unpredictable !5 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 3                  ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.v ; 2 uses
  %.val13.2.i.i.i.i = load ptr, ptr %i.w, align 8, !noalias !181, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val14.2.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !181, !noundef !5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val13.2.i.i.i.i, i64 %.val14.2.i.i.i.i
  %i.z = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %.val13.2.i.i.i.i, ptr noundef nonnull readonly %i.y, ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j)
  %i.aa = icmp eq i8 %i.z, 1
  %i.ab = select i1 %i.aa, i64 %i.u, i64 %i.v, !unpredictable !5 ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.ac ; 2 uses
  %.val13.3.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !181, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val14.3.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !181, !noundef !5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val13.3.i.i.i.i, i64 %.val14.3.i.i.i.i
  %i.ag = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %.val13.3.i.i.i.i, ptr noundef nonnull readonly %i.af, ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j)
  %i.ah = icmp eq i8 %i.ag, 1
  %i.ai = select i1 %i.ah, i64 %i.ab, i64 %i.ac, !unpredictable !5 ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.aj ; 2 uses
  %.val13.4.i.i.i.i = load ptr, ptr %i.ak, align 8, !noalias !181, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val14.4.i.i.i.i = load i64, ptr %i.al, align 8, !noalias !181, !noundef !5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val13.4.i.i.i.i, i64 %.val14.4.i.i.i.i
  %i.an = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %.val13.4.i.i.i.i, ptr noundef nonnull readonly %i.am, ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j)
  %i.ao = icmp eq i8 %i.an, 1
  %i.ap = select i1 %i.ao, i64 %i.ai, i64 %i.aj, !unpredictable !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.ap ; 2 uses
  %.val17.i.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !181, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val18.i.i.i.i = load i64, ptr %i.ar, align 8, !noalias !181, !noundef !5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val17.i.i.i.i, i64 %.val18.i.i.i.i
  %i.at = tail call fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr noundef nonnull readonly align 4 %.val17.i.i.i.i, ptr noundef nonnull readonly %i.as, ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.j) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.at, 0
  %i.au = icmp eq i8 %i.at, -1
  %i.av = zext i1 %i.au to i64
  %i.aw = add nuw nsw i64 %i.ap, %i.av            ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit.thread15

bb.c:                                             ; preds = %bb.b
  %i.ax = icmp samesign ult i64 %i.aw, 22
  br i1 %i.ax, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 22, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #19, !noalias !182
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit: ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr @44, i64 %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !noalias !182, !noundef !5
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = or disjoint i32 %i.bc, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstrs_0EBK_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit.thread15: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.be = icmp eq i64 %1, 0
  br i1 %i.be, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstrs_0EBK_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit.thread15
  %i.bf = load i32, ptr %0, align 4, !alias.scope !186, !noalias !187, !noundef !5 ; 4 uses
  %i.bg = xor i32 %i.bf, 55296
  %i.bh = add i32 %i.bg, -1114112
  %i.bi = icmp ult i32 %i.bh, -1112064
  br i1 %i.bi, label %.split.i.i.i.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !188
  store i32 %i.bf, ptr %i.h, align 4, !noalias !188
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !187
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %bb.e
  %i.bj = icmp ult i32 %i.bf, 1114112
  tail call void @llvm.assume(i1 %i.bj)
  %cond.i.i.i = icmp eq i32 %i.bf, 35             ; 2 uses
  %i.bk = sext i1 %cond.i.i.i to i64
  %.sroa.8.0.i.i.i = add i64 %1, %i.bk            ; 2 uses
  %.sroa.0.0.idx.i.i.i = select i1 %cond.i.i.i, i64 4, i64 0
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i.i.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !186
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.8.0.i.i.i, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.idx.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !noalias !186
  switch i64 %.sroa.8.0.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i [
    i64 3, label %bb.f
    i64 6, label %bb.k
  ]

bb.f:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.bo = load i32, ptr %.sroa.0.0.i.i.i, align 4, !alias.scope !186, !noalias !189, !noundef !5 ; 6 uses
  %i.bp = xor i32 %i.bo, 55296
  %i.bq = add i32 %i.bp, -1114112
  %i.br = icmp ult i32 %i.bq, -1112064
  br i1 %i.br, label %.split.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !190
  store i32 %i.bo, ptr %i.g, align 4, !noalias !190
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !189
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i.i: ; preds = %bb.f
  %i.bs = icmp ult i32 %i.bo, 1114112
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp samesign ugt i32 %i.bo, 57
  %i.bu = add nsw i32 %i.bo, -65
  %i.bv = and i32 %i.bu, -33
  %i.bw = add nuw nsw i32 %i.bv, 10
  %i.bx = add nsw i32 %i.bo, -48
  %.sroa.02.0.i.i.i.i.i.i = select i1 %i.bt, i32 %i.bw, i32 %i.bx ; 2 uses
  %i.by = icmp ult i32 %.sroa.02.0.i.i.i.i.i.i, 16
  br i1 %i.by, label %bb.g, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i.i
  %i.bz = mul nuw nsw i32 %.sroa.02.0.i.i.i.i.i.i, 17
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.cb = load i32, ptr %i.bn, align 4, !alias.scope !186, !noalias !191, !noundef !5 ; 6 uses
  %i.cc = xor i32 %i.cb, 55296
  %i.cd = add i32 %i.cc, -1114112
  %i.ce = icmp ult i32 %i.cd, -1112064
  br i1 %i.ce, label %.split.i.i84.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit85.i.i.i

.split.i.i84.i.i.i:                               ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !192
  store i32 %i.cb, ptr %i.f, align 4, !noalias !192
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !191
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit85.i.i.i: ; preds = %bb.g
  %i.cf = icmp ult i32 %i.cb, 1114112
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i32 %i.cb, 57
  %i.ch = add nsw i32 %i.cb, -65
  %i.ci = and i32 %i.ch, -33
  %i.cj = add nuw nsw i32 %i.ci, 10
  %i.ck = add nsw i32 %i.cb, -48
  %.sroa.02.0.i.i.i81.i.i.i = select i1 %i.cg, i32 %i.cj, i32 %i.ck ; 2 uses
  %i.cl = icmp ult i32 %.sroa.02.0.i.i.i81.i.i.i, 16
  br i1 %i.cl, label %bb.h, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit85.i.i.i
  %i.cm = mul nuw nsw i32 %.sroa.02.0.i.i.i81.i.i.i, 17
  %i.cn = load i32, ptr %i.ca, align 4, !alias.scope !186, !noalias !193, !noundef !5 ; 6 uses
  %i.co = xor i32 %i.cn, 55296
  %i.cp = add i32 %i.co, -1114112
  %i.cq = icmp ult i32 %i.cp, -1112064
  br i1 %i.cq, label %.split.i.i89.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit90.i.i.i

.split.i.i89.i.i.i:                               ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !194
  store i32 %i.cn, ptr %i.e, align 4, !noalias !194
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !193
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit90.i.i.i: ; preds = %bb.h
  %i.cr = icmp ult i32 %i.cn, 1114112
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp samesign ugt i32 %i.cn, 57
  %i.ct = add nsw i32 %i.cn, -65
  %i.cu = and i32 %i.ct, -33
  %i.cv = add nuw nsw i32 %i.cu, 10
  %i.cw = add nsw i32 %i.cn, -48
  %.sroa.02.0.i.i.i86.i.i.i = select i1 %i.cs, i32 %i.cv, i32 %i.cw ; 2 uses
  %i.cx = icmp ult i32 %.sroa.02.0.i.i.i86.i.i.i, 16
  br i1 %i.cx, label %bb.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i: ; preds = %bb.q, %bb.o, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit110.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit105.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit100.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit95.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit90.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit85.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.i.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !186
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstrs_0EBK_.exit

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit90.i.i.i
  %i.cy = trunc nuw nsw i32 %.sroa.02.0.i.i.i86.i.i.i to i8
  %i.cz = mul nuw i8 %i.cy, 17
  br label %bb.j

bb.j:                                             ; preds = %bb.s, %bb.i
  %.sroa.036.0.i.i.i = phi i8 [ %i.cz, %bb.i ], [ %i.fk, %bb.s ]
  %.sroa.028.0.i.i.i = phi i32 [ %i.cm, %bb.i ], [ %i.fb, %bb.s ]
  %.sroa.020.0.i.i.i = phi i32 [ %i.bz, %bb.i ], [ %i.eb, %bb.s ]
  %.sroa.573.0.insert.ext.i.i.i = zext i8 %.sroa.036.0.i.i.i to i32
  %.sroa.573.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.573.0.insert.ext.i.i.i, 16
  %.sroa.472.0.insert.ext.i.i.i = shl nuw nsw i32 %.sroa.028.0.i.i.i, 8
  %.sroa.472.0.insert.insert.i.i.i = or disjoint i32 %.sroa.472.0.insert.ext.i.i.i, %.sroa.573.0.insert.shift.i.i.i
  %.sroa.071.0.insert.insert.i.i.i = add nuw nsw i32 %.sroa.472.0.insert.insert.i.i.i, %.sroa.020.0.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !186
  %i.da = shl nuw i32 %.sroa.071.0.insert.insert.i.i.i, 8
  %i.db = or disjoint i32 %i.da, 2
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstrs_0EBK_.exit

bb.k:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.dd = load i32, ptr %.sroa.0.0.i.i.i, align 4, !alias.scope !186, !noalias !195, !noundef !5 ; 6 uses
  %i.de = xor i32 %i.dd, 55296
  %i.df = add i32 %i.de, -1114112
  %i.dg = icmp ult i32 %i.df, -1112064
  br i1 %i.dg, label %.split.i.i94.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit95.i.i.i

.split.i.i94.i.i.i:                               ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !196
  store i32 %i.dd, ptr %i.d, align 4, !noalias !196
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !195
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit95.i.i.i: ; preds = %bb.k
  %i.dh = icmp ult i32 %i.dd, 1114112
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = icmp samesign ugt i32 %i.dd, 57
  %i.dj = add nsw i32 %i.dd, -65
  %i.dk = and i32 %i.dj, -33
  %i.dl = add nuw nsw i32 %i.dk, 10
  %i.dm = add nsw i32 %i.dd, -48
  %.sroa.02.0.i.i.i91.i.i.i = select i1 %i.di, i32 %i.dl, i32 %i.dm ; 2 uses
  %i.dn = icmp ult i32 %.sroa.02.0.i.i.i91.i.i.i, 16
  br i1 %i.dn, label %bb.l, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit95.i.i.i
  %i.do = shl nuw nsw i32 %.sroa.02.0.i.i.i91.i.i.i, 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.dq = load i32, ptr %i.dc, align 4, !alias.scope !186, !noalias !197, !noundef !5 ; 6 uses
  %i.dr = xor i32 %i.dq, 55296
  %i.ds = add i32 %i.dr, -1114112
  %i.dt = icmp ult i32 %i.ds, -1112064
  br i1 %i.dt, label %.split.i.i99.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit100.i.i.i

.split.i.i99.i.i.i:                               ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !198
  store i32 %i.dq, ptr %i.c, align 4, !noalias !198
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !197
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit100.i.i.i: ; preds = %bb.l
  %i.du = icmp ult i32 %i.dq, 1114112
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = icmp samesign ugt i32 %i.dq, 57
  %i.dw = add nsw i32 %i.dq, -65
  %i.dx = and i32 %i.dw, -33
  %i.dy = add nuw nsw i32 %i.dx, 10
  %i.dz = add nsw i32 %i.dq, -48
  %.sroa.02.0.i.i.i96.i.i.i = select i1 %i.dv, i32 %i.dy, i32 %i.dz ; 2 uses
  %i.ea = icmp ult i32 %.sroa.02.0.i.i.i96.i.i.i, 16
  br i1 %i.ea, label %bb.m, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit100.i.i.i
  %i.eb = or disjoint i32 %.sroa.02.0.i.i.i96.i.i.i, %i.do
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12
  %i.ed = load i32, ptr %i.dp, align 4, !alias.scope !186, !noalias !199, !noundef !5 ; 6 uses
  %i.ee = xor i32 %i.ed, 55296
  %i.ef = add i32 %i.ee, -1114112
  %i.eg = icmp ult i32 %i.ef, -1112064
  br i1 %i.eg, label %.split.i.i104.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit105.i.i.i

.split.i.i104.i.i.i:                              ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !200
  store i32 %i.ed, ptr %i.b, align 4, !noalias !200
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !199
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit105.i.i.i: ; preds = %bb.m
  %i.eh = icmp ult i32 %i.ed, 1114112
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp samesign ugt i32 %i.ed, 57
  %i.ej = add nsw i32 %i.ed, -65
  %i.ek = and i32 %i.ej, -33
  %i.el = add nuw nsw i32 %i.ek, 10
  %i.em = add nsw i32 %i.ed, -48
  %.sroa.02.0.i.i.i101.i.i.i = select i1 %i.ei, i32 %i.el, i32 %i.em ; 2 uses
  %i.en = icmp ult i32 %.sroa.02.0.i.i.i101.i.i.i, 16
  br i1 %i.en, label %bb.n, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit105.i.i.i
  %i.eo = shl nuw nsw i32 %.sroa.02.0.i.i.i101.i.i.i, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  store ptr %i.ep, ptr %i.i, align 8, !alias.scope !203, !noalias !186
  %i.eq = load i32, ptr %i.ec, align 4, !alias.scope !186, !noalias !203, !noundef !5 ; 6 uses
  %i.er = xor i32 %i.eq, 55296
  %i.es = add i32 %i.er, -1114112
  %i.et = icmp ult i32 %i.es, -1112064
  br i1 %i.et, label %.split.i.i109.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit110.i.i.i

.split.i.i109.i.i.i:                              ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !204
  store i32 %i.eq, ptr %i.a, align 4, !noalias !204
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !203
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit110.i.i.i: ; preds = %bb.n
  %i.eu = icmp ult i32 %i.eq, 1114112
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp samesign ugt i32 %i.eq, 57
  %i.ew = add nsw i32 %i.eq, -65
  %i.ex = and i32 %i.ew, -33
  %i.ey = add nuw nsw i32 %i.ex, 10
  %i.ez = add nsw i32 %i.eq, -48
  %.sroa.02.0.i.i.i106.i.i.i = select i1 %i.ev, i32 %i.ey, i32 %i.ez ; 2 uses
  %i.fa = icmp ult i32 %.sroa.02.0.i.i.i106.i.i.i, 16
  br i1 %i.fa, label %bb.o, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit110.i.i.i
  %i.fb = or disjoint i32 %.sroa.02.0.i.i.i106.i.i.i, %i.eo
  %i.fc = call fastcc { i1, i8 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #20 ; 2 uses
  %i.fd = extractvalue { i1, i8 } %i.fc, 0
  br i1 %i.fd, label %bb.p, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.fe = extractvalue { i1, i8 } %i.fc, 1        ; 2 uses
  %i.ff = shl nuw i8 %i.fe, 4                     ; 2 uses
  %i.fg = icmp ugt i8 %i.fe, 15
  br i1 %i.fg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fh = call fastcc { i1, i8 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #20 ; 2 uses
  %i.fi = extractvalue { i1, i8 } %i.fh, 0
  br i1 %i.fi, label %bb.s, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fj = extractvalue { i1, i8 } %i.fh, 1
  %i.fk = add i8 %i.fj, %i.ff                     ; 2 uses
  %i.fl = icmp ult i8 %i.fk, %i.ff
  br i1 %i.fl, label %bb.t, label %bb.j

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstrs_0EBK_.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit.thread15, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i, %bb.j
  %.sroa.3.0.in.in.i = phi i32 [ %i.bd, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit ], [ %i.db, %bb.j ], [ 255, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_.exit.thread.i.i.i ], [ 255, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtCsdcxgzuWc7wi_10fish_color5ColorE7or_elseNCNvMs_BK_BI_9from_wstr0EBK_.exit.thread15 ], [ 3, %bb.a ]
  ret i32 %.sroa.3.0.in.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i1, i8 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs_CsdcxgzuWc7wi_10fish_colorNtB28_5Color13try_parse_rgb0ENtNtNtB9_6traits8iterator8Iterator4nextB28_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !207, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !207, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %0, align 8, !alias.scope !207
  %i.g = load i32, ptr %i.b, align 4, !noalias !207, !noundef !5 ; 6 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !207
  store i32 %i.g, ptr %i.a, align 4, !noalias !207
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !207
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %i.g, 1114112
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ugt i32 %i.g, 57
  %i.m = add nsw i32 %i.g, -65
  %i.n = and i32 %i.m, -33
  %i.o = add nuw nsw i32 %i.n, 10
  %i.p = add nsw i32 %i.g, -48
  %.sroa.02.0.i.i = select i1 %i.l, i32 %i.o, i32 %i.p ; 2 uses
  %i.q = icmp ult i32 %.sroa.02.0.i.i, 16
  %i.r = trunc i32 %.sroa.02.0.i.i to i8
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %bb.a, %bb.c
  %.sroa.3.0 = phi i8 [ %i.r, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i1 [ %i.q, %bb.c ], [ false, %bb.a ]
  %i.s = insertvalue { i1, i8 } poison, i1 %.sroa.0.0, 0
  %i.t = insertvalue { i1, i8 } %i.s, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdcxgzuWc7wi_10fish_color(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
end_hunk_0
