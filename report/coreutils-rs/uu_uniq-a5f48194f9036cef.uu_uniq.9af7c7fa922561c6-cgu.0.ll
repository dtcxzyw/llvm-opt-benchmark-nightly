Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_uniq-a5f48194f9036cef.uu_uniq.9af7c7fa922561c6-cgu.0?download=true
inline.NumInlined: 823
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvCsdiTcXS7gKpe_7uu_uniq11filter_args:bb.a
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 42 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.r = load i8, ptr %4, align 1, !range !12, !noundef !5 ; 3 uses
  %i.s = load i8, ptr %5, align 1, !range !12, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %.critedge37.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit.i: ; preds = %bb.c
  %rhsc.i = load i8, ptr %i.o, align 1, !alias.scope !478
  switch i8 %rhsc.i, label %_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit.thread [
    i8 45, label %bb.d
    i8 43, label %bb.e
  ]

bb.d:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit.i
  %.not.i1.i = icmp eq i64 %i.q, 1
  br i1 %.not.i1.i, label %_RNvCsdiTcXS7gKpe_7uu_uniq30should_extract_obs_skip_fields.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit4.thread.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit4.thread.i: ; preds = %bb.d
  %i.t = load i16, ptr %i.o, align 1
  %i.u = icmp ne i16 11565, %i.t
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  %i.x = or i8 %i.s, %i.r
  %i.y = icmp ne i8 %i.x, 0
  %brmerge19.i = or i1 %i.y, %i.w
  br i1 %brmerge19.i, label %_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit8.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit8.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit4.thread.i
  %i.z = load i16, ptr %i.o, align 1
  %i.aa = icmp ne i16 29485, %i.z
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit12.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit12.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit8.i
  %i.ad = load i16, ptr %i.o, align 1
  %i.ae = icmp ne i16 26157, %i.ad
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit.thread, label %.split

.split:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit12.i
  %i.ah = load i16, ptr %i.o, align 1
  %i.ai = icmp ne i16 30509, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit.thread, label %bb.h

_RNvCsdiTcXS7gKpe_7uu_uniq30should_extract_obs_skip_fields.exit: ; preds = %bb.d
  %i.ak = or i8 %i.s, %i.r
  %brmerge.i.not = icmp eq i8 %i.ak, 0
  br i1 %brmerge.i.not, label %bb.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdiTcXS7gKpe_7uu_uniq.exit.i
  %i.al = tail call { i64, i64 } @_RNvNtNtCsh036I4OHgIr_6uucore4mods5posix13posix_version() #23, !noalias !479 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  %i.ao = trunc nuw i64 %i.am to i1
  %i.ap = icmp ugt i64 %i.an, 199209
  %not..i = xor i1 %i.ao, true
  %or.cond.i = select i1 %not..i, i1 true, i1 %i.ap
  %i.aq = or i8 %i.s, %i.r
  %brmerge.i16 = icmp ne i8 %i.aq, 0
  %or.cond9.i = or i1 %brmerge.i16, %or.cond.i
  %i.ar = icmp samesign eq i64 %i.q, 1
  %or.cond23.i = select i1 %or.cond9.i, i1 true, i1 %i.ar
  br i1 %or.cond23.i, label %_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !479, !noalias !480, !noundef !5 ; 5 uses
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i: ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.aw = and i8 %i.at, 31
  %i.ax = zext nneg i8 %i.aw to i32               ; 3 uses
  %i.ay = icmp samesign ne i64 %i.q, 2
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = load i8, ptr %i.av, align 1, !alias.scope !479, !noalias !480, !noundef !5
  %i.ba = shl nuw nsw i32 %i.ax, 6
  %i.bb = and i8 %i.az, 63
  %i.bc = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = icmp samesign ugt i8 %i.at, -33
  br i1 %i.be, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i, label %_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit

bb.g:                                             ; preds = %bb.f
  %i.bf = zext nneg i8 %i.at to i32
  br label %_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.bh = icmp samesign ne i64 %i.q, 3
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.bg, align 1, !alias.scope !479, !noalias !480, !noundef !5
  %i.bj = shl nuw nsw i32 %i.bc, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl            ; 2 uses
  %i.bn = shl nuw nsw i32 %i.ax, 12
  %i.bo = or disjoint i32 %i.bm, %i.bn
  %i.bp = icmp samesign ugt i8 %i.at, -17
  br i1 %i.bp, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i, label %_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.br = icmp samesign ne i64 %i.q, 4
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = load i8, ptr %i.bq, align 1, !alias.scope !479, !noalias !480, !noundef !5
  %i.bt = shl nuw nsw i32 %i.ax, 18
  %i.bu = and i32 %i.bt, 1835008
  %i.bv = shl nuw nsw i32 %i.bm, 6
  %i.bw = and i8 %i.bs, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  %i.bz = or disjoint i32 %i.by, %i.bu
  br label %_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit

_RNvCsdiTcXS7gKpe_7uu_uniq29should_extract_obs_skip_chars.exit: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i, %bb.g, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.bo, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i ], [ %i.bz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i ], [ %i.bd, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i ], [ %i.bf, %bb.g ] ; 2 uses
  %i.ca = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = add nsw i32 %.sroa.4.0.i.ph.i, -48
  %spec.select.i = icmp ult i32 %i.cb, 10
  br i1 %spec.select.i, label %bb.al, label %.thread49

bb.h:                                             ; preds = %.split, %_RNvCsdiTcXS7gKpe_7uu_uniq30should_extract_obs_skip_fields.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !484
  store i64 0, ptr %i.f, align 8, !noalias !484
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.cc, align 8, !noalias !484
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  store i64 0, ptr %i.cd, align 8, !noalias !484
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !485
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0E0B1i_.exit.i.i.i.i.i
  %i.cf = phi i64 [ %i.dy, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0E0B1i_.exit.i.i.i.i.i ], [ 0, %bb.h ] ; 5 uses
  %i.cg = phi ptr [ %.val.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0E0B1i_.exit.i.i.i.i.i ], [ %i.o, %bb.h ] ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 3 uses
  %i.ci = load i8, ptr %i.cg, align 1, !alias.scope !482, !noalias !486, !noundef !5 ; 5 uses
  %i.cj = icmp sgt i8 %i.ci, -1
  br i1 %i.cj, label %bb.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ck = and i8 %i.ci, 31
  %i.cl = zext nneg i8 %i.ck to i32               ; 3 uses
  %i.cm = icmp ne ptr %i.ch, %i.ce
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 3 uses
  %i.co = load i8, ptr %i.ch, align 1, !alias.scope !482, !noalias !486, !noundef !5
  %i.cp = shl nuw nsw i32 %i.cl, 6
  %i.cq = and i8 %i.co, 63
  %i.cr = zext nneg i8 %i.cq to i32               ; 2 uses
  %i.cs = or disjoint i32 %i.cp, %i.cr
  %i.ct = icmp samesign ugt i8 %i.ci, -33
  br i1 %i.ct, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cu = zext nneg i8 %i.ci to i32
  br label %bb.j

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i
  %i.cv = icmp ne ptr %i.cn, %i.ce
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 3 ; 3 uses
  %i.cx = load i8, ptr %i.cn, align 1, !alias.scope !482, !noalias !486, !noundef !5
  %i.cy = shl nuw nsw i32 %i.cr, 6
  %i.cz = and i8 %i.cx, 63
  %i.da = zext nneg i8 %i.cz to i32
  %i.db = or disjoint i32 %i.cy, %i.da            ; 2 uses
  %i.dc = shl nuw nsw i32 %i.cl, 12
  %i.dd = or disjoint i32 %i.db, %i.dc
  %i.de = icmp samesign ugt i8 %i.ci, -17
  br i1 %i.de, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i, label %bb.j

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i
  %i.df = icmp ne ptr %i.cw, %i.ce
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.dh = load i8, ptr %i.cw, align 1, !alias.scope !482, !noalias !486, !noundef !5
  %i.di = shl nuw nsw i32 %i.cl, 18
  %i.dj = and i32 %i.di, 1835008
  %i.dk = shl nuw nsw i32 %i.db, 6
  %i.dl = and i8 %i.dh, 63
  %i.dm = zext nneg i8 %i.dl to i32
  %i.dn = or disjoint i32 %i.dk, %i.dm
  %i.do = or disjoint i32 %i.dn, %i.dj
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i, %bb.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i
  %.val.i.i = phi ptr [ %i.cw, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i ], [ %i.dg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i ], [ %i.cn, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i ], [ %i.ch, %bb.i ] ; 4 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.dd, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i ], [ %i.do, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i ], [ %i.cs, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i ], [ %i.cu, %bb.i ] ; 4 uses
  %i.dp = add nsw i32 %spec.select.i.ph.i.i.i.i.i, -58
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i32 %i.dp, -10
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.k

.loopexit.i.i.i.i.i:                              ; preds = %bb.j
  %i.dq = icmp eq i32 %spec.select.i.ph.i.i.i.i.i, 102 ; 2 uses
  %i.dr = icmp ult i64 %i.cf, 2305843009213693952
  call void @llvm.assume(i1 %i.dr)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !487
  %i.ds = call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 4) #23, !noalias !487 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.m, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdiTcXS7gKpe_7uu_uniq.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.du = load i64, ptr %i.f, align 8, !range !6, !alias.scope !488, !noalias !489, !noundef !5
  %i.dv = icmp eq i64 %i.cf, %i.du
  br i1 %i.dv, label %bb.l, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0E0B1i_.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVeccE8grow_oneCsb8JHtmRizrl_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #22, !noalias !489
  br label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0E0B1i_.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0E0B1i_.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.dw = load ptr, ptr %i.cc, align 8, !alias.scope !488, !noalias !489, !nonnull !5, !noundef !5
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.cf
  store i32 %spec.select.i.ph.i.i.i.i.i, ptr %i.dx, align 4, !noalias !489
  %i.dy = add i64 %i.cf, 1                        ; 5 uses
  store i64 %i.dy, ptr %i.cd, align 8, !alias.scope !488, !noalias !489
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i, %i.ce
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0EE9from_iterB2R_.exit.thread84.i, label %.lr.ph.i.i.i.i.i

bb.m:                                             ; preds = %.loopexit.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 4, i64 16) #26, !noalias !485
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdiTcXS7gKpe_7uu_uniq.exit.i.i: ; preds = %.loopexit.i.i.i.i.i
  store i32 %spec.select.i.ph.i.i.i.i.i, ptr %i.ds, align 4, !noalias !485
  store i64 4, ptr %i.c, align 8, !noalias !485
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.ds, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !485
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !485
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %.not.i13.i.i.i12.i.i.i.i = icmp eq ptr %.val.i.i, %i.ce
  br i1 %.not.i13.i.i.i12.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0EE9from_iterB2R_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdiTcXS7gKpe_7uu_uniq.exit.i.i
  %i.dz = icmp ne i64 %i.cf, 0
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.sroa.027.1.i = phi i1 [ %.us-phi49.i, %bb.t ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.0.1.i18 = phi i1 [ %spec.select40.i, %bb.t ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.ea = phi ptr [ %i.hl, %bb.t ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.preheader.i ]
  %i.eb = phi i64 [ %i.hn, %bb.t ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 6 uses
  %i.ec = phi ptr [ %.us-phi.i, %bb.t ], [ %.val.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 6 uses
  br i1 %.sroa.0.1.i18, label %.lr.ph.i.i.i.i.i.i.split.us.i, label %.lr.ph.i.i.i.i.i.i.split.i

.lr.ph.i.i.i.i.i.i.split.us.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 3 uses
  %i.ee = load i8, ptr %i.ec, align 1, !alias.scope !482, !noalias !492, !noundef !5 ; 5 uses
  %i.ef = icmp sgt i8 %i.ee, -1
  br i1 %i.ef, label %bb.n, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.us.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.split.us.i
  %i.eg = and i8 %i.ee, 31
  %i.eh = zext nneg i8 %i.eg to i32               ; 3 uses
  %i.ei = icmp ne ptr %i.ed, %i.ce
  call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 2 ; 3 uses
  %i.ek = load i8, ptr %i.ed, align 1, !alias.scope !482, !noalias !492, !noundef !5
  %i.el = shl nuw nsw i32 %i.eh, 6
  %i.em = and i8 %i.ek, 63
  %i.en = zext nneg i8 %i.em to i32               ; 2 uses
  %i.eo = or disjoint i32 %i.el, %i.en
  %i.ep = icmp samesign ugt i8 %i.ee, -33
  br i1 %i.ep, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.us.i, label %.loopexit.i.i.i.i.i.i.split.us.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.us.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.us.i
  %i.eq = icmp ne ptr %i.ej, %i.ce
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 3 ; 3 uses
  %i.es = load i8, ptr %i.ej, align 1, !alias.scope !482, !noalias !492, !noundef !5
  %i.et = shl nuw nsw i32 %i.en, 6
  %i.eu = and i8 %i.es, 63
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = or disjoint i32 %i.et, %i.ev            ; 2 uses
  %i.ex = shl nuw nsw i32 %i.eh, 12
  %i.ey = or disjoint i32 %i.ew, %i.ex
  %i.ez = icmp samesign ugt i8 %i.ee, -17
  br i1 %i.ez, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i.i.us.i, label %.loopexit.i.i.i.i.i.i.split.us.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i.i.us.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.us.i
  %i.fa = icmp ne ptr %i.er, %i.ce
  call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.fc = load i8, ptr %i.er, align 1, !alias.scope !482, !noalias !492, !noundef !5
  %i.fd = shl nuw nsw i32 %i.eh, 18
  %i.fe = and i32 %i.fd, 1835008
  %i.ff = shl nuw nsw i32 %i.ew, 6
  %i.fg = and i8 %i.fc, 63
  %i.fh = zext nneg i8 %i.fg to i32
  %i.fi = or disjoint i32 %i.ff, %i.fh
  %i.fj = or disjoint i32 %i.fi, %i.fe
  br label %.loopexit.i.i.i.i.i.i.split.us.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.split.us.i
  %i.fk = zext nneg i8 %i.ee to i32
  br label %.loopexit.i.i.i.i.i.i.split.us.i

.loopexit.i.i.i.i.i.i.split.us.i:                 ; preds = %bb.n, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i.i.us.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.us.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.us.i
  %i.fl = phi ptr [ %i.er, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.us.i ], [ %i.fb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i.i.us.i ], [ %i.ej, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.us.i ], [ %i.ed, %bb.n ]
  %spec.select.i.ph.i.i.i.i.i.i.us.i = phi i32 [ %i.ey, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.us.i ], [ %i.fj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i.i.us.i ], [ %i.eo, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.us.i ], [ %i.fk, %bb.n ] ; 2 uses
  %i.fm = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.us.i, 102
  %spec.select.i19 = select i1 %i.fm, i1 true, i1 %.sroa.027.1.i
  br label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.split.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0E0B1i_.exit.i.i.i.i.i.i.i
  %i.fn = phi ptr [ %i.gw, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0E0B1i_.exit.i.i.i.i.i.i.i ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 3 uses
  %i.fp = load i8, ptr %i.fn, align 1, !alias.scope !482, !noalias !492, !noundef !5 ; 5 uses
  %i.fq = icmp sgt i8 %i.fp, -1
  br i1 %i.fq, label %bb.o, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.split.i
  %i.fr = and i8 %i.fp, 31
  %i.fs = zext nneg i8 %i.fr to i32               ; 3 uses
  %i.ft = icmp ne ptr %i.fo, %i.ce
  call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 2 ; 3 uses
  %i.fv = load i8, ptr %i.fo, align 1, !alias.scope !482, !noalias !492, !noundef !5
  %i.fw = shl nuw nsw i32 %i.fs, 6
  %i.fx = and i8 %i.fv, 63
  %i.fy = zext nneg i8 %i.fx to i32               ; 2 uses
  %i.fz = or disjoint i32 %i.fw, %i.fy
  %i.ga = icmp samesign ugt i8 %i.fp, -33
  br i1 %i.ga, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.i, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.split.i
  %i.gb = zext nneg i8 %i.fp to i32
  br label %bb.p

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.i
  %i.gc = icmp ne ptr %i.fu, %i.ce
  call void @llvm.assume(i1 %i.gc)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 3 ; 3 uses
  %i.ge = load i8, ptr %i.fu, align 1, !alias.scope !482, !noalias !492, !noundef !5
  %i.gf = shl nuw nsw i32 %i.fy, 6
  %i.gg = and i8 %i.ge, 63
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gf, %i.gh            ; 2 uses
  %i.gj = shl nuw nsw i32 %i.fs, 12
  %i.gk = or disjoint i32 %i.gi, %i.gj
  %i.gl = icmp samesign ugt i8 %i.fp, -17
  br i1 %i.gl, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i.i.i, label %bb.p

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.i
  %i.gm = icmp ne ptr %i.gd, %i.ce
  call void @llvm.assume(i1 %i.gm)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.go = load i8, ptr %i.gd, align 1, !alias.scope !482, !noalias !492, !noundef !5
  %i.gp = shl nuw nsw i32 %i.fs, 18
  %i.gq = and i32 %i.gp, 1835008
  %i.gr = shl nuw nsw i32 %i.gi, 6
  %i.gs = and i8 %i.go, 63
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = or disjoint i32 %i.gr, %i.gt
  %i.gv = or disjoint i32 %i.gu, %i.gq
  br label %bb.p

bb.p:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.i, %bb.o, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.i
  %i.gw = phi ptr [ %i.gd, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.i ], [ %i.gn, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i.i.i ], [ %i.fu, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.i ], [ %i.fo, %bb.o ] ; 4 uses
  %spec.select.i.ph.i.i.i.i.i.i.i = phi i32 [ %i.gk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit14.i.i.i.i.i.i.i.i.i ], [ %i.gv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit16.i.i.i.i.i.i.i.i.i ], [ %i.fz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdiTcXS7gKpe_7uu_uniq.exit12.i.i.i.i.i.i.i.i.i ], [ %i.gb, %bb.o ] ; 4 uses
  %i.gx = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i, 102
  br i1 %i.gx, label %.loopexit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gy = add nsw i32 %spec.select.i.ph.i.i.i.i.i.i.i, -58
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.gy, -10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.r

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.q, %bb.p, %.loopexit.i.i.i.i.i.i.split.us.i
  %.us-phi.i = phi ptr [ %i.fl, %.loopexit.i.i.i.i.i.i.split.us.i ], [ %i.gw, %bb.p ], [ %i.gw, %bb.q ] ; 2 uses
  %.us-phi48.i = phi i32 [ %spec.select.i.ph.i.i.i.i.i.i.us.i, %.loopexit.i.i.i.i.i.i.split.us.i ], [ %spec.select.i.ph.i.i.i.i.i.i.i, %bb.q ], [ 102, %bb.p ]
  %.us-phi49.i = phi i1 [ %spec.select.i19, %.loopexit.i.i.i.i.i.i.split.us.i ], [ %.sroa.027.1.i, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.gz = load i64, ptr %i.cd, align 8, !noalias !493, !noundef !5 ; 2 uses
  %i.ha = icmp ult i64 %i.gz, 2305843009213693952
  call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp ne i64 %i.gz, 0
  %spec.select40.i = or i1 %.sroa.0.1.i18, %i.hb
  %i.hc = icmp samesign ult i64 %i.eb, 2305843009213693952
  call void @llvm.assume(i1 %i.hc)
  %i.hd = load i64, ptr %i.c, align 8, !range !6, !alias.scope !494, !noalias !495, !noundef !5
  %i.he = icmp eq i64 %i.eb, %i.hd
  br i1 %i.he, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCsdiTcXS7gKpe_7uu_uniq.exit.i.i.i.i, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.hf = load i64, ptr %i.cd, align 8, !alias.scope !496, !noalias !493, !noundef !5 ; 3 uses
  %i.hg = load i64, ptr %i.f, align 8, !range !6, !alias.scope !496, !noalias !493, !noundef !5
  %i.hh = icmp eq i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.s, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCsdiTcXS7gKpe_7uu_uniq30handle_extract_obs_skip_fields0E0B1i_.exit.i.i.i.i.i.i.i

end_hunk_0
