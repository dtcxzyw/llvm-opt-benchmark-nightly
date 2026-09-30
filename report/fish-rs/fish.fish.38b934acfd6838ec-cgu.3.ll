Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.3?download=true
inline.NumInlined: 77
inline.NumDeleted: 38
begin_hunk_0_@_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp10format_e_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish:bb.a
_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i77.i: ; preds = %bb.bq, %bb.bp
  %i.oh = load ptr, ptr %i.ke, align 8, !alias.scope !223, !noalias !224, !nonnull !5, !noundef !5
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.oe
  store i32 %spec.select.i.ph.i.i.i.i.i76.i, ptr %i.oi, align 4, !noalias !221
  %i.oj = add i64 %i.oe, 1
  store i64 %i.oj, ptr %i.kd, align 8, !alias.scope !223, !noalias !224
  %.not.i.i.i.i.i.i78.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i75.i, %i.ms
  br i1 %.not.i.i.i.i.i.i78.i, label %.loopexit.i108, label %.lr.ph.i.i.i.i.i72.i

.loopexit.i108:                                   ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i77.i, %.noexc131
  %i.ok = sub nuw i64 %.sroa.0.030.i, %..i63.i    ; 3 uses
  %i.ol = icmp eq i64 %i.ok, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !195
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
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.oq = lshr i64 %i.oo, 2
  %i.or = and i64 %i.oo, 3
  %.not.i.i.i.i134 = icmp ne i64 %i.or, 0
  %i.os = zext i1 %.not.i.i.i.i134 to i64
  %.sroa.0.0.i.i.i.i135 = add nuw nsw i64 %i.oq, %i.os
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.0.0.i.i.i.i135)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_eNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %.not.i9.i.i.i.i.i136 = icmp samesign eq i64 %i.oo, 0
  br i1 %.not.i9.i.i.i.i.i136, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit, label %.lr.ph.i.i.i.i.i137

.lr.ph.i.i.i.i.i137:                              ; preds = %.noexc146, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142
  %.sroa.0.010.i.i.i.i.i138 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i140, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142 ], [ %i.on, %.noexc146 ] ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 1 ; 3 uses
  %i.ou = load i8, ptr %.sroa.0.010.i.i.i.i.i138, align 1, !alias.scope !232, !noalias !233, !noundef !5 ; 5 uses
  %i.ov = icmp sgt i8 %i.ou, -1
  br i1 %i.ov, label %bb.br, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i139: ; preds = %.lr.ph.i.i.i.i.i137
  %i.ow = and i8 %i.ou, 31
  %i.ox = zext nneg i8 %i.ow to i32               ; 3 uses
  %i.oy = icmp ne ptr %i.ot, %i.op
  call void @llvm.assume(i1 %i.oy)
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i138, i64 2 ; 3 uses
  %i.pa = load i8, ptr %i.ot, align 1, !alias.scope !232, !noalias !233, !noundef !5
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
  %i.pj = load i8, ptr %i.oz, align 1, !alias.scope !232, !noalias !233, !noundef !5
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
  %i.pt = load i8, ptr %i.pi, align 1, !alias.scope !232, !noalias !233, !noundef !5
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
  %i.qb = load i64, ptr %i.kd, align 8, !alias.scope !234, !noalias !232, !noundef !5 ; 3 uses
  %i.qc = load i64, ptr %i.m, align 8, !range !6, !alias.scope !234, !noalias !232, !noundef !5
  %i.qd = icmp eq i64 %i.qb, %i.qc
  br i1 %i.qd, label %bb.bt, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #14
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142 unwind label %.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i142: ; preds = %bb.bt, %bb.bs
  %i.qe = load ptr, ptr %i.ke, align 8, !alias.scope !234, !noalias !232, !nonnull !5, !noundef !5
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.qb
  store i32 %spec.select.i.ph.i.i.i.i.i141, ptr %i.qf, align 4, !noalias !232
  %i.qg = add i64 %i.qb, 1
  store i64 %i.qg, ptr %i.kd, align 8, !alias.scope !234, !noalias !232
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
  %. = zext nneg i48 %.mask to i64
  %.37 = select i1 %i.i, ptr @8, ptr inttoptr (i64 1 to ptr)
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.5.0 = phi i64 [ 1, %bb.b ], [ %., %bb.c ], [ 1, %bb.a ] ; 6 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.ac = trunc nuw i8 %switch.load to i1         ; 2 uses
  %i.ad = fcmp uno double %2, 0.000000e+00
  %..i = select i1 %i.ac, ptr @14, ptr @13
  %.3.i = select i1 %i.ac, ptr @16, ptr @15
  %.sroa.0.0.i = select i1 %i.ad, ptr %.3.i, ptr %..i ; 8 uses
  %i.ae = add nuw nsw i64 %.sroa.5.0, 3           ; 3 uses
  %i.af = trunc i48 %i.aa to i1
  br i1 %i.af, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %3, i64 noundef %i.ae), !noalias !378
  br i1 %i.ag, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 %.sroa.5.0 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %.not.i.i.i.i.i = icmp ne i64 %.sroa.5.0, 0     ; 2 uses
  %i.ai = zext i1 %.not.i.i.i.i.i to i64
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ai), !noalias !384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi ptr [ %.sroa.011.0, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 1 ; 3 uses
  %i.am = load i8, ptr %.sroa.0.010.i.i.i.i.i.i, align 1, !alias.scope !387, !noalias !388, !noundef !5 ; 5 uses
  %i.an = icmp sgt i8 %i.am, -1
  br i1 %i.an, label %bb.h, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ao = and i8 %i.am, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = icmp ne ptr %i.al, %i.ah
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 2 ; 3 uses
  %i.as = load i8, ptr %i.al, align 1, !alias.scope !387, !noalias !388, !noundef !5
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
  %i.bb = load i8, ptr %i.ar, align 1, !alias.scope !387, !noalias !388, !noundef !5
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
  %i.bl = load i8, ptr %i.ba, align 1, !alias.scope !387, !noalias !388, !noundef !5
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
  %i.bt = load i64, ptr %i.aj, align 8, !alias.scope !389, !noalias !384, !noundef !5 ; 3 uses
  %i.bu = load i64, ptr %1, align 8, !range !6, !alias.scope !389, !noalias !384, !noundef !5
  %i.bv = icmp eq i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.j, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #14, !noalias !384
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.bw = load ptr, ptr %i.ak, align 8, !alias.scope !389, !noalias !384, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bt
  store i32 %spec.select.i.ph.i.i.i.i.i.i, ptr %i.bx, align 4, !noalias !384
  %i.by = add i64 %i.bt, 1
  store i64 %i.by, ptr %i.aj, align 8, !alias.scope !389, !noalias !384
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i.i, %i.ah
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i, label %bb.g

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1), !noalias !395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i
  %.sroa.0.010.i.i.i.i.i5.idx.i = phi i64 [ 0, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i ], [ %.sroa.0.1.ph.i.i.i.i.i7.idx.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i ] ; 6 uses
  %.sroa.0.010.i.i.i.i.i5.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.idx.i
  %.sroa.0.010.i.i.i.i.i5.add.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 1 ; 3 uses
  %i.cb = load i8, ptr %.sroa.0.010.i.i.i.i.i5.ptr.i, align 1, !alias.scope !398, !noalias !399, !noundef !5 ; 5 uses
  %i.cc = icmp sgt i8 %i.cb, -1
  br i1 %i.cc, label %bb.l, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i: ; preds = %bb.k
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.add.i
  %i.cd = and i8 %i.cb, 31
  %i.ce = zext nneg i8 %i.cd to i32               ; 3 uses
  %i.cf = icmp ne i64 %.sroa.0.010.i.i.i.i.i5.add.i, 3
  tail call void @llvm.assume(i1 %i.cf)
  %.sroa.0.010.i.i.i.i.i5.add39.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 2 ; 3 uses
  %i.cg = load i8, ptr %.ptr.i, align 1, !alias.scope !398, !noalias !399, !noundef !5
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
  %i.co = load i8, ptr %.ptr42.i, align 1, !alias.scope !398, !noalias !399, !noundef !5
  %i.cp = shl nuw nsw i32 %i.cj, 6
  %i.cq = and i8 %i.co, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr            ; 2 uses
  %i.ct = shl nuw nsw i32 %i.ce, 12
  %i.cu = or disjoint i32 %i.cs, %i.ct
  %i.cv = icmp samesign ugt i8 %i.cb, -17
  br i1 %i.cv, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i12.i, label %bb.m

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i12.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i
  %.ptr41.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i5.add38.i
  %i.cw = icmp ne i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 0
  tail call void @llvm.assume(i1 %i.cw)
  %.sroa.0.010.i.i.i.i.i5.add37.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i5.idx.i, 4
  %i.cx = load i8, ptr %.ptr41.i, align 1, !alias.scope !398, !noalias !399, !noundef !5
  %i.cy = shl nuw nsw i32 %i.ce, 18
  %i.cz = and i32 %i.cy, 1835008
  %i.da = shl nuw nsw i32 %i.cs, 6
  %i.db = and i8 %i.cx, 63
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = or disjoint i32 %i.da, %i.dc
  %i.de = or disjoint i32 %i.dd, %i.cz
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i12.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i, %bb.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i
  %.sroa.0.1.ph.i.i.i.i.i7.idx.i = phi i64 [ %.sroa.0.010.i.i.i.i.i5.add39.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i ], [ %.sroa.0.010.i.i.i.i.i5.add38.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i ], [ %.sroa.0.010.i.i.i.i.i5.add37.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i12.i ], [ %.sroa.0.010.i.i.i.i.i5.add.i, %bb.l ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i8.i = phi i32 [ %i.ck, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i6.i ], [ %i.cu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i11.i ], [ %i.de, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i12.i ], [ %i.cm, %bb.l ]
  %i.df = load i64, ptr %i.bz, align 8, !alias.scope !400, !noalias !395, !noundef !5 ; 3 uses
  %i.dg = load i64, ptr %1, align 8, !range !6, !alias.scope !400, !noalias !395, !noundef !5
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.n, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #14, !noalias !395
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i: ; preds = %bb.n, %bb.m
  %i.di = load ptr, ptr %i.ca, align 8, !alias.scope !400, !noalias !395, !nonnull !5, !noundef !5
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.df
  store i32 %spec.select.i.ph.i.i.i.i.i8.i, ptr %i.dj, align 4, !noalias !395
  %i.dk = add i64 %i.df, 1
  store i64 %i.dk, ptr %i.bz, align 8, !alias.scope !400, !noalias !395
  %.not.i.i.i.i.i.i10.i = icmp samesign eq i64 %.sroa.0.1.ph.i.i.i.i.i7.idx.i, 3
  br i1 %.not.i.i.i.i.i.i10.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i, label %bb.k

bb.o:                                             ; preds = %bb.e
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.dl, align 1, !alias.scope !377, !noalias !401
  br label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp16format_nonfiniteNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i9.i, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ae, i64 %3)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..i.i, ptr %i.dm, align 8, !alias.scope !377, !noalias !401
  br label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp16format_nonfiniteNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit

.critedge.i:                                      ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 %.sroa.5.0 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %.not.i.i.i.i14.i = icmp ne i64 %.sroa.5.0, 0   ; 2 uses
  %i.do = zext i1 %.not.i.i.i.i14.i to i64
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.do), !noalias !407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  br i1 %.not.i.i.i.i14.i, label %.lr.ph.i.i.i.i.i17.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i

.lr.ph.i.i.i.i.i17.i:                             ; preds = %.critedge.i
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i17.i
  %.sroa.0.010.i.i.i.i.i18.i = phi ptr [ %.sroa.011.0, %.lr.ph.i.i.i.i.i17.i ], [ %.sroa.0.1.ph.i.i.i.i.i20.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i ] ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 1 ; 3 uses
  %i.ds = load i8, ptr %.sroa.0.010.i.i.i.i.i18.i, align 1, !alias.scope !410, !noalias !411, !noundef !5 ; 5 uses
  %i.dt = icmp sgt i8 %i.ds, -1
  br i1 %i.dt, label %bb.q, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i: ; preds = %bb.p
  %i.du = and i8 %i.ds, 31
  %i.dv = zext nneg i8 %i.du to i32               ; 3 uses
  %i.dw = icmp ne ptr %i.dr, %i.dn
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 2 ; 3 uses
  %i.dy = load i8, ptr %i.dr, align 1, !alias.scope !410, !noalias !411, !noundef !5
  %i.dz = shl nuw nsw i32 %i.dv, 6
  %i.ea = and i8 %i.dy, 63
  %i.eb = zext nneg i8 %i.ea to i32               ; 2 uses
  %i.ec = or disjoint i32 %i.dz, %i.eb
  %i.ed = icmp samesign ugt i8 %i.ds, -33
  br i1 %i.ed, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ee = zext nneg i8 %i.ds to i32
  br label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i
  %i.ef = icmp ne ptr %i.dx, %i.dn
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 3 ; 3 uses
  %i.eh = load i8, ptr %i.dx, align 1, !alias.scope !410, !noalias !411, !noundef !5
  %i.ei = shl nuw nsw i32 %i.eb, 6
  %i.ej = and i8 %i.eh, 63
  %i.ek = zext nneg i8 %i.ej to i32
  %i.el = or disjoint i32 %i.ei, %i.ek            ; 2 uses
  %i.em = shl nuw nsw i32 %i.dv, 12
  %i.en = or disjoint i32 %i.el, %i.em
  %i.eo = icmp samesign ugt i8 %i.ds, -17
  br i1 %i.eo, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i25.i, label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i25.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i
  %i.ep = icmp ne ptr %i.eg, %i.dn
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i18.i, i64 4
  %i.er = load i8, ptr %i.eg, align 1, !alias.scope !410, !noalias !411, !noundef !5
  %i.es = shl nuw nsw i32 %i.dv, 18
  %i.et = and i32 %i.es, 1835008
  %i.eu = shl nuw nsw i32 %i.el, 6
  %i.ev = and i8 %i.er, 63
  %i.ew = zext nneg i8 %i.ev to i32
  %i.ex = or disjoint i32 %i.eu, %i.ew
  %i.ey = or disjoint i32 %i.ex, %i.et
  br label %bb.r

bb.r:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i25.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i, %bb.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i
  %.sroa.0.1.ph.i.i.i.i.i20.i = phi ptr [ %i.dx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i ], [ %i.eg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i ], [ %i.eq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i25.i ], [ %i.dr, %bb.q ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i21.i = phi i32 [ %i.ec, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i19.i ], [ %i.en, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i24.i ], [ %i.ey, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i25.i ], [ %i.ee, %bb.q ]
  %i.ez = load i64, ptr %i.dp, align 8, !alias.scope !412, !noalias !407, !noundef !5 ; 3 uses
  %i.fa = load i64, ptr %1, align 8, !range !6, !alias.scope !412, !noalias !407, !noundef !5
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.s, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #14, !noalias !407
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i: ; preds = %bb.s, %bb.r
  %i.fc = load ptr, ptr %i.dq, align 8, !alias.scope !412, !noalias !407, !nonnull !5, !noundef !5
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ez
  store i32 %spec.select.i.ph.i.i.i.i.i21.i, ptr %i.fd, align 4, !noalias !407
  %i.fe = add i64 %i.ez, 1
  store i64 %i.fe, ptr %i.dp, align 8, !alias.scope !412, !noalias !407
  %.not.i.i.i.i.i.i23.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i20.i, %i.dn
  br i1 %.not.i.i.i.i.i.i23.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i, label %bb.p

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i22.i, %.critedge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1), !noalias !418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.t

bb.t:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i
  %.sroa.0.010.i.i.i.i.i28.idx.i = phi i64 [ 0, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit26.i ], [ %.sroa.0.1.ph.i.i.i.i.i30.idx.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i ] ; 6 uses
  %.sroa.0.010.i.i.i.i.i28.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.idx.i
  %.sroa.0.010.i.i.i.i.i28.add.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 1 ; 3 uses
  %i.fh = load i8, ptr %.sroa.0.010.i.i.i.i.i28.ptr.i, align 1, !alias.scope !421, !noalias !422, !noundef !5 ; 5 uses
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %bb.u, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i: ; preds = %bb.t
  %.ptr46.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.add.i
  %i.fj = and i8 %i.fh, 31
  %i.fk = zext nneg i8 %i.fj to i32               ; 3 uses
  %i.fl = icmp ne i64 %.sroa.0.010.i.i.i.i.i28.add.i, 3
  tail call void @llvm.assume(i1 %i.fl)
  %.sroa.0.010.i.i.i.i.i28.add45.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 2 ; 3 uses
  %i.fm = load i8, ptr %.ptr46.i, align 1, !alias.scope !421, !noalias !422, !noundef !5
  %i.fn = shl nuw nsw i32 %i.fk, 6
  %i.fo = and i8 %i.fm, 63
  %i.fp = zext nneg i8 %i.fo to i32               ; 2 uses
  %i.fq = or disjoint i32 %i.fn, %i.fp
  %i.fr = icmp samesign ugt i8 %i.fh, -33
  br i1 %i.fr, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fs = zext nneg i8 %i.fh to i32
  br label %bb.v

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i
  %.ptr49.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.add45.i
  %i.ft = icmp samesign ne i64 %.sroa.0.010.i.i.i.i.i28.add45.i, 3
  tail call void @llvm.assume(i1 %i.ft)
  %.sroa.0.010.i.i.i.i.i28.add44.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 3 ; 2 uses
  %i.fu = load i8, ptr %.ptr49.i, align 1, !alias.scope !421, !noalias !422, !noundef !5
  %i.fv = shl nuw nsw i32 %i.fp, 6
  %i.fw = and i8 %i.fu, 63
  %i.fx = zext nneg i8 %i.fw to i32
  %i.fy = or disjoint i32 %i.fv, %i.fx            ; 2 uses
  %i.fz = shl nuw nsw i32 %i.fk, 12
  %i.ga = or disjoint i32 %i.fy, %i.fz
  %i.gb = icmp samesign ugt i8 %i.fh, -17
  br i1 %i.gb, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i35.i, label %bb.v

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i35.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i
  %.ptr48.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.010.i.i.i.i.i28.add44.i
  %i.gc = icmp ne i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 0
  tail call void @llvm.assume(i1 %i.gc)
  %.sroa.0.010.i.i.i.i.i28.add43.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i28.idx.i, 4
  %i.gd = load i8, ptr %.ptr48.i, align 1, !alias.scope !421, !noalias !422, !noundef !5
  %i.ge = shl nuw nsw i32 %i.fk, 18
  %i.gf = and i32 %i.ge, 1835008
  %i.gg = shl nuw nsw i32 %i.fy, 6
  %i.gh = and i8 %i.gd, 63
  %i.gi = zext nneg i8 %i.gh to i32
  %i.gj = or disjoint i32 %i.gg, %i.gi
  %i.gk = or disjoint i32 %i.gj, %i.gf
  br label %bb.v

bb.v:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i35.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i, %bb.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i
  %.sroa.0.1.ph.i.i.i.i.i30.idx.i = phi i64 [ %.sroa.0.010.i.i.i.i.i28.add45.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i ], [ %.sroa.0.010.i.i.i.i.i28.add44.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i ], [ %.sroa.0.010.i.i.i.i.i28.add43.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i35.i ], [ %.sroa.0.010.i.i.i.i.i28.add.i, %bb.u ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i31.i = phi i32 [ %i.fq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i29.i ], [ %i.ga, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i34.i ], [ %i.gk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i35.i ], [ %i.fs, %bb.u ]
  %i.gl = load i64, ptr %i.ff, align 8, !alias.scope !423, !noalias !418, !noundef !5 ; 3 uses
  %i.gm = load i64, ptr %1, align 8, !range !6, !alias.scope !423, !noalias !418, !noundef !5
  %i.gn = icmp eq i64 %i.gl, %i.gm
  br i1 %i.gn, label %bb.w, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #14, !noalias !418
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i: ; preds = %bb.w, %bb.v
  %i.go = load ptr, ptr %i.fg, align 8, !alias.scope !423, !noalias !418, !nonnull !5, !noundef !5
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gl
  store i32 %spec.select.i.ph.i.i.i.i.i31.i, ptr %i.gp, align 4, !noalias !418
  %i.gq = add i64 %i.gl, 1
  store i64 %i.gq, ptr %i.ff, align 8, !alias.scope !423, !noalias !418
  %.not.i.i.i.i.i.i33.i = icmp samesign eq i64 %.sroa.0.1.ph.i.i.i.i.i30.idx.i, 3
  br i1 %.not.i.i.i.i.i.i33.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i, label %bb.t

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i32.i
  %i.gr = tail call noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %3, i64 noundef %i.ae), !noalias !378
  br i1 %i.gr, label %bb.x, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i

bb.x:                                             ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit36.i
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.gs, align 1, !alias.scope !377, !noalias !401
  br label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp16format_nonfiniteNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit

_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp16format_nonfiniteNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit: ; preds = %bb.o, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i, %bb.x
  %.sink.i = phi i8 [ 1, %bb.o ], [ 1, %bb.x ], [ 0, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit13.i ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !377, !noalias !401
  br label %bb.du

bb.y:                                             ; preds = %switch.lookup
  switch i8 %8, label %bb.co [
    i8 6, label %bb.z
    i8 7, label %bb.z
    i8 10, label %bb.cn
    i8 11, label %bb.cn
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %.not76.i = icmp slt i64 %i.h, 0                ; 4 uses
  %i.gt = trunc i48 %6 to i1                      ; 2 uses
  %i.gu = trunc i48 %i.y to i1
  %i.gv = trunc i48 %i.aa to i1                   ; 3 uses
  %i.gw = trunc i48 %.sroa.010.4.extract.shift to i1
end_hunk_0
