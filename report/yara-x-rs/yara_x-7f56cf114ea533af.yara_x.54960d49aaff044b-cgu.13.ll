Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB5_11ScanContext19search_for_patterns:bb.a
bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1824
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ai, i64 12, i1 false)
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx2.i, align 4, !noalias !4658
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx4.i, align 8, !noalias !4658
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1800
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !4658, !nonnull !27, !noundef !27
  invoke void @_RINvMNtNtNtCsiOkGTpNE17y_8wasmtime7runtime9externals6globalNtB3_6Global3getQINtNtB7_5store5StoreNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEB1C_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.al = load i8, ptr %i.t, align 8, !range !2529, !noalias !4658, !noundef !27
  %i.am = icmp eq i8 %i.al, 1
  br i1 %i.am, label %bb.f, label %.invoke170, !prof !2103

bb.f:                                             ; preds = %.noexc
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noalias !4658, !noundef !27 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4658
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !27, !align !287, !noundef !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 576
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBP_5rules14FilesizeBoundsNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE4iterBR_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar)
          to label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules15filesize_bounds.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules15filesize_bounds.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1952
  br label %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread

_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread: ; preds = %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread.backedge, %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules15filesize_bounds.exit
  %i.at = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBM_5rules14FilesizeBoundsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.g:                                             ; preds = %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread
  %i.au = extractvalue { ptr, ptr } %i.at, 0      ; 2 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %.thread78, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = extractvalue { ptr, ptr } %i.at, 1      ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = load i64, ptr %i.av, align 8, !range !2522, !alias.scope !4661, !noundef !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  switch i64 %i.aw, label %.unreachabledefault [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

.unreachabledefault:                              ; preds = %bb.h
  unreachable

default.unreachable:                              ; preds = %bb.l, %bb.k, %bb.bg
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !4661, !noundef !27
  %i.az = icmp sge i64 %i.ao, %i.ay
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.ax, align 8, !alias.scope !4661, !noundef !27
  %i.bb = icmp sgt i64 %i.ao, %i.ba
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !2522, !alias.scope !4661, !noundef !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  switch i64 %i.bd, label %default.unreachable [
    i64 0, label %.split89
    i64 1, label %.split
    i64 2, label %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread.backedge
  ]

_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread.backedge: ; preds = %bb.k, %.split89, %.split, %bb.p, %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit
  br label %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.in.i = phi i1 [ %i.az, %bb.i ], [ %i.bb, %bb.j ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !2522, !alias.scope !4661, !noundef !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  switch i64 %i.bg, label %default.unreachable [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !4661, !noundef !27
  %i.bj = icmp sle i64 %i.ao, %i.bi
  br label %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit

bb.n:                                             ; preds = %bb.l
  %i.bk = load i64, ptr %i.bh, align 8, !alias.scope !4661, !noundef !27
  %i.bl = icmp slt i64 %i.ao, %i.bk
  br label %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit

.split89:                                         ; preds = %bb.k
  %i.bm = load i64, ptr %i.be, align 8, !alias.scope !4661, !noundef !27
  %.not92 = icmp sgt i64 %i.ao, %i.bm
  br i1 %.not92, label %bb.p, label %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread.backedge

.split:                                           ; preds = %bb.k
  %i.bn = load i64, ptr %i.be, align 8, !alias.scope !4661, !noundef !27
  %i.bo = icmp slt i64 %i.ao, %i.bn
  br i1 %i.bo, label %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread.backedge, label %bb.p

.thread78:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.y

bb.o:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !27 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !27 ; 2 uses
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %bb.y, label %bb.q

_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.0.0.shrunk.i = phi i1 [ %i.bj, %bb.m ], [ %i.bl, %bb.n ], [ true, %bb.l ]
  %spec.select.i = and i1 %.sroa.01.0.in.i, %.sroa.0.0.shrunk.i
  br i1 %spec.select.i, label %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread.backedge, label %bb.p

bb.p:                                             ; preds = %.split89, %.split, %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit
  %i.bw = load i32, ptr %i.au, align 4, !noundef !27
  %i.bx = invoke noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIduNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef %i.bw)
          to label %_RNvMs8_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_14FilesizeBounds8contains.exit.thread.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.q:                                             ; preds = %bb.ac, %bb.o
  %.sroa.0.087 = phi ptr [ %.sroa.0.086, %bb.ac ], [ %i.bs, %bb.o ] ; 13 uses
  %.sroa.5.085 = phi i64 [ %.sroa.5.084, %bb.ac ], [ %i.bu, %bb.o ] ; 12 uses
  %.sroa.05.082 = phi i64 [ 0, %bb.ac ], [ %i.bq, %bb.o ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.087) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4664)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 2000 ; 10 uses
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !4664, !noalias !4667, !nonnull !27, !align !287, !noundef !27 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 296
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !4669, !nonnull !27, !noundef !27 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 304
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !4669, !noundef !27 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.cd, 2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %.loopexit99, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 272
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 280
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 1872
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 1696
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %bb.r

bb.r:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.012.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %i.co, %.backedge.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 4 ; 2 uses
  %i.cp = load i32, ptr %.sroa.0.012.i, align 4, !noalias !4667, !noundef !27
  %i.cq = load ptr, ptr %i.cg, align 8, !noalias !4667, !nonnull !27, !noundef !27
  %i.cr = load i64, ptr %i.ch, align 8, !noalias !4667, !noundef !27
  %i.cs = zext i32 %i.cp to i64                   ; 2 uses
  %i.ct = icmp ugt i64 %i.cr, %i.cs
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.cs ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIduNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE12contains_keyBO_EBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cu)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit

.noexc32:                                         ; preds = %bb.r
  br i1 %i.cw, label %.backedge.i, label %bb.s

bb.s:                                             ; preds = %.noexc32
  %i.cx = load i8, ptr %i.cv, align 8, !range !4161, !noalias !4667, !noundef !27
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.t, label %.invoke, !prof !2103

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !range !2084, !noalias !4667, !noundef !27
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.u, label %.invoke, !prof !2103

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !4667, !noundef !27 ; 4 uses
  %i.de = sub nuw i64 %i.dd, %.sroa.05.082
  %i.df = icmp ult i64 %i.dd, %.sroa.05.082
  br i1 %i.df, label %.backedge.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = load ptr, ptr %i.by, align 8, !alias.scope !4664, !noalias !4667, !nonnull !27, !align !287, !noundef !27 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !noalias !4667, !noundef !27
  %i.dj = getelementptr i8, ptr %i.dg, i64 144
  %.val8.i = load i64, ptr %i.dj, align 8, !noalias !4667, !noundef !27
  %i.dk = zext i32 %i.di to i64                   ; 2 uses
  %i.dl = icmp ugt i64 %.val8.i, %i.dk
  br i1 %i.dl, label %bb.w, label %.invoke170

.backedge.i:                                      ; preds = %bb.x, %.noexc34, %bb.u, %.noexc32
  %i.dm = icmp eq ptr %i.co, %i.ce
  br i1 %i.dm, label %.loopexit99.loopexit, label %bb.r

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr i8, ptr %i.dg, i64 136
  %.val.i = load ptr, ptr %i.dn, align 8, !noalias !4667, !nonnull !27, !noundef !27
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.dk ; 2 uses
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.03.0.i.i = load ptr, ptr %.sroa.03.0.in.i.i, align 8, !noalias !4667, !nonnull !27, !noundef !27
  %.sroa.34.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.sroa.34.0.i.i = load i64, ptr %.sroa.34.0.in.i.i, align 8, !noalias !4667, !noundef !27 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 10
  %i.dq = load i16, ptr %i.dp, align 2, !noalias !4667, !noundef !27
  %i.dr = invoke fastcc noundef zeroext i1 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context14verify_literal(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i.i, i64 noundef %.sroa.34.0.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.087, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.085, i64 noundef %i.de, i16 noundef %i.dq)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit

.noexc34:                                         ; preds = %bb.w
  br i1 %i.dr, label %bb.x, label %.backedge.i

bb.x:                                             ; preds = %.noexc34
  %i.ds = load i32, ptr %.sroa.0.012.i, align 4, !noalias !4667, !noundef !27
  %i.dt = load i32, ptr %i.cu, align 8, !noalias !4667, !noundef !27
  store i8 0, ptr %i.cn, align 8, !noalias !4669
  %i.du = add i64 %.sroa.34.0.i.i, %i.dd
  store i64 %i.dd, ptr %i.cl, align 8, !noalias !4669
  store i64 %i.du, ptr %i.cm, align 8, !noalias !4669
  store i64 %.sroa.05.082, ptr %i.r, align 8, !noalias !4669
  invoke fastcc void @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context24handle_sub_pattern_match(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ci, ptr noalias nofree noundef align 8 dereferenceable(160) %i.ck, i32 noundef %i.ds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv, i32 noundef %i.dt, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.r)
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit

bb.y:                                             ; preds = %.thread78, %bb.o
  %.sroa.0.086 = phi ptr [ %i.ag, %.thread78 ], [ %i.bs, %bb.o ] ; 3 uses
  %.sroa.5.084 = phi i64 [ %i.ah, %.thread78 ], [ %i.bu, %bb.o ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !27, !align !287, !noundef !27
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 608
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBP_5rules16HeaderConstraintNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE4iterBR_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dx)
          to label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules18header_constraints.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules18header_constraints.exit: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 1952
  br label %bb.z

bb.z:                                             ; preds = %.backedge, %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules18header_constraints.exit
  %i.dz = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBM_5rules16HeaderConstraintENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ea = extractvalue { ptr, ptr } %i.dz, 0      ; 2 uses
  %.not24 = icmp eq ptr %i.ea, null
  br i1 %.not24, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = extractvalue { ptr, ptr } %i.dz, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.086) ]
  %i.ec = invoke noundef zeroext i1 @_RNvMs9_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_16HeaderConstraint12is_satisfied(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.086, i64 noundef %.sroa.5.084)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.q

.loopexit99.loopexit:                             ; preds = %.backedge.i
  %.pre = load ptr, ptr %i.by, align 8, !alias.scope !4670, !noalias !4673
  br label %.loopexit99

.loopexit99:                                      ; preds = %.loopexit99.loopexit, %bb.q
  %i.ed = phi ptr [ %.pre, %.loopexit99.loopexit ], [ %i.bz, %bb.q ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !4676)
  call void @llvm.experimental.noalias.scope.decl(metadata !4670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %.sroa.05.082, ptr %i.q, align 8, !noalias !4677
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 384
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 528
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !4677, !noundef !27 ; 2 uses
  %.not.i38 = icmp eq ptr %i.eg, null
  br i1 %.not.i38, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit99
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 544
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !4678, !noalias !4676, !noundef !27
  %.not1.i = icmp ult i64 %.sroa.5.085, %i.ei
  br i1 %.not1.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %.loopexit99
  invoke void @_RINvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB3_22DoubleArrayAhoCorasickmE21find_overlapping_iterRShECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ee, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.087, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.085)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.ae
  %.sroa.077.0.copyload.i = load ptr, ptr %i.o, align 8, !noalias !4677 ; 8 uses
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.0.copyload.i41 = load i64, ptr %.sroa.5.0..sroa_idx.i40, align 8, !noalias !4677 ; 13 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4677
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !4677
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.12.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !4677 ; 8 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.18.0.copyload.i = load i64, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !4677
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.21.0.copyload.i = load i32, ptr %.sroa.21.0..sroa_idx.i, align 8, !noalias !4677
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %.sroa.24.0.copyload.i = load i8, ptr %.sroa.24.0..sroa_idx.i, align 4, !noalias !4677
  %.sroa.2684.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.2684.0.copyload.i = load i32, ptr %.sroa.2684.0..sroa_idx.i, align 8, !noalias !4677
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %.sroa.29.0.copyload.i = load i32, ptr %.sroa.29.0..sroa_idx.i, align 4, !noalias !4677
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload.i, i64 104
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload.i, i64 112
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload.i, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload.i, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload.i, i64 32 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload.i, i64 40 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload.i, i64 %.sroa.5.0.copyload.i41
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 2104
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 1872 ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 7 uses
  %.sroa.6125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.12127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0105.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0105.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4106.0..sroa_idx107.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5109.0..sroa_idx110.i = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.6101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.12103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.694.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.995.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.1296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.1292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4677
  store ptr %1, ptr %i.p, align 8, !noalias !4677
  %i.fd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.0.087, ptr %i.fd, align 8, !noalias !4677
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.5.085, ptr %i.fe, align 8, !noalias !4677
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.q, ptr %i.ff, align 8, !noalias !4677
  call void @llvm.experimental.noalias.scope.decl(metadata !4681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4684
  store i64 -1, ptr %i.n, align 8, !noalias !4684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4684
  store i8 0, ptr %i.m, align 1, !noalias !4684
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ed, i64 536
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !4681, !noalias !4688, !nonnull !27, !align !287, !noundef !27 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !2726, !invariant.load !27, !noalias !4689
  %i.fk = add nsw i64 %i.fj, -1
  %i.fl = and i64 %i.fk, -16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %.sroa.5.085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4684
  store ptr %i.p, ptr %i.l, align 8, !noalias !4684
  %i.fp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.fp, align 8, !noalias !4684
  %i.fq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.n, ptr %i.fq, align 8, !noalias !4684
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !invariant.load !27, !noalias !4690, !nonnull !27
  %i.ft = invoke noundef zeroext i1 %i.fs(ptr noundef nonnull %i.fn, ptr noundef nonnull readonly %.sroa.0.087, ptr noundef nonnull readonly %i.fo, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @34)
end_hunk_0
begin_hunk_1_@_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11track_match:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.h = call { ptr, i64 } @_RINvMs0_NtNtCsiOkGTpNE17y_8wasmtime7runtime6memoryNtB6_6Memory8data_mutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextQINtNtB8_5store5StoreB17_EEB1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !27, !align !287, !noundef !27 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.m = load i64, ptr %i.l, align 8, !noundef !27 ; 2 uses
  %i.n = icmp ult i64 %i.m, 82351536043346213
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 704
  %i.p = load i64, ptr %i.o, align 8, !noundef !27 ; 2 uses
  %i.q = add nuw nsw i64 %i.m, 7
  %.sroa.03.0 = lshr i64 %i.q, 3
  %i.r = add nuw nsw i64 %.sroa.03.0, 17664       ; 3 uses
  %i.s = lshr i64 %i.p, 3
  %i.t = and i64 %i.p, 7
  %.not15 = icmp ne i64 %i.t, 0
  %i.u = zext i1 %.not15 to i64
  %.sroa.04.0 = add nuw nsw i64 %i.s, %i.u        ; 5 uses
  %i.v = add nuw nsw i64 %.sroa.04.0, %i.r        ; 2 uses
  %.not16 = icmp ugt i64 %i.v, %i.i
  br i1 %.not16, label %bb.h, label %bb.d, !prof !59

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @430) #39
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.w = icmp samesign ugt i64 %.sroa.04.0, 288230376151711744
  br i1 %i.w, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQINtNtCscjxkGEBy879_6bitvec5slice8BitSlicehEINtNtNtBN_3ptr4span12BitSpanErrorhEE6unwrapCs7gfv9tzbXmh_6yara_x.exit

bb.e:                                             ; preds = %bb.d
  %i.x = shl nuw i64 %.sroa.04.0, 3
  %i.y = icmp samesign ugt i64 %.sroa.04.0, 2305843009213693951
  br i1 %i.y, label %bb.f, label %bb.g, !prof !59

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.01.0.i = phi i64 [ -1, %bb.f ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6162
  %i.z = inttoptr i64 %.sroa.01.0.i to ptr
  store i64 2, ptr %i.c, align 8, !noalias !6162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !noalias !6162
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #39, !noalias !6162
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQINtNtCscjxkGEBy879_6bitvec5slice8BitSlicehEINtNtNtBN_3ptr4span12BitSpanErrorhEE6unwrapCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.d
  %i.ab = extractvalue { ptr, i64 } %i.h, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.r ; 2 uses
  %i.ad = shl i64 %.sroa.04.0, 6                  ; 2 uses
  %i.ae = sext i32 %2 to i64                      ; 4 uses
  %i.af = lshr exact i64 %i.ad, 3
  call void @_RINvMs4_NtCscjxkGEBy879_6bitvec5sliceINtB6_8BitSlicehE16assert_in_boundsINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad, i64 noundef range(i64 -2147483648, 2147483648) %i.ae, i64 noundef 0, i64 noundef %i.af)
  %i.ag = ashr i64 %i.ae, 3
  %i.ah = trunc i32 %2 to i8
  %i.ai = and i8 %i.ah, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6165
  store i64 %i.ag, ptr %i.b, align 8, !noalias !6165
  %i.aj = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MuthE8with_ptrhNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6165
  %i.ak = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressINtB6_6FrozenNtB6_3MutEhE8with_ptrINtNtCskKLDkoKarTP_4core4cell4CellhENCINvMs8_B6_Bv_4castB1h_E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !6170 ; 2 uses
  %i.al = shl nuw i8 1, %i.ai
  %i.am = load i8, ptr %i.ak, align 1, !noalias !6170, !noundef !27
  %i.an = or i8 %i.am, %i.al
  store i8 %i.an, ptr %i.ak, align 1, !noalias !6170
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load i8, ptr %i.ao, align 8, !range !67, !noundef !27
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef %i.v, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #39
  unreachable

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQINtNtCscjxkGEBy879_6bitvec5slice8BitSlicehEINtNtNtBN_3ptr4span12BitSpanErrorhEE6unwrapCs7gfv9tzbXmh_6yara_x.exit
  %i.ar = call { i64, i64 } @_RNvMs1_NtNtCs7gfv9tzbXmh_6yara_x7scanner7matchesNtB5_14PatternMatches3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %3, i1 noundef zeroext %4)
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.m, label %bb.l

bb.j:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQINtNtCscjxkGEBy879_6bitvec5slice8BitSlicehEINtNtNtBN_3ptr4span12BitSpanErrorhEE6unwrapCs7gfv9tzbXmh_6yara_x.exit
  %i.au = getelementptr i8, ptr %i.k, i64 680
  %.val17 = load i64, ptr %i.au, align 8, !noundef !27 ; 2 uses
  %i.av = lshr i64 %.val17, 3
  %i.aw = icmp ugt i64 %i.av, %i.ae
  br i1 %i.aw, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules12is_fast_scan.exit, label %bb.k, !prof !2103

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #39
  unreachable

_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules12is_fast_scan.exit: ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.k, i64 672
  %.val = load ptr, ptr %i.ax, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ay = ptrtoint ptr %.val to i64               ; 3 uses
  %i.az = and i64 %i.ay, -8
  %i.ba = getelementptr i8, ptr %.val, i64 %i.az
  %i.bb = sub i64 0, %i.ay
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = shl i64 %i.ay, 3
  %i.be = and i64 %i.bd, 56
  %i.bf = and i64 %.val17, 7
  %i.bg = or disjoint i64 %i.be, %i.bf
  %i.bh = add nuw nsw i64 %i.bg, %i.ae            ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6173
  store i64 %i.bi, ptr %i.a, align 8, !noalias !6173
  %i.bj = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112), !noalias !6177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6173
  %.val.i.i = load i64, ptr %i.bj, align 8, !noalias !6177, !noundef !27
  %i.bk = and i64 %i.bh, 63
  %i.bl = lshr i64 %.val.i.i, %i.bk
  %i.bm = trunc i64 %i.bl to i1
  %i.bn = call { i64, i64 } @_RNvMs1_NtNtCs7gfv9tzbXmh_6yara_x7scanner7matchesNtB5_14PatternMatches3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %3, i1 noundef zeroext %4)
  %i.bo = extractvalue { i64, i64 } %i.bn, 0
  %i.bp = icmp eq i64 %i.bo, 2
  %brmerge = or i1 %i.bp, %i.bm
  br i1 %brmerge, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules12is_fast_scan.exit, %bb.i, %bb.m
  ret void

bb.m:                                             ; preds = %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules12is_fast_scan.exit, %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = call noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIduNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bq, i32 noundef %2) ; 0 uses
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13verify_base64(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 0, 256) %5, i64 noundef %6, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(324) %7, i1 noundef zeroext %8) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvNtCscstn3lKcJpi_6base646encode11encoded_len.exit:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [264 x i8], align 8               ; 14 uses
  %i.c = alloca [264 x i8], align 8               ; 15 uses
  %i.d = urem i64 %2, 3                           ; 2 uses
  %i.e = udiv i64 %2, 3
  %i.f = shl nuw i64 %i.e, 2
  %.not.i = icmp eq i64 %i.d, 0
  %i.g = icmp eq i64 %i.d, 1
  %..i = select i1 %i.g, i64 2, i64 3
  %i.h = select i1 %.not.i, i64 0, i64 %..i       ; 5 uses
  %.sroa.7.0.i = or disjoint i64 %i.h, %i.f       ; 16 uses
  %trunc = trunc nuw i64 %5 to i8
  switch i8 %trunc, label %bb.a [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ], !prof !6178

bb.a:                                             ; preds = %_RNvNtCscstn3lKcJpi_6base646encode11encoded_len.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #39
  unreachable

bb.b:                                             ; preds = %_RNvNtCscstn3lKcJpi_6base646encode11encoded_len.exit
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.g
    i64 2, label %bb.e
    i64 3, label %bb.f
  ], !prof !6179

bb.c:                                             ; preds = %_RNvNtCscstn3lKcJpi_6base646encode11encoded_len.exit
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
  ], !prof !6179

bb.d:                                             ; preds = %_RNvNtCscstn3lKcJpi_6base646encode11encoded_len.exit
  %i.i = add i64 %.sroa.7.0.i, -1                 ; 3 uses
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ], !prof !6179

default.unreachable:                              ; preds = %bb.d, %bb.c, %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.7.0.i, 2
  %i.k = add i64 %.sroa.7.0.i, -1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.l = add nuw i64 %.sroa.7.0.i, 1
  %i.m = add i64 %.sroa.7.0.i, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.k, %bb.l, %bb.m, %bb.h, %bb.i, %bb.j, %bb.e, %bb.f
  %.sroa.038.0 = phi i64 [ 3, %bb.m ], [ 0, %bb.e ], [ 0, %bb.f ], [ 2, %bb.h ], [ 2, %bb.i ], [ 2, %bb.j ], [ 3, %bb.k ], [ 3, %bb.l ], [ %i.h, %bb.b ]
  %.sroa.08.0 = phi i64 [ %i.i, %bb.m ], [ %i.k, %bb.e ], [ %i.m, %bb.f ], [ %i.r, %bb.h ], [ %i.t, %bb.i ], [ %i.v, %bb.j ], [ %i.i, %bb.k ], [ %i.i, %bb.l ], [ %.sroa.7.0.i, %bb.b ]
  %.sroa.06.0 = phi i64 [ %i.y, %bb.m ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.q, %bb.h ], [ %i.s, %bb.i ], [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.x, %bb.l ], [ %.sroa.7.0.i, %bb.b ]
  %i.n = zext i1 %8 to i64                        ; 3 uses
  %.sroa.038.1 = shl nuw nsw i64 %.sroa.038.0, %i.n ; 2 uses
  %.sroa.08.1 = shl i64 %.sroa.08.0, %i.n
  %i.o = sub nuw i64 %6, %.sroa.038.1             ; 7 uses
  %i.p = icmp ult i64 %6, %.sroa.038.1
  br i1 %i.p, label %bb.o, label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.q = add nuw i64 %.sroa.7.0.i, 4
  %i.r = add i64 %.sroa.7.0.i, -1
  br label %bb.g

bb.i:                                             ; preds = %bb.c
  %i.s = add nuw i64 %.sroa.7.0.i, 2
  %i.t = add i64 %.sroa.7.0.i, -2
  br label %bb.g

bb.j:                                             ; preds = %bb.c
  %i.u = add nuw i64 %.sroa.7.0.i, 1
  %i.v = add i64 %.sroa.7.0.i, -1
  br label %bb.g

bb.k:                                             ; preds = %bb.d
  %i.w = add nuw i64 %.sroa.7.0.i, 4
  br label %bb.g

bb.l:                                             ; preds = %bb.d
  %i.x = add nuw i64 %.sroa.7.0.i, 2
  br label %bb.g

bb.m:                                             ; preds = %bb.d
  %i.y = add nuw i64 %.sroa.7.0.i, 5
  br label %bb.g

bb.n:                                             ; preds = %bb.g
  %.sroa.06.1 = shl i64 %.sroa.06.0, %i.n
  %i.z = add i64 %.sroa.06.1, %i.o
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %4) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 4 uses
  store i64 0, ptr %i.aa, align 8
  %i.ab = icmp ult i64 %spec.store.select, %i.o   ; 2 uses
  br i1 %8, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8
  br label %bb.ag

bb.p:                                             ; preds = %bb.n
  br i1 %i.ab, label %.invoke, label %bb.r, !prof !59

bb.q:                                             ; preds = %bb.n
  br i1 %i.ab, label %.invoke, label %bb.w, !prof !59

bb.r:                                             ; preds = %bb.p
  %i.ac = sub nuw nsw i64 %spec.store.select, %i.o ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.o ; 5 uses
  %i.ae = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @432, i64 noundef 2)
          to label %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice13ends_with_strRAhj2_ECs7gfv9tzbXmh_6yara_x.exit unwind label %.loopexit.split-lp

.invoke:                                          ; preds = %bb.p, %bb.q
  %i.af = phi ptr [ @435, %bb.q ], [ @434, %bb.p ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.o, i64 noundef %spec.store.select, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af) #40
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj100_EECs7gfv9tzbXmh_6yara_x.exit50: ; preds = %.loopexit, %.loopexit.split-lp, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.y ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj100_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj100_EECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.aj

.loopexit:                                        ; preds = %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj100_EECs7gfv9tzbXmh_6yara_x.exit50

.loopexit.split-lp:                               ; preds = %.invoke, %bb.v, %bb.r, %bb.s, %bb.af, %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj100_EECs7gfv9tzbXmh_6yara_x.exit50

_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice13ends_with_strRAhj2_ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.r
  br i1 %i.ae, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice13ends_with_strRAhj2_ECs7gfv9tzbXmh_6yara_x.exit
  %i.ag = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @433, i64 noundef 1)
          to label %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice13ends_with_strRAhj1_ECs7gfv9tzbXmh_6yara_x.exit unwind label %.loopexit.split-lp

_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice13ends_with_strRAhj1_ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.s
  br i1 %i.ag, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice13ends_with_strRAhj1_ECs7gfv9tzbXmh_6yara_x.exit
  %i.ah = tail call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 1)
  br label %bb.v

bb.u:                                             ; preds = %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice13ends_with_strRAhj2_ECs7gfv9tzbXmh_6yara_x.exit
  %i.ai = tail call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 2)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice13ends_with_strRAhj1_ECs7gfv9tzbXmh_6yara_x.exit, %bb.t, %.thread
  %.sroa.8.0 = phi i64 [ %.sink10.i, %.thread ], [ %i.ai, %bb.u ], [ %i.ah, %bb.t ], [ %i.ac, %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice13ends_with_strRAhj1_ECs7gfv9tzbXmh_6yara_x.exit ] ; 4 uses
  %.sroa.023.0 = phi ptr [ %.sink11.i, %.thread ], [ %i.ad, %bb.u ], [ %i.ad, %bb.t ], [ %i.ad, %_RINvYShNtNtCs2AhGS15tZfv_4bstr9ext_slice9ByteSlice13ends_with_strRAhj1_ECs7gfv9tzbXmh_6yara_x.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = and i64 %.sroa.8.0, 3                   ; 2 uses
  %i.ak = lshr i64 %.sroa.8.0, 2
  %i.al = icmp ne i64 %i.aj, 0
  %i.am = zext i1 %i.al to i64
  %i.an = add nuw nsw i64 %i.ak, %i.am
  %i.ao = mul nuw i64 %i.an, 3
  invoke void @_RNvMse_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj100_E9from_elemCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.b, i8 noundef 0, i64 noundef %i.ao)
          to label %bb.z unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %spec.store.select
  %i.aq = icmp samesign eq i64 %i.o, %spec.store.select
  br i1 %i.aq, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 %i.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.an
  %.sroa.0.084 = phi ptr [ %i.ar, %.lr.ph ], [ %i.at, %bb.an ] ; 2 uses
  %.sroa.8.07183 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.an ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.084, i64 1 ; 2 uses
  %i.au = add i64 %.sroa.8.07183, 1
  %i.av = and i64 %.sroa.8.07183, 1
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = load i8, ptr %.sroa.0.084, align 1, !noundef !27 ; 3 uses
  br i1 %i.aw, label %bb.al, label %bb.ak

.thread.loopexit:                                 ; preds = %bb.an
  %.pre = load i64, ptr %i.aa, align 8, !alias.scope !6180, !noalias !6183
  %.pre85 = load ptr, ptr %i.c, align 8, !alias.scope !6180, !noalias !6183
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.w
  %i.ay = phi ptr [ %.pre85, %.thread.loopexit ], [ undef, %bb.w ]
  %i.az = phi i64 [ %.pre, %.thread.loopexit ], [ 0, %bb.w ] ; 2 uses
  %i.ba = icmp ugt i64 %i.az, 256                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !6180, !noalias !6183
  %.sink11.i = select i1 %i.ba, ptr %i.ay, ptr %i.c
  %.sink10.i = select i1 %i.ba, i64 %i.bc, i64 %i.az
  br label %bb.v

bb.y:                                             ; preds = %bb.z, %bb.ab
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj100_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj100_EECs7gfv9tzbXmh_6yara_x.exit50 unwind label %bb.aj

bb.z:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !6185, !noalias !6188, !noundef !27 ; 2 uses
  %i.bg = icmp ugt i64 %i.bf, 256                 ; 2 uses
  %i.bh = load ptr, ptr %i.b, align 8, !alias.scope !6185, !noalias !6188, !nonnull !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sink10.i48 = select i1 %i.bg, ptr %i.bh, ptr %i.b
  %.val = load i64, ptr %i.bi, align 8
  %i.bj = select i1 %i.bg, i64 %.val, i64 %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6190
  %i.bk = add nuw i64 %.sroa.8.0, 3
  %i.bl = lshr i64 %i.bk, 2
  %i.bm = mul nuw nsw i64 %i.bl, 3
  invoke void @_RNvXs_NtNtCscstn3lKcJpi_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(324) %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.023.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0, ptr noalias nofree noundef nonnull %.sink10.i48, i64 noundef range(i64 0, -9223372036854775808) %i.bj, i64 noundef %i.aj, i64 noundef %i.bm)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.z
  %i.bn = load i64, ptr %i.a, align 8, !range !2522, !noalias !6190, !noundef !27
  %i.bo = icmp eq i64 %i.bn, 2
  br i1 %i.bo, label %bb.aa, label %.thread77

.thread77:                                        ; preds = %.noexc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !6190, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6190
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.060.0.copyload = load i8, ptr %i.br, align 8, !noalias !6201
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.662.0.copyload = load i64, ptr %.sroa.662.0..sroa_idx, align 8, !noalias !6201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6190
  %.not45 = icmp eq i8 %.sroa.060.0.copyload, -2
  br i1 %.not45, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %.thread77, %bb.aa
  %.sroa.662.081 = phi i64 [ %i.bq, %.thread77 ], [ %.sroa.662.0.copyload, %bb.aa ]
  invoke void @_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj100_E8truncateCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.b, i64 noundef %.sroa.662.081)
          to label %bb.ac unwind label %bb.y

bb.ac:                                            ; preds = %bb.ab
  %i.bs = load i64, ptr %i.be, align 8, !alias.scope !6202, !noalias !6205, !noundef !27 ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 256                 ; 2 uses
  %i.bu = load i64, ptr %i.bi, align 8, !alias.scope !6202, !noalias !6205
  %.sink10.i52 = select i1 %i.bt, i64 %i.bu, i64 %i.bs
  %i.bv = add nuw i64 %5, %2
  %.not46 = icmp ugt i64 %i.bv, %.sink10.i52
  br i1 %.not46, label %bb.ah, label %bb.ad
end_hunk_1
