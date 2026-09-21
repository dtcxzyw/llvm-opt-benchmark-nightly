Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.3?download=true
inline.NumInlined: 77
inline.NumDeleted: 38
begin_hunk_0_@_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp10format_e_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish:bb.a
_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i
  %i.ce = icmp ne ptr %i.bv, %i.ba
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 4
  %i.cg = load i8, ptr %i.bv, align 1, !alias.scope !153, !noalias !154, !noundef !5
  %i.ch = shl nuw nsw i32 %i.bk, 18
  %i.ci = and i32 %i.ch, 1835008
  %i.cj = shl nuw nsw i32 %i.ca, 6
  %i.ck = and i8 %i.cg, 63
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl
  %i.cn = or disjoint i32 %i.cm, %i.ci
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i, %bb.k, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i = phi ptr [ %i.bm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i ], [ %i.bv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i ], [ %i.cf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i ], [ %i.bg, %bb.k ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.br, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i ], [ %i.cc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i ], [ %i.cn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i ], [ %i.bt, %bb.k ]
  %i.co = load i64, ptr %i.be, align 8, !alias.scope !155, !noalias !153, !noundef !5 ; 3 uses
  %i.cp = load i64, ptr %i.m, align 8, !range !6, !alias.scope !155, !noalias !153, !noundef !5
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.m, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #14
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.cr = load ptr, ptr %i.bf, align 8, !alias.scope !155, !noalias !153, !nonnull !5, !noundef !5
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.co
  store i32 %spec.select.i.ph.i.i.i.i.i, ptr %i.cs, align 4, !noalias !153
  %i.ct = add i64 %i.co, 1
  store i64 %i.ct, ptr %i.be, align 8, !alias.scope !155, !noalias !153
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i, %i.ba
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit, label %bb.j

bb.n:                                             ; preds = %bb.h
  %i.cu = add i64 %i.aw, %i.w                     ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.w
  br i1 %i.cv, label %.invoke, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 32, i64 noundef %i.o, i64 noundef %i.cu)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  br i1 %i.cw, label %select.unfold, label %bb.i

select.unfold:                                    ; preds = %.noexc103, %bb.p, %bb.bw, %bb.bb, %.noexc123.a, %.split.us.i, %.loopexit136.i, %.noexc101, %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.cx, align 1
  store i8 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit unwind label %bb.q

bb.q:                                             ; preds = %select.unfold
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %.body, %bb.by, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.qf, %bb.by ], [ %i.cy, %bb.q ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i, %.noexc
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
  %i.dc = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 48, i64 noundef %i.o, i64 noundef %i.da)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  br i1 %i.dc, label %select.unfold, label %bb.s

bb.w:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !156, !noalias !160, !noundef !5 ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.noexc87, %bb.w
  %i.dg = phi i32 [ %i.de, %bb.w ], [ %i.dp, %.noexc87 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !156, !noalias !160, !noundef !5
  %i.dj = trunc i64 %i.di to i32
  %.not116.i = icmp slt i32 %i.dg, %i.dj
  br i1 %.not116.i, label %._crit_edge.thread.i, label %.lr.ph117.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  %.not82151.i = trunc i8 %.sroa.1128.0.copyload to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !range !161, !alias.scope !157, !noalias !162
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
  %i.dp = load i32, ptr %i.dd, align 8, !alias.scope !156, !noalias !160, !noundef !5 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %.noexc94
  %.not82.i = trunc i8 %.sroa.1128.0.copyload to i1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !range !161, !alias.scope !157, !noalias !162
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
  %i.dx = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %.lr.ph121.split.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !163
  store ptr %i.dx, ptr %i.e, align 8, !noalias !163
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx165.i, align 8, !noalias !163
  store ptr null, ptr %i.dw, align 8, !noalias !163
  store i16 1, ptr %.sroa.449.0..sroa_idx166.i, align 8, !noalias !163
  %i.dy = invoke noundef zeroext i1 @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull @18, ptr noundef nonnull %i.e)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %.noexc88
  br i1 %i.dy, label %.loopexit136.i, label %bb.x

bb.x:                                             ; preds = %.noexc89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !163
  %.not.i.peel.i = icmp eq i32 %.lcssa113154163.i, 0
  br i1 %.not.i.peel.i, label %._crit_edge122.thread170.i, label %.lr.ph121.split.i

.lr.ph121.split.us.preheader.i:                   ; preds = %.lr.ph121.i, %._crit_edge.thread.i
  %.sroa.428.0..sroa_idx168.i = phi ptr [ %.sroa.428.0..sroa_idx160.i, %._crit_edge.thread.i ], [ %.sroa.428.0..sroa_idx.i, %.lr.ph121.i ] ; 2 uses
  %i.dz = phi ptr [ %i.do, %._crit_edge.thread.i ], [ %i.dv, %.lr.ph121.i ] ; 2 uses
  %.sroa.423.0..sroa_idx167.i = phi ptr [ %.sroa.423.0..sroa_idx159.i, %._crit_edge.thread.i ], [ %.sroa.423.0..sroa_idx.i, %.lr.ph121.i ] ; 2 uses
  %.lcssa113154164.i = phi i32 [ %i.dg, %._crit_edge.thread.i ], [ %i.eg, %.lr.ph121.i ] ; 2 uses
  %i.ea = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %.lr.ph121.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !163
  store ptr %i.ea, ptr %i.f, align 8, !noalias !163
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx167.i, align 8, !noalias !163
  store ptr null, ptr %i.dz, align 8, !noalias !163
  store i16 1, ptr %.sroa.428.0..sroa_idx168.i, align 8, !noalias !163
  %i.eb = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @18, ptr noundef nonnull %i.f)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %.noexc90
  br i1 %i.eb, label %.split.us.i, label %bb.y

bb.y:                                             ; preds = %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !163
  %.not.i.us.peel.i = icmp eq i32 %.lcssa113154164.i, 0
  br i1 %.not.i.us.peel.i, label %._crit_edge122.thread.i, label %.lr.ph121.split.us.i

.lr.ph121.split.us.i:                             ; preds = %bb.y, %bb.z
  %.sroa.0.0101119.us.i = phi i32 [ %4, %bb.z ], [ 1, %bb.y ] ; 3 uses
  %i.ec = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %.sroa.0.0101119.us.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc92:                                         ; preds = %.lr.ph121.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !163
  store ptr %i.ec, ptr %i.f, align 8, !noalias !163
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx167.i, align 8, !noalias !163
  store ptr null, ptr %i.dz, align 8, !noalias !163
  store i16 9, ptr %.sroa.428.0..sroa_idx168.i, align 8, !noalias !163
  %i.ed = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @18, ptr noundef nonnull %i.f)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc93:                                         ; preds = %.noexc92
  br i1 %i.ed, label %.split.us.i, label %bb.z

bb.z:                                             ; preds = %.noexc93
  %4 = add nuw i32 %.sroa.0.0101119.us.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !163
  %exitcond139.not.i = icmp eq i32 %.sroa.0.0101119.us.i, %.lcssa113154164.i
  br i1 %exitcond139.not.i, label %._crit_edge122.thread.i, label %.lr.ph121.split.us.i, !llvm.loop !31

.lr.ph117.i:                                      ; preds = %.preheader.i, %.noexc94
  invoke void @_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal9push_back(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 0)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc94:                                         ; preds = %.lr.ph117.i
  %i.ee = load i64, ptr %i.dh, align 8, !alias.scope !156, !noalias !160, !noundef !5
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = load i32, ptr %i.dd, align 8, !alias.scope !156, !noalias !160, !noundef !5 ; 4 uses
  %.not.i = icmp slt i32 %i.eg, %i.ef
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph117.i

.lr.ph121.split.i:                                ; preds = %bb.x, %bb.av
  %.sroa.0.0101119.i = phi i32 [ %5, %bb.av ], [ 1, %bb.x ] ; 3 uses
  %i.eh = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %.sroa.0.0101119.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc95:                                         ; preds = %.lr.ph121.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !163
  store ptr %i.eh, ptr %i.e, align 8, !noalias !163
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx165.i, align 8, !noalias !163
  store ptr null, ptr %i.dw, align 8, !noalias !163
  store i16 9, ptr %.sroa.449.0..sroa_idx166.i, align 8, !noalias !163
  %i.ei = invoke noundef zeroext i1 @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull @18, ptr noundef nonnull %i.e)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !163
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !159, !noalias !165, !nonnull !5, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !159, !noalias !165, !noundef !5
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale14apply_grouping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.el, i64 noundef %i.en)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %._crit_edge122.thread.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !163, !nonnull !5, !noundef !5 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !noalias !163, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.et = lshr i64 %i.er, 2
  %i.eu = and i64 %i.er, 3
  %.not.i.i.i.i.i = icmp ne i64 %i.eu, 0
  %i.ev = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.et, %i.ev
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %.noexc97
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %.not.i9.i.i.i.i.i.i = icmp samesign eq i64 %i.er, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 1 ; 3 uses
  %i.ez = load i8, ptr %.sroa.0.010.i.i.i.i.i.i, align 1, !alias.scope !173, !noalias !174, !noundef !5 ; 5 uses
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %bb.ab, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.fb = and i8 %i.ez, 31
  %i.fc = zext nneg i8 %i.fb to i32               ; 3 uses
  %i.fd = icmp ne ptr %i.ey, %i.es
  call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 2 ; 3 uses
  %i.ff = load i8, ptr %i.ey, align 1, !alias.scope !173, !noalias !174, !noundef !5
  %i.fg = shl nuw nsw i32 %i.fc, 6
  %i.fh = and i8 %i.ff, 63
  %i.fi = zext nneg i8 %i.fh to i32               ; 2 uses
  %i.fj = or disjoint i32 %i.fg, %i.fi
  %i.fk = icmp samesign ugt i8 %i.ez, -33
  br i1 %i.fk, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fl = zext nneg i8 %i.ez to i32
  br label %bb.ac

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i
  %i.fm = icmp ne ptr %i.fe, %i.es
  call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 3 ; 3 uses
  %i.fo = load i8, ptr %i.fe, align 1, !alias.scope !173, !noalias !174, !noundef !5
  %i.fp = shl nuw nsw i32 %i.fi, 6
  %i.fq = and i8 %i.fo, 63
  %i.fr = zext nneg i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fp, %i.fr            ; 2 uses
  %i.ft = shl nuw nsw i32 %i.fc, 12
  %i.fu = or disjoint i32 %i.fs, %i.ft
  %i.fv = icmp samesign ugt i8 %i.ez, -17
  br i1 %i.fv, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i, label %bb.ac

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i
  %i.fw = icmp ne ptr %i.fn, %i.es
  call void @llvm.assume(i1 %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 4
  %i.fy = load i8, ptr %i.fn, align 1, !alias.scope !173, !noalias !174, !noundef !5
  %i.fz = shl nuw nsw i32 %i.fc, 18
  %i.ga = and i32 %i.fz, 1835008
  %i.gb = shl nuw nsw i32 %i.fs, 6
  %i.gc = and i8 %i.fy, 63
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = or disjoint i32 %i.gb, %i.gd
  %i.gf = or disjoint i32 %i.ge, %i.ga
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i, %bb.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i.i = phi ptr [ %i.fe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i ], [ %i.fn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i ], [ %i.fx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i ], [ %i.ey, %bb.ab ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i = phi i32 [ %i.fj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i ], [ %i.fu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i ], [ %i.gf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i ], [ %i.fl, %bb.ab ]
  %i.gg = load i64, ptr %i.ew, align 8, !alias.scope !175, !noalias !176, !noundef !5 ; 3 uses
  %i.gh = load i64, ptr %i.m, align 8, !range !6, !alias.scope !175, !noalias !176, !noundef !5
  %i.gi = icmp eq i64 %i.gg, %i.gh
  br i1 %i.gi, label %bb.ad, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #14
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i unwind label %.loopexit.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %i.gj = load ptr, ptr %i.ex, align 8, !alias.scope !175, !noalias !176, !nonnull !5, !noundef !5
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gg
  store i32 %spec.select.i.ph.i.i.i.i.i.i, ptr %i.gk, align 4, !noalias !173
  %i.gl = add i64 %i.gg, 1
  store i64 %i.gl, ptr %i.ew, align 8, !alias.scope !175, !noalias !176
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
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #12
          to label %.body unwind label %bb.au

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i, %.noexc.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i unwind label %bb.af

bb.af:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i: ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !163
  br label %._crit_edge122.thread170.i

bb.ah:                                            ; preds = %._crit_edge122.thread170.i
  %i.go = load i32, ptr %i.t, align 4, !range !7, !alias.scope !157, !noalias !162, !noundef !5
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !177, !noalias !178, !noundef !5 ; 3 uses
  %i.gr = load i64, ptr %i.m, align 8, !range !6, !alias.scope !177, !noalias !178, !noundef !5
  %i.gs = icmp eq i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.ai, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #14
          to label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i: ; preds = %bb.ai, %bb.ah
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !177, !noalias !178, !nonnull !5, !noundef !5
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gq
  store i32 %i.go, ptr %i.gv, align 4
  %i.gw = add i64 %i.gq, 1
  store i64 %i.gw, ptr %i.gp, align 8, !alias.scope !177, !noalias !178
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i, %._crit_edge122.thread170.i
  %i.gx = load i32, ptr %i.dd, align 8, !alias.scope !156, !noalias !160, !noundef !5
  %i.gy = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gx, i32 1) ; 2 uses
  %i.gz = extractvalue { i32, i1 } %i.gy, 1
  br i1 %i.gz, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ha = load i64, ptr %i.dh, align 8, !alias.scope !156, !noalias !160, !noundef !5
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
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #16
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
  %i.hl = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 48, i64 noundef %.sroa.0.0.lcssa.i, i64 noundef 0)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %._crit_edge127.i
  br i1 %i.hl, label %select.unfold, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_fNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit

bb.an:                                            ; preds = %bb.am
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0124.i, i64 9) ; 8 uses
  store i64 0, ptr %i.he, align 8, !alias.scope !159, !noalias !165
  %i.hm = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %.pn123.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc102:                                        ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !163
  store ptr %i.hm, ptr %i.c, align 8, !noalias !163
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !163
  store ptr null, ptr %i.hf, align 8, !noalias !163
  store i16 9, ptr %.sroa.461.0..sroa_idx.i, align 8, !noalias !163
  %i.hn = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @18, ptr noundef nonnull %i.c)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc103:                                        ; preds = %.noexc102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !163
  br i1 %i.hn, label %select.unfold, label %bb.ao

bb.ao:                                            ; preds = %.noexc103
  %i.ho = load ptr, ptr %i.hg, align 8, !alias.scope !159, !noalias !165, !nonnull !5, !noundef !5 ; 5 uses
  %i.hp = load i64, ptr %i.he, align 8, !alias.scope !159, !noalias !165, !noundef !5 ; 4 uses
  %.not.i86.i = icmp ult i64 %..i.i, %i.hp
  br i1 %.not.i86.i, label %bb.ap, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ao
  %i.hq = icmp eq i64 %..i.i, %i.hp
  br i1 %i.hq, label %.lr.ph.i.i.i.i.i91.i, label %.invoke322

bb.ap:                                            ; preds = %bb.ao
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %..i.i
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !179, !noundef !5
  %i.ht = icmp sgt i8 %i.hs, -65
  br i1 %i.ht, label %.lr.ph.i.i.i.i.i91.i, label %.invoke322

.lr.ph.i.i.i.i.i91.i:                             ; preds = %bb.ap, %.split.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 %..i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.hv = add nuw nsw i64 %..i.i, 3
  %.sroa.0.0.i.i.i.i89.i = lshr i64 %i.hv, 2
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.0.0.i.i.i.i89.i)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc104:                                        ; preds = %.lr.ph.i.i.i.i.i91.i
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  br label %bb.aq

bb.aq:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i96.i, %.noexc104
  %.sroa.0.010.i.i.i.i.i92.i = phi ptr [ %i.ho, %.noexc104 ], [ %.sroa.0.1.ph.i.i.i.i.i94.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i96.i ] ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i92.i, i64 1 ; 3 uses
  %i.hx = load i8, ptr %.sroa.0.010.i.i.i.i.i92.i, align 1, !alias.scope !187, !noalias !188, !noundef !5 ; 5 uses
  %i.hy = icmp sgt i8 %i.hx, -1
  br i1 %i.hy, label %bb.ar, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i93.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i93.i: ; preds = %bb.aq
  %i.hz = and i8 %i.hx, 31
  %i.ia = zext nneg i8 %i.hz to i32               ; 3 uses
  %i.ib = icmp ne ptr %i.hw, %i.hu
  call void @llvm.assume(i1 %i.ib)
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i92.i, i64 2 ; 3 uses
  %i.id = load i8, ptr %i.hw, align 1, !alias.scope !187, !noalias !188, !noundef !5
  %i.ie = shl nuw nsw i32 %i.ia, 6
  %i.if = and i8 %i.id, 63
  %i.ig = zext nneg i8 %i.if to i32               ; 2 uses
  %i.ih = or disjoint i32 %i.ie, %i.ig
  %i.ii = icmp samesign ugt i8 %i.hx, -33
  br i1 %i.ii, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i98.i, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ij = zext nneg i8 %i.hx to i32
  br label %bb.as

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i98.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i93.i
  %i.ik = icmp ne ptr %i.ic, %i.hu
  call void @llvm.assume(i1 %i.ik)
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i92.i, i64 3 ; 3 uses
  %i.im = load i8, ptr %i.ic, align 1, !alias.scope !187, !noalias !188, !noundef !5
  %i.in = shl nuw nsw i32 %i.ig, 6
  %i.io = and i8 %i.im, 63
  %i.ip = zext nneg i8 %i.io to i32
  %i.iq = or disjoint i32 %i.in, %i.ip            ; 2 uses
  %i.ir = shl nuw nsw i32 %i.ia, 12
  %i.is = or disjoint i32 %i.iq, %i.ir
  %i.it = icmp samesign ugt i8 %i.hx, -17
  br i1 %i.it, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i99.i, label %bb.as

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i99.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i98.i
  %i.iu = icmp ne ptr %i.il, %i.hu
  call void @llvm.assume(i1 %i.iu)
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i92.i, i64 4
  %i.iw = load i8, ptr %i.il, align 1, !alias.scope !187, !noalias !188, !noundef !5
  %i.ix = shl nuw nsw i32 %i.ia, 18
  %i.iy = and i32 %i.ix, 1835008
  %i.iz = shl nuw nsw i32 %i.iq, 6
  %i.ja = and i8 %i.iw, 63
  %i.jb = zext nneg i8 %i.ja to i32
  %i.jc = or disjoint i32 %i.iz, %i.jb
  %i.jd = or disjoint i32 %i.jc, %i.iy
  br label %bb.as

bb.as:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i99.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i98.i, %bb.ar, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i93.i
  %.sroa.0.1.ph.i.i.i.i.i94.i = phi ptr [ %i.ic, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i93.i ], [ %i.il, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i98.i ], [ %i.iv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i99.i ], [ %i.hw, %bb.ar ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i95.i = phi i32 [ %i.ih, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i93.i ], [ %i.is, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i98.i ], [ %i.jd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i99.i ], [ %i.ij, %bb.ar ]
  %i.je = load i64, ptr %i.hh, align 8, !alias.scope !189, !noalias !190, !noundef !5 ; 3 uses
  %i.jf = load i64, ptr %i.m, align 8, !range !6, !alias.scope !189, !noalias !190, !noundef !5
  %i.jg = icmp eq i64 %i.je, %i.jf
  br i1 %i.jg, label %bb.at, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i96.i

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #14
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i96.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i96.i: ; preds = %bb.at, %bb.as
  %i.jh = load ptr, ptr %i.hi, align 8, !alias.scope !189, !noalias !190, !nonnull !5, !noundef !5
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.je
  store i32 %spec.select.i.ph.i.i.i.i.i95.i, ptr %i.ji, align 4, !noalias !187
  %i.jj = add i64 %i.je, 1
  store i64 %i.jj, ptr %i.hh, align 8, !alias.scope !189, !noalias !190
  %.not.i.i.i.i.i.i97.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i94.i, %i.hu
  br i1 %.not.i.i.i.i.i.i97.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit100.i, label %bb.aq

.invoke322:                                       ; preds = %.split.i.i, %bb.ap, %bb.bf, %.split.i, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i.i112, %bb.bd
  %i.jk = phi ptr [ %i.kg, %.split.i ], [ %i.kg, %.split.i.i112 ], [ %i.kg, %bb.bd ], [ %i.kg, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %.sroa.012.0.i, %bb.bf ], [ %i.ho, %bb.ap ], [ %i.ho, %.split.i.i ]
  %i.jl = phi i64 [ %i.kh, %.split.i ], [ %i.kh, %.split.i.i112 ], [ %i.kh, %bb.bd ], [ %i.kh, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %.sroa.9.0.i, %bb.bf ], [ %i.hp, %bb.ap ], [ %i.hp, %.split.i.i ]
  %i.jm = phi i64 [ 1, %.split.i ], [ 0, %.split.i.i112 ], [ 0, %bb.bd ], [ 1, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ 0, %bb.bf ], [ 0, %bb.ap ], [ 0, %.split.i.i ]
  %i.jn = phi i64 [ %i.kh, %.split.i ], [ 1, %.split.i.i112 ], [ 1, %bb.bd ], [ %i.kh, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %..i63.i, %bb.bf ], [ %..i.i, %bb.ap ], [ %..i.i, %.split.i.i ]
  %i.jo = phi ptr [ @21, %.split.i ], [ @20, %.split.i.i112 ], [ @20, %bb.bd ], [ @21, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ @22, %bb.bf ], [ @25, %bb.ap ], [ @25, %.split.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jk, i64 noundef %i.jl, i64 noundef %i.jm, i64 noundef %i.jn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jo) #16
          to label %.cont323 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont323:                                         ; preds = %.invoke322
  unreachable

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit100.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i96.i
  %i.jp = sub nuw i64 %.sroa.0.0124.i, %..i.i     ; 2 uses
  %exitcond.not.i.a = icmp eq i32 %i.hj, %i.hb
  br i1 %exitcond.not.i.a, label %._crit_edge127.i, label %bb.am

bb.au:                                            ; preds = %bb.ae
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

.loopexit136.i:                                   ; preds = %.noexc96, %.noexc89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !163
  br label %select.unfold

bb.av:                                            ; preds = %.noexc96
  %5 = add nuw i32 %.sroa.0.0101119.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !163
  %exitcond.not.i = icmp eq i32 %.sroa.0.0101119.i, %.lcssa113154163.i
  br i1 %exitcond.not.i, label %._crit_edge122.thread170.i, label %.lr.ph121.split.i, !llvm.loop !74

.split.us.i:                                      ; preds = %.noexc93, %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !163
  br label %select.unfold

bb.aw:                                            ; preds = %bb.s
  %.val85 = load i32, ptr %i.t, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !191, !noalias !194, !noundef !5
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
  %.sroa.0.030.i = phi i64 [ %i.q, %bb.aw ], [ %i.oe, %.loopexit.i108 ] ; 4 uses
  %.sroa.025.029.i = phi i32 [ 0, %bb.aw ], [ %i.ka, %.loopexit.i108 ] ; 4 uses
  %i.ka = add nuw nsw i32 %.sroa.025.029.i, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !195
  %i.kb = icmp slt i32 %.sroa.025.029.i, %i.jt
  br i1 %i.kb, label %bb.ay, label %bb.az

.loopexit13.i:                                    ; preds = %.loopexit.i108
  %i.kc = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef 48, i64 noundef %i.oe, i64 noundef 0)
          to label %.noexc123.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc123.a:                                      ; preds = %.loopexit13.i
  br i1 %i.kc, label %select.unfold, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp17format_mantissa_eNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit

bb.ay:                                            ; preds = %bb.ax
  %i.kd = invoke noundef nonnull align 4 ptr @_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %.sroa.025.029.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
          to label %.noexc124.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc124.a:                                      ; preds = %bb.ay
  %i.ke = load i32, ptr %i.kd, align 4, !noundef !5
  br label %bb.az

bb.az:                                            ; preds = %.noexc124.a, %bb.ax
  %storemerge.i = phi i32 [ %i.ke, %.noexc124.a ], [ 0, %bb.ax ]
  store i32 %storemerge.i, ptr %i.b, align 4, !noalias !195
  %.not.i107 = icmp eq i32 %.sroa.025.029.i, 0    ; 2 uses
  %.62.i = select i1 %.not.i107, i16 1, i16 9
  store i64 0, ptr %i.ju, align 8, !alias.scope !193, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !195
  store ptr %i.b, ptr %i.a, align 8, !noalias !195
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !195
  store ptr null, ptr %i.jv, align 8, !noalias !195
  store i16 %.62.i, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !195
  %i.kf = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @18, ptr noundef nonnull %i.a)
          to label %.noexc125.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc125.a:                                      ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  br i1 %i.kf, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.noexc125.a
  %i.kg = load ptr, ptr %i.jw, align 8, !alias.scope !193, !noalias !196, !nonnull !5, !noundef !5 ; 12 uses
  %i.kh = load i64, ptr %i.ju, align 8, !alias.scope !193, !noalias !196, !noundef !5 ; 12 uses
  br i1 %.not.i107, label %bb.bc, label %bb.be

bb.bb:                                            ; preds = %.noexc125.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !195
  br label %select.unfold

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i111 = icmp ugt i64 %i.kh, 1
  br i1 %.not.i.i111, label %bb.bd, label %.split.i.i112

.split.i.i112:                                    ; preds = %bb.bc
  %i.ki = icmp eq i64 %i.kh, 1
  br i1 %i.ki, label %.lr.ph.i.i.i.i.i.i113, label %.invoke322

bb.bd:                                            ; preds = %bb.bc
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !197, !noundef !5
  %i.kl = icmp sgt i8 %i.kk, -65
  br i1 %i.kl, label %.lr.ph.i.i.i.i.i.i113, label %.invoke322

bb.be:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i120, %bb.bk, %bb.ba
  %.sroa.9.0.i = phi i64 [ %i.me, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i120 ], [ %i.me, %bb.bk ], [ %i.kh, %bb.ba ] ; 3 uses
  %.sroa.012.0.i = phi ptr [ %i.mf, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i120 ], [ %i.mf, %bb.bk ], [ %i.kg, %bb.ba ] ; 4 uses
  %..i63.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.030.i, i64 %.sroa.9.0.i) ; 7 uses
  %i.km = icmp ne i64 %..i63.i, 0                 ; 2 uses
  %.not.i64.i = icmp ult i64 %.sroa.0.030.i, %.sroa.9.0.i
  %or.cond6.i = and i1 %.not.i64.i, %i.km
  br i1 %or.cond6.i, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 %..i63.i
  %i.ko = load i8, ptr %i.kn, align 1, !alias.scope !198, !noundef !5
  %i.kp = icmp sgt i8 %i.ko, -65
  br i1 %i.kp, label %bb.bn, label %.invoke322

.lr.ph.i.i.i.i.i.i113:                            ; preds = %bb.bd, %.split.i.i112
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 1)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc126:                                        ; preds = %.lr.ph.i.i.i.i.i.i113
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  br label %bb.bg

bb.bg:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i116, %.noexc126
  %.sroa.0.010.i.i.i.i.i.idx.i = phi i64 [ 0, %.noexc126 ], [ %.sroa.0.1.ph.i.i.i.i.i.idx.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i116 ] ; 6 uses
  %.sroa.0.010.i.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.0.010.i.i.i.i.i.idx.i
  %.sroa.0.010.i.i.i.i.i.add7.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.idx.i, 1 ; 2 uses
  %i.kq = load i8, ptr %.sroa.0.010.i.i.i.i.i.ptr.i, align 1, !alias.scope !206, !noalias !207, !noundef !5 ; 5 uses
  %i.kr = icmp sgt i8 %i.kq, -1
  br i1 %i.kr, label %bb.bh, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i114

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i114: ; preds = %bb.bg
  %.ptr10.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.0.010.i.i.i.i.i.add7.i
  %i.ks = and i8 %i.kq, 31
  %i.kt = zext nneg i8 %i.ks to i32               ; 3 uses
  %i.ku = icmp samesign ne i64 %.sroa.0.010.i.i.i.i.i.idx.i, 0
  call void @llvm.assume(i1 %i.ku)
  %.sroa.0.010.i.i.i.i.i.add.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.idx.i, 2 ; 2 uses
  %i.kv = load i8, ptr %.ptr10.i, align 1, !alias.scope !206, !noalias !207, !noundef !5
  %i.kw = shl nuw nsw i32 %i.kt, 6
  %i.kx = and i8 %i.kv, 63
  %i.ky = zext nneg i8 %i.kx to i32               ; 2 uses
  %i.kz = or disjoint i32 %i.kw, %i.ky
  %i.la = icmp samesign ugt i8 %i.kq, -33
  br i1 %i.la, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i121, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lb = zext nneg i8 %i.kq to i32
  br label %bb.bi

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i121: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i114
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.0.010.i.i.i.i.i.add.i
  %.sroa.0.010.i.i.i.i.i.add9.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.idx.i, 3 ; 2 uses
  %i.lc = load i8, ptr %.ptr.i, align 1, !alias.scope !206, !noalias !207, !noundef !5
  %i.ld = shl nuw nsw i32 %i.ky, 6
  %i.le = and i8 %i.lc, 63
  %i.lf = zext nneg i8 %i.le to i32
  %i.lg = or disjoint i32 %i.ld, %i.lf            ; 2 uses
  %i.lh = shl nuw nsw i32 %i.kt, 12
  %i.li = or disjoint i32 %i.lg, %i.lh
  %i.lj = icmp samesign ugt i8 %i.kq, -17
  br i1 %i.lj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i122, label %bb.bi

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i122: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i121
  %.ptr12.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.0.010.i.i.i.i.i.add9.i
  %.sroa.0.010.i.i.i.i.i.add8.i = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.idx.i, 4
  %i.lk = load i8, ptr %.ptr12.i, align 1, !alias.scope !206, !noalias !207, !noundef !5
  %i.ll = shl nuw nsw i32 %i.kt, 18
  %i.lm = and i32 %i.ll, 1835008
  %i.ln = shl nuw nsw i32 %i.lg, 6
  %i.lo = and i8 %i.lk, 63
  %i.lp = zext nneg i8 %i.lo to i32
  %i.lq = or disjoint i32 %i.ln, %i.lp
  %i.lr = or disjoint i32 %i.lq, %i.lm
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i122, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i121, %bb.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i114
  %.sroa.0.1.ph.i.i.i.i.i.idx.i = phi i64 [ %.sroa.0.010.i.i.i.i.i.add.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i114 ], [ %.sroa.0.010.i.i.i.i.i.add9.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i121 ], [ %.sroa.0.010.i.i.i.i.i.add8.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i122 ], [ %.sroa.0.010.i.i.i.i.i.add7.i, %bb.bh ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i115 = phi i32 [ %i.kz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i.i114 ], [ %i.li, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i.i121 ], [ %i.lr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i.i122 ], [ %i.lb, %bb.bh ]
  %i.ls = load i64, ptr %i.jx, align 8, !alias.scope !208, !noalias !209, !noundef !5 ; 4 uses
  %i.lt = load i64, ptr %i.m, align 8, !range !6, !alias.scope !208, !noalias !209, !noundef !5
  %i.lu = icmp eq i64 %i.ls, %i.lt
  br i1 %i.lu, label %bb.bj, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i116

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #14
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i116: ; preds = %bb.bj, %bb.bi
  %i.lv = load ptr, ptr %i.jy, align 8, !alias.scope !208, !noalias !209, !nonnull !5, !noundef !5
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.ls
  store i32 %spec.select.i.ph.i.i.i.i.i.i115, ptr %i.lw, align 4, !noalias !206
  %i.lx = add i64 %i.ls, 1                        ; 3 uses
  store i64 %i.lx, ptr %i.jx, align 8, !alias.scope !208, !noalias !209
  %.not.i.i.i.i.i.i.i117 = icmp samesign eq i64 %.sroa.0.1.ph.i.i.i.i.i.idx.i, 1
  br i1 %.not.i.i.i.i.i.i.i117, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i118, label %bb.bg

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i118: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i.i116
  %i.ly = icmp ult i64 %i.kh, 2
  br i1 %i.ly, label %.split.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i

.split.i:                                         ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i118
  %i.lz = icmp eq i64 %i.kh, 1
  br i1 %i.lz, label %bb.bk, label %.invoke322, !prof !210

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit.i118
end_hunk_0
