Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11238
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 664
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator26evaluate_const_assignments:bb.a
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !59750, !noundef !28 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.04.076, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !59750, !noundef !28 ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.076, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !59750, !noundef !28 ; 3 uses
  %i.br = add i64 %i.bq, %i.bo                    ; 7 uses
  %i.bs = icmp ugt i64 %i.bo, %i.br
  %i.bt = icmp ugt i64 %i.br, %i.bm
  %or.cond.i.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, label %bb.h, !prof !31

bb.h:                                             ; preds = %.lr.ph.split
  %i.bu = icmp eq i64 %i.bo, %i.bm
  br i1 %i.bu, label %.preheader.i.i.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = icmp eq i64 %i.bo, 0
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.bw = icmp eq i64 %i.br, %i.bm
  br i1 %i.bw, label %.preheader.i.i.preheader, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !59751, !noalias !59750, !noundef !28
  %i.bz = icmp sgt i8 %i.by, -65
  br i1 %i.bz, label %bb.j, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.br
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !59751, !noalias !59750, !noundef !28
  %i.cc = icmp sgt i8 %i.cb, -65
  br i1 %i.cc, label %.preheader.i.i.preheader, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i: ; preds = %.lr.ph.split, %bb.k, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %.lr.ph.split.us, %bb.f, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.us
  %.us-phi = phi ptr [ %i.ap, %.lr.ph.split.us ], [ %i.ap, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.us ], [ %i.ap, %bb.f ], [ %i.bk, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i ], [ %i.bk, %bb.k ], [ %i.bk, %.lr.ph.split ]
  %.us-phi77 = phi i64 [ %i.ar, %.lr.ph.split.us ], [ %i.ar, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.us ], [ %i.ar, %bb.f ], [ %i.bm, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i ], [ %i.bm, %bb.k ], [ %i.bm, %.lr.ph.split ]
  %.us-phi78 = phi i64 [ %i.at, %.lr.ph.split.us ], [ %i.at, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.us ], [ %i.at, %bb.f ], [ %i.bo, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i ], [ %i.bo, %bb.k ], [ %i.bo, %.lr.ph.split ]
  %.us-phi79 = phi i64 [ %i.aw, %.lr.ph.split.us ], [ %i.aw, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.us ], [ %i.aw, %bb.f ], [ %i.br, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i ], [ %i.br, %bb.k ], [ %i.br, %.lr.ph.split ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.us-phi, i64 noundef %.us-phi77, i64 noundef %.us-phi78, i64 noundef %.us-phi79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i
  unreachable

.preheader.i.i.preheader:                         ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.j, %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.n
  %.sroa.3.0.i.i.i = phi i64 [ %i.cx, %bb.n ], [ %.val22, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.cw, %bb.n ], [ %.val21.fr, %.preheader.i.i.preheader ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2826
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !59752, !noundef !28 ; 2 uses
  %i.cg = zext i16 %i.cf to i64                   ; 3 uses
  %.idx189 = shl nuw nsw i64 %i.cg, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.idx189
  %i.ci = icmp eq i16 %i.cf, 0
  br i1 %i.ci, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.l:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i186, i64 16 ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.8.0.i.i.i.i185, 1
  %i.cl = icmp eq ptr %i.cj, %i.ch
  br i1 %i.cl, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %.preheader.i.i, %bb.l
  %.sroa.0.01.i.i.i.i186 = phi ptr [ %i.cj, %bb.l ], [ %.sroa.0.0.i.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i.i185 = phi i64 [ %i.ck, %bb.l ], [ 0, %.preheader.i.i ] ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.0.01.i.i.i.i186, align 8, !noalias !59752, !nonnull !28, !noundef !28
  %i.cm = getelementptr i8, ptr %.sroa.0.01.i.i.i.i186, i64 8
  %.val6.i.i.i.i = load i64, ptr %i.cm, align 8, !noalias !59752, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bq, i64 %.val6.i.i.i.i)
  %i.cn = call i32 @memcmp(ptr nonnull readonly %i.cd, ptr nonnull readonly %.val.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !59753, !noalias !59754 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp eq i32 %i.cn, 0
  %i.cq = sub i64 %i.bq, %.val6.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.cp, i64 %i.cq, i64 %i.co
  %i.cr = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  switch i8 %i.cr, label %bb.m [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge
    i8 0, label %bb.o
    i8 1, label %bb.l
  ]

bb.m:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge: ; preds = %bb.l, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i, %.preheader.i.i
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.cg, %.preheader.i.i ], [ %i.cg, %bb.l ], [ %.sroa.8.0.i.i.i.i185, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i ] ; 2 uses
  %i.cs = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.cs, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2832
  %i.cu = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.4.0.i.ph.i.i.i
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !59755, !nonnull !28, !noundef !28
  %i.cx = add i64 %.sroa.3.0.i.i.i, -1
  br label %.preheader.i.i

.loopexit.i:                                      ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge, %bb.d, %bb.g, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.us
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @351, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1021) #74
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %.loopexit.i
  unreachable

bb.o:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.cy = icmp samesign ult i64 %.sroa.8.0.i.i.i.i185, 11
  call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 176
  %i.da = getelementptr inbounds nuw [240 x i8], ptr %i.cz, i64 %.sroa.8.0.i.i.i.i185 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 228 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59756)
  br i1 %i.ai, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keyBO_EBS_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtCskXtk6F4WjxZ_4just6number6NumberEB1J_(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.db), !noalias !59757 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59758)
  %i.dd = lshr i64 %i.dc, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8
  %i.df = insertelement <16 x i8> poison, i8 %i.de, i64 0
  %i.dg = shufflevector <16 x i8> %i.df, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i25 = load i32, ptr %i.db, align 4, !alias.scope !59759
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.p ], [ %i.dx, %bb.s ]
  %.pn.i.i = phi i64 [ %i.dc, %bb.p ], [ %i.dy, %bb.s ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.am     ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.dh, align 1, !noalias !59760 ; 2 uses
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.dg
  %i.dj = bitcast <16 x i1> %i.di to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.dj, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.06.0.i31.i.i = phi i16 [ %i.dw, %bb.r ], [ %i.dj, %bb.q ] ; 3 uses
  %i.dk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = add i64 %.sroa.01.0.i.i.i, %i.dl
  %i.dn = and i64 %i.dm, %i.am
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -4
  %.val2.i.i.i = load i32, ptr %i.dq, align 4, !noalias !59761, !noundef !28
  %i.dr = icmp eq i32 %.val.i.i.i.i25, %.val2.i.i.i
  br i1 %i.dr, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keyBO_EBS_.exit, label %bb.r, !prof !29

._crit_edge.i.i:                                  ; preds = %bb.r, %bb.q
  %i.ds = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.dt = bitcast <16 x i1> %i.ds to i16
  %i.du = icmp eq i16 %i.dt, 0
  br i1 %i.du, label %bb.s, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keyBO_EBS_.exit.thread, !prof !44

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.dv = add i16 %.sroa.06.0.i31.i.i, -1
  %i.dw = and i16 %i.dv, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.dw, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.dx = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.dy = add i64 %.sroa.01.0.i.i.i, %i.dx
  br label %bb.q

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keyBO_EBS_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator19evaluate_assignment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.e, ptr noalias nofree noundef align 8 dereferenceable(256) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.da)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keyBO_EBS_.exit.thread: ; preds = %._crit_edge.i.i, %bb.o, %.thread40
  %i.dz = icmp eq ptr %i.bi, %i.ad
  br i1 %i.dz, label %._crit_edge, label %.lr.ph.split

bb.t:                                             ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keyBO_EBS_.exit
  %i.ea = load i64, ptr %i.e, align 8, !range !116, !noundef !28
  %.not = icmp eq i64 %i.ea, -1
  br i1 %.not, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5errorNtB2_5Error12unwrap_const(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.c)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread40

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pr = load i64, ptr %i.f, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not15 = icmp eq i64 %.pr, -1
  br i1 %.not15, label %.thread40, label %8

8:                                                ; preds = %bb.v
  %9 = icmp ne i64 %.pr, -9223372036854775804
  call void @llvm.assume(i1 %9)
  %10 = icmp eq i64 %.pr, -9223372036854775807
  br i1 %10, label %bb.w, label %bb.x

bb.w:                                             ; preds = %8
  %i.eb = load i32, ptr %i.db, align 4, !noundef !28
  %i.ec = invoke fastcc noundef zeroext i1 @_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6insertBR_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aa, i32 noundef %i.eb)
          to label %bb.af unwind label %bb.ai     ; 0 uses

bb.x:                                             ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !59762)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !59763)
  %i.ed = load i64, ptr %i.d, align 8, !range !92, !alias.scope !59764, !noundef !28 ; 3 uses
  %i.ee = icmp ne i64 %i.ed, -9223372036854775804
  call void @llvm.assume(i1 %i.ee)
  %i.ef = xor i64 %i.ed, -9223372036854775808
  %i.eg = icmp slt i64 %i.ed, 0
  %i.eh = select i1 %i.eg, i64 %i.ef, i64 4
  switch i64 %i.eh, label %bb.y [
    i64 0, label %_RNvMNtCskXtk6F4WjxZ_4just16const_eval_errorNtB2_14ConstEvalError7context.exit.i
    i64 1, label %bb.z
    i64 2, label %bb.aa
    i64 3, label %bb.z
    i64 4, label %bb.ab
    i64 5, label %_RNvMNtCskXtk6F4WjxZ_4just16const_eval_errorNtB2_14ConstEvalError7context.exit.i
  ]

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.x
  br label %_RNvMNtCskXtk6F4WjxZ_4just16const_eval_errorNtB2_14ConstEvalError7context.exit.i

bb.aa:                                            ; preds = %bb.x
  br label %_RNvMNtCskXtk6F4WjxZ_4just16const_eval_errorNtB2_14ConstEvalError7context.exit.i

bb.ab:                                            ; preds = %bb.x
  br label %_RNvMNtCskXtk6F4WjxZ_4just16const_eval_errorNtB2_14ConstEvalError7context.exit.i

_RNvMNtCskXtk6F4WjxZ_4just16const_eval_errorNtB2_14ConstEvalError7context.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.x
  %.sink.i.sink.i.sroa.phi = phi ptr [ %.sink.i.sink.i.sroa.gep, %bb.z ], [ %.sink.i.sink.i.sroa.gep32, %bb.x ], [ %.sink.i.sink.i.sroa.gep33, %bb.aa ], [ %.sink.i.sink.i.sroa.gep34, %bb.ab ], [ %.sink.i.sink.i.sroa.gep32, %bb.x ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %.sink.i.sink.i.sroa.phi, i64 72, i1 false), !alias.scope !59765, !noalias !59766
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !59767
  %i.ei = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !59767 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ac, label %bb.ag, !prof !26

bb.ac:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just16const_eval_errorNtB2_14ConstEvalError7context.exit.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #70
          to label %.noexc.i.i.i unwind label %bb.ad, !noalias !59768

.noexc.i.i.i:                                     ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.f) #71
          to label %.body unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !59768
  unreachable

bb.af:                                            ; preds = %bb.w
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just16const_eval_error14ConstEvalErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.f)
  br label %.thread40

.thread40:                                        ; preds = %bb.af, %bb.v, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keyBO_EBS_.exit.thread

bb.ag:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just16const_eval_errorNtB2_14ConstEvalError7context.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ei, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.436.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.ei, ptr %0, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 2, ptr %i.em, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9evaluator9EvaluatorEBF_(ptr noalias nofree noundef align 8 dereferenceable(256) %i.h)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ai:                                            ; preds = %bb.w
  %i.en = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just16const_eval_error14ConstEvalErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.f) #71
  br label %.body

bb.aj:                                            ; preds = %.body, %bb.b
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
  unreachable

bb.ak:                                            ; preds = %.body, %bb.b
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %.body ], [ %i.r, %bb.b ]
  resume { ptr, i32 } %.pn17.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9parameterNtB2_9Parameter17check_value_count(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %2, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !range !41, !noundef !28
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskXtk6F4WjxZ_4just.exit10, label %bb.b

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskXtk6F4WjxZ_4just.exit10: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !28 ; 2 uses
  %i.f = icmp ult i64 %.16.val, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskXtk6F4WjxZ_4just.exit10, %bb.a
  %i.g = load i64, ptr %1, align 8, !range !41, !noundef !28
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskXtk6F4WjxZ_4just.exit, label %bb.l

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskXtk6F4WjxZ_4just.exit10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59785)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !59785, !nonnull !28, !noundef !28 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !59785, !noundef !28 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !59785, !noundef !28 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !59785, !noundef !28 ; 2 uses
  %i.q = add i64 %i.p, %i.n                       ; 5 uses
  %i.r = icmp ugt i64 %i.n, %i.q
  %i.s = icmp ugt i64 %i.q, %i.l
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, label %bb.d, !prof !31

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.n, %i.l
  br i1 %i.t, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.n, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.v = icmp eq i64 %i.q, %i.l
  br i1 %i.v, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !59786, !noalias !59785, !noundef !28
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %bb.f, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !59786, !noalias !59785, !noundef !28
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.g, %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !59785
  unreachable

_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit: ; preds = %bb.d, %bb.f, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59787)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !59787, !nonnull !28, !noundef !28 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !59787, !noundef !28 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !59787, !noundef !28 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !59787, !noundef !28 ; 2 uses
  %i.al = add i64 %i.ak, %i.ai                    ; 5 uses
  %i.am = icmp ugt i64 %i.ai, %i.al
  %i.an = icmp ugt i64 %i.al, %i.ag
  %or.cond.i.i11 = or i1 %i.am, %i.an
  br i1 %or.cond.i.i11, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i12, label %bb.h, !prof !31

bb.h:                                             ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  %i.ao = icmp eq i64 %i.ai, %i.ag
  br i1 %i.ao, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit14, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp eq i64 %i.ai, 0
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.aq = icmp eq i64 %i.al, %i.ag
  br i1 %i.aq, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit14, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i13

bb.k:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !59788, !noalias !59787, !noundef !28
  %i.at = icmp sgt i8 %i.as, -65
  br i1 %i.at, label %bb.j, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i12, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i13: ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.al
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !59788, !noalias !59787, !noundef !28
  %i.aw = icmp sgt i8 %i.av, -65
  br i1 %i.aw, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit14, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i12, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i12: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i13, %bb.k, %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag, i64 noundef %i.ai, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !59787
  unreachable

_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit14: ; preds = %bb.h, %bb.j, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai
  store i64 8, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ax, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ak, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.16.val, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.e, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.v

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskXtk6F4WjxZ_4just.exit: ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noundef !28 ; 2 uses
  %i.ba = icmp ugt i64 %.16.val, %i.az
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskXtk6F4WjxZ_4just.exit, %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.m:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskXtk6F4WjxZ_4just.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59789)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !59789, !nonnull !28, !noundef !28 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !59789, !noundef !28 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !59789, !noundef !28 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !59789, !noundef !28 ; 2 uses
  %i.bj = add i64 %i.bi, %i.bg                    ; 5 uses
  %i.bk = icmp ugt i64 %i.bg, %i.bj
  %i.bl = icmp ugt i64 %i.bj, %i.be
  %or.cond.i.i15 = or i1 %i.bk, %i.bl
  br i1 %or.cond.i.i15, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i16, label %bb.n, !prof !31

bb.n:                                             ; preds = %bb.m
  %i.bm = icmp eq i64 %i.bg, %i.be
  br i1 %i.bm, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit18, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = icmp eq i64 %i.bg, 0
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bo = icmp eq i64 %i.bj, %i.be
  br i1 %i.bo, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit18, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i17

end_hunk_0
