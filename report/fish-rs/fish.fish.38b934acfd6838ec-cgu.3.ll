Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.3?download=true
inline.NumInlined: 77
inline.NumDeleted: 38
begin_hunk_0_@_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp10format_e_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish:bb.a
  br i1 %i.og, label %bb.bq, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i77.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #14
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i77.i unwind label %.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i77.i: ; preds = %bb.bq, %bb.bp
  %i.oh = load ptr, ptr %i.ke, align 8, !alias.scope !203, !noalias !206, !nonnull !5, !noundef !5
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.oe
  store i32 %spec.select.i.ph.i.i.i.i.i76.i, ptr %i.oi, align 4, !noalias !197
  %i.oj = add i64 %i.oe, 1
  store i64 %i.oj, ptr %i.kd, align 8, !alias.scope !203, !noalias !206
  %.not.i.i.i.i.i.i78.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i75.i, %i.ms
  br i1 %.not.i.i.i.i.i.i78.i, label %.loopexit.i108, label %.lr.ph.i.i.i.i.i72.i

.loopexit.i108:                                   ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i77.i, %.noexc131
  %i.ok = sub i64 %.sroa.0.030.i, %..i63.i        ; 3 uses
  %i.ol = icmp eq i64 %i.ok, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131
  %exitcond.not.i109 = icmp eq i32 %i.kg, %smax.i
  %or.cond = select i1 %i.ol, i1 true, i1 %exitcond.not.i109
  br i1 %or.cond, label %.loopexit13.i, label %bb.ax

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142, %.noexc146, %.noexc101
  %or.cond11 = select i1 %.not, i1 true, i1 %i.az
  %.pre = add i64 %i.aw, %i.w                     ; 4 uses
  br i1 %or.cond11, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit._crit_edge, label %bb.bu

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_eNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit: ; preds = %.noexc123
  %i.om = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.oo = load i64, ptr %i.at, align 8, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.oq = lshr i64 %i.oo, 2
  %i.or = and i64 %i.oo, 3
  %.not.i.i.i.i134 = icmp ne i64 %i.or, 0
  %i.os = zext i1 %.not.i.i.i.i134 to i64
  %.sroa.0.0.i.i.i.i135 = add nuw nsw i64 %i.oq, %i.os
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.0.0.i.i.i.i135)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_eNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %.not.i9.i.i.i.i.i136 = icmp samesign eq i64 %i.oo, 0
  br i1 %.not.i9.i.i.i.i.i136, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit, label %.lr.ph.i.i.i.i.i137

.lr.ph.i.i.i.i.i137:                              ; preds = %.noexc146, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142
  %.sroa.0.010.i.i.i.i.i138 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i140, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142 ], [ %i.on, %.noexc146 ] ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 1 ; 3 uses
  %i.ou = load i8, ptr %.sroa.0.010.i.i.i.i.i138, align 1, !alias.scope !226, !noalias !227, !noundef !5 ; 5 uses
  %i.ov = icmp sgt i8 %i.ou, -1
  br i1 %i.ov, label %bb.br, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139: ; preds = %.lr.ph.i.i.i.i.i137
  %i.ow = and i8 %i.ou, 31
  %i.ox = zext nneg i8 %i.ow to i32               ; 3 uses
  %i.oy = icmp ne ptr %i.ot, %i.op
  call void @llvm.assume(i1 %i.oy)
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 2 ; 3 uses
  %i.pa = load i8, ptr %i.ot, align 1, !alias.scope !226, !noalias !227, !noundef !5
  %i.pb = shl nuw nsw i32 %i.ox, 6
  %i.pc = and i8 %i.pa, 63
  %i.pd = zext nneg i8 %i.pc to i32               ; 2 uses
  %i.pe = or disjoint i32 %i.pb, %i.pd
  %i.pf = icmp samesign ugt i8 %i.ou, -33
  br i1 %i.pf, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144, label %bb.bs

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i137
  %i.pg = zext nneg i8 %i.ou to i32
  br label %bb.bs

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139
  %i.ph = icmp ne ptr %i.oz, %i.op
  call void @llvm.assume(i1 %i.ph)
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 3 ; 3 uses
  %i.pj = load i8, ptr %i.oz, align 1, !alias.scope !226, !noalias !227, !noundef !5
  %i.pk = shl nuw nsw i32 %i.pd, 6
  %i.pl = and i8 %i.pj, 63
  %i.pm = zext nneg i8 %i.pl to i32
  %i.pn = or disjoint i32 %i.pk, %i.pm            ; 2 uses
  %i.po = shl nuw nsw i32 %i.ox, 12
  %i.pp = or disjoint i32 %i.pn, %i.po
  %i.pq = icmp samesign ugt i8 %i.ou, -17
  br i1 %i.pq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i145, label %bb.bs

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i145: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144
  %i.pr = icmp ne ptr %i.pi, %i.op
  call void @llvm.assume(i1 %i.pr)
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 4
  %i.pt = load i8, ptr %i.pi, align 1, !alias.scope !226, !noalias !227, !noundef !5
  %i.pu = shl nuw nsw i32 %i.ox, 18
  %i.pv = and i32 %i.pu, 1835008
  %i.pw = shl nuw nsw i32 %i.pn, 6
  %i.px = and i8 %i.pt, 63
  %i.py = zext nneg i8 %i.px to i32
  %i.pz = or disjoint i32 %i.pw, %i.py
  %i.qa = or disjoint i32 %i.pz, %i.pv
  br label %bb.bs

bb.bs:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i145, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144, %bb.br, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139
  %.sroa.0.1.ph.i.i.i.i.i140 = phi ptr [ %i.oz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139 ], [ %i.pi, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144 ], [ %i.ps, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i145 ], [ %i.ot, %bb.br ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i141 = phi i32 [ %i.pe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139 ], [ %i.pp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i144 ], [ %i.qa, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i145 ], [ %i.pg, %bb.br ]
  %i.qb = load i64, ptr %i.kd, align 8, !alias.scope !232, !noalias !226, !noundef !5 ; 3 uses
  %i.qc = load i64, ptr %i.m, align 8, !range !37, !alias.scope !232, !noalias !226, !noundef !5
  %i.qd = icmp eq i64 %i.qb, %i.qc
  br i1 %i.qd, label %bb.bt, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #14
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142 unwind label %.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142: ; preds = %bb.bt, %bb.bs
  %i.qe = load ptr, ptr %i.ke, align 8, !alias.scope !232, !noalias !226, !nonnull !5, !noundef !5
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.qb
  store i32 %spec.select.i.ph.i.i.i.i.i141, ptr %i.qf, align 4, !noalias !226
  %i.qg = add i64 %i.qb, 1
  store i64 %i.qg, ptr %i.kd, align 8, !alias.scope !232, !noalias !226
  %.not.i.i.i.i.i.i143 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i140, %i.op
  br i1 %.not.i.i.i.i.i.i143, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit, label %.lr.ph.i.i.i.i.i137

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit._crit_edge: ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit, %bb.bw
  %i.qh = icmp ult i64 %.pre, %i.w
  br i1 %i.qh, label %.invoke, label %bb.bx

bb.bu:                                            ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit
  %i.qi = icmp ult i64 %.pre, %i.w
  br i1 %i.qi, label %.invoke, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qj = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 32, i64 noundef %i.o, i64 noundef %.pre)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.qj, label %select.unfold, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit._crit_edge

bb.bx:                                            ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit._crit_edge
  %..i149 = call noundef i64 @llvm.umax.i64(i64 %.pre, i64 %i.o)
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..i149, ptr %i.qk, align 8
  store i8 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ql = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit: ; preds = %bb.bx, %select.unfold
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ca:                                            ; preds = %.body
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp12format_floatNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, double noundef %2, i64 noundef %3, i64 noundef range(i64 0, 2) %4, i64 %5, i48 %6, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %7, i8 noundef range(i8 0, 17) %8, ptr noalias nofree noundef align 8 dereferenceable(24) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.37.a = zext nneg i48 %.mask to i64
  %.37 = select i1 %i.i, ptr @8, ptr inttoptr (i64 1 to ptr)
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.5.0 = phi i64 [ 1, %bb.b ], [ %.37.a, %bb.c ], [ 1, %bb.a ] ; 8 uses
  %.sroa.011.0 = phi ptr [ @9, %bb.b ], [ %.37, %bb.c ], [ @10, %bb.a ] ; 5 uses
  %i.k = trunc nuw i64 %4 to i1                   ; 4 uses
  %.38 = select i1 %i.k, i64 %5, i64 6            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = zext nneg i8 %8 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp12format_floatNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish, i64 %i.l
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.ac = trunc nuw i8 %switch.load to i1         ; 2 uses
  %i.ad = fcmp uno double %2, 0.000000e+00
  %..i = select i1 %i.ac, ptr @14, ptr @13
  %.3.i = select i1 %i.ac, ptr @16, ptr @15
  %.sroa.0.0.i = select i1 %i.ad, ptr %.3.i, ptr %..i ; 8 uses
  %i.ae = add nuw nsw i64 %.sroa.5.0, 3           ; 3 uses
  %i.af = trunc i48 %i.aa to i1
  br i1 %i.af, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %3, i64 noundef %i.ae), !noalias !238
  br i1 %i.ag, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 %.sroa.5.0 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %.not.i.i.i.i.i = icmp ne i64 %.sroa.5.0, 0
  %i.ai = zext i1 %.not.i.i.i.i.i to i64
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ai), !noalias !253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %.not.i9.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.5.0, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi ptr [ %.sroa.011.0, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 1 ; 3 uses
  %i.am = load i8, ptr %.sroa.0.010.i.i.i.i.i.i, align 1, !alias.scope !260, !noalias !261, !noundef !5 ; 5 uses
  %i.an = icmp sgt i8 %i.am, -1
  br i1 %i.an, label %bb.h, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ao = and i8 %i.am, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = icmp ne ptr %i.al, %i.ah
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 2 ; 3 uses
  %i.as = load i8, ptr %i.al, align 1, !alias.scope !260, !noalias !261, !noundef !5
  %i.at = shl nuw nsw i32 %i.ap, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = icmp samesign ugt i8 %i.am, -33
  br i1 %i.ax, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = zext nneg i8 %i.am to i32
  br label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i
  %i.az = icmp ne ptr %i.ar, %i.ah
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 3 ; 3 uses
  %i.bb = load i8, ptr %i.ar, align 1, !alias.scope !260, !noalias !261, !noundef !5
  %i.bc = shl nuw nsw i32 %i.av, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = shl nuw nsw i32 %i.ap, 12
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = icmp samesign ugt i8 %i.am, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i, label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i
  %i.bj = icmp ne ptr %i.ba, %i.ah
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 4
  %i.bl = load i8, ptr %i.ba, align 1, !alias.scope !260, !noalias !261, !noundef !5
  %i.bm = shl nuw nsw i32 %i.ap, 18
  %i.bn = and i32 %i.bm, 1835008
  %i.bo = shl nuw nsw i32 %i.bf, 6
  %i.bp = and i8 %i.bl, 63
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = or disjoint i32 %i.br, %i.bn
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i.i = phi ptr [ %i.ar, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i ], [ %i.ba, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i ], [ %i.al, %bb.h ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i = phi i32 [ %i.aw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i ], [ %i.bs, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i ], [ %i.ay, %bb.h ]
  %i.bt = load i64, ptr %i.aj, align 8, !alias.scope !266, !noalias !253, !noundef !5 ; 3 uses
  %i.bu = load i64, ptr %1, align 8, !range !37, !alias.scope !266, !noalias !253, !noundef !5
  %i.bv = icmp eq i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.j, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #14, !noalias !253
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.bw = load ptr, ptr %i.ak, align 8, !alias.scope !266, !noalias !253, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bt
  store i32 %spec.select.i.ph.i.i.i.i.i.i, ptr %i.bx, align 4, !noalias !253
  %i.by = add i64 %i.bt, 1
  store i64 %i.by, ptr %i.aj, align 8, !alias.scope !266, !noalias !253
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i.i, %i.ah
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i, label %bb.g

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1), !noalias !282
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i
  %.sroa.0.010.i.i.i.i.i5.idx.i = phi i64 [ 0, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i ], [ %.sroa.0.1.ph.i.i.i.i.i7.idx.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i ] ; 6 uses
  %.sroa.0.010.i.i.i.i.i5.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.idx.i
  %.sroa.0.010.i.i.i.i.i5.add.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 1 ; 3 uses
  %i.cb = load i8, ptr %.sroa.0.010.i.i.i.i.i5.ptr.i, align 1, !alias.scope !289, !noalias !290, !noundef !5 ; 5 uses
  %i.cc = icmp sgt i8 %i.cb, -1
  br i1 %i.cc, label %bb.l, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i: ; preds = %bb.k
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.add.i
  %i.cd = and i8 %i.cb, 31
  %i.ce = zext nneg i8 %i.cd to i32               ; 3 uses
  %i.cf = icmp ne i64 %.sroa.0.010.i.i.i.i.i5.add.i, 3
  tail call void @llvm.assume(i1 %i.cf)
  %.sroa.0.010.i.i.i.i.i5.add39.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 2 ; 3 uses
  %i.cg = load i8, ptr %.ptr.i, align 1, !alias.scope !289, !noalias !290, !noundef !5
  %i.ch = shl nuw nsw i32 %i.ce, 6
  %i.ci = and i8 %i.cg, 63
  %i.cj = zext nneg i8 %i.ci to i32               ; 2 uses
  %i.ck = or disjoint i32 %i.ch, %i.cj
  %i.cl = icmp samesign ugt i8 %i.cb, -33
  br i1 %i.cl, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = zext nneg i8 %i.cb to i32
  br label %bb.m

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i
  %.ptr42.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.add39.i
  %i.cn = icmp samesign ne i64 %.sroa.0.010.i.i.i.i.i5.add39.i, 3
  tail call void @llvm.assume(i1 %i.cn)
  %.sroa.0.010.i.i.i.i.i5.add38.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 3 ; 2 uses
  %i.co = load i8, ptr %.ptr42.i, align 1, !alias.scope !289, !noalias !290, !noundef !5
  %i.cp = shl nuw nsw i32 %i.cj, 6
  %i.cq = and i8 %i.co, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr            ; 2 uses
  %i.ct = shl nuw nsw i32 %i.ce, 12
end_hunk_0
