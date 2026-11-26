Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff-e768ae2d72824186.ruff.64ca6932328cfb18-cgu.12?download=true
inline.NumInlined: 1670
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtNtCslDNmBs4Oaup_11shellexpand7strings5funcs17full_with_contexteNtNtCscdodAO9FK5_5alloc6string6StringNCINvB2_4fulleE0NtNtCs2AWtUsOyxgP_3std3env8VarErrorB15_NvB2_8home_dirECs8EvorvD8vmS_4ruff:bb.a
  %i.al = insertvalue { i64, i64 } %i.ak, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ap, %bb.c ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.01.05.i.i.i.i
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !487, !noalias !486, !noundef !5
  %i.ao = icmp eq i8 %i.an, 36
  br i1 %i.ao, label %._crit_edge.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ap = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ap, %i.ag
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.b
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.al, %._crit_edge.i.i.i.i ], [ %i.aj, %bb.b ] ; 2 uses
  %i.aq = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.d, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs8EvorvD8vmS_4ruff.exit.thread.i

bb.d:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i
  %i.as = extractvalue { i64, i64 } %.merged.i.i.i.i, 1 ; 2 uses
  %i.at = add i64 %i.af, 1
  %i.au = add i64 %i.at, %i.as                    ; 2 uses
  %.not13.i.i.i = icmp ugt i64 %i.au, %i.ae       ; 2 uses
  %i.av = add i64 %i.as, %i.af                    ; 3 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.av, %i.ae
  br i1 %or.cond.i.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not13.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs8EvorvD8vmS_4ruff.exit.thread.i, label %.backedge.i.i.backedge

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.av
  %lhsc.i.i = load i8, ptr %i.aw, align 1, !alias.scope !488, !noalias !485
  %i.ax = icmp eq i8 %lhsc.i.i, 36                ; 2 uses
  %brmerge.i.i = or i1 %.not13.i.i.i, %i.ax
  br i1 %brmerge.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs8EvorvD8vmS_4ruff.exit.i, label %.backedge.i.i.backedge

.backedge.i.i.backedge:                           ; preds = %bb.f, %bb.e
  br label %.backedge.i.i

_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs8EvorvD8vmS_4ruff.exit.i: ; preds = %bb.f
  br i1 %i.ax, label %bb.g, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs8EvorvD8vmS_4ruff.exit.thread.i

common.resume:                                    ; preds = %bb.fk, %bb.ft, %.body.i3, %bb.gy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i, %bb.bp
  %common.resume.op = phi { ptr, i32 } [ %i.ik, %bb.bp ], [ %.pn230.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i ], [ %i.ty, %bb.gy ], [ %.pn.i.i, %bb.fk ], [ %i.sn, %bb.ft ], [ %eh.lpad-body.i, %.body.i3 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs8EvorvD8vmS_4ruff.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !489
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef %i.ae, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !485
  %i.ay = load i64, ptr %i.p, align 8, !range !6, !noalias !489, !noundef !5
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !7, !noalias !489, !noundef !5 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.az, label %bb.h, label %bb.i, !prof !8

_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs8EvorvD8vmS_4ruff.exit.thread.i: ; preds = %bb.e, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs8EvorvD8vmS_4ruff.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtCslDNmBs4Oaup_11shellexpand7stringseNtNtB4_7wtraits12AsRefXstrExt9into_ocowCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  store i64 -1, ptr %0, align 8, !alias.scope !485
  br label %_RINvNtNtCslDNmBs4Oaup_11shellexpand7strings5funcs16env_with_contexteNtNtCscdodAO9FK5_5alloc6string6StringNCINvB2_4fulleE0NtNtCs2AWtUsOyxgP_3std3env8VarErrorECs8EvorvD8vmS_4ruff.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.be = load i64, ptr %i.bc, align 8, !noalias !489
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.be) #32, !noalias !485
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.bc, align 8, !noalias !489, !nonnull !5, !noundef !5
  %i.bg = icmp ule i64 %i.ae, %i.bb
  tail call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !489
  store i64 %i.bb, ptr %i.aa, align 8, !noalias !489
  %.sroa.4123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.bf, ptr %.sroa.4123.0..sroa_idx.i, align 8, !noalias !489
  %.sroa.5124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5124.0..sroa_idx.i, align 8, !noalias !489
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.9.8..sroa_idx388.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.331.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.sroa.53.0.i = phi i64 [ %i.ae, %bb.i ], [ %.sroa.53.0.i.be, %.backedge ] ; 17 uses
  %.sroa.033.0.i = phi ptr [ %i.ad, %bb.i ], [ %.sroa.033.0.i.be, %.backedge ] ; 9 uses
  %.sroa.05.0.i = phi i64 [ %i.av, %bb.i ], [ %.sroa.05.0.i.be, %.backedge ] ; 19 uses
  %i.ca = icmp eq i64 %.sroa.05.0.i, 0            ; 2 uses
  br i1 %i.ca, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i.i = icmp ult i64 %.sroa.05.0.i, %.sroa.53.0.i
  br i1 %.not.i.i, label %bb.l, label %.split.i.i

.split.i.i:                                       ; preds = %bb.k
  %i.cb = icmp eq i64 %.sroa.05.0.i, %.sroa.53.0.i
  br i1 %i.cb, label %bb.o, label %.thread524.invoke.i

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i, i64 %.sroa.05.0.i
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !490, !noalias !485, !noundef !5
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %bb.o, label %.thread524.invoke.i

.body308.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ez, %bb.es, %bb.ep, %bb.eo, %.thread512.i, %.body364.i, %bb.bm, %bb.bj, %.loopexit.split-lp547.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn230.pn.i = phi { ptr, i32 } [ %.pn230.i, %.body364.i ], [ %.pn230.i, %bb.ez ], [ %lpad.loopexit.split-lp671, %.loopexit.split-lp547.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ii, %bb.bm ], [ %i.qy, %bb.es ], [ %i.if, %bb.bj ], [ %.pn226518.i, %bb.eo ], [ %i.qj, %.thread512.i ], [ %i.qn, %bb.ep ], [ %lpad.loopexit.split-lp668, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i unwind label %bb.m, !noalias !485

bb.m:                                             ; preds = %.body308.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body.i unwind label %bb.n, !noalias !485

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !485
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i: ; preds = %.body308.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.bl, !noalias !485

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %bb.aa, %bb.ea, %bb.dp, %.split.i324.i, %.thread469.i, %bb.bs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i307.i, %bb.bd, %bb.ba, %bb.av, %.split.i272.i, %.thread414.i, %bb.af, %bb.o, %.thread524.invoke.i, %bb.eh, %.invoke.i
  %lpad.loopexit.split-lp668 = landingpad { ptr, i32 }
          cleanup
  br label %.body308.i

bb.o:                                             ; preds = %bb.l, %.split.i.i, %bb.j
  invoke void @_RNvXs3_NtCslDNmBs4Oaup_11shellexpand7stringsNtNtCscdodAO9FK5_5alloc6string6StringNtNtB5_7wtraits10OStringExt9push_wstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.033.0.i, i64 noundef %.sroa.05.0.i)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

bb.p:                                             ; preds = %bb.em, %.thread499.i, %.thread455.i
  unreachable

bb.q:                                             ; preds = %bb.o
  br i1 %i.ca, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i240.i = icmp ult i64 %.sroa.05.0.i, %.sroa.53.0.i
  br i1 %.not.i240.i, label %bb.s, label %.split.i241.i

.split.i241.i:                                    ; preds = %bb.r
  %i.ch = icmp eq i64 %.sroa.05.0.i, %.sroa.53.0.i
  br i1 %i.ch, label %bb.t, label %.thread524.invoke.i

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i, i64 %.sroa.05.0.i
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !491, !noalias !485, !noundef !5
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.t, label %.thread524.invoke.i

bb.t:                                             ; preds = %bb.s, %.split.i241.i, %bb.q
  %i.cl = sub nuw i64 %.sroa.53.0.i, %.sroa.05.0.i ; 63 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i, i64 %.sroa.05.0.i ; 61 uses
  %i.cn = icmp eq i64 %.sroa.53.0.i, %.sroa.05.0.i
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !492
  store i64 -1, ptr %0, align 8, !alias.scope !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !489
  br label %_RINvNtNtCslDNmBs4Oaup_11shellexpand7strings5funcs16env_with_contexteNtNtCscdodAO9FK5_5alloc6string6StringNCINvB2_4fulleE0NtNtCs2AWtUsOyxgP_3std3env8VarErrorECs8EvorvD8vmS_4ruff.exit.thread

bb.v:                                             ; preds = %bb.t
  %.not.i243.i = icmp ugt i64 %i.cl, 1            ; 3 uses
  br i1 %.not.i243.i, label %bb.w, label %.split.i244.i

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !493, !noalias !485, !noundef !5
  %i.cr = icmp sgt i8 %i.cq, -65
  br i1 %i.cr, label %.split.i244.i, label %.thread524.invoke.i

.split.i244.i:                                    ; preds = %bb.w, %bb.v
  %i.cs = getelementptr i8, ptr %.sroa.033.0.i, i64 %.sroa.53.0.i ; 6 uses
  %i.ct = add nuw nsw i64 %.sroa.05.0.i, 1
  %i.cu = icmp eq i64 %i.ct, %.sroa.53.0.i
  br i1 %i.cu, label %.thread414.i, label %bb.x

bb.x:                                             ; preds = %.split.i244.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 2 ; 9 uses
  %i.cx = load i8, ptr %i.cv, align 1, !noalias !494, !noundef !5 ; 5 uses
  %i.cy = icmp sgt i8 %i.cx, -1
  br i1 %i.cy, label %bb.y, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i.i: ; preds = %bb.x
  %i.cz = and i8 %i.cx, 31
  %i.da = zext nneg i8 %i.cz to i32               ; 3 uses
  %i.db = add nuw nsw i64 %.sroa.05.0.i, 2
  %i.dc = icmp ne i64 %i.db, %.sroa.53.0.i
  call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 3 ; 2 uses
  %i.de = load i8, ptr %i.cw, align 1, !noalias !494, !noundef !5
  %i.df = shl nuw nsw i32 %i.da, 6
  %i.dg = and i8 %i.de, 63
  %i.dh = zext nneg i8 %i.dg to i32               ; 2 uses
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = icmp samesign ugt i8 %i.cx, -33
  br i1 %i.dj, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i.i, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dk = zext nneg i8 %i.cx to i32
  br label %bb.z

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i.i
  %i.dl = add nuw nsw i64 %.sroa.05.0.i, 3
  %i.dm = icmp ne i64 %i.dl, %.sroa.53.0.i
  call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.do = load i8, ptr %i.dd, align 1, !noalias !494, !noundef !5
  %i.dp = shl nuw nsw i32 %i.dh, 6
  %i.dq = and i8 %i.do, 63
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = or disjoint i32 %i.dp, %i.dr            ; 2 uses
  %i.dt = shl nuw nsw i32 %i.da, 12
  %i.du = or disjoint i32 %i.ds, %i.dt
  %i.dv = icmp samesign ugt i8 %i.cx, -17
  br i1 %i.dv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i.i, label %bb.z

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i.i
  %i.dw = add nuw nsw i64 %.sroa.05.0.i, 4
  %i.dx = icmp ne i64 %i.dw, %.sroa.53.0.i
  call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cm, i64 5
  %i.dz = load i8, ptr %i.dn, align 1, !noalias !494, !noundef !5
  %i.ea = shl nuw nsw i32 %i.da, 18
  %i.eb = and i32 %i.ea, 1835008
  %i.ec = shl nuw nsw i32 %i.ds, 6
  %i.ed = and i8 %i.dz, 63
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.ec, %i.ee
  %i.eg = or disjoint i32 %i.ef, %i.eb
  br label %bb.z

bb.z:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i.i, %bb.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i.i
  %.sroa.0.1.ph.i = phi ptr [ %i.dd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i.i ], [ %i.dn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i.i ], [ %i.dy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i.i ], [ %i.cw, %bb.y ]
  %.sroa.4.0.i248.ph.i = phi i32 [ %i.di, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i.i ], [ %i.du, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i.i ], [ %i.eg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i.i ], [ %i.dk, %bb.y ] ; 4 uses
  %i.eh = icmp samesign ult i32 %.sroa.4.0.i248.ph.i, 1114112
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp eq i32 %.sroa.4.0.i248.ph.i, 123
  br i1 %i.ei, label %.preheader.i, label %bb.af

.preheader.i:                                     ; preds = %bb.z, %.preheader.i.backedge
  %i.ej = phi i64 [ %i.ey, %.preheader.i.backedge ], [ 0, %bb.z ] ; 4 uses
  %i.ek = sub nuw i64 %i.cl, %i.ej                ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ej ; 2 uses
  %i.em = icmp samesign ult i64 %i.ek, 16
  br i1 %i.em, label %.preheader.i.i.i261.i, label %bb.aa

.preheader.i.i.i261.i:                            ; preds = %.preheader.i
  %.not.i.i.i262.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i262.i, label %._crit_edge.i.i.i266.i, label %.lr.ph.i.i.i263.i

bb.aa:                                            ; preds = %.preheader.i
  %i.en = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 125, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.el, i64 noundef range(i64 0, -9223372036854775808) %i.ek)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i250.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !495

._crit_edge.i.i.i266.i:                           ; preds = %bb.ab, %.lr.ph.i.i.i263.i, %.preheader.i.i.i261.i
  %.sroa.01.0.lcssa.i.i.i267.i = phi i64 [ 0, %.preheader.i.i.i261.i ], [ %.sroa.01.05.i.i.i264.i, %.lr.ph.i.i.i263.i ], [ %i.ek, %bb.ab ]
  %.sroa.0.1.i.i.i268.i = phi i64 [ 0, %.preheader.i.i.i261.i ], [ 1, %.lr.ph.i.i.i263.i ], [ 0, %bb.ab ]
  %i.eo = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i268.i, 0
  %i.ep = insertvalue { i64, i64 } %i.eo, i64 %.sroa.01.0.lcssa.i.i.i267.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i250.i

.lr.ph.i.i.i263.i:                                ; preds = %.preheader.i.i.i261.i, %bb.ab
  %.sroa.01.05.i.i.i264.i = phi i64 [ %i.et, %bb.ab ], [ 0, %.preheader.i.i.i261.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.01.05.i.i.i264.i
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !496, !noalias !495, !noundef !5
  %i.es = icmp eq i8 %i.er, 125
  br i1 %i.es, label %._crit_edge.i.i.i266.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i263.i
  %i.et = add nuw nsw i64 %.sroa.01.05.i.i.i264.i, 1 ; 2 uses
  %exitcond.not.i.i.i265.i = icmp eq i64 %i.et, %i.ek
  br i1 %exitcond.not.i.i.i265.i, label %._crit_edge.i.i.i266.i, label %.lr.ph.i.i.i263.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i250.i: ; preds = %._crit_edge.i.i.i266.i, %bb.aa
  %.merged.i.i.i251.i = phi { i64, i64 } [ %i.ep, %._crit_edge.i.i.i266.i ], [ %i.en, %bb.aa ] ; 2 uses
  %i.eu = extractvalue { i64, i64 } %.merged.i.i.i251.i, 0
  %i.ev = trunc nuw i64 %i.eu to i1
  br i1 %i.ev, label %bb.ac, label %.thread459.i

bb.ac:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i250.i
  %i.ew = extractvalue { i64, i64 } %.merged.i.i.i251.i, 1 ; 2 uses
  %i.ex = add i64 %i.ej, 1
  %i.ey = add i64 %i.ex, %i.ew                    ; 2 uses
  %.not13.i.i254.i = icmp ugt i64 %i.ey, %i.cl    ; 2 uses
  %i.ez = add i64 %i.ew, %i.ej                    ; 15 uses
  %or.cond.i.not.i255.i = icmp ult i64 %i.ez, %i.cl
  br i1 %or.cond.i.not.i255.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not13.i.i254.i, label %.thread459.i, label %.preheader.i.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ez
  %lhsc.i259.i = load i8, ptr %i.fa, align 1, !alias.scope !497, !noalias !485
  %i.fb = icmp eq i8 %lhsc.i259.i, 125            ; 2 uses
  %brmerge.i260.i = or i1 %.not13.i.i254.i, %i.fb
  br i1 %brmerge.i260.i, label %bb.br, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.ae, %bb.ad
  br label %.preheader.i

bb.af:                                            ; preds = %bb.z
  %i.fc = invoke noundef zeroext i1 @_RNvNtNtCslDNmBs4Oaup_11shellexpand7strings5funcs22is_valid_var_name_char(i32 noundef %.sroa.4.0.i248.ph.i)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

.thread414.i:                                     ; preds = %bb.ag, %.split.i244.i
  %.sroa.08.1418.i = phi i32 [ %.sroa.4.0.i248.ph.i, %bb.ag ], [ -1, %.split.i244.i ]
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 1)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

bb.ag:                                            ; preds = %bb.af
  br i1 %i.fc, label %.preheader540.i, label %.thread414.i

bb.ah:                                            ; preds = %.thread414.i
  %i.fd = load i64, ptr %.sroa.5124.0..sroa_idx.i, align 8, !alias.scope !498, !noalias !489, !noundef !5 ; 2 uses
  %i.fe = icmp sgt i64 %i.fd, -1
  call void @llvm.assume(i1 %i.fe)
  %i.ff = load ptr, ptr %.sroa.4123.0..sroa_idx.i, align 8, !alias.scope !498, !noalias !489, !nonnull !5, !noundef !5
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  store i8 36, ptr %i.fg, align 1, !noalias !485
  %.pre.i.i = load i64, ptr %.sroa.5124.0..sroa_idx.i, align 8, !alias.scope !498, !noalias !489
  %i.fh = add i64 %.pre.i.i, 1
  store i64 %i.fh, ptr %.sroa.5124.0..sroa_idx.i, align 8, !alias.scope !498, !noalias !489
  %i.fi = icmp eq i32 %.sroa.08.1418.i, 36
  br i1 %i.fi, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not.i243.i, label %bb.aj, label %.split.i272.i

bb.aj:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !499, !noalias !485, !noundef !5
  %i.fl = icmp sgt i8 %i.fk, -65
  br i1 %i.fl, label %.split.i272.i, label %.thread524.invoke.i

bb.ak:                                            ; preds = %bb.ah
  %.not.i276.i = icmp ugt i64 %i.cl, 2
  br i1 %.not.i276.i, label %bb.al, label %.split.i277.i

.split.i277.i:                                    ; preds = %bb.ak
  %i.fm = icmp eq i64 %i.cl, 2
  br i1 %i.fm, label %.split.i272.i, label %.thread524.invoke.i

bb.al:                                            ; preds = %bb.ak
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !500, !noalias !485, !noundef !5
  %i.fp = icmp sgt i8 %i.fo, -65
  br i1 %i.fp, label %.split.i272.i, label %.thread524.invoke.i

.split.i272.i:                                    ; preds = %bb.al, %.split.i277.i, %bb.aj, %bb.ai
  %.sink1541.i = phi i64 [ -2, %bb.al ], [ -2, %.split.i277.i ], [ -1, %bb.ai ], [ -1, %bb.aj ]
  %.sink.i = phi i64 [ 2, %bb.al ], [ 2, %.split.i277.i ], [ 1, %bb.ai ], [ 1, %bb.aj ]
  %i.fq = add i64 %.sink1541.i, %i.cl             ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sink.i ; 2 uses
  %i.fs = invoke noundef i64 @_RNvNvNtNtCslDNmBs4Oaup_11shellexpand7strings5funcs16env_with_context11find_dollar(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fr, i64 noundef %i.fq)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

.preheader540.i:                                  ; preds = %bb.ag, %bb.au
  %.sroa.0.0.i = phi ptr [ %.sroa.0.2.ph.i, %bb.au ], [ %.sroa.0.1.ph.i, %bb.ag ] ; 7 uses
  %i.ft = icmp eq ptr %.sroa.0.0.i, %i.cs         ; 5 uses
  br i1 %i.ft, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.preheader540.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 3 uses
  %i.fv = load i8, ptr %.sroa.0.0.i, align 1, !noalias !501, !noundef !5 ; 5 uses
  %i.fw = icmp sgt i8 %i.fv, -1
  br i1 %i.fw, label %bb.an, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i281.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i281.i: ; preds = %bb.am
  %i.fx = and i8 %i.fv, 31
  %i.fy = zext nneg i8 %i.fx to i32               ; 3 uses
  %i.fz = icmp ne ptr %i.fu, %i.cs
  call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2 ; 3 uses
  %i.gb = load i8, ptr %i.fu, align 1, !noalias !501, !noundef !5
  %i.gc = shl nuw nsw i32 %i.fy, 6
  %i.gd = and i8 %i.gb, 63
  %i.ge = zext nneg i8 %i.gd to i32               ; 2 uses
  %i.gf = or disjoint i32 %i.gc, %i.ge
  %i.gg = icmp samesign ugt i8 %i.fv, -33
  br i1 %i.gg, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i284.i, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gh = zext nneg i8 %i.fv to i32
  br label %bb.ao

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i284.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i281.i
  %i.gi = icmp ne ptr %i.ga, %i.cs
  call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3 ; 3 uses
  %i.gk = load i8, ptr %i.ga, align 1, !noalias !501, !noundef !5
  %i.gl = shl nuw nsw i32 %i.ge, 6
  %i.gm = and i8 %i.gk, 63
  %i.gn = zext nneg i8 %i.gm to i32
  %i.go = or disjoint i32 %i.gl, %i.gn            ; 2 uses
  %i.gp = shl nuw nsw i32 %i.fy, 12
  %i.gq = or disjoint i32 %i.go, %i.gp
  %i.gr = icmp samesign ugt i8 %i.fv, -17
  br i1 %i.gr, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i285.i, label %bb.ao

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i285.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i284.i
  %i.gs = icmp ne ptr %i.gj, %i.cs
  call void @llvm.assume(i1 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.gu = load i8, ptr %i.gj, align 1, !noalias !501, !noundef !5
  %i.gv = shl nuw nsw i32 %i.fy, 18
  %i.gw = and i32 %i.gv, 1835008
  %i.gx = shl nuw nsw i32 %i.go, 6
  %i.gy = and i8 %i.gu, 63
  %i.gz = zext nneg i8 %i.gy to i32
  %i.ha = or disjoint i32 %i.gx, %i.gz
  %i.hb = or disjoint i32 %i.ha, %i.gw
  br label %bb.ao

bb.ao:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i285.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i284.i, %bb.an, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i281.i
  %.sroa.0.2.ph.i = phi ptr [ %i.ga, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i281.i ], [ %i.gj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i284.i ], [ %i.gt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i285.i ], [ %i.fu, %bb.an ]
  %.sroa.4.0.i282.ph.i = phi i32 [ %i.gf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i281.i ], [ %i.gq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i284.i ], [ %i.hb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i285.i ], [ %i.gh, %bb.an ] ; 2 uses
  %i.hc = icmp samesign ult i32 %.sroa.4.0.i282.ph.i, 1114112
  call void @llvm.assume(i1 %i.hc)
  %i.hd = invoke noundef zeroext i1 @_RNvNtNtCslDNmBs4Oaup_11shellexpand7strings5funcs22is_valid_var_name_char(i32 noundef %.sroa.4.0.i282.ph.i)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

bb.ap:                                            ; preds = %bb.au, %.preheader540.i
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.0.0.i, %bb.au ], [ %i.cs, %.preheader540.i ]
  %i.he = ptrtoint ptr %i.cs to i64
  %i.hf = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %.neg.le.i = sub i64 %i.hf, %i.he               ; 3 uses
  %i.hg = add i64 %.neg.le.i, %i.cl               ; 19 uses
  %.not.i287.i = icmp eq i64 %i.hg, 0
  br i1 %.not.i287.i, label %.thread524.invoke.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not.i243.i, label %bb.ar, label %.split.i288.i

.split.i288.i:                                    ; preds = %bb.aq
  %i.hh = icmp eq i64 %i.cl, 1
  br i1 %i.hh, label %bb.as, label %.thread524.invoke.i

bb.ar:                                            ; preds = %bb.aq
  %i.hi = load i8, ptr %i.cv, align 1, !alias.scope !502, !noalias !485, !noundef !5
  %i.hj = icmp sgt i8 %i.hi, -65
  br i1 %i.hj, label %bb.as, label %.thread524.invoke.i

bb.as:                                            ; preds = %bb.ar, %.split.i288.i
  %.not6.i.i = icmp ult i64 %i.hg, %i.cl          ; 4 uses
  br i1 %.not6.i.i, label %bb.at, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.as
  br i1 %i.ft, label %bb.av, label %.thread524.invoke.i

bb.at:                                            ; preds = %bb.as
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hg
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !502, !noalias !485, !noundef !5
  %i.hm = icmp sgt i8 %i.hl, -65
  br i1 %i.hm, label %bb.av, label %.thread524.invoke.i

bb.au:                                            ; preds = %bb.ao
  br i1 %i.hd, label %.preheader540.i, label %bb.ap

bb.av:                                            ; preds = %bb.at, %.split7.i.i
  %i.hn = add i64 %i.hg, -1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !503
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env4__var(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.hn)
          to label %.noexc291.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !504

.noexc291.i:                                      ; preds = %bb.av
  %i.ho = load i64, ptr %i.o, align 8, !range !6, !noalias !503, !noundef !5
  %i.hp = trunc nuw i64 %i.ho to i1
  %.sroa.5.8.copyload387.i = load i64, ptr %i.bh, align 8, !noalias !505 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx388.i, i64 16, i1 false), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !503
  br i1 %i.hp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.noexc291.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !489
  store i64 %.sroa.5.8.copyload387.i, ptr %i.t, align 8, !noalias !489
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !489
  invoke void @_RNvXs0_NtCslDNmBs4Oaup_11shellexpand7stringseNtNtB5_7wtraits7WstrExt15wstr_to_ostring(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.hn)
          to label %bb.bn unwind label %bb.bm, !noalias !485

bb.ax:                                            ; preds = %.noexc291.i
  %.not212.i = icmp eq i64 %.sroa.5.8.copyload387.i, -1
  br i1 %.not212.i, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not6.i.i, label %bb.az, label %.split.i293.i

.split.i293.i:                                    ; preds = %bb.ay
  br i1 %i.ft, label %bb.ba, label %.thread524.invoke.i

bb.az:                                            ; preds = %bb.ay
  %i.hq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hg
  %i.hr = load i8, ptr %i.hq, align 1, !alias.scope !506, !noalias !485, !noundef !5
  %i.hs = icmp sgt i8 %i.hr, -65
  br i1 %i.hs, label %bb.ba, label %.thread524.invoke.i

bb.ba:                                            ; preds = %bb.az, %.split.i293.i
  invoke void @_RNvXs3_NtCslDNmBs4Oaup_11shellexpand7stringsNtNtCscdodAO9FK5_5alloc6string6StringNtNtB5_7wtraits10OStringExt9push_wstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.hg)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not6.i.i, label %bb.bc, label %.split.i297.i

.split.i297.i:                                    ; preds = %bb.bb
  br i1 %i.ft, label %bb.bd, label %.thread524.invoke.i

bb.bc:                                            ; preds = %bb.bb
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hg
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !507, !noalias !485, !noundef !5
  %i.hv = icmp sgt i8 %i.hu, -65
  br i1 %i.hv, label %bb.bd, label %.thread524.invoke.i

bb.bd:                                            ; preds = %bb.bc, %.split.i297.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hg ; 2 uses
  %i.hx = sub i64 0, %.neg.le.i                   ; 2 uses
  %i.hy = invoke noundef i64 @_RNvNvNtNtCslDNmBs4Oaup_11shellexpand7strings5funcs16env_with_context11find_dollar(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hw, i64 noundef %i.hx)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

.loopexit.split-lp547.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bh, %bb.be, %.thread455.i
  %lpad.loopexit.split-lp671 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #33
          to label %.body308.i unwind label %bb.bl, !noalias !485

bb.be:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !489
  store i64 %.sroa.5.8.copyload387.i, ptr %i.q, align 8, !noalias !489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.331.0..sroa_idx32.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !489
  %.val238.i = load ptr, ptr %.sroa.331.0..sroa_idx32.i, align 8, !noalias !489, !nonnull !5, !noundef !5
  %.val239.i = load i64, ptr %i.bi, align 8, !noalias !489, !noundef !5
  invoke void @_RNvXs3_NtCslDNmBs4Oaup_11shellexpand7stringsNtNtCscdodAO9FK5_5alloc6string6StringNtNtB5_7wtraits10OStringExt9push_xstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val238.i, i64 noundef %.val239.i)
          to label %bb.bf unwind label %.loopexit.split-lp547.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

bb.bf:                                            ; preds = %bb.be
  br i1 %.not6.i.i, label %bb.bg, label %.split.i302.i

.split.i302.i:                                    ; preds = %bb.bf
  br i1 %i.ft, label %bb.bh, label %.thread455.i

bb.bg:                                            ; preds = %bb.bf
  %i.hz = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hg
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !508, !noalias !485, !noundef !5
  %i.ib = icmp sgt i8 %i.ia, -65
  br i1 %i.ib, label %bb.bh, label %.thread455.i

bb.bh:                                            ; preds = %bb.bg, %.split.i302.i
  %i.ic = sub i64 0, %.neg.le.i                   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hg ; 2 uses
  %i.ie = invoke noundef i64 @_RNvNvNtNtCslDNmBs4Oaup_11shellexpand7strings5funcs16env_with_context11find_dollar(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.id, i64 noundef %i.ic)
          to label %bb.bi unwind label %.loopexit.split-lp547.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

.thread455.i:                                     ; preds = %bb.bg, %.split.i302.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.cl, i64 noundef %i.hg, i64 noundef %i.cl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #32
          to label %bb.p unwind label %.loopexit.split-lp547.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i307.i unwind label %bb.bj, !noalias !485

bb.bj:                                            ; preds = %bb.bi
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body308.i unwind label %bb.bk, !noalias !485

bb.bk:                                            ; preds = %bb.bj
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !485
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i307.i: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit311.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit311.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i307.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !489
  br label %.backedge

bb.bl:                                            ; preds = %bb.ez, %bb.ep, %bb.eo, %bb.ee, %.loopexit.split-lp552.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bm, %.loopexit.split-lp547.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit.i.i
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.bl, %bb.m
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !485
  unreachable

bb.bm:                                            ; preds = %bb.aw
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env8VarErrorECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(24) %i.t) #33
          to label %.body308.i unwind label %bb.bl, !noalias !485

bb.bn:                                            ; preds = %bb.aw
  %i.ij = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !489
  br label %bb.bo

bb.bo:                                            ; preds = %bb.eg, %bb.bn
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtNtCslDNmBs4Oaup_11shellexpand7strings5funcs16env_with_contexteNtNtCscdodAO9FK5_5alloc6string6StringNCINvB2_4fulleE0NtNtCs2AWtUsOyxgP_3std3env8VarErrorECs8EvorvD8vmS_4ruff.exit unwind label %bb.bp, !noalias !485

bb.bp:                                            ; preds = %bb.bo
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.bq, !noalias !485

bb.bq:                                            ; preds = %bb.bp
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !485
  unreachable

bb.br:                                            ; preds = %bb.ae
  %i.im = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ez
  br i1 %i.fb, label %bb.bs, label %.thread459.i

bb.bs:                                            ; preds = %bb.br
  %i.in = icmp eq i64 %i.ez, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !509
  invoke void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.ez, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2)
          to label %.noexc330.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

.thread459.i:                                     ; preds = %bb.ad, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i250.i, %bb.br
  %.not.i319.i = icmp ugt i64 %i.cl, 2            ; 2 uses
  br i1 %.not.i319.i, label %bb.bt, label %.split.i320.i

.split.i320.i:                                    ; preds = %.thread459.i
  %i.io = icmp eq i64 %i.cl, 2
  br i1 %i.io, label %.thread469.i, label %.thread524.invoke.i

bb.bt:                                            ; preds = %.thread459.i
  %i.ip = load i8, ptr %i.cw, align 1, !alias.scope !510, !noalias !485, !noundef !5
  %i.iq = icmp sgt i8 %i.ip, -65
  br i1 %i.iq, label %.thread469.i, label %.thread524.invoke.i

.thread469.i:                                     ; preds = %bb.bt, %.split.i320.i
  invoke void @_RNvXs3_NtCslDNmBs4Oaup_11shellexpand7stringsNtNtCscdodAO9FK5_5alloc6string6StringNtNtB5_7wtraits10OStringExt9push_wstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef 2)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

bb.bu:                                            ; preds = %.thread469.i
  br i1 %.not.i319.i, label %bb.bv, label %.split.i324.i

bb.bv:                                            ; preds = %bb.bu
  %i.ir = load i8, ptr %i.cw, align 1, !alias.scope !511, !noalias !485, !noundef !5
  %i.is = icmp sgt i8 %i.ir, -65
  br i1 %i.is, label %.split.i324.i, label %.thread524.invoke.i

.split.i324.i:                                    ; preds = %bb.bv, %bb.bu
  %i.it = add i64 %i.cl, -2                       ; 2 uses
  %i.iu = invoke noundef i64 @_RNvNvNtNtCslDNmBs4Oaup_11shellexpand7strings5funcs16env_with_context11find_dollar(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef %i.it)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !485

.noexc330.i:                                      ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.iv = load i64, ptr %i.n, align 8, !range !6, !alias.scope !512, !noalias !509, !noundef !5
  %i.iw = trunc nuw i64 %i.iv to i1
  br i1 %i.iw, label %bb.cf, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.noexc330.i
  %i.ix = load i8, ptr %i.bk, align 2, !range !18, !alias.scope !513, !noalias !509, !noundef !5
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %.thread481.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.promoted.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !512, !noalias !509 ; 14 uses
  %i.iz = load ptr, ptr %i.bm, align 8, !alias.scope !513, !noalias !509, !nonnull !5, !noundef !5 ; 8 uses
  %i.ja = load i64, ptr %i.bn, align 8, !alias.scope !513, !noalias !509, !noundef !5 ; 21 uses
  %.promoted26.i.i.i = load i8, ptr %i.bl, align 8, !alias.scope !513, !noalias !509
  %i.jb = trunc i8 %.promoted26.i.i.i to i1       ; 2 uses
  %i.jc = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.jc, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted.i.i.i, %i.ja
  br i1 %.not.i.i.i.peel.i.i, label %bb.bx, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %bb.bw
  %i.jd = icmp eq i64 %.promoted.i.i.i, %i.ja
  br i1 %i.jd, label %bb.by, label %.thread524.invoke.i

bb.bx:                                            ; preds = %bb.bw
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.promoted.i.i.i
  %i.jf = load i8, ptr %i.je, align 1, !alias.scope !514, !noalias !515, !noundef !5
  %i.jg = icmp sgt i8 %i.jf, -65
  br i1 %i.jg, label %bb.by, label %.thread524.invoke.i

bb.by:                                            ; preds = %bb.bx, %.split.i.i.i.peel.i.i, %.lr.ph.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.promoted.i.i.i ; 4 uses
  %i.ji = icmp samesign eq i64 %.promoted.i.i.i, %i.ja
  br i1 %i.ji, label %.loopexit115.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jj = load i8, ptr %i.jh, align 1, !noalias !516, !noundef !5 ; 5 uses
  %i.jk = icmp sgt i8 %i.jj, -1
  br i1 %i.jk, label %bb.ca, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i.i.i.peel.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i.i.i.peel.i.i: ; preds = %bb.bz
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %i.jm = and i8 %i.jj, 31
  %i.jn = zext nneg i8 %i.jm to i32               ; 3 uses
  %i.jo = add nuw nsw i64 %.promoted.i.i.i, 1
  %i.jp = icmp samesign ne i64 %i.jo, %i.ja
  call void @llvm.assume(i1 %i.jp)
  %i.jq = load i8, ptr %i.jl, align 1, !noalias !516, !noundef !5
  %i.jr = shl nuw nsw i32 %i.jn, 6
  %i.js = and i8 %i.jq, 63
  %i.jt = zext nneg i8 %i.js to i32               ; 2 uses
  %i.ju = or disjoint i32 %i.jr, %i.jt
  %i.jv = icmp samesign ugt i8 %i.jj, -33
  br i1 %i.jv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i.i.i.peel.i.i, label %bb.cb

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit12.i.i.i.peel.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jx = add nuw nsw i64 %.promoted.i.i.i, 2
  %i.jy = icmp samesign ne i64 %i.jx, %i.ja
  call void @llvm.assume(i1 %i.jy)
  %i.jz = load i8, ptr %i.jw, align 1, !noalias !516, !noundef !5
  %i.ka = shl nuw nsw i32 %i.jt, 6
  %i.kb = and i8 %i.jz, 63
  %i.kc = zext nneg i8 %i.kb to i32
  %i.kd = or disjoint i32 %i.ka, %i.kc            ; 2 uses
  %i.ke = shl nuw nsw i32 %i.jn, 12
  %i.kf = or disjoint i32 %i.kd, %i.ke
  %i.kg = icmp samesign ugt i8 %i.jj, -17
  br i1 %i.kg, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i.i.i.peel.i.i, label %bb.cb

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit16.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8EvorvD8vmS_4ruff.exit14.i.i.i.peel.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jh, i64 3
  %i.ki = add nuw nsw i64 %.promoted.i.i.i, 3
  %i.kj = icmp samesign ne i64 %i.ki, %i.ja
end_hunk_0
