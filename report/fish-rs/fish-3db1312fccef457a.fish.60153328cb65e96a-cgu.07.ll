Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.07?download=true
inline.NumInlined: 1670
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp10format_e_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish:bb.a
_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i
  %i.ce = icmp ne ptr %i.bv, %i.ba
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 4
  %i.cg = load i8, ptr %i.bv, align 1, !alias.scope !184, !noalias !185, !noundef !10
  %i.ch = shl nuw nsw i32 %i.bk, 18
  %i.ci = and i32 %i.ch, 1835008
  %i.cj = shl nuw nsw i32 %i.ca, 6
  %i.ck = and i8 %i.cg, 63
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl
  %i.cn = or disjoint i32 %i.cm, %i.ci
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, %bb.k, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i = phi ptr [ %i.bm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.bv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.cf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.bg, %bb.k ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.br, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.cc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.cn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.bt, %bb.k ]
  %i.co = load i64, ptr %i.be, align 8, !alias.scope !186, !noalias !184, !noundef !10 ; 3 uses
  %i.cp = load i64, ptr %i.m, align 8, !range !14, !alias.scope !186, !noalias !184, !noundef !10
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.m, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #27
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.cr = load ptr, ptr %i.bf, align 8, !alias.scope !186, !noalias !184, !nonnull !10, !noundef !10
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.co
  store i32 %spec.select.i.ph.i.i.i.i.i, ptr %i.cs, align 4, !noalias !184
  %i.ct = add i64 %i.co, 1
  store i64 %i.ct, ptr %i.be, align 8, !alias.scope !186, !noalias !184
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i, %i.ba
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit, label %bb.j

bb.n:                                             ; preds = %bb.h
  %i.cu = add i64 %i.aw, %i.w                     ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.w
  br i1 %i.cv, label %.invoke, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 32, i64 noundef %i.o, i64 noundef %i.cu)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  br i1 %i.cw, label %select.unfold, label %bb.i

select.unfold:                                    ; preds = %.noexc103, %bb.p, %bb.bx, %bb.bb, %.noexc123.a, %.split.us.i, %.loopexit136.i, %.noexc101, %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.cx, align 1
  store i8 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.q

bb.q:                                             ; preds = %select.unfold
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %.body, %bb.bz, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.qd, %bb.bz ], [ %i.cy, %bb.q ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i, %.noexc
  %.not = xor i1 %i.ay, true                      ; 2 uses
  %or.cond7 = select i1 %.not, i1 %i.az, i1 false
  br i1 %or.cond7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.v, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit
  br i1 %3, label %bb.aw, label %bb.w

bb.t:                                             ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit
  %i.da = add i64 %i.aw, %i.w                     ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.w
  br i1 %i.db, label %.invoke, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 48, i64 noundef %i.o, i64 noundef %i.da)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  br i1 %i.dc, label %select.unfold, label %bb.s

bb.w:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !187, !noalias !191, !noundef !10 ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.noexc87, %bb.w
  %i.dg = phi i32 [ %i.de, %bb.w ], [ %i.dp, %.noexc87 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !187, !noalias !191, !noundef !10
  %i.dj = trunc i64 %i.di to i32
  %.not116.i = icmp slt i32 %i.dg, %i.dj
  br i1 %.not116.i, label %._crit_edge.thread.i, label %.lr.ph117.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  %.not82151.i = trunc i8 %.sroa.1128.0.copyload to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !range !192, !alias.scope !188, !noalias !193
  %i.dm = icmp ne i32 %i.dl, -1
  %.sroa.010.0152.i = select i1 %.not82151.i, i1 %i.dm, i1 false
  %.sroa.444.0..sroa_idx157.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.449.0..sroa_idx158.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.423.0..sroa_idx159.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.428.0..sroa_idx160.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br i1 %.sroa.010.0152.i, label %.lr.ph121.split.us.preheader.i, label %.lr.ph121.split.preheader.i

.lr.ph.i:                                         ; preds = %bb.w, %.noexc87
  invoke void @_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 0)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc87:                                         ; preds = %.lr.ph.i
  %i.dp = load i32, ptr %i.dd, align 8, !alias.scope !187, !noalias !191, !noundef !10 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %.noexc94
  %.not82.i = trunc i8 %.sroa.1128.0.copyload to i1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !range !192, !alias.scope !188, !noalias !193
  %i.dt = icmp ne i32 %i.ds, -1
  %.sroa.010.0.i = select i1 %.not82.i, i1 %i.dt, i1 false ; 2 uses
  %.not.i118.i = icmp slt i32 %i.eg, 0
  br i1 %.not.i118.i, label %._crit_edge122.i, label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %._crit_edge.i
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br i1 %.sroa.010.0.i, label %.lr.ph121.split.us.preheader.i, label %.lr.ph121.split.preheader.i

.lr.ph121.split.preheader.i:                      ; preds = %.lr.ph121.i, %._crit_edge.thread.i
  %.sroa.449.0..sroa_idx166.i = phi ptr [ %.sroa.449.0..sroa_idx158.i, %._crit_edge.thread.i ], [ %.sroa.449.0..sroa_idx.i, %.lr.ph121.i ] ; 2 uses
  %i.dw = phi ptr [ %i.dn, %._crit_edge.thread.i ], [ %i.du, %.lr.ph121.i ] ; 2 uses
  %.sroa.444.0..sroa_idx165.i = phi ptr [ %.sroa.444.0..sroa_idx157.i, %._crit_edge.thread.i ], [ %.sroa.444.0..sroa_idx.i, %.lr.ph121.i ] ; 2 uses
  %.lcssa113154163.i = phi i32 [ %i.dg, %._crit_edge.thread.i ], [ %i.eg, %.lr.ph121.i ] ; 2 uses
  %i.dx = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %.lr.ph121.split.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !194
  store ptr %i.dx, ptr %i.e, align 8, !noalias !194
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx165.i, align 8, !noalias !194
  store ptr null, ptr %i.dw, align 8, !noalias !194
  store i16 1, ptr %.sroa.449.0..sroa_idx166.i, align 8, !noalias !194
  %i.dy = invoke noundef zeroext i1 @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull @20, ptr noundef nonnull %i.e)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %.noexc88
  br i1 %i.dy, label %.loopexit136.i, label %bb.x

bb.x:                                             ; preds = %.noexc89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !194
  %.not.i.peel.i = icmp eq i32 %.lcssa113154163.i, 0
  br i1 %.not.i.peel.i, label %._crit_edge122.thread170.i, label %.lr.ph121.split.i

.lr.ph121.split.us.preheader.i:                   ; preds = %.lr.ph121.i, %._crit_edge.thread.i
  %.sroa.428.0..sroa_idx168.i = phi ptr [ %.sroa.428.0..sroa_idx160.i, %._crit_edge.thread.i ], [ %.sroa.428.0..sroa_idx.i, %.lr.ph121.i ] ; 2 uses
  %i.dz = phi ptr [ %i.do, %._crit_edge.thread.i ], [ %i.dv, %.lr.ph121.i ] ; 2 uses
  %.sroa.423.0..sroa_idx167.i = phi ptr [ %.sroa.423.0..sroa_idx159.i, %._crit_edge.thread.i ], [ %.sroa.423.0..sroa_idx.i, %.lr.ph121.i ] ; 2 uses
  %.lcssa113154164.i = phi i32 [ %i.dg, %._crit_edge.thread.i ], [ %i.eg, %.lr.ph121.i ] ; 2 uses
  %i.ea = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %.lr.ph121.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !194
  store ptr %i.ea, ptr %i.f, align 8, !noalias !194
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx167.i, align 8, !noalias !194
  store ptr null, ptr %i.dz, align 8, !noalias !194
  store i16 1, ptr %.sroa.428.0..sroa_idx168.i, align 8, !noalias !194
  %i.eb = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @21, ptr noundef nonnull @20, ptr noundef nonnull %i.f)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %.noexc90
  br i1 %i.eb, label %.split.us.i, label %bb.y

bb.y:                                             ; preds = %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !194
  %.not.i.us.peel.i = icmp eq i32 %.lcssa113154164.i, 0
  br i1 %.not.i.us.peel.i, label %._crit_edge122.thread.i, label %.lr.ph121.split.us.i

.lr.ph121.split.us.i:                             ; preds = %bb.y, %bb.z
  %.sroa.0.0101119.us.i = phi i32 [ %6, %bb.z ], [ 1, %bb.y ] ; 2 uses
  %i.ec = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %.sroa.0.0101119.us.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc92:                                         ; preds = %.lr.ph121.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !194
  store ptr %i.ec, ptr %i.f, align 8, !noalias !194
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx167.i, align 8, !noalias !194
  store ptr null, ptr %i.dz, align 8, !noalias !194
  store i16 9, ptr %.sroa.428.0..sroa_idx168.i, align 8, !noalias !194
  %i.ed = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @21, ptr noundef nonnull @20, ptr noundef nonnull %i.f)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc93:                                         ; preds = %.noexc92
  br i1 %i.ed, label %.split.us.i, label %bb.z

bb.z:                                             ; preds = %.noexc93
  %4 = call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0101119.us.i, i32 1) ; 2 uses
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !194
  %.not.i.us.i = icmp sgt i32 %6, %.lcssa113154164.i
  %or.cond108.us.i = or i1 %5, %.not.i.us.i
  br i1 %or.cond108.us.i, label %._crit_edge122.thread.i, label %.lr.ph121.split.us.i, !llvm.loop !65

.lr.ph117.i:                                      ; preds = %.preheader.i, %.noexc94
  invoke void @_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal9push_back(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 0)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc94:                                         ; preds = %.lr.ph117.i
  %i.ee = load i64, ptr %i.dh, align 8, !alias.scope !187, !noalias !191, !noundef !10
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = load i32, ptr %i.dd, align 8, !alias.scope !187, !noalias !191, !noundef !10 ; 4 uses
  %.not.i = icmp slt i32 %i.eg, %i.ef
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph117.i

.lr.ph121.split.i:                                ; preds = %bb.x, %bb.av
  %.sroa.0.0101119.i = phi i32 [ %9, %bb.av ], [ 1, %bb.x ] ; 2 uses
  %i.eh = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %.sroa.0.0101119.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc95:                                         ; preds = %.lr.ph121.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !194
  store ptr %i.eh, ptr %i.e, align 8, !noalias !194
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx165.i, align 8, !noalias !194
  store ptr null, ptr %i.dw, align 8, !noalias !194
  store i16 9, ptr %.sroa.449.0..sroa_idx166.i, align 8, !noalias !194
  %i.ei = invoke noundef zeroext i1 @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull @20, ptr noundef nonnull %i.e)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc96:                                         ; preds = %.noexc95
  br i1 %i.ei, label %.loopexit136.i, label %bb.av

._crit_edge122.i:                                 ; preds = %._crit_edge.i
  br i1 %.sroa.010.0.i, label %._crit_edge122.thread.i, label %._crit_edge122.thread170.i

._crit_edge122.thread170.i:                       ; preds = %bb.av, %.noexc98, %._crit_edge122.i, %bb.x
  %i.ej = trunc i8 %.sroa.0.0.copyload to i1
  %or.cond.i = select i1 %i.am, i1 true, i1 %i.ej
  br i1 %or.cond.i, label %bb.ah, label %bb.aj

._crit_edge122.thread.i:                          ; preds = %bb.z, %._crit_edge122.i, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !194
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !190, !noalias !195, !nonnull !10, !noundef !10
  %i.em = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !190, !noalias !195, !noundef !10
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale14apply_grouping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.el, i64 noundef %i.en)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %._crit_edge122.thread.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !194, !nonnull !10, !noundef !10 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !noalias !194, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.et = lshr i64 %i.er, 2
  %i.eu = and i64 %i.er, 3
  %.not.i.i.i.i.i = icmp ne i64 %i.eu, 0
  %i.ev = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.et, %i.ev
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %.noexc97
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %.not.i9.i.i.i.i.i.i = icmp samesign eq i64 %i.er, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 1 ; 3 uses
  %i.ez = load i8, ptr %.sroa.0.010.i.i.i.i.i.i, align 1, !alias.scope !203, !noalias !204, !noundef !10 ; 5 uses
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %bb.ab, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.fb = and i8 %i.ez, 31
  %i.fc = zext nneg i8 %i.fb to i32               ; 3 uses
  %i.fd = icmp ne ptr %i.ey, %i.es
  call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 2 ; 3 uses
  %i.ff = load i8, ptr %i.ey, align 1, !alias.scope !203, !noalias !204, !noundef !10
  %i.fg = shl nuw nsw i32 %i.fc, 6
  %i.fh = and i8 %i.ff, 63
  %i.fi = zext nneg i8 %i.fh to i32               ; 2 uses
  %i.fj = or disjoint i32 %i.fg, %i.fi
  %i.fk = icmp samesign ugt i8 %i.ez, -33
  br i1 %i.fk, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fl = zext nneg i8 %i.ez to i32
  br label %bb.ac

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i
  %i.fm = icmp ne ptr %i.fe, %i.es
  call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 3 ; 3 uses
  %i.fo = load i8, ptr %i.fe, align 1, !alias.scope !203, !noalias !204, !noundef !10
  %i.fp = shl nuw nsw i32 %i.fi, 6
  %i.fq = and i8 %i.fo, 63
  %i.fr = zext nneg i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fp, %i.fr            ; 2 uses
  %i.ft = shl nuw nsw i32 %i.fc, 12
  %i.fu = or disjoint i32 %i.fs, %i.ft
  %i.fv = icmp samesign ugt i8 %i.ez, -17
  br i1 %i.fv, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i, label %bb.ac

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i
  %i.fw = icmp ne ptr %i.fn, %i.es
  call void @llvm.assume(i1 %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 4
  %i.fy = load i8, ptr %i.fn, align 1, !alias.scope !203, !noalias !204, !noundef !10
  %i.fz = shl nuw nsw i32 %i.fc, 18
  %i.ga = and i32 %i.fz, 1835008
  %i.gb = shl nuw nsw i32 %i.fs, 6
  %i.gc = and i8 %i.fy, 63
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = or disjoint i32 %i.gb, %i.gd
  %i.gf = or disjoint i32 %i.ge, %i.ga
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i, %bb.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i.i = phi ptr [ %i.fe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i ], [ %i.fn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i ], [ %i.fx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i ], [ %i.ey, %bb.ab ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i = phi i32 [ %i.fj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i ], [ %i.fu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i ], [ %i.gf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i ], [ %i.fl, %bb.ab ]
  %i.gg = load i64, ptr %i.ew, align 8, !alias.scope !205, !noalias !206, !noundef !10 ; 3 uses
  %i.gh = load i64, ptr %i.m, align 8, !range !14, !alias.scope !205, !noalias !206, !noundef !10
  %i.gi = icmp eq i64 %i.gg, %i.gh
  br i1 %i.gi, label %bb.ad, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #27
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i unwind label %.loopexit.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %i.gj = load ptr, ptr %i.ex, align 8, !alias.scope !205, !noalias !206, !nonnull !10, !noundef !10
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gg
  store i32 %spec.select.i.ph.i.i.i.i.i.i, ptr %i.gk, align 4, !noalias !203
  %i.gl = add i64 %i.gg, 1
  store i64 %i.gl, ptr %i.ew, align 8, !alias.scope !205, !noalias !206
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i.i, %i.es
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i, label %bb.aa

.loopexit.i:                                      ; preds = %bb.ad
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp.i:                             ; preds = %.noexc97
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #28
          to label %.body unwind label %bb.au

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i, %.noexc.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.af

bb.af:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !194
  br label %._crit_edge122.thread170.i

bb.ah:                                            ; preds = %._crit_edge122.thread170.i
  %i.go = load i32, ptr %i.t, align 4, !range !16, !alias.scope !188, !noalias !193, !noundef !10
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !207, !noalias !208, !noundef !10 ; 3 uses
  %i.gr = load i64, ptr %i.m, align 8, !range !14, !alias.scope !207, !noalias !208, !noundef !10
  %i.gs = icmp eq i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.ai, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #27
          to label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i: ; preds = %bb.ai, %bb.ah
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !207, !noalias !208, !nonnull !10, !noundef !10
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gq
  store i32 %i.go, ptr %i.gv, align 4
  %i.gw = add i64 %i.gq, 1
  store i64 %i.gw, ptr %i.gp, align 8, !alias.scope !207, !noalias !208
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i, %._crit_edge122.thread170.i
  %i.gx = load i32, ptr %i.dd, align 8, !alias.scope !187, !noalias !191, !noundef !10
  %i.gy = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gx, i32 1) ; 2 uses
  %i.gz = extractvalue { i32, i1 } %i.gy, 1
  br i1 %i.gz, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ha = load i64, ptr %i.dh, align 8, !alias.scope !187, !noalias !191, !noundef !10
  %i.hb = trunc i64 %i.ha to i32                  ; 2 uses
  %i.hc = extractvalue { i32, i1 } %i.gy, 0       ; 2 uses
  %i.hd = icmp slt i32 %i.hc, %i.hb
  br i1 %i.hd, label %.lr.ph126.i, label %._crit_edge127.i

.lr.ph126.i:                                      ; preds = %bb.ak
  %i.he = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #31
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit100.i, %.lr.ph126.i
  %.sroa.0.0124.i = phi i64 [ %i.q, %.lr.ph126.i ], [ %i.jp, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit100.i ] ; 3 uses
  %.pn123.i = phi i32 [ %i.hc, %.lr.ph126.i ], [ %i.hj, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit100.i ] ; 2 uses
  %i.hj = add nsw i32 %.pn123.i, 1                ; 2 uses
  %i.hk = icmp eq i64 %.sroa.0.0124.i, 0
  br i1 %i.hk, label %._crit_edge127.i, label %bb.an

._crit_edge127.i:                                 ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit100.i, %bb.am, %bb.ak
  %.sroa.0.0.lcssa.i = phi i64 [ %i.q, %bb.ak ], [ %i.jp, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit100.i ], [ 0, %bb.am ]
  %i.hl = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 48, i64 noundef %.sroa.0.0.lcssa.i, i64 noundef 0)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %._crit_edge127.i
  br i1 %i.hl, label %select.unfold, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit

bb.an:                                            ; preds = %bb.am
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0124.i, i64 9) ; 8 uses
  store i64 0, ptr %i.he, align 8, !alias.scope !190, !noalias !195
  %i.hm = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %.pn123.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc102:                                        ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !194
  store ptr %i.hm, ptr %i.c, align 8, !noalias !194
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !194
  store ptr null, ptr %i.hf, align 8, !noalias !194
  store i16 9, ptr %.sroa.461.0..sroa_idx.i, align 8, !noalias !194
  %i.hn = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @21, ptr noundef nonnull @20, ptr noundef nonnull %i.c)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc103:                                        ; preds = %.noexc102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !194
  br i1 %i.hn, label %select.unfold, label %bb.ao

bb.ao:                                            ; preds = %.noexc103
  %i.ho = load ptr, ptr %i.hg, align 8, !alias.scope !190, !noalias !195, !nonnull !10, !noundef !10 ; 5 uses
  %i.hp = load i64, ptr %i.he, align 8, !alias.scope !190, !noalias !195, !noundef !10 ; 4 uses
  %.not.i86.i = icmp ult i64 %..i.i, %i.hp
  br i1 %.not.i86.i, label %bb.ap, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ao
  %i.hq = icmp eq i64 %..i.i, %i.hp
  br i1 %i.hq, label %.lr.ph.i.i.i.i.i91.i, label %.invoke322

bb.ap:                                            ; preds = %bb.ao
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %..i.i
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !209, !noundef !10
  %i.ht = icmp sgt i8 %i.hs, -65
  br i1 %i.ht, label %.lr.ph.i.i.i.i.i91.i, label %.invoke322

.lr.ph.i.i.i.i.i91.i:                             ; preds = %bb.ap, %.split.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 %..i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.hv = add nuw nsw i64 %..i.i, 3
  %.sroa.0.0.i.i.i.i89.i = lshr i64 %i.hv, 2
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.0.0.i.i.i.i89.i)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc104:                                        ; preds = %.lr.ph.i.i.i.i.i91.i
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  br label %bb.aq

bb.aq:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i96.i, %.noexc104
  %.sroa.0.010.i.i.i.i.i92.i = phi ptr [ %i.ho, %.noexc104 ], [ %.sroa.0.1.ph.i.i.i.i.i94.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i96.i ] ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i92.i, i64 1 ; 3 uses
  %i.hx = load i8, ptr %.sroa.0.010.i.i.i.i.i92.i, align 1, !alias.scope !217, !noalias !218, !noundef !10 ; 5 uses
  %i.hy = icmp sgt i8 %i.hx, -1
  br i1 %i.hy, label %bb.ar, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i93.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i93.i: ; preds = %bb.aq
  %i.hz = and i8 %i.hx, 31
  %i.ia = zext nneg i8 %i.hz to i32               ; 3 uses
  %i.ib = icmp ne ptr %i.hw, %i.hu
  call void @llvm.assume(i1 %i.ib)
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i92.i, i64 2 ; 3 uses
  %i.id = load i8, ptr %i.hw, align 1, !alias.scope !217, !noalias !218, !noundef !10
  %i.ie = shl nuw nsw i32 %i.ia, 6
  %i.if = and i8 %i.id, 63
  %i.ig = zext nneg i8 %i.if to i32               ; 2 uses
  %i.ih = or disjoint i32 %i.ie, %i.ig
  %i.ii = icmp samesign ugt i8 %i.hx, -33
  br i1 %i.ii, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i98.i, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ij = zext nneg i8 %i.hx to i32
  br label %bb.as

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i98.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i93.i
  %i.ik = icmp ne ptr %i.ic, %i.hu
  call void @llvm.assume(i1 %i.ik)
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i92.i, i64 3 ; 3 uses
  %i.im = load i8, ptr %i.ic, align 1, !alias.scope !217, !noalias !218, !noundef !10
  %i.in = shl nuw nsw i32 %i.ig, 6
  %i.io = and i8 %i.im, 63
  %i.ip = zext nneg i8 %i.io to i32
  %i.iq = or disjoint i32 %i.in, %i.ip            ; 2 uses
  %i.ir = shl nuw nsw i32 %i.ia, 12
  %i.is = or disjoint i32 %i.iq, %i.ir
  %i.it = icmp samesign ugt i8 %i.hx, -17
  br i1 %i.it, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i99.i, label %bb.as

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i99.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i98.i
  %i.iu = icmp ne ptr %i.il, %i.hu
  call void @llvm.assume(i1 %i.iu)
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i92.i, i64 4
  %i.iw = load i8, ptr %i.il, align 1, !alias.scope !217, !noalias !218, !noundef !10
  %i.ix = shl nuw nsw i32 %i.ia, 18
  %i.iy = and i32 %i.ix, 1835008
  %i.iz = shl nuw nsw i32 %i.iq, 6
  %i.ja = and i8 %i.iw, 63
  %i.jb = zext nneg i8 %i.ja to i32
  %i.jc = or disjoint i32 %i.iz, %i.jb
  %i.jd = or disjoint i32 %i.jc, %i.iy
  br label %bb.as

bb.as:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i99.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i98.i, %bb.ar, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i93.i
  %.sroa.0.1.ph.i.i.i.i.i94.i = phi ptr [ %i.ic, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i93.i ], [ %i.il, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i98.i ], [ %i.iv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i99.i ], [ %i.hw, %bb.ar ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i95.i = phi i32 [ %i.ih, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i93.i ], [ %i.is, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i98.i ], [ %i.jd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i99.i ], [ %i.ij, %bb.ar ]
  %i.je = load i64, ptr %i.hh, align 8, !alias.scope !219, !noalias !220, !noundef !10 ; 3 uses
  %i.jf = load i64, ptr %i.m, align 8, !range !14, !alias.scope !219, !noalias !220, !noundef !10
  %i.jg = icmp eq i64 %i.je, %i.jf
  br i1 %i.jg, label %bb.at, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i96.i

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #27
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i96.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i96.i: ; preds = %bb.at, %bb.as
  %i.jh = load ptr, ptr %i.hi, align 8, !alias.scope !219, !noalias !220, !nonnull !10, !noundef !10
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.je
  store i32 %spec.select.i.ph.i.i.i.i.i95.i, ptr %i.ji, align 4, !noalias !217
  %i.jj = add i64 %i.je, 1
  store i64 %i.jj, ptr %i.hh, align 8, !alias.scope !219, !noalias !220
  %.not.i.i.i.i.i.i97.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i94.i, %i.hu
  br i1 %.not.i.i.i.i.i.i97.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit100.i, label %bb.aq

.invoke322:                                       ; preds = %.split.i.i, %bb.ap, %bb.bf, %.split.i69.i, %bb.bk, %.split.i.i112, %bb.bd
  %i.jk = phi ptr [ %i.kg, %.split.i69.i ], [ %i.kg, %.split.i.i112 ], [ %i.kg, %bb.bd ], [ %i.kg, %bb.bk ], [ %.sroa.012.0.i, %bb.bf ], [ %i.ho, %bb.ap ], [ %i.ho, %.split.i.i ]
  %i.jl = phi i64 [ %i.kh, %.split.i69.i ], [ %i.kh, %.split.i.i112 ], [ %i.kh, %bb.bd ], [ %i.kh, %bb.bk ], [ %.sroa.9.0.i, %bb.bf ], [ %i.hp, %bb.ap ], [ %i.hp, %.split.i.i ]
  %i.jm = phi i64 [ 1, %.split.i69.i ], [ 0, %.split.i.i112 ], [ 0, %bb.bd ], [ 1, %bb.bk ], [ 0, %bb.bf ], [ 0, %bb.ap ], [ 0, %.split.i.i ]
  %i.jn = phi i64 [ %i.kh, %.split.i69.i ], [ 1, %.split.i.i112 ], [ 1, %bb.bd ], [ %i.kh, %bb.bk ], [ %..i63.i, %bb.bf ], [ %..i.i, %bb.ap ], [ %..i.i, %.split.i.i ]
  %i.jo = phi ptr [ @23, %.split.i69.i ], [ @22, %.split.i.i112 ], [ @22, %bb.bd ], [ @23, %bb.bk ], [ @24, %bb.bf ], [ @27, %bb.ap ], [ @27, %.split.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jk, i64 noundef %i.jl, i64 noundef %i.jm, i64 noundef %i.jn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jo) #31
          to label %.cont323 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont323:                                         ; preds = %.invoke322
  unreachable

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit100.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i96.i
  %i.jp = sub nuw i64 %.sroa.0.0124.i, %..i.i     ; 2 uses
  %exitcond.not.i.a = icmp eq i32 %i.hj, %i.hb
  br i1 %exitcond.not.i.a, label %._crit_edge127.i, label %bb.am

bb.au:                                            ; preds = %bb.ae
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

.loopexit136.i:                                   ; preds = %.noexc96, %.noexc89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !194
  br label %select.unfold

bb.av:                                            ; preds = %.noexc96
  %7 = call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0101119.i, i32 1) ; 2 uses
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !194
  %.not.i.i = icmp sgt i32 %9, %.lcssa113154163.i
  %or.cond108.i = or i1 %8, %.not.i.i
  br i1 %or.cond108.i, label %._crit_edge122.thread170.i, label %.lr.ph121.split.i, !llvm.loop !108

.split.us.i:                                      ; preds = %.noexc93, %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !194
  br label %select.unfold

bb.aw:                                            ; preds = %bb.s
  %.val85 = load i32, ptr %i.t, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !221, !noalias !224, !noundef !10
  %i.jt = trunc i64 %i.js to i32                  ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.jw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 7 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.jz = trunc i8 %.sroa.0.0.copyload to i1
  %smax.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 1)
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.i108, %bb.aw
  %.sroa.0.033.i = phi i64 [ %i.q, %bb.aw ], [ %i.oc, %.loopexit.i108 ] ; 4 uses
  %.sroa.025.032.i = phi i32 [ 0, %bb.aw ], [ %i.ka, %.loopexit.i108 ] ; 4 uses
  %i.ka = add nuw nsw i32 %.sroa.025.032.i, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !225
  %i.kb = icmp slt i32 %.sroa.025.032.i, %i.jt
  br i1 %i.kb, label %bb.ay, label %bb.az

.loopexit16.i:                                    ; preds = %.loopexit.i108
  %i.kc = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 48, i64 noundef %i.oc, i64 noundef 0)
          to label %.noexc123.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc123.a:                                      ; preds = %.loopexit16.i
  br i1 %i.kc, label %select.unfold, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_eNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit

bb.ay:                                            ; preds = %bb.ax
  %i.kd = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %.sroa.025.032.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19)
          to label %.noexc124.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc124.a:                                      ; preds = %bb.ay
  %i.ke = load i32, ptr %i.kd, align 4, !noundef !10
  br label %bb.az

bb.az:                                            ; preds = %.noexc124.a, %bb.ax
  %storemerge.i = phi i32 [ %i.ke, %.noexc124.a ], [ 0, %bb.ax ]
  store i32 %storemerge.i, ptr %i.b, align 4, !noalias !225
  %.not.i107 = icmp eq i32 %.sroa.025.032.i, 0    ; 2 uses
  %.62.i = select i1 %.not.i107, i16 1, i16 9
  store i64 0, ptr %i.ju, align 8, !alias.scope !223, !noalias !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !225
  store ptr %i.b, ptr %i.a, align 8, !noalias !225
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !225
  store ptr null, ptr %i.jv, align 8, !noalias !225
  store i16 %.62.i, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !225
  %i.kf = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @21, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
          to label %.noexc125.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc125.a:                                      ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !225
  br i1 %i.kf, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.noexc125.a
  %i.kg = load ptr, ptr %i.jw, align 8, !alias.scope !223, !noalias !226, !nonnull !10, !noundef !10 ; 12 uses
  %i.kh = load i64, ptr %i.ju, align 8, !alias.scope !223, !noalias !226, !noundef !10 ; 11 uses
  br i1 %.not.i107, label %bb.bc, label %bb.be

bb.bb:                                            ; preds = %.noexc125.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !225
  br label %select.unfold

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i111 = icmp ugt i64 %i.kh, 1            ; 2 uses
  br i1 %.not.i.i111, label %bb.bd, label %.split.i.i112

.split.i.i112:                                    ; preds = %bb.bc
  %i.ki = icmp eq i64 %i.kh, 1
  br i1 %i.ki, label %.lr.ph.i.i.i.i.i.i113, label %.invoke322

bb.bd:                                            ; preds = %bb.bc
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !227, !noundef !10
  %i.kl = icmp sgt i8 %i.kk, -65
  br i1 %i.kl, label %.lr.ph.i.i.i.i.i.i113, label %.invoke322

bb.be:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i120, %bb.bl, %bb.ba
  %.sroa.9.0.i = phi i64 [ %i.mc, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i120 ], [ %i.mc, %bb.bl ], [ %i.kh, %bb.ba ] ; 3 uses
  %.sroa.012.0.i = phi ptr [ %i.md, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i120 ], [ %i.md, %bb.bl ], [ %i.kg, %bb.ba ] ; 4 uses
  %..i63.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.033.i, i64 %.sroa.9.0.i) ; 7 uses
  %i.km = icmp ne i64 %..i63.i, 0                 ; 2 uses
  %.not.i64.i = icmp ult i64 %.sroa.0.033.i, %.sroa.9.0.i
  %or.cond9.i = and i1 %.not.i64.i, %i.km
  br i1 %or.cond9.i, label %bb.bf, label %bb.bo

bb.bf:                                            ; preds = %bb.be
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 %..i63.i
  %i.ko = load i8, ptr %i.kn, align 1, !alias.scope !228, !noundef !10
  %i.kp = icmp sgt i8 %i.ko, -65
  br i1 %i.kp, label %bb.bo, label %.invoke322

.lr.ph.i.i.i.i.i.i113:                            ; preds = %bb.bd, %.split.i.i112
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 1)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc126:                                        ; preds = %.lr.ph.i.i.i.i.i.i113
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  br label %bb.bg

bb.bg:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i116, %.noexc126
  %.sroa.0.010.i.i.i.i.i.idx.i = phi i64 [ 0, %.noexc126 ], [ %.sroa.0.1.ph.i.i.i.i.i.idx.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i116 ] ; 6 uses
  %.sroa.0.010.i.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.0.010.i.i.i.i.i.idx.i
  %.sroa.0.010.i.i.i.i.i.add10.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.idx.i, 1 ; 2 uses
  %i.kq = load i8, ptr %.sroa.0.010.i.i.i.i.i.ptr.i, align 1, !alias.scope !236, !noalias !237, !noundef !10 ; 5 uses
  %i.kr = icmp sgt i8 %i.kq, -1
  br i1 %i.kr, label %bb.bh, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i114

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i114: ; preds = %bb.bg
  %.ptr13.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.0.010.i.i.i.i.i.add10.i
  %i.ks = and i8 %i.kq, 31
  %i.kt = zext nneg i8 %i.ks to i32               ; 3 uses
  %i.ku = icmp samesign ne i64 %.sroa.0.010.i.i.i.i.i.idx.i, 0
  call void @llvm.assume(i1 %i.ku)
  %.sroa.0.010.i.i.i.i.i.add.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.idx.i, 2 ; 2 uses
  %i.kv = load i8, ptr %.ptr13.i, align 1, !alias.scope !236, !noalias !237, !noundef !10
  %i.kw = shl nuw nsw i32 %i.kt, 6
  %i.kx = and i8 %i.kv, 63
  %i.ky = zext nneg i8 %i.kx to i32               ; 2 uses
  %i.kz = or disjoint i32 %i.kw, %i.ky
  %i.la = icmp samesign ugt i8 %i.kq, -33
  br i1 %i.la, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i121, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lb = zext nneg i8 %i.kq to i32
  br label %bb.bi

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i121: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i114
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.0.010.i.i.i.i.i.add.i
  %.sroa.0.010.i.i.i.i.i.add12.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.idx.i, 3 ; 2 uses
  %i.lc = load i8, ptr %.ptr.i, align 1, !alias.scope !236, !noalias !237, !noundef !10
  %i.ld = shl nuw nsw i32 %i.ky, 6
  %i.le = and i8 %i.lc, 63
  %i.lf = zext nneg i8 %i.le to i32
  %i.lg = or disjoint i32 %i.ld, %i.lf            ; 2 uses
  %i.lh = shl nuw nsw i32 %i.kt, 12
  %i.li = or disjoint i32 %i.lg, %i.lh
  %i.lj = icmp samesign ugt i8 %i.kq, -17
  br i1 %i.lj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i122, label %bb.bi

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i122: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i121
  %.ptr15.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.0.010.i.i.i.i.i.add12.i
  %.sroa.0.010.i.i.i.i.i.add11.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.idx.i, 4
  %i.lk = load i8, ptr %.ptr15.i, align 1, !alias.scope !236, !noalias !237, !noundef !10
  %i.ll = shl nuw nsw i32 %i.kt, 18
  %i.lm = and i32 %i.ll, 1835008
  %i.ln = shl nuw nsw i32 %i.lg, 6
  %i.lo = and i8 %i.lk, 63
  %i.lp = zext nneg i8 %i.lo to i32
  %i.lq = or disjoint i32 %i.ln, %i.lp
  %i.lr = or disjoint i32 %i.lq, %i.lm
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i122, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i121, %bb.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i114
  %.sroa.0.1.ph.i.i.i.i.i.idx.i = phi i64 [ %.sroa.0.010.i.i.i.i.i.add.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i114 ], [ %.sroa.0.010.i.i.i.i.i.add12.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i121 ], [ %.sroa.0.010.i.i.i.i.i.add11.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i122 ], [ %.sroa.0.010.i.i.i.i.i.add10.i, %bb.bh ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i115 = phi i32 [ %i.kz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i114 ], [ %i.li, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i121 ], [ %i.lr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i122 ], [ %i.lb, %bb.bh ]
  %i.ls = load i64, ptr %i.jx, align 8, !alias.scope !238, !noalias !239, !noundef !10 ; 4 uses
  %i.lt = load i64, ptr %i.m, align 8, !range !14, !alias.scope !238, !noalias !239, !noundef !10
  %i.lu = icmp eq i64 %i.ls, %i.lt
  br i1 %i.lu, label %bb.bj, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i116

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #27
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i116: ; preds = %bb.bj, %bb.bi
  %i.lv = load ptr, ptr %i.jy, align 8, !alias.scope !238, !noalias !239, !nonnull !10, !noundef !10
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.ls
  store i32 %spec.select.i.ph.i.i.i.i.i.i115, ptr %i.lw, align 4, !noalias !236
  %i.lx = add i64 %i.ls, 1                        ; 3 uses
  store i64 %i.lx, ptr %i.jx, align 8, !alias.scope !238, !noalias !239
  %.not.i.i.i.i.i.i.i117 = icmp samesign eq i64 %.sroa.0.1.ph.i.i.i.i.i.idx.i, 1
  br i1 %.not.i.i.i.i.i.i.i117, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i118, label %bb.bg

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i118: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i116
  br i1 %.not.i.i111, label %bb.bk, label %.split.i69.i

.split.i69.i:                                     ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i118
  %i.ly = icmp eq i64 %i.kh, 1
  br i1 %i.ly, label %bb.bl, label %.invoke322

bb.bk:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i118
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecxEECs8frGy5WneL6_4fish:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecxEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecyEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecyEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecyEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !14, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !22, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #32
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !14, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !22, !invariant.load !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #32
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBQ_5alloc6GlobalEEB2A_(ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit8.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.e = load ptr, ptr %.0.val, align 8, !alias.scope !523, !noalias !524, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !523, !noalias !524, !noundef !10 ; 2 uses
  %i.h = add i64 %i.g, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !525
  call void @_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1c_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.g, i64 noundef %i.h, i64 noundef %i.h), !noalias !525
  %i.i = load i64, ptr %i.a, align 8, !noalias !525, !noundef !10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !525, !noundef !10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !525, !noundef !10 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noalias !525, !noundef !10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !525
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !525, !nonnull !10, !noundef !10 ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.i ; 2 uses
  %i.s = sub i64 %i.k, %i.i                       ; 3 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m ; 2 uses
  %i.u = sub i64 %i.o, %i.m                       ; 3 uses
  %i.v = icmp eq i64 %i.k, %i.i
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i.preheader, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.w = icmp eq i64 %i.z, %i.s
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i.preheader, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i.preheader: ; preds = %bb.c, %bb.b
  %i.x = icmp eq i64 %i.o, %i.m
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit8.i, label %.lr.ph17

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i13 = phi i64 [ %i.z, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %.sroa.0.0.i.i13
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.y)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph15
  %i.aa = add i64 %.sroa.0.1.i.i14, 1             ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.s
  br i1 %i.ab, label %common.resume.i, label %.lr.ph15

bb.e:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = icmp eq i64 %i.z, %i.s
  br i1 %i.ad, label %common.resume.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i14 = phi i64 [ %i.aa, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae) #28
          to label %bb.d unwind label %bb.f

common.resume.i:                                  ; preds = %bb.d, %bb.g, %bb.e, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.ac, %bb.e ], [ %i.al, %bb.g ], [ %i.ac, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %.lr.ph15
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i: ; preds = %.lr.ph17
  %i.ag = icmp eq i64 %i.ai, %i.u
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit8.i, label %.lr.ph17

.lr.ph17:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i.preheader, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i
  %.sroa.0.0.i6.i16 = phi i64 [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.sroa.0.0.i6.i16
  %i.ai = add nuw nsw i64 %.sroa.0.0.i6.i16, 1    ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ah)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph19
  %i.aj = add i64 %.sroa.0.1.i7.i18, 1            ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.u
  br i1 %i.ak, label %common.resume.i, label %.lr.ph19

bb.h:                                             ; preds = %.lr.ph17
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = icmp eq i64 %i.ai, %i.u
  br i1 %i.am, label %common.resume.i, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.1.i7.i18 = phi i64 [ %i.aj, %bb.g ], [ %i.ai, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.sroa.0.1.i7.i18
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.an) #28
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph19
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit8.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit.i.preheader, %bb.a
  %i.ap = load ptr, ptr %.0.val, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !10 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !10 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noundef !10 ; 4 uses
  %i.aw = add i64 %i.av, %i.at                    ; 2 uses
  %i.ax = icmp eq i64 %i.at, 0
  %i.ay = icmp eq i64 %i.av, 0
  %or.cond.i = or i1 %i.ax, %i.ay
  br i1 %or.cond.i, label %bb.j, label %bb.k, !prof !526

bb.j:                                             ; preds = %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit8.i
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit8.i
  tail call fastcc void @_RINvNvXNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBh_5alloc6GlobalEB32_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ap, i64 noundef %i.ar, i64 noundef %i.at, i64 noundef %i.av)
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 0, ptr %i.ba, align 8
  br label %_RNvXNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB8_5DrainppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBe_5alloc6GlobalEB1g_4dropB2k_.exit

bb.m:                                             ; preds = %bb.j
  %i.bb = icmp ult i64 %i.at, %i.av
  br i1 %i.bb, label %bb.n, label %_RNvXNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB8_5DrainppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBe_5alloc6GlobalEB1g_4dropB2k_.exit

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !10
  %i.be = add i64 %i.bd, %i.ar                    ; 2 uses
  %i.bf = load i64, ptr %i.ap, align 8, !range !14, !noundef !10 ; 2 uses
  %.not.i = icmp ult i64 %i.be, %i.bf
  %i.bg = select i1 %.not.i, i64 0, i64 %i.bf
  %.sroa.0.0.i = sub nuw i64 %i.be, %i.bg
  store i64 %.sroa.0.0.i, ptr %i.bc, align 8
  br label %_RNvXNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB8_5DrainppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBe_5alloc6GlobalEB1g_4dropB2k_.exit

_RNvXNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB8_5DrainppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBe_5alloc6GlobalEB1g_4dropB2k_.exit: ; preds = %bb.l, %bb.m, %bb.n
  store i64 %i.aw, ptr %i.as, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !20, !alias.scope !529, !noundef !10
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !noundef !10
  switch i64 %i.a, label %bb.b [
    i64 2, label %bb.c
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6printfNtB5_5State9print_esc:bb.a
  unreachable

bb.do:                                            ; preds = %bb.du, %bb.dr, %bb.dm
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1542, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1594) #31
  unreachable

bb.dp:                                            ; preds = %bb.dm
  %i.mp = add i64 %.sroa.42.3, -1                 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.077.3, i64 4 ; 3 uses
  %i.mr = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.mq, i64 noundef %i.mp, i64 noundef 0)
  %i.ms = and i32 %i.mr, 2097144
  %spec.select.i.i183.1 = icmp eq i32 %i.ms, 48
  br i1 %spec.select.i.i183.1, label %bb.dq, label %bb.dg

bb.dq:                                            ; preds = %bb.dp
  %i.mt = shl nuw nsw i32 %i.mm, 3
  %i.mu = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.mq, i64 noundef %i.mp, i64 noundef 0)
  %i.mv = add nsw i32 %i.mu, -48                  ; 2 uses
  %i.mw = icmp ult i32 %i.mv, 8
  br i1 %i.mw, label %bb.dr, label %bb.dn, !prof !8

bb.dr:                                            ; preds = %bb.dq
  %i.mx = icmp eq i64 %i.mp, 0
  br i1 %i.mx, label %bb.do, label %bb.ds, !prof !17

bb.ds:                                            ; preds = %bb.dr
  %i.my = or disjoint i32 %i.mv, %i.mt            ; 2 uses
  %i.mz = add i64 %.sroa.42.3, -2                 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.077.3, i64 8 ; 3 uses
  %i.nb = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.na, i64 noundef %i.mz, i64 noundef 0)
  %i.nc = and i32 %i.nb, 2097144
  %spec.select.i.i183.2 = icmp eq i32 %i.nc, 48
  br i1 %spec.select.i.i183.2, label %bb.dt, label %bb.dg

bb.dt:                                            ; preds = %bb.ds
  %i.nd = shl nuw nsw i32 %i.my, 3
  %i.ne = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.na, i64 noundef %i.mz, i64 noundef 0)
  %i.nf = add nsw i32 %i.ne, -48                  ; 2 uses
  %i.ng = icmp ult i32 %i.nf, 8
  br i1 %i.ng, label %bb.du, label %bb.dn, !prof !8

bb.du:                                            ; preds = %bb.dt
  %i.nh = icmp eq i64 %i.mz, 0
  br i1 %i.nh, label %bb.do, label %bb.dv, !prof !17

bb.dv:                                            ; preds = %bb.du
  %i.ni = or disjoint i32 %i.nf, %i.nd
  %i.nj = add i64 %.sroa.42.3, -3
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.077.3, i64 12
  br label %bb.dg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { ptr, i64 } @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6statusNtB5_9StatusCmd7to_wstr(i8 noundef range(i8 0, 28) %0) unnamed_addr #4 {
switch.lookup:
  %i.a = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6statusNtB5_9StatusCmd7to_wstr, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i8 %0 to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins6statusNtB5_9StatusCmd7to_wstr.203, i64 %i.b
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.c = insertvalue { ptr, i64 } poison, ptr %switch.load3, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %switch.ext, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB5_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE3getBT_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load atomic ptr, ptr %i.a acquire, align 8
  %i.c = icmp eq ptr %i.b, inttoptr (i64 2 to ptr)
  %spec.select = select i1 %i.c, ptr %0, ptr null
  ret ptr %spec.select
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish8builtins6statusNtB5_4Docs3get(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1624, i64 noundef 9)
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1131
  store i8 92, ptr %i.c, align 1, !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1131
  store i8 47, ptr %i.b, align 1, !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1131
  %i.g = getelementptr i8, ptr %1, i64 %2
  store ptr %i.f, ptr %i.a, align 8, !noalias !1131
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !noalias !1131
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.i, align 8, !noalias !1131
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.j, align 8, !noalias !1131
  call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1131
  store i64 2, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8push_mutBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !14, !noundef !10
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs8frGy5WneL6_4fish13editable_lineNtB4_11UndoHistory5clear(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish13editable_line4EditEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish13editable_line4EditEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.m) #28
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish13editable_line4EditEBG_.exit: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.p, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCslLGyqsphxMB_10widestring6utfstrNtB4_8Utf32Str9to_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !18, !noundef !10
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !19, !noundef !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10
  %i.j = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RINvXse_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendRcE6extendRScECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #28
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB4_11BuiltinBind4list(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) %1, i64 %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %4, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(48) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [48 x i8], align 8                ; 13 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 10 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !align !11, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @_RNvMs6_NtNtCs8frGy5WneL6_4fish5input7bindingNtB5_10BindingSet9get_names(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, i1 noundef zeroext %3)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.o = load i64, ptr %i.i, align 8, !range !14, !noundef !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !10 ; 3 uses
  %i.r = icmp ult i64 %i.q, 192153584101141163
  call void @llvm.assume(i1 %i.r)
  %.idx = mul nuw nsw i64 %i.q, 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.n, ptr %i.h, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.n, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.lr.ph: ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %.not18 = icmp eq ptr %1, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.w = shl nuw i64 %2, 2
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.lr.ph, %.outer
  %i.ah = phi ptr [ %i.n, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.lr.ph ], [ %i.dj, %.outer ] ; 4 uses
  %.sroa.05.0.ph79 = phi ptr [ null, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.lr.ph ], [ %.sroa.05.1, %.outer ] ; 5 uses
  br i1 %.not18, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.split.us, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.split.us: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store ptr %i.ai, ptr %.sroa.48.0..sroa_idx, align 8, !alias.scope !1149, !noalias !1150
  %.sroa.0.0.copyload60.us = load i64, ptr %i.ah, align 8, !noalias !1149 ; 2 uses
  %.sroa.8.0..sroa_idx61.us = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx61.us, i64 40, i1 false), !noalias !1149
  %.not.us = icmp eq i64 %.sroa.0.0.copyload60.us, -1
  br i1 %.not.us, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %.split.us

.split.us:                                        ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.0.0.copyload60.us, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  br label %.split

bb.b:                                             ; preds = %.loopexit69, %.loopexit.split-lp70, %.body56
  %.pn30 = phi { ptr, i32 } [ %.pn28, %.body56 ], [ %lpad.loopexit71, %.loopexit69 ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp70 ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameEEB1v_.exit unwind label %bb.ak

.loopexit69:                                      ; preds = %_RNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB6_11BuiltinBind4list0Ba_.exit.thread
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp70:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit59
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, %bb.ax
  %i.aj = phi ptr [ %i.dm, %bb.ax ], [ %i.ah, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr %i.ak, ptr %.sroa.48.0..sroa_idx, align 8, !alias.scope !1149, !noalias !1150
  %.sroa.0.0.copyload60 = load i64, ptr %i.aj, align 8, !noalias !1149 ; 2 uses
  %.sroa.8.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx61, i64 40, i1 false), !noalias !1149
  %.not = icmp eq i64 %.sroa.0.0.copyload60, -1
  br i1 %.not, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.0.0.copyload60, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %.val38 = load i64, ptr %i.u, align 8, !noundef !10
  %i.al = icmp eq i64 %2, %.val38
  br i1 %i.al, label %_RNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB6_11BuiltinBind4list0Ba_.exit, label %_RNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB6_11BuiltinBind4list0Ba_.exit.thread

end_hunk_2
begin_hunk_3_@_RNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word:.lr.ph.i
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish15parser_keywords27parser_keywords_is_reserved(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw i64 %1, 2
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.thread.i.i, %bb.a
  %.idx.i = phi i64 [ 0, %bb.a ], [ %.add.i, %_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.thread.i.i ] ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr @1692, i64 %.idx.i ; 3 uses
  %.add.i = add nuw nsw i64 %.idx.i, 24           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !1299, !noundef !10
  %i.d = icmp eq i64 %i.c, %1
  br i1 %i.d, label %_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.i.i, label %_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.thread.i.i

_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %.ptr.i, align 8, !noalias !1299, !nonnull !10, !align !12, !noundef !10
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.e, ptr nonnull readonly align 4 %0, i64 %i.a), !noalias !1300
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.f, label %_RNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word.exit, label %_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.thread.i.i

_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.thread.i.i: ; preds = %_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.i.i, %bb.b
  %i.g = icmp eq i64 %.add.i, 696
  br i1 %i.g, label %_RNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word.exit.thread, label %bb.b

_RNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word.exit: ; preds = %_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !13, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  br label %_RNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word.exit.thread

_RNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word.exit.thread: ; preds = %_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.thread.i.i, %_RNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word.exit
  %.sroa.0.0 = phi i1 [ %i.j, %_RNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word.exit ], [ false, %_RNCNvNtCs8frGy5WneL6_4fish15parser_keywords13reserved_word0B5_.exit.thread.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6expand10expand_one(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i16 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = and i16 %1, 8
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !10
  %i.i = tail call fastcc noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6expand15expand_is_clean(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef %i.h)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.l = invoke { i32, i8 } @_RNvNtCs8frGy5WneL6_4fish6expand13expand_string(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i16 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %3)
          to label %bb.g unwind label %bb.f

.sink.split:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.h
  %.sroa.0.0.ph = phi i1 [ false, %bb.h ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ]
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28
          to label %common.resume unwind label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.c
  %i.n = extractvalue { i32, i8 } %i.l, 1
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.sink.split unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.p, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.p ], [ %i.p, %bb.i ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.k, align 8, !noundef !10 ; 2 uses
  %i.s = icmp ult i64 %i.r, 164703072086692426
  call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.r, 1
  br i1 %i.t, label %bb.l, label %bb.h

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  store i64 0, ptr %i.u, align 8
  %.sroa.34.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.34.0..sroa_idx5, align 8
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx7, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.o ], [ %i.v, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.sink.split unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.r:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs8frGy5WneL6_4fish6expand11parse_slice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = icmp slt i64 %4, 0
  br i1 %i.f, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.preheader

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.preheader: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.419.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %invariant.op = add nuw i64 %4, 1
  %invariant.op342 = add nuw i64 %4, 1
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1333
  store i8 2, ptr %i.e, align 1, !noalias !1333
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1483, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1693) #31, !noalias !1333
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.backedge, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.preheader
  %.sroa.0.0 = phi i64 [ 1, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.preheader ], [ %.sroa.0.0.be, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.backedge ] ; 19 uses
  %i.l = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0) ; 7 uses
  switch i32 %i.l, label %bb.c [
    i32 32, label %bb.j
    i32 13, label %bb.j
    i32 12, label %bb.j
    i32 11, label %bb.j
    i32 10, label %bb.j
    i32 9, label %bb.j
  ]

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit
  %i.m = icmp samesign ult i32 %i.l, 133
  br i1 %i.m, label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i32 %i.l, 8
  switch i32 %i.n, label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.thread [
    i32 0, label %bb.g
    i32 22, label %bb.e
    i32 32, label %bb.h
    i32 48, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i32 %i.l, 5760
  %i.p = zext i1 %i.o to i8
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %i.l, 12288
  %i.r = zext i1 %i.q to i8
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit

bb.g:                                             ; preds = %bb.d
  %i.s = and i32 %i.l, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noundef !10
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit

bb.h:                                             ; preds = %bb.d
  %i.w = and i32 %i.l, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noundef !10
  %i.aa = lshr i8 %i.z, 1
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit

_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi i8 [ %i.r, %bb.f ], [ %i.v, %bb.g ], [ %i.p, %bb.e ], [ %i.aa, %bb.h ]
  %i.ab = trunc i8 %.sroa.0.0.i to i1
  br i1 %i.ab, label %bb.j, label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.thread

_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.thread: ; preds = %bb.d, %bb.c, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit
  %i.ac = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0)
  %i.ad = icmp eq i32 %i.ac, 64984
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.thread
  %i.ae = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0)
  %i.af = icmp eq i32 %i.ae, 93
  br i1 %i.af, label %bb.k, label %bb.l

bb.j:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit
  %i.ag = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.ag, label %bb.cm, label %bb.cl

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.ah, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %i.g, align 8, !noundef !10 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.al = add nuw i64 %.sroa.0.0, 1
  br label %.loopexit159

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1694) #31
  unreachable

.loopexit159:                                     ; preds = %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94, %bb.bl, %bb.bi, %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit, %bb.ab, %bb.y, %bb.bg, %bb.w, %bb.m
  %.sroa.0.4.lcssa311.sink = phi i64 [ %.sroa.0.4, %bb.bg ], [ %.sroa.0.0, %bb.w ], [ %i.al, %bb.m ], [ %.sroa.0.0, %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit ], [ %.sroa.0.4, %bb.bi ], [ %.sroa.0.0, %bb.y ], [ %.sroa.0.0, %bb.ab ], [ %.sroa.0.4, %bb.bl ], [ %.sroa.0.4, %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94 ]
  %.sink = phi i8 [ 1, %bb.bg ], [ 1, %bb.w ], [ 2, %bb.m ], [ 0, %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit ], [ 1, %bb.bi ], [ 1, %bb.y ], [ 1, %bb.ab ], [ 1, %bb.bl ], [ 0, %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94 ]
  store i64 %.sroa.0.4.lcssa311.sink, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.am, align 8
  ret void

bb.o:                                             ; preds = %bb.r, %bb.p, %bb.l
  %i.an = icmp ult i64 %2, %.sroa.0.0
  br i1 %i.an, label %bb.u, label %bb.v, !prof !17

bb.p:                                             ; preds = %bb.l
  %i.ao = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0)
  %i.ap = icmp eq i32 %i.ao, 46
  br i1 %i.ap, label %bb.q, label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.aq = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.aq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = add nuw i64 %.sroa.0.0, 1
  %i.as = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ar)
  %i.at = icmp eq i32 %i.as, 46
  br i1 %i.at, label %.thread130, label %bb.o

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1695) #31
  unreachable

bb.t:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish6expand11parse_slice0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB2b_.exit
  %i.au = icmp sgt i64 %.sroa.8106.0141, -1       ; 2 uses
  %.reass = select i1 %i.au, i64 0, i64 %invariant.op
  %spec.select345 = add i64 %.sroa.8106.0141, %.reass
  br label %.thread130

bb.u:                                             ; preds = %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1542, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1710) #31
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.0.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1334
  call fastcc void @_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11parse_radixNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull readonly %i.av, ptr noundef nonnull readnone %i.h, i32 noundef 0, i32 undef, i1 noundef zeroext false), !noalias !1334
  %i.aw = load i8, ptr %i.i, align 8, !range !25, !noalias !1334, !noundef !10 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1334
  br label %.loopexit159

bb.x:                                             ; preds = %bb.v
  %.sroa.018.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !1334 ; 6 uses
  %.sroa.419.0.copyload.i = load i64, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !1334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1334
  %i.ay = trunc nuw i8 %i.aw to i1
  br i1 %i.ay, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = icmp sgt i64 %.sroa.018.0.copyload.i, -1
  br i1 %i.az, label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit, label %.loopexit159

bb.z:                                             ; preds = %bb.x
  switch i64 %.sroa.018.0.copyload.i, label %bb.ab [
    i64 0, label %bb.aa
    i64 -9223372036854775808, label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit.thread137
  ], !prof !26

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @57, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #31, !noalias !1334
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ba = icmp sgt i64 %.sroa.018.0.copyload.i, -1
  br i1 %i.ba, label %bb.ac, label %.loopexit159

bb.ac:                                            ; preds = %bb.ab
  %i.bb = sub nsw i64 0, %.sroa.018.0.copyload.i
  br label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit

_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit: ; preds = %bb.ac, %bb.y
  %.sroa.8106.0 = phi i64 [ %.sroa.018.0.copyload.i, %bb.y ], [ %i.bb, %bb.ac ] ; 2 uses
  %i.bc = icmp eq i64 %.sroa.8106.0, 0
  br i1 %i.bc, label %.loopexit159, label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit.thread137

_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit.thread137: ; preds = %bb.z, %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit
  %.sroa.8106.0141 = phi i64 [ %.sroa.8106.0, %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit ], [ %.sroa.018.0.copyload.i, %bb.z ] ; 2 uses
  %i.bd = add i64 %.sroa.419.0.copyload.i, %.sroa.0.0 ; 6 uses
  %i.be = icmp ult i64 %i.bd, %.sroa.0.0
  br i1 %i.be, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit.thread137
  %i.bf = icmp ult i64 %2, %i.bd
  br i1 %i.bf, label %bb.af, label %bb.ag, !prof !17

bb.ae:                                            ; preds = %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit.thread137
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1696) #31
  unreachable

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1542, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1709) #31
end_hunk_3
begin_hunk_4_@_RNvNtCs8frGy5WneL6_4fish6expand11parse_slice:bb.a
bb.be:                                            ; preds = %bb.bc
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1542, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1707) #31
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.0.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1337
  call fastcc void @_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11parse_radixNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull readonly %i.ec, ptr noundef nonnull readnone %i.h, i32 noundef 0, i32 undef, i1 noundef zeroext false), !noalias !1337
  %i.ed = load i8, ptr %i.k, align 8, !range !25, !noalias !1337, !noundef !10 ; 2 uses
  %i.ee = icmp eq i8 %i.ed, 2
  br i1 %i.ee, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1337
  br label %.loopexit159

bb.bh:                                            ; preds = %bb.bf
  %.sroa.018.0.copyload.i90 = load i64, ptr %i.b, align 8, !noalias !1337 ; 6 uses
  %.sroa.419.0.copyload.i92 = load i64, ptr %.sroa.419.0..sroa_idx.i91, align 8, !noalias !1337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1337
  %i.ef = trunc nuw i8 %i.ed to i1
  br i1 %i.ef, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eg = icmp sgt i64 %.sroa.018.0.copyload.i90, -1
  br i1 %i.eg, label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94, label %.loopexit159

bb.bj:                                            ; preds = %bb.bh
  switch i64 %.sroa.018.0.copyload.i90, label %bb.bl [
    i64 0, label %bb.bk
    i64 -9223372036854775808, label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94.thread153
  ], !prof !26

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @57, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #31, !noalias !1337
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.eh = icmp sgt i64 %.sroa.018.0.copyload.i90, -1
  br i1 %i.eh, label %bb.bm, label %.loopexit159

bb.bm:                                            ; preds = %bb.bl
  %i.ei = sub nsw i64 0, %.sroa.018.0.copyload.i90
  br label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94

_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94: ; preds = %bb.bm, %bb.bi
  %.sroa.8119.0 = phi i64 [ %.sroa.018.0.copyload.i90, %bb.bi ], [ %i.ei, %bb.bm ] ; 2 uses
  %i.ej = icmp eq i64 %.sroa.8119.0, 0
  br i1 %i.ej, label %.loopexit159, label %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94.thread153

_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94.thread153: ; preds = %bb.bj, %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94
  %.sroa.8119.0157 = phi i64 [ %.sroa.8119.0, %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94 ], [ %.sroa.018.0.copyload.i90, %bb.bj ] ; 3 uses
  %i.ek = add i64 %.sroa.419.0.copyload.i92, %.sroa.0.4 ; 6 uses
  %i.el = icmp ult i64 %i.ek, %.sroa.0.4
  br i1 %i.el, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94.thread153
  %i.em = icmp ult i64 %2, %i.ek
  br i1 %i.em, label %bb.bp, label %bb.bq, !prof !17

bb.bo:                                            ; preds = %_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implxNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_.exit94.thread153
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1702) #31
  unreachable

bb.bp:                                            ; preds = %bb.bn
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1542, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1706) #31
  unreachable

bb.bq:                                            ; preds = %bb.bn
  %i.en = icmp samesign eq i64 %i.ek, %2
  br i1 %i.en, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2S_5count0EB2b_.exit, label %.lr.ph.i.i.i96.preheader

.lr.ph.i.i.i96.preheader:                         ; preds = %bb.bq
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ek
  br label %.lr.ph.i.i.i96

.lr.ph.i.i.i96:                                   ; preds = %.lr.ph.i.i.i96.preheader, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i
  %.sroa.01.022.i.i.i97 = phi i64 [ %i.fm, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i96.preheader ] ; 4 uses
  %i.ep = phi ptr [ %i.eq, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i ], [ %i.eo, %.lr.ph.i.i.i96.preheader ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  %i.er = load i32, ptr %i.ep, align 4, !noalias !1338, !noundef !10 ; 10 uses
  %i.es = xor i32 %i.er, 55296
  %i.et = add i32 %i.es, -1114112
  %i.eu = icmp ult i32 %i.et, -1112064
  br i1 %i.eu, label %.split.i.i.i.i100, label %bb.br

.split.i.i.i.i100:                                ; preds = %.lr.ph.i.i.i96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1338
  store i32 %i.er, ptr %i.a, align 4, !noalias !1338
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1481, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2092) #31, !noalias !1338
  unreachable

bb.br:                                            ; preds = %.lr.ph.i.i.i96
  %i.ev = icmp ult i32 %i.er, 1114112
  tail call void @llvm.assume(i1 %i.ev)
  switch i32 %i.er, label %bb.bs [
    i32 32, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i
    i32 13, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i
    i32 12, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i
    i32 11, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i
    i32 10, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i
    i32 9, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i
  ]

bb.bs:                                            ; preds = %bb.br
  %i.ew = icmp samesign ult i32 %i.er, 133
  br i1 %i.ew, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2S_5count0EB2b_.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ex = lshr i32 %i.er, 8
  switch i32 %i.ex, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2S_5count0EB2b_.exit [
    i32 0, label %bb.bw
    i32 22, label %bb.bu
    i32 32, label %bb.bx
    i32 48, label %bb.bv
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.ey = icmp eq i32 %i.er, 5760
  %i.ez = zext i1 %i.ey to i8
  br label %_RNCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0B5_.exit.i.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.fa = icmp eq i32 %i.er, 12288
  %i.fb = zext i1 %i.fa to i8
  br label %_RNCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0B5_.exit.i.i.i.i

bb.bw:                                            ; preds = %bb.bt
  %i.fc = and i32 %i.er, 255
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !1339, !noundef !10
  br label %_RNCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0B5_.exit.i.i.i.i

bb.bx:                                            ; preds = %bb.bt
  %i.fg = and i32 %i.er, 255
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !1339, !noundef !10
  %i.fk = lshr i8 %i.fj, 1
  br label %_RNCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0B5_.exit.i.i.i.i

_RNCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0B5_.exit.i.i.i.i: ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %.sroa.0.0.i.i.i.i.i.i99 = phi i8 [ %i.fb, %bb.bv ], [ %i.ff, %bb.bw ], [ %i.ez, %bb.bu ], [ %i.fk, %bb.bx ]
  %i.fl = trunc i8 %.sroa.0.0.i.i.i.i.i.i99 to i1
  br i1 %i.fl, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2S_5count0EB2b_.exit

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i: ; preds = %bb.br, %bb.br, %bb.br, %bb.br, %bb.br, %bb.br, %_RNCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0B5_.exit.i.i.i.i
  %i.fm = add nuw nsw i64 %.sroa.01.022.i.i.i97, 1 ; 2 uses
  %i.fn = icmp eq ptr %i.eq, %i.h
  br i1 %i.fn, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2S_5count0EB2b_.exit, label %.lr.ph.i.i.i96

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2S_5count0EB2b_.exit: ; preds = %bb.bs, %bb.bt, %_RNCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0B5_.exit.i.i.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i, %bb.bq
  %.sroa.0.1.i.i98 = phi i64 [ 0, %bb.bq ], [ %.sroa.01.022.i.i.i97, %bb.bt ], [ %.sroa.01.022.i.i.i97, %_RNCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0B5_.exit.i.i.i.i ], [ %.sroa.01.022.i.i.i97, %bb.bs ], [ %i.fm, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32B2Q_EB1i_5count0E0E0B2W_.exit.i.i.i ]
  %i.fo = add i64 %.sroa.0.1.i.i98, %i.ek         ; 3 uses
  %i.fp = icmp ult i64 %i.fo, %i.ek
  br i1 %i.fp, label %bb.by, label %bb.bd

bb.by:                                            ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtCs8frGy5WneL6_4fish6expand11parse_slices_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2S_5count0EB2b_.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1703) #31
  unreachable

.thread144:                                       ; preds = %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit89.thread, %bb.bd
  %.sroa.0.5148 = phi i64 [ %i.fo, %bb.bd ], [ %.sroa.0.4, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit89.thread ]
  %.sroa.047.0147 = phi i64 [ %.sroa.8119.0157, %bb.bd ], [ -1, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit89.thread ]
  %.reass343 = add i64 %.sroa.047.0147, %invariant.op342
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bd, %.thread144
  %i.fq = phi i1 [ false, %.thread144 ], [ true, %bb.bd ] ; 2 uses
  %.sroa.0.5149 = phi i64 [ %.sroa.0.5148, %.thread144 ], [ %i.fo, %bb.bd ] ; 2 uses
  %.sroa.053.0 = phi i64 [ %.reass343, %.thread144 ], [ %.sroa.8119.0157, %bb.bd ] ; 4 uses
  %i.fr = icmp sgt i64 %.sroa.040.0, %4
  %i.fs = icmp sgt i64 %.sroa.053.0, %4
  %or.cond5 = and i1 %i.fr, %i.fs
  br i1 %or.cond5, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.backedge, label %bb.ca

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.backedge: ; preds = %.lr.ph223.split, %bb.bz, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxE8push_mutCs8frGy5WneL6_4fish.exit102, %bb.cl
  %.sroa.0.0.be = phi i64 [ %.sroa.0.2.lcssa, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxE8push_mutCs8frGy5WneL6_4fish.exit102 ], [ %i.gp, %bb.cl ], [ %.sroa.0.5149, %bb.bz ], [ %.sroa.0.5149, %.lr.ph223.split ]
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.ca:                                            ; preds = %bb.bz
  %i.ft = xor i1 %i.cj, %i.fq
  br i1 %i.ft, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fu = icmp slt i64 %.sroa.053.0, %.sroa.040.0
  %. = select i1 %i.fu, i64 -1, i64 1
  %..i = tail call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.040.0)
  %..i101 = tail call noundef i64 @llvm.smin.i64(i64 %4, i64 %.sroa.053.0)
  br label %.lr.ph223.split.preheader.a

bb.cc:                                            ; preds = %bb.ca
  %.87 = select i1 %i.fq, i64 -1, i64 1
  br label %.lr.ph223.split.preheader.a

.lr.ph223.split.preheader.a:                      ; preds = %bb.cc, %bb.cb
  %.sroa.057.1 = phi i64 [ %., %bb.cb ], [ %.87, %bb.cc ] ; 4 uses
  %.sroa.053.1 = phi i64 [ %..i101, %bb.cb ], [ %.sroa.053.0, %bb.cc ]
  %.sroa.040.1 = phi i64 [ %..i, %bb.cb ], [ %.sroa.040.0, %bb.cc ] ; 2 uses
  %i.fv = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.040.1, i64 %.sroa.057.1)
  %5 = mul i64 %.sroa.053.1, %.sroa.057.1
  br label %.lr.ph223.split

.lr.ph223.split:                                  ; preds = %.lr.ph223.split.preheader.a, %bb.cf
  %.pn = phi { i64, i1 } [ %i.gg, %bb.cf ], [ %i.fv, %.lr.ph223.split.preheader.a ]
  %.sroa.040.2221 = phi i64 [ %i.gf, %bb.cf ], [ %.sroa.040.1, %.lr.ph223.split.preheader.a ] ; 2 uses
  %i.fw = extractvalue { i64, i1 } %.pn, 0
  %.not = icmp sgt i64 %i.fw, %5
  br i1 %.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.backedge, label %bb.cd

._crit_edge224:                                   ; preds = %bb.cf
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1704) #31
  unreachable

bb.cd:                                            ; preds = %.lr.ph223.split
  %i.fx = load i64, ptr %i.g, align 8, !alias.scope !1340, !noundef !10 ; 3 uses
  %i.fy = load i64, ptr %3, align 8, !range !14, !alias.scope !1340, !noundef !10
  %i.fz = icmp eq i64 %i.fx, %i.fy
  br i1 %i.fz, label %bb.ce, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxE8push_mutCs8frGy5WneL6_4fish.exit

bb.ce:                                            ; preds = %bb.cd
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #27
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxE8push_mutCs8frGy5WneL6_4fish.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %bb.cd, %bb.ce
  %i.ga = load ptr, ptr %i.j, align 8, !alias.scope !1340, !nonnull !10, !noundef !10
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fx
  store i64 %.sroa.040.2221, ptr %i.gb, align 8
  %i.gc = add i64 %i.fx, 1
  store i64 %i.gc, ptr %i.g, align 8, !alias.scope !1340
  %i.gd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.sroa.040.2221, i64 %.sroa.057.1) ; 2 uses
  %i.ge = extractvalue { i64, i1 } %i.gd, 1
  br i1 %i.ge, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxE8push_mutCs8frGy5WneL6_4fish.exit
  %i.gf = extractvalue { i64, i1 } %i.gd, 0       ; 2 uses
  %i.gg = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.gf, i64 %.sroa.057.1) ; 2 uses
  %i.gh = extractvalue { i64, i1 } %i.gg, 1
  br i1 %i.gh, label %._crit_edge224, label %.lr.ph223.split

bb.cg:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxE8push_mutCs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1705) #31
  unreachable

bb.ch:                                            ; preds = %bb.bb
  %i.gi = add nuw i64 %.sroa.0.4, 1
  br label %.preheader

bb.ci:                                            ; preds = %bb.bb
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1708) #31
  unreachable

bb.cj:                                            ; preds = %bb.aq, %._crit_edge
  %i.gj = load i64, ptr %i.g, align 8, !alias.scope !1341, !noundef !10 ; 3 uses
  %i.gk = load i64, ptr %3, align 8, !range !14, !alias.scope !1341, !noundef !10
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.ck, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxE8push_mutCs8frGy5WneL6_4fish.exit102

bb.ck:                                            ; preds = %bb.cj
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #27
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxE8push_mutCs8frGy5WneL6_4fish.exit102

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxE8push_mutCs8frGy5WneL6_4fish.exit102: ; preds = %bb.cj, %bb.ck
  %i.gm = load ptr, ptr %i.j, align 8, !alias.scope !1341, !nonnull !10, !noundef !10
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gj
  store i64 %.sroa.040.0, ptr %i.gn, align 8
  %i.go = add i64 %i.gj, 1
  store i64 %i.go, ptr %i.g, align 8, !alias.scope !1341
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.backedge

bb.cl:                                            ; preds = %bb.j
  %i.gp = add nuw i64 %.sroa.0.0, 1
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultxNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.backedge

bb.cm:                                            ; preds = %bb.j
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1711) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish6expand12expand_tilde(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.h = load i32, ptr %i.g, align 4, !noalias !1347, !noundef !10 ; 4 uses
  %i.i = xor i32 %i.h, 55296
  %i.j = add i32 %i.i, -1114112
  %i.k = icmp ult i32 %i.j, -1112064
  br i1 %i.k, label %.split.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

.split.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1347
  store i32 %i.h, ptr %i.a, align 4, !noalias !1347
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1480, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1481, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2092) #31, !noalias !1347
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.b
  %i.l = icmp ult i32 %i.h, 1114112
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i32 %i.h, 126
  br i1 %i.m, label %bb.c, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread

bb.c:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @1712, ptr %i.n, align 8, !alias.scope !1348, !noalias !1349
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr getelementptr inbounds nuw (i8, ptr @1712, i64 4), ptr %i.o, align 8, !alias.scope !1348, !noalias !1349
  invoke void @_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB10_5slice4iter4ItermEEENtNtNtB10_3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4ItermEEEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4ItermEEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  call void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val = load ptr, ptr %i.r, align 8
  call fastcc void @_RNvNtCs8frGy5WneL6_4fish6expand21expand_home_directory(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr %.val)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %bb.a, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4ItermEEEECs8frGy5WneL6_4fish.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i8 } @_RNvNtCs8frGy5WneL6_4fish6expand13expand_braces(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0, i16 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 15 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !10 ; 8 uses
  %.idx = shl nuw nsw i64 %i.s, 2                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 3 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %.thread328, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.a, %.loopexit352
  %.sroa.01.0250.ph = phi i1 [ %.sroa.01.1, %.loopexit352 ], [ false, %bb.a ] ; 7 uses
  %.sroa.02.0249.ph = phi i32 [ %.sroa.02.4, %.loopexit352 ], [ 0, %bb.a ] ; 4 uses
  %.sroa.017.0248.ph = phi i64 [ %.sroa.017.1, %.loopexit352 ], [ 0, %bb.a ] ; 8 uses
  %.sroa.4.0247.ph = phi i64 [ %.sroa.4.1, %.loopexit352 ], [ undef, %bb.a ] ; 8 uses
  %.sroa.022.0246.ph = phi i1 [ %.sroa.022.0246525, %.loopexit352 ], [ false, %bb.a ] ; 5 uses
  %.sroa.323.0245.ph = phi i64 [ %.sroa.323.0245519, %.loopexit352 ], [ undef, %bb.a ] ; 5 uses
  %.sroa.025.0244.ph = phi i1 [ %.sroa.025.1, %.loopexit352 ], [ false, %bb.a ] ; 6 uses
  %.sroa.326.0243.ph = phi i64 [ %.sroa.326.1, %.loopexit352 ], [ undef, %bb.a ] ; 6 uses
  %.sroa.0.0150242.ph = phi ptr [ %i.hv, %.loopexit352 ], [ %i.q, %bb.a ] ; 5 uses
  %.sroa.7.0152241.ph = phi i64 [ %i.hu, %.loopexit352 ], [ 0, %bb.a ] ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0150242.ph, i64 4 ; 7 uses
  %i.w = load i32, ptr %.sroa.0.0150242.ph, align 4, !noalias !1400, !noundef !10 ; 4 uses
  %i.x = xor i32 %i.w, 55296
  %i.y = add i32 %i.x, -1114112
  %i.z = icmp ult i32 %i.y, -1112064
  br i1 %i.z, label %.split.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.outer
  %i.aa = icmp ult i32 %i.w, 1114112
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %.sroa.7.0152241.ph, 1  ; 7 uses
  switch i32 %i.w, label %.loopexit352 [
    i32 64982, label %bb.cv
    i32 64980, label %bb.cu
    i32 64981, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.ac = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.02.0249.ph, i32 -1) ; 2 uses
  %i.ad = extractvalue { i32, i1 } %i.ac, 0       ; 4 uses
  %i.ae = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ae, label %.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = icmp slt i32 %i.ad, 0
  br i1 %i.af, label %.loopexit352, label %bb.e
end_hunk_4
begin_hunk_5_@_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.h, ptr %i.u, align 1, !alias.scope !3169
  br label %.loopexit.i.i

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %0, 65536
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = or disjoint i8 %i.n, -32
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.h, ptr %i.x, align 1, !alias.scope !3169
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sink6 = phi i8 [ %i.w, %bb.d ], [ %i.s, %bb.e ] ; 5 uses
  %.sink5 = phi i8 [ %i.l, %bb.d ], [ %i.p, %bb.e ]
  %.sink = phi i8 [ %i.h, %bb.d ], [ %i.l, %bb.e ]
  %.sroa.0.05.i = phi i64 [ 3, %bb.d ], [ 4, %bb.e ] ; 9 uses
  store i8 %.sink6, ptr %i.c, align 4, !alias.scope !3169
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sink5, ptr %i.y, align 1, !alias.scope !3169
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %.sink, ptr %i.z, align 2, !alias.scope !3169
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  %i.aa = add nsw i64 %.sroa.0.05.i, -1           ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !3173, !noalias !3174, !noundef !10
  %.not.i.not.i.i.i = icmp eq i8 %i.ac, %.sink6
  br i1 %.not.i.not.i.i.i, label %bb.f, label %.loopexit.i.i

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1: ; preds = %bb.f
  %i.ad = add nsw i64 %.sroa.0.05.i, -2           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !3173, !noalias !3174, !noundef !10
  %.not.i.not.i.i.i.1 = icmp eq i8 %i.af, %.sink6
  br i1 %.not.i.not.i.i.i.1, label %bb.g, label %.loopexit.i.i

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1
  %.not.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.1, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2: ; preds = %bb.g
  %i.ag = add nsw i64 %.sroa.0.05.i, -3           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !3173, !noalias !3174, !noundef !10
  %.not.i.not.i.i.i.2 = icmp eq i8 %i.ai, %.sink6
  br i1 %.not.i.not.i.i.i.2, label %bb.h, label %.loopexit.i.i

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2
  %.not.i.2 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.2, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3: ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.c, i64 %.sroa.0.05.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !3173, !noalias !3174, !noundef !10
  %.not.i.not.i.i.i.3 = icmp eq i8 %i.al, %.sink6
  br i1 %.not.i.not.i.i.i.3, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3, %.thread
  %.sroa.0.05.i2 = phi i64 [ 2, %.thread ], [ %.sroa.0.05.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3 ], [ %.sroa.0.05.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2 ], [ %.sroa.0.05.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.1 ], [ %.sroa.0.05.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i ] ; 4 uses
  %bcmp.i.i.us22.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i2), !alias.scope !3175, !noalias !3176
  %i.am = icmp eq i32 %bcmp.i.i.us22.i.i.i, 0
  br i1 %i.am, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader: ; preds = %.loopexit.i.i
  %i.an = add nsw i64 %2, -1                      ; 2 uses
  %.not27.i.i.not.i.not12 = icmp ugt i64 %.sroa.0.05.i2, %i.an
  br i1 %.not27.i.i.not.i.not12, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader
  %i.ao = phi i64 [ %i.ar, %.split.us.i.i.i ], [ %i.an, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader ]
  %.pn.i.i13 = phi ptr [ %i.ap, %.split.us.i.i.i ], [ %1, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn.i.i13, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ap, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i2), !alias.scope !3175, !noalias !3176
  %i.aq = icmp eq i32 %bcmp.i.i.us.i.i.i, 0       ; 2 uses
  %i.ar = add nsw i64 %i.ao, -1                   ; 2 uses
  %.not27.i.i.not.i.not = icmp ugt i64 %.sroa.0.05.i2, %i.ar
  %or.cond = select i1 %i.aq, i1 true, i1 %.not27.i.i.not.i.not
  br i1 %or.cond, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8frGy5WneL6_4fish.exit.i.i.i.3, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3177
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 5, 12) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 1, 5) %.sroa.0.05.i)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #33
  %i.as = load i64, ptr %i.b, align 8, !range !18, !noalias !3177, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3177
  %i.at = trunc nuw i64 %i.as to i1
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %.split.us.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader, %.loopexit.i.i, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i
  %.sroa.0.0.i = phi i1 [ %i.at, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i ], [ true, %.loopexit.i.i ], [ false, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8frGy5WneL6_4fish.exit.backedge.us.i.i.i.preheader ], [ %i.aq, %.split.us.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit

bb.i:                                             ; preds = %bb.a
  %i.au = trunc nuw nsw i32 %0 to i8
  br label %.lr.ph.i.i

.loopexit9.i.i:                                   ; preds = %.lr.ph.i.i
  %i.av = icmp samesign ult i64 %.sroa.04.011.i.i, %2
  tail call void @llvm.assume(i1 %i.av)
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.i
  %.sroa.04.011.i.i = phi i64 [ %i.az, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.011.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !3178, !noundef !10
  %i.ay = icmp eq i8 %i.ax, %i.au
  br i1 %i.ay, label %.loopexit9.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.az = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.az, %2
  br i1 %exitcond.not.i.i, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i

_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs8frGy5WneL6_4fish.exit: ; preds = %bb.j, %.loopexit9.i.i, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
  %.sroa.0.0.in = phi i1 [ %.sroa.0.0.i, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit ], [ true, %.loopexit9.i.i ], [ false, %bb.j ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit6, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3182)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !3182, !noalias !3183, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3182, !noalias !3183, !noundef !10 ; 3 uses
  %i.h = add i64 %i.g, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3184
  invoke void @_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB1c_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.g, i64 noundef %i.h, i64 noundef %i.h)
          to label %bb.d unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit6: ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBQ_5alloc6GlobalEEB2A_(ptr nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.j, %bb.g, %bb.k, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.i, %bb.c ], [ %i.ae, %bb.g ], [ %i.ao, %bb.j ], [ %i.ae, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventNtNtBQ_5alloc6GlobalEEB2A_(ptr nonnull %0) #28
          to label %bb.n unwind label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !noalias !3184, !noundef !10 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !3184, !noundef !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !3184, !noundef !10 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noalias !3184, !noundef !10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3184
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3184, !nonnull !10, !noundef !10 ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.j ; 2 uses
  %i.t = sub i64 %i.l, %i.j                       ; 5 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.n ; 2 uses
  %i.v = sub i64 %i.p, %i.n                       ; 3 uses
  %i.w = add i64 %i.t, %i.g
  store i64 %i.w, ptr %i.f, align 8
  %i.x = sub i64 %i.c, %i.t
  store i64 %i.x, ptr %i.b, align 8
  %i.y = icmp eq i64 %i.l, %i.j
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.z = icmp eq i64 %i.ab, %i.t
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.0.0.i20 = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %.sroa.0.0.i20
  %i.ab = add nuw nsw i64 %.sroa.0.0.i20, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aa)
          to label %bb.e unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph22
  %i.ac = add i64 %.sroa.0.1.i21, 1               ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.t
  br i1 %i.ad, label %.body, label %.lr.ph22

bb.g:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.ab, %i.t
  br i1 %i.af, label %.body, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i21 = phi i64 [ %i.ac, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %.sroa.0.1.i21
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ag) #28
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph22
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit: ; preds = %bb.e, %bb.d
  store i64 0, ptr %i.b, align 8
  %i.ai = icmp eq i64 %i.p, %i.n
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit6, label %.lr.ph24

bb.i:                                             ; preds = %.lr.ph24
  %i.aj = icmp eq i64 %i.al, %i.v
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit6, label %.lr.ph24

.lr.ph24:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit, %bb.i
  %.sroa.0.0.i223 = phi i64 [ %i.al, %bb.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBI_.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.sroa.0.0.i223
  %i.al = add nuw nsw i64 %.sroa.0.0.i223, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.i unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph26
  %i.am = add i64 %.sroa.0.1.i325, 1              ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.v
  br i1 %i.an, label %.body, label %.lr.ph26

bb.k:                                             ; preds = %.lr.ph24
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq i64 %i.al, %i.v
  br i1 %i.ap, label %.body, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.k, %bb.j
  %.sroa.0.1.i325 = phi i64 [ %i.am, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.sroa.0.1.i325
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aq) #28
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %.lr.ph26
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.m:                                             ; preds = %.body
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !27, !noundef !10
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2082, i64 noundef 15)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2083, i64 noundef 10)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2084, i64 noundef 8)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2085, i64 noundef 10)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2086, i64 noundef 8)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2088, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2087)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.i, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs3oUPovFnLWP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2090, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2089)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCs8frGy5WneL6_4fish8builtins6statusNtB5_4DocsNtCs9Il5MS94ZYM_10rust_embed9RustEmbed3get(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish8builtins6statusNtB5_4Docs3get(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCs3oUPovFnLWP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2097, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2098, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2095, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2099, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2096)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i16, ptr %0, align 2, !noundef !10  ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3188
  store i16 %i.c, ptr %i.a, align 2, !noalias !3188
  %i.e = call noundef zeroext i1 @_RINvNtCslEmbWASCaJL_8bitflags6parser9to_writerNtNtCs8frGy5WneL6_4fish6expand11ExpandFlagsQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3188
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2100, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsm_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !align !11, !noundef !10
  %i.i = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @2101, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsA_NvNtCs8frGy5WneL6_4fish6expand1__NtB7_11ExpandFlagsNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = load i16, ptr %0, align 2, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3193
  store i16 %i.b, ptr %i.a, align 2, !noalias !3193
  %i.c = call noundef zeroext i1 @_RNvXsm_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3193
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsB_NvNtCs8frGy5WneL6_4fish6expand1__NtB7_11ExpandFlagsNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = load i16, ptr %0, align 2, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3198
  store i16 %i.b, ptr %i.a, align 2, !noalias !3198
  %i.c = call noundef zeroext i1 @_RNvXso_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3198
  ret i1 %i.c
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains(i32 %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 2305843009213693936          ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a ; 2 uses
  %.not10 = icmp eq i64 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.preheader: ; preds = %bb.a
  %i.c = insertelement <16 x i32> poison, i32 %.0.val, i64 0
  %i.d = shufflevector <16 x i32> %i.c, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0512, i64 64
  %i.f = add nsw i64 %.sroa.5.011, -16            ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = shl nuw nsw i64 %1, 2
  %.idx = and i64 %i.g, 60                        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not.not13 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not13, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %._crit_edge
  %i.i = phi ptr [ %i.k, %.lr.ph ], [ %i.b, %._crit_edge ] ; 2 uses
  %.val2.i = load i32, ptr %i.i, align 4, !range !16, !noalias !3205, !noundef !10
  %i.j = icmp eq i32 %.val2.i, %.0.val            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %.not.not.not.i.not.not = icmp eq ptr %i.k, %i.h
end_hunk_5
