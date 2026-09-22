Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_numfmt-ef49e477fd601728.uu_numfmt.86976827d2a51656-cgu.0?download=true
inline.NumInlined: 1038
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format14transform_from:bb.a
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %.sroa.7.0386.i.i, ptr nonnull %.sroa.07.0.i.i, i64 %.sroa.10.0385.i.i), !noalias !2388
  %i.adb = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.adb, label %bb.ga, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.i

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  call void @llvm.experimental.noalias.scope.decl(metadata !2430)
  %i.adc = icmp eq i64 %.sroa.10.0385.i.i, 0
  br i1 %i.adc, label %bb.gd, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %.not.i.i.i = icmp ult i64 %.sroa.10.0385.i.i, %2
  br i1 %.not.i.i.i, label %bb.gc, label %.split.i.i4.i

.split.i.i4.i:                                    ; preds = %bb.gb
  %i.add = icmp eq i64 %.sroa.10.0385.i.i, %2
  br i1 %i.add, label %bb.gd, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.thread.i

bb.gc:                                            ; preds = %bb.gb
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.10.0385.i.i
  %i.adf = load i8, ptr %i.ade, align 1, !alias.scope !2431, !noalias !2432, !noundef !4
  %i.adg = icmp sgt i8 %i.adf, -65
  br i1 %i.adg, label %bb.gd, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.thread.i

bb.gd:                                            ; preds = %bb.gc, %.split.i.i4.i, %bb.ga
  %i.adh = sub nuw i64 %2, %.sroa.10.0385.i.i
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.10.0385.i.i ; 2 uses
  %.not.i29.i.i = icmp samesign ult i64 %i.adh, %i.eq
  br i1 %.not.i29.i.i, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsbyqtxyC5WYI_9uu_numfmt.exit.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsbyqtxyC5WYI_9uu_numfmt.exit.i.i: ; preds = %bb.gd
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.eo, ptr noundef nonnull readonly dereferenceable(1) %i.adi, i64 range(i64 1, -9223372036854775808) %i.eq), !alias.scope !2433, !noalias !2434
  %i.adj = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.adj, label %bb.ge, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.i

bb.ge:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsbyqtxyC5WYI_9uu_numfmt.exit.i.i
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adi, i64 %i.eq ; 5 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2435
  %i.adm = add i64 %.sroa.10.0385.i.i, %i.eq      ; 5 uses
  %i.adn = icmp samesign eq i64 %i.adm, %2
  br i1 %i.adn, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.sink.split.i.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adk, i64 1 ; 2 uses
  %i.adp = load i8, ptr %i.adk, align 1, !alias.scope !2429, !noalias !2436, !noundef !4 ; 5 uses
  %i.adq = icmp sgt i8 %i.adp, -1
  br i1 %i.adq, label %bb.gg, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i: ; preds = %bb.gf
  %i.adr = and i8 %i.adp, 31
  %i.ads = zext nneg i8 %i.adr to i32             ; 3 uses
  %i.adt = add nuw nsw i64 %i.adm, 1
  %i.adu = icmp samesign ne i64 %i.adt, %2
  call void @llvm.assume(i1 %i.adu), !noalias !2437
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adk, i64 2 ; 2 uses
  %i.adw = load i8, ptr %i.ado, align 1, !alias.scope !2429, !noalias !2436, !noundef !4
  %i.adx = shl nuw nsw i32 %i.ads, 6
  %i.ady = and i8 %i.adw, 63
  %i.adz = zext nneg i8 %i.ady to i32             ; 2 uses
  %i.aea = or disjoint i32 %i.adx, %i.adz
  %i.aeb = icmp samesign ugt i8 %i.adp, -33
  br i1 %i.aeb, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.aec = zext nneg i8 %i.adp to i32
  br label %bb.gh

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i
  %i.aed = add nuw nsw i64 %i.adm, 2
  %i.aee = icmp samesign ne i64 %i.aed, %2
  call void @llvm.assume(i1 %i.aee), !noalias !2437
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adk, i64 3 ; 2 uses
  %i.aeg = load i8, ptr %i.adv, align 1, !alias.scope !2429, !noalias !2436, !noundef !4
  %i.aeh = shl nuw nsw i32 %i.adz, 6
  %i.aei = and i8 %i.aeg, 63
  %i.aej = zext nneg i8 %i.aei to i32
  %i.aek = or disjoint i32 %i.aeh, %i.aej         ; 2 uses
  %i.ael = shl nuw nsw i32 %i.ads, 12
  %i.aem = or disjoint i32 %i.aek, %i.ael
  %i.aen = icmp samesign ugt i8 %i.adp, -17
  br i1 %i.aen, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i, label %bb.gh

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i
  %i.aeo = add nuw nsw i64 %i.adm, 3
  %i.aep = icmp samesign ne i64 %i.aeo, %2
  call void @llvm.assume(i1 %i.aep), !noalias !2437
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.adk, i64 4
  %i.aer = load i8, ptr %i.aef, align 1, !alias.scope !2429, !noalias !2436, !noundef !4
  %i.aes = shl nuw nsw i32 %i.ads, 18
  %i.aet = and i32 %i.aes, 1835008
  %i.aeu = shl nuw nsw i32 %i.aek, 6
  %i.aev = and i8 %i.aer, 63
  %i.aew = zext nneg i8 %i.aev to i32
  %i.aex = or disjoint i32 %i.aeu, %i.aew
  %i.aey = or disjoint i32 %i.aex, %i.aet
  br label %bb.gh

_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.sink.split.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit.i6.i, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit37.i.i, %bb.ge
  %.sroa.02.1.ph.i.i = phi i64 [ %i.agn, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit37.i.i ], [ %.sroa.10.0385.i.i, %bb.ge ], [ %.sroa.10.0385.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit.i6.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2435
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.i

bb.gh:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i, %bb.gg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i
  %.sroa.0.0.ph.i.i = phi ptr [ %i.adv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i ], [ %i.aef, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i ], [ %i.aeq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i ], [ %i.ado, %bb.gg ] ; 5 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.aea, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i ], [ %i.aem, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i ], [ %i.aey, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i ], [ %i.aec, %bb.gg ] ; 2 uses
  %i.aez = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.aez), !noalias !2437
  store i32 %.sroa.4.0.i.ph.i.i, ptr %i.af, align 4, !noalias !2435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2435
  call void @_RNvXs_NtCsbyqtxyC5WYI_9uu_numfmt5unitsNtB4_9RawSuffixINtNtCs6JMX4GRUq9U_4core7convert7TryFromRcE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af) #26, !noalias !2435
  %i.afa = load i64, ptr %i.ae, align 8, !range !16, !noalias !2435, !noundef !4 ; 2 uses
  switch i64 %i.afa, label %bb.gp [
    i64 -1, label %bb.gi
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit.i6.i
  ]

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2435
  %i.afb = icmp eq ptr %.sroa.0.0.ph.i.i, %i.adl
  br i1 %i.afb, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit37.i.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.afc = load i8, ptr %.sroa.0.0.ph.i.i, align 1, !alias.scope !2429, !noalias !2438, !noundef !4 ; 5 uses
  %i.afd = icmp sgt i8 %i.afc, -1
  br i1 %i.afd, label %bb.gk, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i32.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i32.i.i: ; preds = %bb.gj
  %i.afe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i, i64 1 ; 2 uses
  %i.aff = and i8 %i.afc, 31
  %i.afg = zext nneg i8 %i.aff to i32             ; 3 uses
  %i.afh = icmp ne ptr %i.afe, %i.adl
  call void @llvm.assume(i1 %i.afh), !noalias !2437
  %i.afi = load i8, ptr %i.afe, align 1, !alias.scope !2429, !noalias !2438, !noundef !4
  %i.afj = shl nuw nsw i32 %i.afg, 6
  %i.afk = and i8 %i.afi, 63
  %i.afl = zext nneg i8 %i.afk to i32             ; 2 uses
  %i.afm = or disjoint i32 %i.afj, %i.afl
  %i.afn = icmp samesign ugt i8 %i.afc, -33
  br i1 %i.afn, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i35.i.i, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.afo = zext nneg i8 %i.afc to i32
  br label %bb.gl

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i35.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i32.i.i
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i, i64 2 ; 2 uses
  %i.afq = icmp ne ptr %i.afp, %i.adl
  call void @llvm.assume(i1 %i.afq), !noalias !2437
  %i.afr = load i8, ptr %i.afp, align 1, !alias.scope !2429, !noalias !2438, !noundef !4
  %i.afs = shl nuw nsw i32 %i.afl, 6
  %i.aft = and i8 %i.afr, 63
  %i.afu = zext nneg i8 %i.aft to i32
  %i.afv = or disjoint i32 %i.afs, %i.afu         ; 2 uses
  %i.afw = shl nuw nsw i32 %i.afg, 12
  %i.afx = or disjoint i32 %i.afv, %i.afw
  %i.afy = icmp samesign ugt i8 %i.afc, -17
  br i1 %i.afy, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i36.i.i, label %bb.gl

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i36.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i35.i.i
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i, i64 3 ; 2 uses
  %i.aga = icmp ne ptr %i.afz, %i.adl
  call void @llvm.assume(i1 %i.aga), !noalias !2437
  %i.agb = load i8, ptr %i.afz, align 1, !alias.scope !2429, !noalias !2438, !noundef !4
  %i.agc = shl nuw nsw i32 %i.afg, 18
  %i.agd = and i32 %i.agc, 1835008
  %i.age = shl nuw nsw i32 %i.afv, 6
  %i.agf = and i8 %i.agb, 63
  %i.agg = zext nneg i8 %i.agf to i32
  %i.agh = or disjoint i32 %i.age, %i.agg
  %i.agi = or disjoint i32 %i.agh, %i.agd
  br label %bb.gl

bb.gl:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i36.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i35.i.i, %bb.gk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i32.i.i
  %.sroa.4.0.i33.ph.i.i = phi i32 [ %i.afx, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i35.i.i ], [ %i.agi, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i36.i.i ], [ %i.afm, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i32.i.i ], [ %i.afo, %bb.gk ] ; 2 uses
  %i.agj = icmp samesign ult i32 %.sroa.4.0.i33.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.agj), !noalias !2437
  %i.agk = icmp eq i32 %.sroa.4.0.i33.ph.i.i, 105
  br i1 %i.agk, label %bb.gm, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit37.i.i

bb.gm:                                            ; preds = %bb.gl
  %i.agl = icmp ne i8 %i.em, 4
  call void @llvm.assume(i1 %i.agl), !noalias !2437
  %i.agm = add nsw i8 %i.em, -2
  %.inv.i.i = icmp samesign ult i8 %i.em, 2
  %narrow.i.i = select i1 %.inv.i.i, i8 2, i8 %i.agm
  switch i8 %narrow.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit37.i.i [
    i8 0, label %bb.gn
    i8 2, label %bb.go
  ]

_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit37.i.i: ; preds = %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gi
  %.sroa.016.0.i.i = phi i64 [ 1, %bb.gl ], [ 2, %bb.gn ], [ %i.ago, %bb.go ], [ 1, %bb.gm ], [ 1, %bb.gi ]
  %i.agn = add i64 %.sroa.016.0.i.i, %i.adm
  br label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.sink.split.i.i

bb.gn:                                            ; preds = %bb.gm
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit37.i.i

bb.go:                                            ; preds = %bb.gm
  %narrow27.i.i = add nuw nsw i8 %i.em, 1
  %i.ago = zext nneg i8 %narrow27.i.i to i64
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit37.i.i

bb.gp:                                            ; preds = %bb.gh
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val28.i.i = load ptr, ptr %i.agp, align 8, !noalias !2435, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i, i64 noundef %i.afa, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2439
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit.i6.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit.i6.i: ; preds = %bb.gp, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2435
  br label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.sink.split.i.i

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.i: ; preds = %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.sink.split.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsbyqtxyC5WYI_9uu_numfmt.exit.i.i, %bb.gd, %bb.fz, %bb.fy, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.thread.i.i
  %.sroa.053.1.i.i = phi i64 [ %.sroa.10.0385.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.thread.i.i ], [ %.sroa.10.0385.i.i, %bb.fy ], [ %.sroa.10.0385.i.i, %bb.fz ], [ %.sroa.10.0385.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsbyqtxyC5WYI_9uu_numfmt.exit.i.i ], [ %.sroa.10.0385.i.i, %bb.gd ], [ %.sroa.02.1.ph.i.i, %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.sink.split.i.i ] ; 2 uses
  %i.agq = icmp eq i64 %.sroa.053.1.i.i, 0
  br i1 %i.agq, label %bb.gr, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.thread.i

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.thread.i: ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.i, %bb.gc, %.split.i.i4.i
  %.sroa.053.1.i219.i = phi i64 [ %.sroa.053.1.i.i, %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.i ], [ %.sroa.10.0385.i.i, %bb.gc ], [ %.sroa.10.0385.i.i, %.split.i.i4.i ] ; 5 uses
  %.not.i189.i.i = icmp ult i64 %.sroa.053.1.i219.i, %2
  br i1 %.not.i189.i.i, label %bb.gq, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.thread.i
  %i.agr = icmp eq i64 %.sroa.053.1.i219.i, %2
  br i1 %i.agr, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format22detailed_error_message.exit.thread.i, label %bb.gs

bb.gq:                                            ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.thread.i
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.053.1.i219.i
  %i.agt = load i8, ptr %i.ags, align 1, !alias.scope !2440, !noalias !2388, !noundef !4
  %i.agu = icmp sgt i8 %i.agt, -65
  br i1 %i.agu, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq, %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.i
  %i.agv = phi i1 [ false, %bb.gq ], [ true, %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.i ] ; 3 uses
  %.sroa.053.1.i220.i = phi i64 [ %.sroa.053.1.i219.i, %bb.gq ], [ 0, %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29valid_end_with_unit_separator.exit.i ] ; 19 uses
  %i.agw = icmp eq i64 %.sroa.053.1.i220.i, %2
  br i1 %i.agw, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format22detailed_error_message.exit.thread.i, label %bb.gt

bb.gs:                                            ; preds = %bb.gq, %.split.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %.sroa.053.1.i219.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #27, !noalias !2388
  unreachable

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !2410
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ch, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %.sroa.053.1.i220.i) #25, !noalias !2388
  %i.agx = load i8, ptr %i.ch, align 8, !range !19, !noalias !2410, !noundef !4
  %i.agy = icmp eq i8 %i.agx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !2410
  br i1 %i.agy, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  br i1 %i.agv, label %.lr.ph.i.i.i.preheader.i.i, label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !2410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !2410
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %i.cf, align 8, !noalias !2410
  %i.aha = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.agz, ptr %i.aha, align 8, !noalias !2410
  %i.ahb = call fastcc noundef i64 @_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by(ptr noalias nofree noundef align 8 dereferenceable(16) %i.cf, i64 noundef %.sroa.053.1.i220.i) #28, !noalias !2388
  %.not98.i.i = icmp eq i64 %i.ahb, 0
  br i1 %.not98.i.i, label %bb.iq, label %.thread402.i.i

bb.gw:                                            ; preds = %bb.gu
  %.not.i191.i.i = icmp ult i64 %.sroa.053.1.i220.i, %2
  br i1 %.not.i191.i.i, label %bb.gx, label %.split.i192.i.i

bb.gx:                                            ; preds = %bb.gw
  %i.ahc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.053.1.i220.i
  %i.ahd = load i8, ptr %i.ahc, align 1, !alias.scope !2441, !noalias !2388, !noundef !4
  %i.ahe = icmp sgt i8 %i.ahd, -65
  br i1 %i.ahe, label %.lr.ph.i.i.i.preheader.i.i, label %.split.i192.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.gx, %bb.gu
  %i.ahf = sub nuw i64 %2, %.sroa.053.1.i220.i    ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.053.1.i220.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  %i.ahh = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i
  %i.ahi = phi i64 [ %i.aix, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i.i ] ; 4 uses
  %i.ahj = phi ptr [ %i.ait, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i ], [ %i.ahg, %.lr.ph.i.i.i.preheader.i.i ] ; 6 uses
  %i.ahk = ptrtoint ptr %i.ahj to i64
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahj, i64 1 ; 3 uses
  %i.ahm = load i8, ptr %i.ahj, align 1, !alias.scope !2443, !noalias !2444, !noundef !4 ; 5 uses
  %i.ahn = icmp sgt i8 %i.ahm, -1
  br i1 %i.ahn, label %bb.gy, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aho = and i8 %i.ahm, 31
  %i.ahp = zext nneg i8 %i.aho to i32             ; 3 uses
  %i.ahq = icmp ne ptr %i.ahl, %i.ahh
  call void @llvm.assume(i1 %i.ahq)
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahj, i64 2 ; 3 uses
  %i.ahs = load i8, ptr %i.ahl, align 1, !alias.scope !2443, !noalias !2444, !noundef !4
  %i.aht = shl nuw nsw i32 %i.ahp, 6
  %i.ahu = and i8 %i.ahs, 63
  %i.ahv = zext nneg i8 %i.ahu to i32             ; 2 uses
  %i.ahw = or disjoint i32 %i.aht, %i.ahv
  %i.ahx = icmp samesign ugt i8 %i.ahm, -33
  br i1 %i.ahx, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i.i.i.i.i, label %bb.gz

bb.gy:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ahy = zext nneg i8 %i.ahm to i32
  br label %bb.gz

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i.i.i.i.i
  %i.ahz = icmp ne ptr %i.ahr, %i.ahh
  call void @llvm.assume(i1 %i.ahz)
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahj, i64 3 ; 3 uses
  %i.aib = load i8, ptr %i.ahr, align 1, !alias.scope !2443, !noalias !2444, !noundef !4
  %i.aic = shl nuw nsw i32 %i.ahv, 6
  %i.aid = and i8 %i.aib, 63
  %i.aie = zext nneg i8 %i.aid to i32
  %i.aif = or disjoint i32 %i.aic, %i.aie         ; 2 uses
  %i.aig = shl nuw nsw i32 %i.ahp, 12
  %i.aih = or disjoint i32 %i.aif, %i.aig
  %i.aii = icmp samesign ugt i8 %i.ahm, -17
  br i1 %i.aii, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i.i.i.i.i, label %bb.gz

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i.i.i.i.i
  %i.aij = icmp ne ptr %i.aia, %i.ahh
  call void @llvm.assume(i1 %i.aij)
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  %i.ail = load i8, ptr %i.aia, align 1, !alias.scope !2443, !noalias !2444, !noundef !4
  %i.aim = shl nuw nsw i32 %i.ahp, 18
  %i.ain = and i32 %i.aim, 1835008
  %i.aio = shl nuw nsw i32 %i.aif, 6
  %i.aip = and i8 %i.ail, 63
  %i.aiq = zext nneg i8 %i.aip to i32
  %i.air = or disjoint i32 %i.aio, %i.aiq
  %i.ais = or disjoint i32 %i.air, %i.ain
  br label %bb.gz

bb.gz:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i.i.i.i.i, %bb.gy, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i.i.i.i.i
  %i.ait = phi ptr [ %i.aia, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i.i.i.i.i ], [ %i.aik, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i.i.i.i.i ], [ %i.ahr, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i.i.i.i.i ], [ %i.ahl, %bb.gy ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i = phi i32 [ %i.aih, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i.i.i.i.i ], [ %i.ais, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i.i.i.i.i ], [ %i.ahw, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i.i.i.i.i ], [ %i.ahy, %bb.gy ] ; 8 uses
  %i.aiu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.aiu)
  %i.aiv = ptrtoint ptr %i.ait to i64
  %i.aiw = sub i64 %i.ahi, %i.ahk
  %i.aix = add i64 %i.aiw, %i.aiv
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, label %bb.ha [
    i32 32, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i
    i32 13, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i
    i32 12, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i
    i32 11, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i
    i32 10, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i
    i32 9, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i
  ]

bb.ha:                                            ; preds = %bb.gz
  %i.aiy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 133
  br i1 %i.aiy, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbyqtxyC5WYI_9uu_numfmt.exit.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aiz = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 8
  switch i32 %i.aiz, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbyqtxyC5WYI_9uu_numfmt.exit.i.i [
    i32 0, label %bb.he
    i32 22, label %bb.hc
    i32 32, label %bb.hf
    i32 48, label %bb.hd
  ]

bb.hc:                                            ; preds = %bb.hb
  %i.aja = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 5760
  %i.ajb = zext i1 %i.aja to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i.i

bb.hd:                                            ; preds = %bb.hb
  %i.ajc = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 12288
  %i.ajd = zext i1 %i.ajc to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i.i

bb.he:                                            ; preds = %bb.hb
  %i.aje = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 255
  %i.ajf = zext nneg i32 %i.aje to i64
  %i.ajg = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ajf
  %i.ajh = load i8, ptr %i.ajg, align 1, !noalias !2445, !noundef !4
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i.i

bb.hf:                                            ; preds = %bb.hb
  %i.aji = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 255
  %i.ajj = zext nneg i32 %i.aji to i64
  %i.ajk = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ajj
  %i.ajl = load i8, ptr %i.ajk, align 1, !noalias !2445, !noundef !4
  %i.ajm = lshr i8 %i.ajl, 1
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i.i: ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hc
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ajd, %bb.hd ], [ %i.ajh, %bb.he ], [ %i.ajb, %bb.hc ], [ %i.ajm, %bb.hf ]
  %i.ajn = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ajn, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbyqtxyC5WYI_9uu_numfmt.exit.i.i

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i.i.i.i, %bb.gz, %bb.gz, %bb.gz, %bb.gz, %bb.gz, %bb.gz
  %i.ajo = icmp eq ptr %i.ait, %i.ahh
  br i1 %i.ajo, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbyqtxyC5WYI_9uu_numfmt.exit.i.i, label %.lr.ph.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format14transform_from:bb.a
  br i1 %i.ayv, label %bb.lj, label %.thread.i63

bb.my:                                            ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2475
  store i64 0, ptr %i.p, align 8, !noalias !2475
  %.sroa.4.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i64, align 8, !noalias !2475
  %.sroa.5.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i65, align 8, !noalias !2475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2489
  store i64 0, ptr %i.e, align 8, !noalias !2489
  %.sroa.4.0..sroa_idx.i105.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i105.i, align 8, !noalias !2489
  %.sroa.5.0..sroa_idx.i106.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i106.i, align 8, !noalias !2489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2489
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.ayw, align 8, !noalias !2489
  store ptr %i.e, ptr %i.d, align 8, !noalias !2489
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @169, ptr %i.ayx, align 8, !noalias !2489
  %i.ayy = call noundef zeroext i1 @_RNvXs7_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #26, !noalias !2490
  br i1 %i.ayy, label %bb.mz, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit107.i, !prof !15

bb.mz:                                            ; preds = %bb.my
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #27, !noalias !2490
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit107.i: ; preds = %bb.my
  %.sroa.0211.0.copyload212.i = load i64, ptr %i.e, align 8, !noalias !2491 ; 3 uses
  %.sroa.5213.0.copyload215.i = load ptr, ptr %.sroa.4.0..sroa_idx.i105.i, align 8, !noalias !2491, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8217.0.copyload219.i = load i64, ptr %.sroa.5.0..sroa_idx.i106.i, align 8, !noalias !2491 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2489
  switch i64 %.sroa.8217.0.copyload219.i, label %thread-pre-split.i139.i [
    i64 0, label %.loopexit283.i
    i64 1, label %bb.na
  ]

bb.na:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit107.i
  %i.ayz = load i8, ptr %.sroa.5213.0.copyload215.i, align 1, !alias.scope !2492, !noalias !2493, !noundef !4 ; 2 uses
  switch i8 %i.ayz, label %bb.nb [
    i8 43, label %.loopexit283.i
    i8 45, label %.loopexit283.i
  ]

thread-pre-split.i139.i:                          ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit107.i
  %.pr.i140.i = load i8, ptr %.sroa.5213.0.copyload215.i, align 1, !alias.scope !2492, !noalias !2493
  br label %bb.nb

bb.nb:                                            ; preds = %thread-pre-split.i139.i, %bb.na
  %i.aza = phi i8 [ %.pr.i140.i, %thread-pre-split.i139.i ], [ %i.ayz, %bb.na ]
  switch i8 %i.aza, label %bb.ni [
    i8 43, label %bb.nc
    i8 45, label %bb.nd
  ]

bb.nc:                                            ; preds = %bb.nb
  %i.azb = getelementptr inbounds nuw i8, ptr %.sroa.5213.0.copyload215.i, i64 1
  %i.azc = add nsw i64 %.sroa.8217.0.copyload219.i, -1
  br label %bb.ni

bb.nd:                                            ; preds = %bb.nb
  %i.azd = getelementptr inbounds nuw i8, ptr %.sroa.5213.0.copyload215.i, i64 1 ; 2 uses
  %i.aze = add nsw i64 %.sroa.8217.0.copyload219.i, -1 ; 3 uses
  %i.azf = icmp samesign ult i64 %.sroa.8217.0.copyload219.i, 17
  br i1 %i.azf, label %.preheader114.i117.i, label %.lr.ph.i109.i

.preheader114.i117.i:                             ; preds = %bb.nd
  %.not103137.i118.i = icmp eq i64 %i.aze, 0
  br i1 %.not103137.i118.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.lr.ph141.i119.i

.lr.ph.i109.i:                                    ; preds = %bb.nd, %bb.ng
  %.sroa.0.1136.i110.i = phi ptr [ %i.azg, %bb.ng ], [ %i.azd, %bb.nd ] ; 2 uses
  %.sroa.26.1135.i111.i = phi i64 [ %i.azh, %bb.ng ], [ %i.aze, %bb.nd ]
  %.sroa.084.0134.i112.i = phi i64 [ %i.azs, %bb.ng ], [ 0, %bb.nd ]
  %i.azg = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i110.i, i64 1
  %i.azh = add nsw i64 %.sroa.26.1135.i111.i, -1  ; 2 uses
  %i.azi = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i112.i, i64 10) ; 2 uses
  %i.azj = extractvalue { i64, i1 } %i.azi, 0
  %i.azk = extractvalue { i64, i1 } %i.azi, 1
  br i1 %i.azk, label %.loopexit283.i, label %bb.ne, !prof !15

bb.ne:                                            ; preds = %.lr.ph.i109.i
  %i.azl = load i8, ptr %.sroa.0.1136.i110.i, align 1, !alias.scope !2492, !noalias !2493, !noundef !4
  %i.azm = zext i8 %i.azl to i32
  %i.azn = add nsw i32 %i.azm, -48                ; 2 uses
  %i.azo = icmp ult i32 %i.azn, 10
  br i1 %i.azo, label %bb.nf, label %.loopexit283.i

bb.nf:                                            ; preds = %bb.ne
  %i.azp = zext nneg i32 %i.azn to i64
  %i.azq = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.azj, i64 %i.azp) ; 2 uses
  %i.azr = extractvalue { i64, i1 } %i.azq, 1
  br i1 %i.azr, label %.loopexit283.i, label %bb.ng, !prof !15

bb.ng:                                            ; preds = %bb.nf
  %i.azs = extractvalue { i64, i1 } %i.azq, 0     ; 2 uses
  %.not102.i114.i = icmp eq i64 %i.azh, 0
  br i1 %.not102.i114.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.lr.ph.i109.i

.lr.ph141.i119.i:                                 ; preds = %.preheader114.i117.i, %bb.nh
  %.sroa.0.2140.i120.i = phi ptr [ %i.azz, %bb.nh ], [ %i.azd, %.preheader114.i117.i ] ; 2 uses
  %.sroa.26.2139.i121.i = phi i64 [ %i.azy, %bb.nh ], [ %i.aze, %.preheader114.i117.i ]
  %.sroa.084.2138.i122.i = phi i64 [ %i.bab, %bb.nh ], [ 0, %.preheader114.i117.i ]
  %i.azt = load i8, ptr %.sroa.0.2140.i120.i, align 1, !alias.scope !2492, !noalias !2493, !noundef !4
  %i.azu = zext i8 %i.azt to i32
  %i.azv = add nsw i32 %i.azu, -48                ; 2 uses
  %i.azw = icmp ult i32 %i.azv, 10
  br i1 %i.azw, label %bb.nh, label %.loopexit283.i

bb.nh:                                            ; preds = %.lr.ph141.i119.i
  %i.azx = mul i64 %.sroa.084.2138.i122.i, 10
  %i.azy = add nsw i64 %.sroa.26.2139.i121.i, -1  ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i120.i, i64 1
  %i.baa = zext nneg i32 %i.azv to i64
  %i.bab = sub i64 %i.azx, %i.baa                 ; 2 uses
  %.not103.i123.i = icmp eq i64 %i.azy, 0
  br i1 %.not103.i123.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.lr.ph141.i119.i

bb.ni:                                            ; preds = %bb.nc, %bb.nb
  %.sroa.26.0.i124.i = phi i64 [ %i.azc, %bb.nc ], [ %.sroa.8217.0.copyload219.i, %bb.nb ] ; 4 uses
  %.sroa.0.0.i125.i = phi ptr [ %i.azb, %bb.nc ], [ %.sroa.5213.0.copyload215.i, %bb.nb ] ; 2 uses
  %i.bac = icmp samesign ult i64 %.sroa.26.0.i124.i, 16
  br i1 %i.bac, label %.preheader.i132.i, label %.preheader111.i126.i

.preheader.i132.i:                                ; preds = %bb.ni
  %.not105146.i133.i = icmp eq i64 %.sroa.26.0.i124.i, 0
  br i1 %.not105146.i133.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.lr.ph150.i134.i

.preheader111.i126.i:                             ; preds = %bb.ni, %bb.nl
  %.sroa.0.3145.i127.i = phi ptr [ %i.bad, %bb.nl ], [ %.sroa.0.0.i125.i, %bb.ni ] ; 2 uses
  %.sroa.26.3144.i128.i = phi i64 [ %i.bae, %bb.nl ], [ %.sroa.26.0.i124.i, %bb.ni ]
  %.sroa.084.3143.i129.i = phi i64 [ %i.bap, %bb.nl ], [ 0, %bb.ni ]
  %i.bad = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i127.i, i64 1
  %i.bae = add nsw i64 %.sroa.26.3144.i128.i, -1  ; 2 uses
  %i.baf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i129.i, i64 10) ; 2 uses
  %i.bag = extractvalue { i64, i1 } %i.baf, 0
  %i.bah = extractvalue { i64, i1 } %i.baf, 1
  br i1 %i.bah, label %.loopexit283.i, label %bb.nj, !prof !15

bb.nj:                                            ; preds = %.preheader111.i126.i
  %i.bai = load i8, ptr %.sroa.0.3145.i127.i, align 1, !alias.scope !2492, !noalias !2493, !noundef !4
  %i.baj = zext i8 %i.bai to i32
  %i.bak = add nsw i32 %i.baj, -48                ; 2 uses
  %i.bal = icmp ult i32 %i.bak, 10
  br i1 %i.bal, label %bb.nk, label %.loopexit283.i

bb.nk:                                            ; preds = %bb.nj
  %i.bam = zext nneg i32 %i.bak to i64
  %i.ban = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bag, i64 %i.bam) ; 2 uses
  %i.bao = extractvalue { i64, i1 } %i.ban, 1
  br i1 %i.bao, label %.loopexit283.i, label %bb.nl, !prof !15

bb.nl:                                            ; preds = %bb.nk
  %i.bap = extractvalue { i64, i1 } %i.ban, 0     ; 2 uses
  %.not104.i131.i = icmp eq i64 %i.bae, 0
  br i1 %.not104.i131.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.preheader111.i126.i

.lr.ph150.i134.i:                                 ; preds = %.preheader.i132.i, %bb.nm
  %.sroa.0.4149.i135.i = phi ptr [ %i.baw, %bb.nm ], [ %.sroa.0.0.i125.i, %.preheader.i132.i ] ; 2 uses
  %.sroa.26.4148.i136.i = phi i64 [ %i.bav, %bb.nm ], [ %.sroa.26.0.i124.i, %.preheader.i132.i ]
  %.sroa.084.4147.i137.i = phi i64 [ %i.bay, %bb.nm ], [ 0, %.preheader.i132.i ]
  %i.baq = load i8, ptr %.sroa.0.4149.i135.i, align 1, !alias.scope !2492, !noalias !2493, !noundef !4
  %i.bar = zext i8 %i.baq to i32
  %i.bas = add nsw i32 %i.bar, -48                ; 2 uses
  %i.bat = icmp ult i32 %i.bas, 10
  br i1 %i.bat, label %bb.nm, label %.loopexit283.i

bb.nm:                                            ; preds = %.lr.ph150.i134.i
  %i.bau = mul i64 %.sroa.084.4147.i137.i, 10
  %i.bav = add nsw i64 %.sroa.26.4148.i136.i, -1  ; 2 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i135.i, i64 1
  %i.bax = zext nneg i32 %i.bas to i64
  %i.bay = add i64 %i.bau, %i.bax                 ; 2 uses
  %.not105.i138.i = icmp eq i64 %i.bav, 0
  br i1 %.not105.i138.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.lr.ph150.i134.i

.thread.i63:                                      ; preds = %bb.mx, %bb.li
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ej, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 40) #26
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format13remove_suffix.exit

.loopexit283.i:                                   ; preds = %bb.nf, %bb.ne, %.lr.ph.i109.i, %.lr.ph141.i119.i, %bb.nk, %bb.nj, %.preheader111.i126.i, %.lr.ph150.i134.i, %bb.na, %bb.na, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit107.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2475
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5213.0.copyload215.i, i64 noundef %.sroa.8217.0.copyload219.i) #25, !noalias !2475
  %i.baz = load i8, ptr %i.o, align 8, !range !19, !noalias !2475, !noundef !4
  %i.bba = trunc nuw i8 %i.baz to i1
  br i1 %i.bba, label %bb.nn, label %bb.no

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i: ; preds = %bb.ng, %bb.nh, %bb.nl, %bb.nm, %.preheader.i132.i, %.preheader114.i117.i
  %.sroa.15224.0.i = phi i64 [ %i.bay, %bb.nm ], [ %i.bab, %bb.nh ], [ %i.bap, %bb.nl ], [ 0, %.preheader.i132.i ], [ 0, %.preheader114.i117.i ], [ %i.azs, %bb.ng ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 6, i64 noundef %.sroa.15224.0.i) #26, !noalias !2475
  br label %.split38.i

.split38.i:                                       ; preds = %bb.no, %bb.nn, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i
  %.sroa.09.0.not.i = phi i1 [ true, %bb.nn ], [ false, %bb.no ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2475
  %spec.select.i = select i1 %i.jb, ptr @127, ptr inttoptr (i64 1 to ptr)
  %spec.select436.i = zext nneg i8 %.sroa.65.0.copyload to i64
  store ptr %spec.select.i, ptr %i.l, align 8, !noalias !2475, !captures !23
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %spec.select436.i, ptr %i.bbb, align 8, !noalias !2475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2475
  store ptr %i.ac, ptr %i.k, align 8, !noalias !2475
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsa_NtCsbyqtxyC5WYI_9uu_numfmt5unitsNtB5_9RawSuffixNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !2475
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.bbc, align 8, !noalias !2475
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsbyqtxyC5WYI_9uu_numfmt, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !2475
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @121, ptr noundef nonnull %i.k) #26, !noalias !2475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2475
  %.sroa.0230.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !2475 ; 2 uses
  %.sroa.4231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4231.0.copyload.i = load ptr, ptr %.sroa.4231.0..sroa_idx.i, align 8, !noalias !2475, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6232.0.copyload.i = load i64, ptr %.sroa.6232.0..sroa_idx.i, align 8, !noalias !2475 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2475
  %.not.i142.i = icmp slt i64 %.sroa.6232.0.copyload.i, 0
  br i1 %.not.i142.i, label %bb.nq, label %bb.np, !prof !10

bb.nn:                                            ; preds = %.loopexit283.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2475
  store i64 %.sroa.0211.0.copyload212.i, ptr %i.n, align 8, !noalias !2475
  %.sroa.5213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.5213.0.copyload215.i, ptr %.sroa.5213.0..sroa_idx.i, align 8, !noalias !2475
  %.sroa.8217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.8217.0.copyload219.i, ptr %.sroa.8217.0..sroa_idx.i, align 8, !noalias !2475
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n) #26, !noalias !2475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2475
  br label %.split38.i

bb.no:                                            ; preds = %.loopexit283.i
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bbe = load double, ptr %i.bbd, align 8, !noalias !2475, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 6, double noundef %i.bbe) #26, !noalias !2475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2475
  br label %.split38.i

bb.np:                                            ; preds = %.split38.i
  %i.bbf = icmp eq i64 %.sroa.6232.0.copyload.i, 0 ; 2 uses
  br i1 %i.bbf, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt.exit145.thread268.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i143.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i143.i: ; preds = %bb.np
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2494
  %i.bbg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.6232.0.copyload.i, i64 noundef range(i64 1, 9) 1) #26, !noalias !2494 ; 3 uses
  %i.bbh = icmp eq ptr %i.bbg, null
  br i1 %i.bbh, label %bb.nq, label %bb.of

bb.nq:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i143.i, %.split38.i
  %.sroa.4243.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i143.i ], [ 0, %.split38.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4243.0.ph.i, i64 %.sroa.6232.0.copyload.i) #29, !noalias !2475
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt.exit145.thread268.i: ; preds = %bb.of, %bb.np
  %i.bbi = phi ptr [ %i.bbg, %bb.of ], [ inttoptr (i64 1 to ptr), %bb.np ] ; 8 uses
  %i.bbj = icmp eq i64 %.sroa.0230.0.copyload.i, 0
  br i1 %i.bbj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit148.i, label %bb.nr

bb.nr:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt.exit145.thread268.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4231.0.copyload.i, i64 noundef %.sroa.0230.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2495
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit148.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit148.i: ; preds = %bb.nr, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt.exit145.thread268.i
  switch i64 %.sroa.6232.0.copyload.i, label %thread-pre-split.i180.i [
    i64 0, label %.loopexit.i66
    i64 1, label %bb.ns
  ]

bb.ns:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit148.i
  %i.bbk = load i8, ptr %i.bbi, align 1, !alias.scope !2496, !noalias !2497, !noundef !4 ; 2 uses
  switch i8 %i.bbk, label %bb.nt [
    i8 43, label %.loopexit.i66
    i8 45, label %.loopexit.i66
  ]

thread-pre-split.i180.i:                          ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit148.i
  %.pr.i181.i = load i8, ptr %i.bbi, align 1, !alias.scope !2496, !noalias !2497
  br label %bb.nt

bb.nt:                                            ; preds = %thread-pre-split.i180.i, %bb.ns
  %i.bbl = phi i8 [ %.pr.i181.i, %thread-pre-split.i180.i ], [ %i.bbk, %bb.ns ]
  switch i8 %i.bbl, label %bb.oa [
    i8 43, label %bb.nu
    i8 45, label %bb.nv
  ]

bb.nu:                                            ; preds = %bb.nt
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbi, i64 1
  %i.bbn = add nsw i64 %.sroa.6232.0.copyload.i, -1
  br label %bb.oa

bb.nv:                                            ; preds = %bb.nt
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbi, i64 1 ; 2 uses
  %i.bbp = add nsw i64 %.sroa.6232.0.copyload.i, -1 ; 3 uses
  %i.bbq = icmp samesign ult i64 %.sroa.6232.0.copyload.i, 17
  br i1 %i.bbq, label %.preheader114.i158.i, label %.lr.ph.i150.i

.preheader114.i158.i:                             ; preds = %bb.nv
  %.not103137.i159.i = icmp eq i64 %i.bbp, 0
  br i1 %.not103137.i159.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit182.i, label %.lr.ph141.i160.i

.lr.ph.i150.i:                                    ; preds = %bb.nv, %bb.ny
  %.sroa.0.1136.i151.i = phi ptr [ %i.bbr, %bb.ny ], [ %i.bbo, %bb.nv ] ; 2 uses
  %.sroa.26.1135.i152.i = phi i64 [ %i.bbs, %bb.ny ], [ %i.bbp, %bb.nv ]
  %.sroa.084.0134.i153.i = phi i64 [ %i.bcd, %bb.ny ], [ 0, %bb.nv ]
  %i.bbr = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i151.i, i64 1
  %i.bbs = add nsw i64 %.sroa.26.1135.i152.i, -1  ; 2 uses
  %i.bbt = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i153.i, i64 10) ; 2 uses
  %i.bbu = extractvalue { i64, i1 } %i.bbt, 0
  %i.bbv = extractvalue { i64, i1 } %i.bbt, 1
  br i1 %i.bbv, label %.loopexit.i66, label %bb.nw, !prof !15

bb.nw:                                            ; preds = %.lr.ph.i150.i
  %i.bbw = load i8, ptr %.sroa.0.1136.i151.i, align 1, !alias.scope !2496, !noalias !2497, !noundef !4
  %i.bbx = zext i8 %i.bbw to i32
  %i.bby = add nsw i32 %i.bbx, -48                ; 2 uses
  %i.bbz = icmp ult i32 %i.bby, 10
  br i1 %i.bbz, label %bb.nx, label %.loopexit.i66

bb.nx:                                            ; preds = %bb.nw
  %i.bca = zext nneg i32 %i.bby to i64
  %i.bcb = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bbu, i64 %i.bca) ; 2 uses
  %i.bcc = extractvalue { i64, i1 } %i.bcb, 1
  br i1 %i.bcc, label %.loopexit.i66, label %bb.ny, !prof !15

bb.ny:                                            ; preds = %bb.nx
  %i.bcd = extractvalue { i64, i1 } %i.bcb, 0     ; 2 uses
  %.not102.i155.i = icmp eq i64 %i.bbs, 0
  br i1 %.not102.i155.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit182.i, label %.lr.ph.i150.i

.lr.ph141.i160.i:                                 ; preds = %.preheader114.i158.i, %bb.nz
  %.sroa.0.2140.i161.i = phi ptr [ %i.bck, %bb.nz ], [ %i.bbo, %.preheader114.i158.i ] ; 2 uses
  %.sroa.26.2139.i162.i = phi i64 [ %i.bcj, %bb.nz ], [ %i.bbp, %.preheader114.i158.i ]
  %.sroa.084.2138.i163.i = phi i64 [ %i.bcm, %bb.nz ], [ 0, %.preheader114.i158.i ]
  %i.bce = load i8, ptr %.sroa.0.2140.i161.i, align 1, !alias.scope !2496, !noalias !2497, !noundef !4
  %i.bcf = zext i8 %i.bce to i32
  %i.bcg = add nsw i32 %i.bcf, -48                ; 2 uses
  %i.bch = icmp ult i32 %i.bcg, 10
  br i1 %i.bch, label %bb.nz, label %.loopexit.i66

bb.nz:                                            ; preds = %.lr.ph141.i160.i
  %i.bci = mul i64 %.sroa.084.2138.i163.i, 10
  %i.bcj = add nsw i64 %.sroa.26.2139.i162.i, -1  ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i161.i, i64 1
  %i.bcl = zext nneg i32 %i.bcg to i64
  %i.bcm = sub i64 %i.bci, %i.bcl                 ; 2 uses
  %.not103.i164.i = icmp eq i64 %i.bcj, 0
  br i1 %.not103.i164.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit182.i, label %.lr.ph141.i160.i

bb.oa:                                            ; preds = %bb.nu, %bb.nt
  %.sroa.26.0.i165.i = phi i64 [ %i.bbn, %bb.nu ], [ %.sroa.6232.0.copyload.i, %bb.nt ] ; 4 uses
  %.sroa.0.0.i166.i = phi ptr [ %i.bbm, %bb.nu ], [ %i.bbi, %bb.nt ] ; 2 uses
  %i.bcn = icmp samesign ult i64 %.sroa.26.0.i165.i, 16
  br i1 %i.bcn, label %.preheader.i173.i, label %.preheader111.i167.i

.preheader.i173.i:                                ; preds = %bb.oa
  %.not105146.i174.i = icmp eq i64 %.sroa.26.0.i165.i, 0
  br i1 %.not105146.i174.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit182.i, label %.lr.ph150.i175.i

.preheader111.i167.i:                             ; preds = %bb.oa, %bb.od
  %.sroa.0.3145.i168.i = phi ptr [ %i.bco, %bb.od ], [ %.sroa.0.0.i166.i, %bb.oa ] ; 2 uses
  %.sroa.26.3144.i169.i = phi i64 [ %i.bcp, %bb.od ], [ %.sroa.26.0.i165.i, %bb.oa ]
  %.sroa.084.3143.i170.i = phi i64 [ %i.bda, %bb.od ], [ 0, %bb.oa ]
  %i.bco = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i168.i, i64 1
  %i.bcp = add nsw i64 %.sroa.26.3144.i169.i, -1  ; 2 uses
  %i.bcq = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i170.i, i64 10) ; 2 uses
  %i.bcr = extractvalue { i64, i1 } %i.bcq, 0
  %i.bcs = extractvalue { i64, i1 } %i.bcq, 1
  br i1 %i.bcs, label %.loopexit.i66, label %bb.ob, !prof !15

bb.ob:                                            ; preds = %.preheader111.i167.i
  %i.bct = load i8, ptr %.sroa.0.3145.i168.i, align 1, !alias.scope !2496, !noalias !2497, !noundef !4
  %i.bcu = zext i8 %i.bct to i32
  %i.bcv = add nsw i32 %i.bcu, -48                ; 2 uses
  %i.bcw = icmp ult i32 %i.bcv, 10
  br i1 %i.bcw, label %bb.oc, label %.loopexit.i66

bb.oc:                                            ; preds = %bb.ob
  %i.bcx = zext nneg i32 %i.bcv to i64
  %i.bcy = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bcr, i64 %i.bcx) ; 2 uses
  %i.bcz = extractvalue { i64, i1 } %i.bcy, 1
  br i1 %i.bcz, label %.loopexit.i66, label %bb.od, !prof !15

bb.od:                                            ; preds = %bb.oc
  %i.bda = extractvalue { i64, i1 } %i.bcy, 0     ; 2 uses
  %.not104.i172.i = icmp eq i64 %i.bcp, 0
  br i1 %.not104.i172.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit182.i, label %.preheader111.i167.i

.lr.ph150.i175.i:                                 ; preds = %.preheader.i173.i, %bb.oe
  %.sroa.0.4149.i176.i = phi ptr [ %i.bdh, %bb.oe ], [ %.sroa.0.0.i166.i, %.preheader.i173.i ] ; 2 uses
  %.sroa.26.4148.i177.i = phi i64 [ %i.bdg, %bb.oe ], [ %.sroa.26.0.i165.i, %.preheader.i173.i ]
  %.sroa.084.4147.i178.i = phi i64 [ %i.bdj, %bb.oe ], [ 0, %.preheader.i173.i ]
  %i.bdb = load i8, ptr %.sroa.0.4149.i176.i, align 1, !alias.scope !2496, !noalias !2497, !noundef !4
  %i.bdc = zext i8 %i.bdb to i32
  %i.bdd = add nsw i32 %i.bdc, -48                ; 2 uses
  %i.bde = icmp ult i32 %i.bdd, 10
end_hunk_1
