Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.07?download=true
inline.NumInlined: 1670
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp10format_e_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish:bb.a
  %exitcond.not.i109 = icmp eq i32 %i.ka, %smax.i
  %or.cond = select i1 %i.oi, i1 true, i1 %exitcond.not.i109
  br i1 %or.cond, label %.loopexit16.i, label %bb.aw

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i142, %.noexc146, %.noexc101
  %or.cond11 = select i1 %.not, i1 true, i1 %i.ay
  %.pre = add i64 %i.av, %i.w                     ; 4 uses
  br i1 %or.cond11, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit._crit_edge, label %bb.bu

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_eNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %.noexc123
  %i.oj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ol = load i64, ptr %i.as, align 8, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.ol ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.on = lshr i64 %i.ol, 2
  %i.oo = and i64 %i.ol, 3
  %.not.i.i.i.i134 = icmp ne i64 %i.oo, 0
  %i.op = zext i1 %.not.i.i.i.i134 to i64
  %.sroa.0.0.i.i.i.i135 = add nuw nsw i64 %i.on, %i.op
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.0.0.i.i.i.i135)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_eNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %.not.i9.i.i.i.i.i136 = icmp samesign eq i64 %i.ol, 0
  br i1 %.not.i9.i.i.i.i.i136, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i.i.i.i137

.lr.ph.i.i.i.i.i137:                              ; preds = %.noexc146, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i142
  %.sroa.0.010.i.i.i.i.i138 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i140, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i142 ], [ %i.ok, %.noexc146 ] ; 5 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 1 ; 3 uses
  %i.or = load i8, ptr %.sroa.0.010.i.i.i.i.i138, align 1, !alias.scope !250, !noalias !251, !noundef !10 ; 5 uses
  %i.os = icmp sgt i8 %i.or, -1
  br i1 %i.os, label %bb.br, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i139

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i139: ; preds = %.lr.ph.i.i.i.i.i137
  %i.ot = and i8 %i.or, 31
  %i.ou = zext nneg i8 %i.ot to i32               ; 3 uses
  %i.ov = icmp ne ptr %i.oq, %i.om
  call void @llvm.assume(i1 %i.ov)
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 2 ; 3 uses
  %i.ox = load i8, ptr %i.oq, align 1, !alias.scope !250, !noalias !251, !noundef !10
  %i.oy = shl nuw nsw i32 %i.ou, 6
  %i.oz = and i8 %i.ox, 63
  %i.pa = zext nneg i8 %i.oz to i32               ; 2 uses
  %i.pb = or disjoint i32 %i.oy, %i.pa
  %i.pc = icmp samesign ugt i8 %i.or, -33
  br i1 %i.pc, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i144, label %bb.bs

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i137
  %i.pd = zext nneg i8 %i.or to i32
  br label %bb.bs

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i144: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i139
  %i.pe = icmp ne ptr %i.ow, %i.om
  call void @llvm.assume(i1 %i.pe)
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 3 ; 3 uses
  %i.pg = load i8, ptr %i.ow, align 1, !alias.scope !250, !noalias !251, !noundef !10
  %i.ph = shl nuw nsw i32 %i.pa, 6
  %i.pi = and i8 %i.pg, 63
  %i.pj = zext nneg i8 %i.pi to i32
  %i.pk = or disjoint i32 %i.ph, %i.pj            ; 2 uses
  %i.pl = shl nuw nsw i32 %i.ou, 12
  %i.pm = or disjoint i32 %i.pk, %i.pl
  %i.pn = icmp samesign ugt i8 %i.or, -17
  br i1 %i.pn, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i145, label %bb.bs

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i145: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i144
  %i.po = icmp ne ptr %i.pf, %i.om
  call void @llvm.assume(i1 %i.po)
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 4
  %i.pq = load i8, ptr %i.pf, align 1, !alias.scope !250, !noalias !251, !noundef !10
  %i.pr = shl nuw nsw i32 %i.ou, 18
  %i.ps = and i32 %i.pr, 1835008
  %i.pt = shl nuw nsw i32 %i.pk, 6
  %i.pu = and i8 %i.pq, 63
  %i.pv = zext nneg i8 %i.pu to i32
  %i.pw = or disjoint i32 %i.pt, %i.pv
  %i.px = or disjoint i32 %i.pw, %i.ps
  br label %bb.bs

bb.bs:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i145, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i144, %bb.br, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i139
  %.sroa.0.1.ph.i.i.i.i.i140 = phi ptr [ %i.ow, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i139 ], [ %i.pf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i144 ], [ %i.pp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i145 ], [ %i.oq, %bb.br ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i141 = phi i32 [ %i.pb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i139 ], [ %i.pm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i144 ], [ %i.px, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i145 ], [ %i.pd, %bb.br ]
  %i.py = load i64, ptr %i.jx, align 8, !alias.scope !252, !noundef !10 ; 3 uses
  %i.pz = load i64, ptr %i.m, align 8, !range !14, !alias.scope !252, !noundef !10
  %i.qa = icmp eq i64 %i.py, %i.pz
  br i1 %i.qa, label %bb.bt, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i142

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #27
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i142: ; preds = %bb.bt, %bb.bs
  %i.qb = load ptr, ptr %i.jy, align 8, !alias.scope !252, !nonnull !10, !noundef !10
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.py
  store i32 %spec.select.i.ph.i.i.i.i.i141, ptr %i.qc, align 4, !noalias !250
  %i.qd = add i64 %i.py, 1
  store i64 %i.qd, ptr %i.jx, align 8, !alias.scope !252
  %.not.i.i.i.i.i.i143 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i140, %i.om
  br i1 %.not.i.i.i.i.i.i143, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i.i.i.i137

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit._crit_edge: ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.bw
  %i.qe = icmp ult i64 %.pre, %i.w
  br i1 %i.qe, label %.invoke358, label %bb.bx

bb.bu:                                            ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.qf = icmp ult i64 %.pre, %i.w
  br i1 %i.qf, label %.invoke358, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qg = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 32, i64 noundef %i.o, i64 noundef %.pre)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.qg, label %select.unfold, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit._crit_edge

.invoke358:                                       ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit._crit_edge, %bb.bu, %bb.t, %bb.n, %bb.g, %bb.f, %bb.e, %bb.d
  %i.qh = phi ptr [ @8, %bb.bu ], [ @7, %bb.t ], [ @6, %bb.n ], [ @5, %bb.g ], [ @5, %bb.f ], [ @5, %bb.e ], [ @4, %bb.d ], [ @9, %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit._crit_edge ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qh) #31
          to label %.cont359 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont359:                                         ; preds = %.invoke358
  unreachable

bb.bx:                                            ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit._crit_edge
  %..i149 = call noundef i64 @llvm.umax.i64(i64 %.pre, i64 %i.o)
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..i149, ptr %i.qi, align 8
  store i8 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.bx, %select.unfold
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ca:                                            ; preds = %.body
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp12format_floatNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, double noundef %2, i64 noundef %3, i64 noundef range(i64 0, 2) %4, i64 %5, i48 %6, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %7, i8 noundef range(i8 0, 17) %8, ptr noalias nofree noundef align 8 dereferenceable(24) %9) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 20 uses
  %i.g = alloca [64 x i8], align 8                ; 16 uses
  %.sroa.010.0.extract.trunc = trunc i48 %6 to i24
  %.sroa.010.3.extract.shift = lshr i48 %6, 24    ; 3 uses
  %.sroa.010.3.extract.trunc = trunc i48 %.sroa.010.3.extract.shift to i8
  %.sroa.010.4.extract.shift = lshr i48 %6, 32    ; 3 uses
  %.sroa.010.4.extract.trunc = trunc i48 %.sroa.010.4.extract.shift to i8
  %.sroa.010.5.extract.shift = lshr i48 %6, 40
  %.sroa.010.5.extract.trunc = trunc nuw i48 %.sroa.010.5.extract.shift to i8
  %i.h = bitcast double %2 to i64                 ; 2 uses
  %.not = icmp sgt i64 %i.h, -1
  %i.i = trunc i48 %.sroa.010.3.extract.shift to i1 ; 5 uses
  br i1 %.not, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i48 %.sroa.010.4.extract.shift to i1
  br i1 %i.j, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.mask = and i48 %.sroa.010.3.extract.shift, 1
  %. = zext nneg i48 %.mask to i64
  %.37 = select i1 %i.i, ptr @10, ptr inttoptr (i64 1 to ptr)
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.5.0 = phi i64 [ 1, %bb.b ], [ %., %bb.c ], [ 1, %bb.a ] ; 6 uses
  %.sroa.011.0 = phi ptr [ @11, %bb.b ], [ %.37, %bb.c ], [ @12, %bb.a ] ; 5 uses
  %i.k = trunc nuw i64 %4 to i1                   ; 4 uses
  %.38 = select i1 %i.k, i64 %5, i64 6            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = zext nneg i8 %8 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp12format_floatNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store i64 %.38, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 62
  %i.q = trunc nuw nsw i64 %4 to i8
  store i8 %i.q, ptr %i.p, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i24 %.sroa.010.0.extract.trunc, ptr %i.r, align 8
  %.sroa.23.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 59
  store i8 %.sroa.010.3.extract.trunc, ptr %.sroa.23.0..sroa_idx4, align 1
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i8 %.sroa.010.4.extract.trunc, ptr %.sroa.3.0..sroa_idx6, align 4
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 61
  store i8 %.sroa.010.5.extract.trunc, ptr %.sroa.4.0..sroa_idx8, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %7, ptr %i.s, align 8
  store ptr %.sroa.011.0, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.5.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 63
  store i8 %switch.load, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %9, ptr %i.v, align 8
  %i.w = tail call double @llvm.fabs.f64(double %2) ; 2 uses
  %i.x = fcmp ueq double %i.w, +inf
  %i.y = lshr i48 %6, 8                           ; 2 uses
  %i.z = trunc i48 %i.y to i8
  %i.aa = lshr i48 %6, 16                         ; 3 uses
  %i.ab = trunc i48 %i.aa to i8
  br i1 %i.x, label %bb.d, label %bb.y

bb.d:                                             ; preds = %switch.lookup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %10 = trunc nuw i8 %switch.load to i1           ; 2 uses
  %i.ac = fcmp uno double %2, 0.000000e+00
  %..i = select i1 %10, ptr @16, ptr @15
  %.3.i = select i1 %10, ptr @18, ptr @17
  %.sroa.0.0.i = select i1 %i.ac, ptr %.3.i, ptr %..i ; 8 uses
  %i.ad = add nuw nsw i64 %.sroa.5.0, 3           ; 3 uses
  %i.ae = trunc i48 %i.aa to i1
  br i1 %i.ae, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = tail call noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %3, i64 noundef %i.ad), !noalias !396
  br i1 %i.af, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 %.sroa.5.0 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %.not.i.i.i.i.i = icmp ne i64 %.sroa.5.0, 0     ; 2 uses
  %i.ah = zext i1 %.not.i.i.i.i.i to i64
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ah), !noalias !402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi ptr [ %.sroa.011.0, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 1 ; 3 uses
  %i.al = load i8, ptr %.sroa.0.010.i.i.i.i.i.i, align 1, !alias.scope !405, !noalias !406, !noundef !10 ; 5 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.h, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.an = and i8 %i.al, 31
  %i.ao = zext nneg i8 %i.an to i32               ; 3 uses
  %i.ap = icmp ne ptr %i.ak, %i.ag
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 2 ; 3 uses
  %i.ar = load i8, ptr %i.ak, align 1, !alias.scope !405, !noalias !406, !noundef !10
  %i.as = shl nuw nsw i32 %i.ao, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32               ; 2 uses
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = icmp samesign ugt i8 %i.al, -33
  br i1 %i.aw, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = zext nneg i8 %i.al to i32
  br label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i
  %i.ay = icmp ne ptr %i.aq, %i.ag
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 3 ; 3 uses
  %i.ba = load i8, ptr %i.aq, align 1, !alias.scope !405, !noalias !406, !noundef !10
  %i.bb = shl nuw nsw i32 %i.au, 6
  %i.bc = and i8 %i.ba, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd            ; 2 uses
  %i.bf = shl nuw nsw i32 %i.ao, 12
  %i.bg = or disjoint i32 %i.be, %i.bf
  %i.bh = icmp samesign ugt i8 %i.al, -17
  br i1 %i.bh, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i, label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i
  %i.bi = icmp ne ptr %i.az, %i.ag
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 4
  %i.bk = load i8, ptr %i.az, align 1, !alias.scope !405, !noalias !406, !noundef !10
  %i.bl = shl nuw nsw i32 %i.ao, 18
  %i.bm = and i32 %i.bl, 1835008
  %i.bn = shl nuw nsw i32 %i.be, 6
  %i.bo = and i8 %i.bk, 63
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bn, %i.bp
  %i.br = or disjoint i32 %i.bq, %i.bm
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i.i = phi ptr [ %i.aq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i ], [ %i.az, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i ], [ %i.bj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i ], [ %i.ak, %bb.h ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i = phi i32 [ %i.av, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i ], [ %i.bg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.h ]
  %i.bs = load i64, ptr %i.ai, align 8, !alias.scope !407, !noalias !396, !noundef !10 ; 3 uses
  %i.bt = load i64, ptr %1, align 8, !range !14, !alias.scope !407, !noalias !396, !noundef !10
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.j, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #27, !noalias !402
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.bv = load ptr, ptr %i.aj, align 8, !alias.scope !407, !noalias !396, !nonnull !10, !noundef !10
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bs
  store i32 %spec.select.i.ph.i.i.i.i.i.i, ptr %i.bw, align 4, !noalias !402
  %i.bx = add i64 %i.bs, 1
  store i64 %i.bx, ptr %i.ai, align 8, !alias.scope !407, !noalias !396
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i.i, %i.ag
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i, label %bb.g

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1), !noalias !413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i9.i, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i
  %.sroa.0.010.i.i.i.i.i5.idx.i = phi i64 [ 0, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i ], [ %.sroa.0.1.ph.i.i.i.i.i7.idx.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i9.i ] ; 6 uses
  %.sroa.0.010.i.i.i.i.i5.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.idx.i
  %.sroa.0.010.i.i.i.i.i5.add.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 1 ; 3 uses
  %i.ca = load i8, ptr %.sroa.0.010.i.i.i.i.i5.ptr.i, align 1, !alias.scope !416, !noalias !417, !noundef !10 ; 5 uses
  %i.cb = icmp sgt i8 %i.ca, -1
  br i1 %i.cb, label %bb.l, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i6.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i6.i: ; preds = %bb.k
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.add.i
  %i.cc = and i8 %i.ca, 31
  %i.cd = zext nneg i8 %i.cc to i32               ; 3 uses
  %i.ce = icmp ne i64 %.sroa.0.010.i.i.i.i.i5.add.i, 3
  tail call void @llvm.assume(i1 %i.ce)
  %.sroa.0.010.i.i.i.i.i5.add39.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 2 ; 3 uses
  %i.cf = load i8, ptr %.ptr.i, align 1, !alias.scope !416, !noalias !417, !noundef !10
  %i.cg = shl nuw nsw i32 %i.cd, 6
  %i.ch = and i8 %i.cf, 63
  %i.ci = zext nneg i8 %i.ch to i32               ; 2 uses
  %i.cj = or disjoint i32 %i.cg, %i.ci
  %i.ck = icmp samesign ugt i8 %i.ca, -33
  br i1 %i.ck, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i11.i, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = zext nneg i8 %i.ca to i32
  br label %bb.m

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i11.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i6.i
  %.ptr42.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.add39.i
  %i.cm = icmp samesign ne i64 %.sroa.0.010.i.i.i.i.i5.add39.i, 3
  tail call void @llvm.assume(i1 %i.cm)
  %.sroa.0.010.i.i.i.i.i5.add38.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 3 ; 2 uses
  %i.cn = load i8, ptr %.ptr42.i, align 1, !alias.scope !416, !noalias !417, !noundef !10
  %i.co = shl nuw nsw i32 %i.ci, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.co, %i.cq            ; 2 uses
  %i.cs = shl nuw nsw i32 %i.cd, 12
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = icmp samesign ugt i8 %i.ca, -17
  br i1 %i.cu, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i12.i, label %bb.m

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i12.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i11.i
  %.ptr41.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.add38.i
  %i.cv = icmp ne i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 0
  tail call void @llvm.assume(i1 %i.cv)
  %.sroa.0.010.i.i.i.i.i5.add37.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 4
  %i.cw = load i8, ptr %.ptr41.i, align 1, !alias.scope !416, !noalias !417, !noundef !10
  %i.cx = shl nuw nsw i32 %i.cd, 18
  %i.cy = and i32 %i.cx, 1835008
  %i.cz = shl nuw nsw i32 %i.cr, 6
  %i.da = and i8 %i.cw, 63
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = or disjoint i32 %i.cz, %i.db
  %i.dd = or disjoint i32 %i.dc, %i.cy
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i12.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i11.i, %bb.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i6.i
  %.sroa.0.1.ph.i.i.i.i.i7.idx.i = phi i64 [ %.sroa.0.010.i.i.i.i.i5.add39.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i6.i ], [ %.sroa.0.010.i.i.i.i.i5.add38.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i11.i ], [ %.sroa.0.010.i.i.i.i.i5.add37.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i12.i ], [ %.sroa.0.010.i.i.i.i.i5.add.i, %bb.l ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i8.i = phi i32 [ %i.cj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i6.i ], [ %i.ct, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i11.i ], [ %i.dd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i12.i ], [ %i.cl, %bb.l ]
  %i.de = load i64, ptr %i.by, align 8, !alias.scope !418, !noalias !396, !noundef !10 ; 3 uses
  %i.df = load i64, ptr %1, align 8, !range !14, !alias.scope !418, !noalias !396, !noundef !10
  %i.dg = icmp eq i64 %i.de, %i.df
  br i1 %i.dg, label %bb.n, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i9.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #27, !noalias !413
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i9.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i9.i: ; preds = %bb.n, %bb.m
  %i.dh = load ptr, ptr %i.bz, align 8, !alias.scope !418, !noalias !396, !nonnull !10, !noundef !10
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.de
  store i32 %spec.select.i.ph.i.i.i.i.i8.i, ptr %i.di, align 4, !noalias !413
  %i.dj = add i64 %i.de, 1
  store i64 %i.dj, ptr %i.by, align 8, !alias.scope !418, !noalias !396
  %.not.i.i.i.i.i.i10.i = icmp samesign eq i64 %.sroa.0.1.ph.i.i.i.i.i7.idx.i, 3
  br i1 %.not.i.i.i.i.i.i10.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i, label %bb.k

bb.o:                                             ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.dk, align 1, !alias.scope !395
  br label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp16format_nonfiniteNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i9.i, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %3)
end_hunk_0
begin_hunk_1_@_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp12format_floatNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish:bb.a

.lr.ph.i.i.i.i.i17.i:                             ; preds = %.critedge.i
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i17.i
  %.sroa.0.010.i.i.i.i.i18.i = phi ptr [ %.sroa.011.0, %.lr.ph.i.i.i.i.i17.i ], [ %.sroa.0.1.ph.i.i.i.i.i20.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i22.i ] ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 1 ; 3 uses
  %i.dr = load i8, ptr %.sroa.0.010.i.i.i.i.i18.i, align 1, !alias.scope !427, !noalias !428, !noundef !10 ; 5 uses
  %i.ds = icmp sgt i8 %i.dr, -1
  br i1 %i.ds, label %bb.q, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i19.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i19.i: ; preds = %bb.p
  %i.dt = and i8 %i.dr, 31
  %i.du = zext nneg i8 %i.dt to i32               ; 3 uses
  %i.dv = icmp ne ptr %i.dq, %i.dm
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 2 ; 3 uses
  %i.dx = load i8, ptr %i.dq, align 1, !alias.scope !427, !noalias !428, !noundef !10
  %i.dy = shl nuw nsw i32 %i.du, 6
  %i.dz = and i8 %i.dx, 63
  %i.ea = zext nneg i8 %i.dz to i32               ; 2 uses
  %i.eb = or disjoint i32 %i.dy, %i.ea
  %i.ec = icmp samesign ugt i8 %i.dr, -33
  br i1 %i.ec, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i24.i, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ed = zext nneg i8 %i.dr to i32
  br label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i24.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i19.i
  %i.ee = icmp ne ptr %i.dw, %i.dm
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 3 ; 3 uses
  %i.eg = load i8, ptr %i.dw, align 1, !alias.scope !427, !noalias !428, !noundef !10
  %i.eh = shl nuw nsw i32 %i.ea, 6
  %i.ei = and i8 %i.eg, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eh, %i.ej            ; 2 uses
  %i.el = shl nuw nsw i32 %i.du, 12
  %i.em = or disjoint i32 %i.ek, %i.el
  %i.en = icmp samesign ugt i8 %i.dr, -17
  br i1 %i.en, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i25.i, label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i25.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i24.i
  %i.eo = icmp ne ptr %i.ef, %i.dm
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 4
  %i.eq = load i8, ptr %i.ef, align 1, !alias.scope !427, !noalias !428, !noundef !10
  %i.er = shl nuw nsw i32 %i.du, 18
  %i.es = and i32 %i.er, 1835008
  %i.et = shl nuw nsw i32 %i.ek, 6
  %i.eu = and i8 %i.eq, 63
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = or disjoint i32 %i.et, %i.ev
  %i.ex = or disjoint i32 %i.ew, %i.es
  br label %bb.r

bb.r:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i25.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i24.i, %bb.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i19.i
  %.sroa.0.1.ph.i.i.i.i.i20.i = phi ptr [ %i.dw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i19.i ], [ %i.ef, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i24.i ], [ %i.ep, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i25.i ], [ %i.dq, %bb.q ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i21.i = phi i32 [ %i.eb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i19.i ], [ %i.em, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i24.i ], [ %i.ex, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i25.i ], [ %i.ed, %bb.q ]
  %i.ey = load i64, ptr %i.do, align 8, !alias.scope !429, !noalias !396, !noundef !10 ; 3 uses
  %i.ez = load i64, ptr %1, align 8, !range !14, !alias.scope !429, !noalias !396, !noundef !10
  %i.fa = icmp eq i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.s, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i22.i

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #27, !noalias !424
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i22.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i22.i: ; preds = %bb.s, %bb.r
  %i.fb = load ptr, ptr %i.dp, align 8, !alias.scope !429, !noalias !396, !nonnull !10, !noundef !10
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ey
  store i32 %spec.select.i.ph.i.i.i.i.i21.i, ptr %i.fc, align 4, !noalias !424
  %i.fd = add i64 %i.ey, 1
  store i64 %i.fd, ptr %i.do, align 8, !alias.scope !429, !noalias !396
  %.not.i.i.i.i.i.i23.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i20.i, %i.dm
  br i1 %.not.i.i.i.i.i.i23.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i, label %bb.p

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i22.i, %.critedge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1), !noalias !435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.t

bb.t:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i32.i, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i
  %.sroa.0.010.i.i.i.i.i28.idx.i = phi i64 [ 0, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i ], [ %.sroa.0.1.ph.i.i.i.i.i30.idx.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i32.i ] ; 6 uses
  %.sroa.0.010.i.i.i.i.i28.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.idx.i
  %.sroa.0.010.i.i.i.i.i28.add.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 1 ; 3 uses
  %i.fg = load i8, ptr %.sroa.0.010.i.i.i.i.i28.ptr.i, align 1, !alias.scope !438, !noalias !439, !noundef !10 ; 5 uses
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %bb.u, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i29.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i29.i: ; preds = %bb.t
  %.ptr46.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.add.i
  %i.fi = and i8 %i.fg, 31
  %i.fj = zext nneg i8 %i.fi to i32               ; 3 uses
  %i.fk = icmp ne i64 %.sroa.0.010.i.i.i.i.i28.add.i, 3
  tail call void @llvm.assume(i1 %i.fk)
  %.sroa.0.010.i.i.i.i.i28.add45.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 2 ; 3 uses
  %i.fl = load i8, ptr %.ptr46.i, align 1, !alias.scope !438, !noalias !439, !noundef !10
  %i.fm = shl nuw nsw i32 %i.fj, 6
  %i.fn = and i8 %i.fl, 63
  %i.fo = zext nneg i8 %i.fn to i32               ; 2 uses
  %i.fp = or disjoint i32 %i.fm, %i.fo
  %i.fq = icmp samesign ugt i8 %i.fg, -33
  br i1 %i.fq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i34.i, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fr = zext nneg i8 %i.fg to i32
  br label %bb.v

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i34.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i29.i
  %.ptr49.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.add45.i
  %i.fs = icmp samesign ne i64 %.sroa.0.010.i.i.i.i.i28.add45.i, 3
  tail call void @llvm.assume(i1 %i.fs)
  %.sroa.0.010.i.i.i.i.i28.add44.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 3 ; 2 uses
  %i.ft = load i8, ptr %.ptr49.i, align 1, !alias.scope !438, !noalias !439, !noundef !10
  %i.fu = shl nuw nsw i32 %i.fo, 6
  %i.fv = and i8 %i.ft, 63
  %i.fw = zext nneg i8 %i.fv to i32
  %i.fx = or disjoint i32 %i.fu, %i.fw            ; 2 uses
  %i.fy = shl nuw nsw i32 %i.fj, 12
  %i.fz = or disjoint i32 %i.fx, %i.fy
  %i.ga = icmp samesign ugt i8 %i.fg, -17
  br i1 %i.ga, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i35.i, label %bb.v

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i35.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i34.i
  %.ptr48.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.add44.i
  %i.gb = icmp ne i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 0
  tail call void @llvm.assume(i1 %i.gb)
  %.sroa.0.010.i.i.i.i.i28.add43.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 4
  %i.gc = load i8, ptr %.ptr48.i, align 1, !alias.scope !438, !noalias !439, !noundef !10
  %i.gd = shl nuw nsw i32 %i.fj, 18
  %i.ge = and i32 %i.gd, 1835008
  %i.gf = shl nuw nsw i32 %i.fx, 6
  %i.gg = and i8 %i.gc, 63
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gf, %i.gh
  %i.gj = or disjoint i32 %i.gi, %i.ge
  br label %bb.v

bb.v:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i35.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i34.i, %bb.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i29.i
  %.sroa.0.1.ph.i.i.i.i.i30.idx.i = phi i64 [ %.sroa.0.010.i.i.i.i.i28.add45.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i29.i ], [ %.sroa.0.010.i.i.i.i.i28.add44.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i34.i ], [ %.sroa.0.010.i.i.i.i.i28.add43.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i35.i ], [ %.sroa.0.010.i.i.i.i.i28.add.i, %bb.u ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i31.i = phi i32 [ %i.fp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i29.i ], [ %i.fz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i34.i ], [ %i.gj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i35.i ], [ %i.fr, %bb.u ]
  %i.gk = load i64, ptr %i.fe, align 8, !alias.scope !440, !noalias !396, !noundef !10 ; 3 uses
  %i.gl = load i64, ptr %1, align 8, !range !14, !alias.scope !440, !noalias !396, !noundef !10
  %i.gm = icmp eq i64 %i.gk, %i.gl
  br i1 %i.gm, label %bb.w, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i32.i

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #27, !noalias !435
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i32.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i32.i: ; preds = %bb.w, %bb.v
  %i.gn = load ptr, ptr %i.ff, align 8, !alias.scope !440, !noalias !396, !nonnull !10, !noundef !10
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gk
  store i32 %spec.select.i.ph.i.i.i.i.i31.i, ptr %i.go, align 4, !noalias !435
  %i.gp = add i64 %i.gk, 1
  store i64 %i.gp, ptr %i.fe, align 8, !alias.scope !440, !noalias !396
  %.not.i.i.i.i.i.i33.i = icmp samesign eq i64 %.sroa.0.1.ph.i.i.i.i.i30.idx.i, 3
  br i1 %.not.i.i.i.i.i.i33.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i, label %bb.t

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i32.i
  %i.gq = tail call noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %3, i64 noundef %i.ad), !noalias !396
  br i1 %i.gq, label %bb.x, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i

bb.x:                                             ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.gr, align 1, !alias.scope !395
  br label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp16format_nonfiniteNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp16format_nonfiniteNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.o, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i, %bb.x
  %.sink.i = phi i8 [ 1, %bb.o ], [ 1, %bb.x ], [ 0, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !395
  br label %bb.du

bb.y:                                             ; preds = %switch.lookup
  switch i8 %8, label %bb.co [
    i8 6, label %bb.z
    i8 7, label %bb.z
    i8 10, label %bb.cn
    i8 11, label %bb.cn
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %.not76.i = icmp slt i64 %i.h, 0                ; 4 uses
  %i.gs = trunc i48 %6 to i1                      ; 2 uses
  %i.gt = trunc i48 %i.y to i1
  %i.gu = trunc i48 %i.aa to i1                   ; 3 uses
  %i.gv = trunc i48 %.sroa.010.4.extract.shift to i1
  %11 = trunc nuw i8 %switch.load to i1           ; 3 uses
  %i.gw = tail call { double, i32 } @_RNvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp5frexp(double noundef %i.w), !noalias !442 ; 2 uses
  %i.gx = extractvalue { double, i32 } %i.gw, 0   ; 3 uses
  %i.gy = extractvalue { double, i32 } %i.gw, 1   ; 2 uses
  %i.gz = fcmp une double %i.gx, 0.000000e+00
  br i1 %i.gz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ha = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gy, i32 -1) ; 2 uses
  %i.hb = extractvalue { i32, i1 } %i.ha, 1
  br i1 %i.hb, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.ac, %bb.z
  %.sroa.018.0.i = phi i32 [ %i.hc, %bb.ac ], [ %i.gy, %bb.z ] ; 2 uses
  %.sroa.06.0.i = phi double [ %i.hd, %bb.ac ], [ %i.gx, %bb.z ] ; 3 uses
  %brmerge84.i = or i1 %.not76.i, %i.gv           ; 2 uses
  br i1 %11, label %bb.af, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.hc = extractvalue { i32, i1 } %i.ha, 0
  %i.hd = fmul double %i.gx, 2.000000e+00
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aa
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #30, !noalias !442
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %.mux.i = select i1 %.not76.i, ptr @34, ptr @33
  br i1 %brmerge84.i, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %.mux85.i = select i1 %.not76.i, ptr @38, ptr @37
  br i1 %brmerge84.i, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %..i39 = select i1 %i.i, i64 3, i64 2
  %.78.i = select i1 %i.i, ptr @32, ptr @31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag, %bb.af, %bb.ae
  %.sroa.10.0.i = phi i64 [ 3, %bb.ae ], [ %.79.i, %bb.ai ], [ 3, %bb.af ], [ %..i39, %bb.ag ] ; 3 uses
  %.sroa.023.0.i = phi ptr [ %.mux.i, %bb.ae ], [ %.80.i, %bb.ai ], [ %.mux85.i, %bb.af ], [ %.78.i, %bb.ag ] ; 2 uses
  %i.he = icmp ult i64 %.38, 13
  %or.cond.i = and i1 %i.he, %i.k
  br i1 %or.cond.i, label %bb.aj, label %.split.i

bb.ai:                                            ; preds = %bb.af
  %.79.i = select i1 %i.i, i64 3, i64 2
  %.80.i = select i1 %i.i, ptr @36, ptr @35
  br label %bb.ah

.split.i:                                         ; preds = %bb.al, %bb.ak, %bb.ah
  %.sroa.06.1.i = phi double [ %i.in, %bb.al ], [ %i.ij, %bb.ak ], [ %.sroa.06.0.i, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !442
  %.81.i = select i1 %11, i32 112, i32 80
  store i32 %.81.i, ptr %i.d, align 4, !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !442
  %i.hf = icmp slt i32 %.sroa.018.0.i, 0
  %storemerge77.i = select i1 %i.hf, i32 45, i32 43
  store i32 %storemerge77.i, ptr %i.c, align 4, !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !442
  %.sroa.048.0.i = tail call i32 @llvm.abs.i32(i32 %.sroa.018.0.i, i1 false)
  store i32 %.sroa.048.0.i, ptr %i.b, align 4, !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !442
  store ptr %i.d, ptr %i.a, align 8, !noalias !442
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !442
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.hg, align 8, !noalias !442
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !442
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.hh, align 8, !noalias !442
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.460.0..sroa_idx.i, align 8, !noalias !442
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @39, ptr noundef nonnull %i.a), !noalias !442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !442
  %.sroa.026.0.i = select i1 %11, ptr @41, ptr @40
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.hk = icmp ne i64 %.38, 0                     ; 2 uses
  %brmerge.i = or i1 %i.hk, %i.gs
  %i.hl = load i32, ptr %7, align 4, !range !16   ; 7 uses
  %i.hm = icmp samesign ult i32 %i.hl, 128
  %i.hn = icmp samesign ult i32 %i.hl, 2048       ; 2 uses
  %i.ho = icmp samesign ult i32 %i.hl, 65536      ; 2 uses
  %..i.i54 = select i1 %i.ho, i64 3, i64 4
  %.sroa.0.0.ph.i.i = select i1 %i.hn, i64 2, i64 %..i.i54
  %i.hp = trunc i32 %i.hl to i8                   ; 2 uses
  %i.hq = and i8 %i.hp, 63
  %i.hr = or disjoint i8 %i.hq, -128              ; 3 uses
  %i.hs = lshr i32 %i.hl, 6
  %i.ht = trunc i32 %i.hs to i8                   ; 2 uses
  %i.hu = and i8 %i.ht, 63
  %i.hv = or disjoint i8 %i.hu, -128              ; 2 uses
  %i.hw = lshr i32 %i.hl, 12
  %i.hx = trunc i32 %i.hw to i8                   ; 2 uses
  %i.hy = and i8 %i.hx, 63
  %i.hz = or disjoint i8 %i.hy, -128
  %i.ia = lshr i32 %i.hl, 18
  %i.ib = trunc nuw nsw i32 %i.ia to i8
  %i.ic = or disjoint i8 %i.ib, -16
  %i.id = or disjoint i8 %i.hx, -32
  %i.ie = or disjoint i8 %i.ht, -64
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %.tr.i = trunc nuw nsw i64 %5 to i32
  %i.if = shl nuw nsw i32 %.tr.i, 2
  %i.ig = sub nuw nsw i32 52, %i.if
  %i.ih = tail call double @llvm.powi.f64.i32(double 2.000000e+00, i32 %i.ig) ; 4 uses
  br i1 %.not76.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ii = fadd double %i.ih, %.sroa.06.0.i
  %i.ij = fsub double %i.ii, %i.ih
  br label %.split.i

bb.al:                                            ; preds = %bb.aj
  %i.ik = fneg double %.sroa.06.0.i
  %i.il = fsub double %i.ik, %i.ih
  %i.im = fadd double %i.ih, %i.il
  %i.in = fneg double %i.im
  br label %.split.i

bb.am:                                            ; preds = %bb.be, %.split.i
  %.sroa.06.2.i = phi double [ %.sroa.06.1.i, %.split.i ], [ %i.jh, %bb.be ] ; 2 uses
  %i.io = call i32 @llvm.fptosi.sat.i32.f64(double %.sroa.06.2.i) ; 3 uses
  %i.ip = sext i32 %i.io to i64                   ; 2 uses
  %i.iq = icmp ult i32 %i.io, 16
  br i1 %i.iq, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.026.0.i, i64 %i.ip
  %i.is = load i8, ptr %i.ir, align 1, !noalias !442, !noundef !10 ; 4 uses
  %i.it = load i64, ptr %i.hi, align 8, !alias.scope !443, !noalias !442, !noundef !10 ; 4 uses
  %i.iu = icmp sgt i64 %i.it, -1
  call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp sgt i8 %i.is, -1
  br i1 %i.iv, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 2)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !442

.noexc.i:                                         ; preds = %bb.ao
  %i.iw = load ptr, ptr %i.hj, align 8, !alias.scope !443, !noalias !442, !nonnull !10, !noundef !10
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.it ; 2 uses
  %i.iy = and i8 %i.is, -65
  %i.iz = lshr i8 %i.is, 6
  %i.ja = or disjoint i8 %i.iz, -64
  store i8 %i.ja, ptr %i.ix, align 1, !noalias !442
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  store i8 %i.iy, ptr %i.jb, align 1, !noalias !442
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1)
          to label %.noexc87.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !442

.noexc87.i:                                       ; preds = %bb.ap
  %i.jc = load ptr, ptr %i.hj, align 8, !alias.scope !443, !noalias !442, !nonnull !10, !noundef !10
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.it
  store i8 %i.is, ptr %i.jd, align 1, !noalias !442
  br label %bb.as

bb.aq:                                            ; preds = %bb.am
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ip, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #31
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !442

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.bu, %bb.cd, %bb.az, %bb.ay, %bb.ap, %bb.ao, %bb.ce, %bb.ca, %.invoke.i, %bb.by, %bb.bv, %bb.br, %bb.bp, %bb.bk, %bb.aq
  %lpad.loopexit.split-lp152 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #28
          to label %common.resume unwind label %bb.cm, !noalias !442

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %.noexc87.i, %.noexc.i
  %.sroa.0.03.i.i = phi i64 [ 1, %.noexc87.i ], [ 2, %.noexc.i ]
  %i.je = add nuw i64 %.sroa.0.03.i.i, %i.it      ; 4 uses
  store i64 %i.je, ptr %i.hi, align 8, !alias.scope !443, !noalias !442
  %i.jf = uitofp nneg i32 %i.io to double
  %i.jg = fsub double %.sroa.06.2.i, %i.jf
  %i.jh = fmul double %i.jg, 1.600000e+01         ; 3 uses
  %i.ji = icmp sgt i64 %i.je, -1
  call void @llvm.assume(i1 %i.ji)
  %i.jj = icmp eq i64 %i.je, 1
  br i1 %i.jj, label %bb.at, label %bb.be

bb.at:                                            ; preds = %bb.as
  %i.jk = fcmp une double %i.jh, 0.000000e+00
  br i1 %i.jk, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.k, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.gs, label %bb.ax, label %bb.be

bb.aw:                                            ; preds = %bb.au
  br i1 %brmerge.i, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at
  br i1 %i.hm, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %.sroa.0.0.ph.i.i)
          to label %.noexc89.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !442

.noexc89.i:                                       ; preds = %bb.ay
  %i.jl = load ptr, ptr %i.hj, align 8, !alias.scope !444, !noalias !442, !nonnull !10, !noundef !10 ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 1 ; 3 uses
  br i1 %i.hn, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1)
          to label %.noexc90.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !442

.noexc90.i:                                       ; preds = %bb.az
  %i.jn = load ptr, ptr %i.hj, align 8, !alias.scope !444, !noalias !442, !nonnull !10, !noundef !10
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  store i8 %i.hp, ptr %i.jo, align 1, !noalias !442
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i

bb.ba:                                            ; preds = %.noexc89.i
  store i8 %i.ie, ptr %i.jm, align 1, !noalias !442
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i8 %i.hr, ptr %i.jp, align 1, !noalias !442
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i

bb.bb:                                            ; preds = %.noexc89.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 2 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jl, i64 3 ; 2 uses
  br i1 %i.ho, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i8 %i.id, ptr %i.jm, align 1, !noalias !442
  store i8 %i.hv, ptr %i.jq, align 1, !noalias !442
  store i8 %i.hr, ptr %i.jr, align 1, !noalias !442
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i

bb.bd:                                            ; preds = %bb.bb
  store i8 %i.ic, ptr %i.jm, align 1, !noalias !442
  store i8 %i.hz, ptr %i.jq, align 1, !noalias !442
  store i8 %i.hv, ptr %i.jr, align 1, !noalias !442
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store i8 %i.hr, ptr %i.js, align 1, !noalias !442
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i: ; preds = %bb.bd, %bb.bc, %bb.ba, %.noexc90.i
  %.sroa.0.03.i88.i = phi i64 [ 2, %.noexc90.i ], [ 3, %bb.ba ], [ 4, %bb.bc ], [ 5, %bb.bd ] ; 2 uses
  store i64 %.sroa.0.03.i88.i, ptr %i.hi, align 8, !alias.scope !444, !noalias !442
  br label %bb.be

bb.be:                                            ; preds = %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i, %bb.aw, %bb.av, %bb.as
  %i.jt = phi i64 [ %.sroa.0.03.i88.i, %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit91.i ], [ 1, %bb.aw ], [ %i.je, %bb.as ], [ 1, %bb.av ]
  %i.ju = fcmp oeq double %i.jh, 0.000000e+00
  br i1 %i.ju, label %bb.bf, label %bb.am

bb.bf:                                            ; preds = %bb.be
  %i.jv = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.jw = load i64, ptr %i.jv, align 8, !noalias !442, !noundef !10 ; 3 uses
  %i.jx = icmp sgt i64 %i.jw, -1
  call void @llvm.assume(i1 %i.jx)
  %i.jy = add nuw i64 %i.jw, %i.jt                ; 2 uses
  %or.cond1.i = and i1 %i.hk, %i.k
  br i1 %or.cond1.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %.sroa.034.0.i = phi i64 [ %i.jy, %bb.bf ], [ %..i92.i, %bb.bi ] ; 3 uses
  %i.jz = add i64 %.sroa.034.0.i, %.sroa.10.0.i   ; 5 uses
  %i.ka = icmp ult i64 %i.jz, %.sroa.10.0.i
  br i1 %i.ka, label %bb.cj, label %bb.bj, !prof !17

bb.bh:                                            ; preds = %bb.bf
  %i.kb = add i64 %5, 2
end_hunk_1
