Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core:bb.a
.thread207:                                       ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit, %.split
  %i.l = phi ptr [ %i.g, %.split ], [ %.val, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit ] ; 3 uses
  %i.m = phi i64 [ %i.h, %.split ], [ %.val79, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit ] ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %rhsc.i = load i8, ptr %i.o, align 1, !alias.scope !188
  %i.p = icmp eq i8 %rhsc.i, 47
  %i.q = sext i1 %i.p to i64
  %spec.select = add i64 %i.m, %i.q               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %spec.select, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1)
          to label %bb.d unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.d:                                             ; preds = %.thread207
  %.sroa.038.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.038.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 28 uses
  %.sroa.038.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.038.sroa.6.0.copyload = load i64, ptr %.sroa.038.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.038.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.038.sroa.7.0.copyload = load i64, ptr %.sroa.038.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.038.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.038.sroa.8.0.copyload = load i64, ptr %.sroa.038.sroa.8.0..sroa_idx, align 8
  %.sroa.038.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.038.sroa.10.0.copyload = load i64, ptr %.sroa.038.sroa.10.0..sroa_idx, align 8
  %.sroa.038.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.038.sroa.12.0.copyload = load ptr, ptr %.sroa.038.sroa.12.0..sroa_idx, align 8, !nonnull !23, !noundef !23 ; 18 uses
  %.sroa.038.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.038.sroa.13.0.copyload = load i64, ptr %.sroa.038.sroa.13.0..sroa_idx, align 8 ; 57 uses
  %.sroa.038.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.038.sroa.14.0.copyload = load ptr, ptr %.sroa.038.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.038.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.038.sroa.15.0.copyload = load i64, ptr %.sroa.038.sroa.15.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = trunc nuw i64 %.sroa.038.sroa.0.0.copyload to i1
  %i.s = add nsw i64 %.sroa.038.sroa.15.0.copyload, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  br i1 %i.r, label %.split311.us, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.d
  %i.u = and i64 %.sroa.038.sroa.6.0.copyload, 65536
  %.sroa.9123.sroa.10140.0.extract.trunc.not = icmp eq i64 %i.u, 0
  %.sroa.9123.sroa.0.0.extract.trunc = trunc i64 %.sroa.038.sroa.6.0.copyload to i1
  br i1 %.sroa.9123.sroa.10140.0.extract.trunc.not, label %.lr.ph.i.i.peel, label %.sink.split.i.peel

.lr.ph.i.i.peel:                                  ; preds = %.preheader.i.i.preheader
  %i.v = trunc i64 %.sroa.038.sroa.6.0.copyload to i1 ; 2 uses
  %i.w = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  br i1 %i.w, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.peel
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.peel, label %bb.f, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.e
  %i.x = icmp eq i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %i.x, label %bb.g, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.038.sroa.4.0.copyload
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !189, !noalias !190, !noundef !23
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %bb.f, %.split.i.i.i.peel.i.peel, %.lr.ph.i.i.peel
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.038.sroa.4.0.copyload ; 4 uses
  %i.ac = icmp samesign eq i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %i.ac, label %.loopexit19.i.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %i.ab, align 1, !noalias !191, !noundef !23 ; 5 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.i, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i.peel: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ag = and i8 %i.ad, 31
  %i.ah = zext nneg i8 %i.ag to i32               ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 1
  %i.aj = icmp samesign ne i64 %i.ai, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.af, align 1, !noalias !191, !noundef !23
  %i.al = shl nuw nsw i32 %i.ah, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32               ; 2 uses
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = icmp samesign ugt i8 %i.ad, -33
  br i1 %i.ap, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i.peel, label %bb.j

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i.peel
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ar = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 2
  %i.as = icmp samesign ne i64 %i.ar, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i8, ptr %i.aq, align 1, !noalias !191, !noundef !23
  %i.au = shl nuw nsw i32 %i.an, 6
  %i.av = and i8 %i.at, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw            ; 2 uses
  %i.ay = shl nuw nsw i32 %i.ah, 12
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = icmp samesign ugt i8 %i.ad, -17
  br i1 %i.ba, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i.peel, label %bb.j

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i.peel
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.bc = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 3
  %i.bd = icmp samesign ne i64 %i.bc, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = load i8, ptr %i.bb, align 1, !noalias !191, !noundef !23
  %i.bf = shl nuw nsw i32 %i.ah, 18
  %i.bg = and i32 %i.bf, 1835008
  %i.bh = shl nuw nsw i32 %i.ax, 6
  %i.bi = and i8 %i.be, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = or disjoint i32 %i.bk, %i.bg
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bm = zext nneg i8 %i.ad to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.az, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i.peel ], [ %i.bl, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i.peel ], [ %i.ao, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i.peel ], [ %i.bm, %bb.i ] ; 4 uses
  %i.bn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bn)
  br i1 %i.v, label %.sink.split.i.peel, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.bo, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.bp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.bq, i64 3, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.l ], [ %..i.i.peel.i.peel, %bb.m ], [ 1, %bb.k ]
  %i.br = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.038.sroa.4.0.copyload ; 23 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.peel = icmp ult i64 %i.br, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.peel, label %bb.p, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.o
  %i.bt = icmp eq i64 %i.br, %.sroa.038.sroa.13.0.copyload
  br i1 %i.bt, label %bb.q, label %.loopexit.i

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !189, !noalias !192, !noundef !23
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p, %.split.i.i.i.i.peel, %bb.n
  %i.bx = icmp samesign eq i64 %i.br, %.sroa.038.sroa.13.0.copyload
  br i1 %i.bx, label %.sink.split.i.peel, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.br
  %i.bz = load i8, ptr %i.by, align 1, !noalias !193, !noundef !23 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %.sink.split.i.peel, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel: ; preds = %bb.r
  %i.cb = add nuw nsw i64 %i.br, 1
  %i.cc = icmp samesign ne i64 %i.cb, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.cd, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel, label %.sink.split.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel
  %i.ce = add nuw nsw i64 %i.br, 2
  %i.cf = icmp samesign ne i64 %i.ce, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel, label %.sink.split.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel
  %i.ch = add nuw nsw i64 %i.br, 3
  %i.ci = icmp samesign ne i64 %i.ch, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ci)
  br label %.sink.split.i.peel

.loopexit19.i.peel:                               ; preds = %bb.g
  br i1 %i.v, label %.sink.split.i.peel, label %bb.s

bb.s:                                             ; preds = %.loopexit19.i.peel
  br label %.sink.split.i.peel

.sink.split.i.peel:                               ; preds = %bb.s, %.loopexit19.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel, %bb.r, %bb.q, %bb.j, %.preheader.i.i.preheader
  %.sroa.9123.sroa.0.4.peel = phi i1 [ true, %bb.s ], [ false, %.loopexit19.i.peel ], [ false, %bb.j ], [ %.sroa.9123.sroa.0.0.extract.trunc, %.preheader.i.i.preheader ], [ false, %bb.q ], [ false, %bb.r ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel ]
  %.sroa.51.2.peel = phi i1 [ true, %bb.s ], [ false, %.loopexit19.i.peel ], [ false, %bb.j ], [ true, %.preheader.i.i.preheader ], [ false, %bb.q ], [ false, %bb.r ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel ]
  %.sroa.41.2.peel = phi i64 [ 0, %bb.s ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.j ], [ 0, %.preheader.i.i.preheader ], [ %.sroa.038.sroa.13.0.copyload, %bb.q ], [ %i.br, %bb.r ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel ]
  %.sroa.5.5.peel = phi i64 [ %.sroa.038.sroa.13.0.copyload, %bb.s ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.j ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.i.i.preheader ], [ %.sroa.038.sroa.13.0.copyload, %bb.q ], [ %i.br, %bb.r ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel ]
  %spec.select.pn.peel = phi i64 [ %spec.select, %bb.s ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.j ], [ %spec.select, %.preheader.i.i.preheader ], [ %.sroa.038.sroa.13.0.copyload, %bb.q ], [ %i.br, %bb.r ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel ] ; 2 uses
  %i.cj = icmp eq i64 %spec.select.pn.peel, 0
  br i1 %i.cj, label %.split332.us, label %bb.t

bb.t:                                             ; preds = %.sink.split.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload, i64 noundef %spec.select.pn.peel)
          to label %bb.u unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.ck = load i64, ptr %i.b, align 8, !range !25, !noundef !23 ; 2 uses
  %.not77.peel = icmp eq i64 %i.ck, -1
  br i1 %.not77.peel, label %bb.v, label %.split335.us

bb.v:                                             ; preds = %bb.u
  %.sroa.0178.0.copyload.peel = load ptr, ptr %i.t, align 8
  %.sroa.4179.0.copyload.peel = load i64, ptr %.sroa.4179.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cl = ptrtoint ptr %.sroa.0178.0.copyload.peel to i64 ; 2 uses
  %.0.val.off.i.i.peel = add i64 %i.cl, -1
  %switch.i.i.peel = icmp ult i64 %.0.val.off.i.i.peel, -2
  br i1 %switch.i.i.peel, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel

bb.w:                                             ; preds = %bb.v
  %i.cm = inttoptr i64 %.sroa.4179.0.copyload.peel to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !194
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel: ; preds = %bb.w, %bb.v
  br i1 %.sroa.51.2.peel, label %.thread228, label %.preheader.i.i

.split311.us:                                     ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.sroa.14.0.copyload) ]
  %i.cn = sub i64 %.sroa.038.sroa.15.0.copyload, %.sroa.038.sroa.6.0.copyload
  %umax49.i110.us = tail call i64 @llvm.umax.i64(i64 %.sroa.038.sroa.4.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload)
  %i.co = add i64 %.sroa.038.sroa.4.0.copyload, -1
  %.first_iter = icmp ult i64 %i.co, %.sroa.038.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.038.sroa.4.0.copyload
  %exitcond.not.i112.us470.not = icmp ult i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.15.0.copyload
  %invariant.op536 = sub i64 1, %.sroa.038.sroa.4.0.copyload
  %.not262.us473 = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us, %.split311.us
  %.sroa.19.0308.us = phi i64 [ %.sroa.038.sroa.8.0.copyload, %.split311.us ], [ %.sroa.19.2.us, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us ] ; 3 uses
  %.sroa.31127.0307.us = phi i64 [ %.sroa.038.sroa.10.0.copyload, %.split311.us ], [ %.sroa.31127.2.us, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us ] ; 3 uses
  %.sroa.41.0306.us = phi i64 [ 0, %.split311.us ], [ %.sroa.41.2.us, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us ] ; 7 uses
  %i.cp = icmp eq i64 %.sroa.31127.0307.us, -1
  %i.cq = add i64 %.sroa.19.0308.us, %i.s         ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %.sroa.038.sroa.13.0.copyload ; 2 uses
  br i1 %i.cp, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  br i1 %i.cr, label %.lr.ph.i.us, label %.sink.split.i.us

.lr.ph.i.us:                                      ; preds = %bb.y, %.sink.split.i98.us
  %i.cs = phi i64 [ %.sink.i99.us, %.sink.split.i98.us ], [ %.sroa.31127.0307.us, %bb.y ] ; 3 uses
  %i.ct = phi i64 [ %i.dw, %.sink.split.i98.us ], [ %i.cq, %bb.y ]
  %i.cu = phi i64 [ %.ph71.i.us, %.sink.split.i98.us ], [ %.sroa.19.0308.us, %bb.y ] ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.ct
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !195, !noundef !23
  %i.cx = and i8 %i.cw, 63
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = and i64 %i.cz, %.sroa.038.sroa.7.0.copyload
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.us
  %.sroa.0.0.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %.sroa.038.sroa.4.0.copyload) ; 4 uses
  %umax49.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload)
  %exitcond.not.i.us465.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.038.sroa.15.0.copyload
  br i1 %exitcond.not.i.us465.not, label %.lr.ph, label %.preheader263.us.preheader

bb.aa:                                            ; preds = %bb.ab
  %i.dc = add nuw i64 %.sroa.02.0.i.us466, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.dc, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader263.us.preheader, label %.lr.ph

.preheader263.us.preheader:                       ; preds = %bb.aa, %bb.z
  %i.dd = icmp ult i64 %i.cs, %.sroa.038.sroa.4.0.copyload
  br i1 %i.dd, label %.lr.ph468, label %.preheader263.us.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %.sroa.02.0.i.us466 = phi i64 [ %i.dc, %bb.aa ], [ %.sroa.0.0.i.i.us, %bb.z ] ; 4 uses
  %i.de = add i64 %.sroa.02.0.i.us466, %i.cu      ; 2 uses
  %i.df = icmp ult i64 %i.de, %.sroa.038.sroa.13.0.copyload
  br i1 %i.df, label %bb.ab, label %.split313.us

bb.ab:                                            ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %.sroa.02.0.i.us466
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !196, !noundef !23
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.de
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !195, !noundef !23
  %.not21.i.us = icmp eq i8 %i.dh, %i.dj
  br i1 %.not21.i.us, label %bb.aa, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.reass.reass = add i64 %i.cu, %invariant.op
  %i.dk = add i64 %.reass.reass, %.sroa.02.0.i.us466
  br label %.sink.split.i98.us

.preheader263.us:                                 ; preds = %bb.ae
  %i.dl = icmp ult i64 %i.cs, %i.dm
  br i1 %i.dl, label %.lr.ph468, label %.preheader263.us.preheader._crit_edge

.lr.ph468:                                        ; preds = %.preheader263.us.preheader, %.preheader263.us
  %.sroa.2.0.i.us467 = phi i64 [ %i.dm, %.preheader263.us ], [ %.sroa.038.sroa.4.0.copyload, %.preheader263.us.preheader ]
  %i.dm = add i64 %.sroa.2.0.i.us467, -1          ; 6 uses
  %i.dn = icmp ult i64 %i.dm, %.sroa.038.sroa.15.0.copyload
  br i1 %i.dn, label %bb.ad, label %.split322.us.invoke

bb.ad:                                            ; preds = %.lr.ph468
  %i.do = add i64 %i.dm, %i.cu                    ; 3 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dp, label %bb.ae, label %.split322.us.invoke

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !196, !noundef !23
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.do
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !195, !noundef !23
  %.not.i100.us = icmp eq i8 %i.dr, %i.dt
  br i1 %.not.i100.us, label %.preheader263.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = add i64 %i.cu, %.sroa.038.sroa.6.0.copyload
  br label %.sink.split.i98.us

bb.ag:                                            ; preds = %.lr.ph.i.us
  %i.dv = add i64 %i.cu, %.sroa.038.sroa.15.0.copyload
  br label %.sink.split.i98.us

.sink.split.i98.us:                               ; preds = %bb.ag, %bb.af, %bb.ac
  %.sink.i99.us = phi i64 [ %i.cn, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.ag ] ; 2 uses
  %.ph71.i.us = phi i64 [ %i.du, %bb.af ], [ %i.dk, %bb.ac ], [ %i.dv, %bb.ag ] ; 2 uses
  %i.dw = add i64 %.ph71.i.us, %i.s               ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dx, label %.lr.ph.i.us, label %.sink.split.i.us

.preheader263.us.preheader._crit_edge:            ; preds = %.preheader263.us.preheader, %.preheader263.us
  %i.dy = add i64 %i.cu, %.sroa.038.sroa.15.0.copyload ; 2 uses
  br label %.sink.split.i.us

bb.ah:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  br i1 %i.cr, label %.lr.ph.i107.us, label %.sink.split.i.us

.lr.ph.i107.us:                                   ; preds = %bb.ah, %bb.ao
  %i.dz = phi i64 [ %i.fa, %bb.ao ], [ %i.cq, %bb.ah ]
  %i.ea = phi i64 [ %i.ez, %bb.ao ], [ %.sroa.19.0308.us, %bb.ah ] ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.dz
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !197, !noundef !23
  %i.ed = and i8 %i.ec, 63
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ef, %.sroa.038.sroa.7.0.copyload
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.an, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i107.us
  br i1 %exitcond.not.i112.us470.not, label %.lr.ph472, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.ai
  %i.ei = add nuw i64 %.sroa.02.0.i111.us471, 1   ; 2 uses
  %exitcond.not.i112.us = icmp eq i64 %i.ei, %umax49.i110.us
  br i1 %exitcond.not.i112.us, label %.preheader.us.preheader, label %.lr.ph472

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not262.us473, label %.preheader.us.preheader._crit_edge, label %.lr.ph475

.lr.ph472:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i111.us471 = phi i64 [ %i.ei, %.preheader ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.ej = add i64 %.sroa.02.0.i111.us471, %i.ea   ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %.sroa.038.sroa.13.0.copyload
  br i1 %i.ek, label %bb.ai, label %.split322.us

bb.ai:                                            ; preds = %.lr.ph472
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %.sroa.02.0.i111.us471
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !198, !noundef !23
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.ej
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !197, !noundef !23
  %.not21.i114.us = icmp eq i8 %i.em, %i.eo
  br i1 %.not21.i114.us, label %.preheader, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.reass433.reass = add i64 %i.ea, %invariant.op536
  %i.ep = add i64 %.reass433.reass, %.sroa.02.0.i111.us471
  br label %bb.ao

.preheader.us:                                    ; preds = %bb.al
  %.not262.us = icmp eq i64 %i.eq, 0
  br i1 %.not262.us, label %.preheader.us.preheader._crit_edge, label %.lr.ph475

.lr.ph475:                                        ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i115.us474 = phi i64 [ %i.eq, %.preheader.us ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.us.preheader ]
  %i.eq = add i64 %.sroa.2.0.i115.us474, -1       ; 5 uses
  br i1 %.first_iter, label %bb.ak, label %.split322.us.invoke

bb.ak:                                            ; preds = %.lr.ph475
  %i.er = add i64 %i.eq, %i.ea                    ; 3 uses
  %i.es = icmp ult i64 %i.er, %.sroa.038.sroa.13.0.copyload
  br i1 %i.es, label %bb.al, label %.split322.us.invoke

bb.al:                                            ; preds = %bb.ak
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %i.eq
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !198, !noundef !23
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.er
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !197, !noundef !23
  %.not.i116.us = icmp eq i8 %i.eu, %i.ew
  br i1 %.not.i116.us, label %.preheader.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = add i64 %.sroa.038.sroa.6.0.copyload, %i.ea
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i107.us
  %i.ey = add i64 %i.ea, %.sroa.038.sroa.15.0.copyload
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.aj
  %i.ez = phi i64 [ %i.ep, %bb.aj ], [ %i.ey, %bb.an ], [ %i.ex, %bb.am ] ; 2 uses
  %i.fa = add i64 %i.ez, %i.s                     ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fb, label %.lr.ph.i107.us, label %.sink.split.i.us

.preheader.us.preheader._crit_edge:               ; preds = %.preheader.us.preheader, %.preheader.us
  %i.fc = add i64 %i.ea, %.sroa.038.sroa.15.0.copyload ; 2 uses
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %.sink.split.i98.us, %bb.ao, %.preheader.us.preheader._crit_edge, %bb.ah, %.preheader263.us.preheader._crit_edge, %bb.y
  %.sroa.51.2.us = phi i1 [ false, %.preheader263.us.preheader._crit_edge ], [ false, %.preheader.us.preheader._crit_edge ], [ true, %bb.ao ], [ true, %bb.ah ], [ true, %bb.y ], [ true, %.sink.split.i98.us ]
  %.sroa.41.2.us = phi i64 [ %i.dy, %.preheader263.us.preheader._crit_edge ], [ %i.fc, %.preheader.us.preheader._crit_edge ], [ %.sroa.41.0306.us, %bb.ao ], [ %.sroa.41.0306.us, %bb.ah ], [ %.sroa.41.0306.us, %bb.y ], [ %.sroa.41.0306.us, %.sink.split.i98.us ]
  %.sroa.31127.2.us = phi i64 [ 0, %.preheader263.us.preheader._crit_edge ], [ -1, %.preheader.us.preheader._crit_edge ], [ -1, %bb.ao ], [ -1, %bb.ah ], [ %.sroa.31127.0307.us, %bb.y ], [ %.sink.i99.us, %.sink.split.i98.us ]
  %.sroa.19.2.us = phi i64 [ %i.dy, %.preheader263.us.preheader._crit_edge ], [ %i.fc, %.preheader.us.preheader._crit_edge ], [ %.sroa.038.sroa.13.0.copyload, %bb.ao ], [ %.sroa.038.sroa.13.0.copyload, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload, %bb.y ], [ %.sroa.038.sroa.13.0.copyload, %.sink.split.i98.us ]
  %spec.select.pn.us = phi i64 [ %i.cu, %.preheader263.us.preheader._crit_edge ], [ %i.ea, %.preheader.us.preheader._crit_edge ], [ %spec.select, %bb.ao ], [ %spec.select, %bb.ah ], [ %spec.select, %bb.y ], [ %spec.select, %.sink.split.i98.us ] ; 2 uses
  %i.fd = icmp eq i64 %spec.select.pn.us, %.sroa.41.0306.us
  br i1 %i.fd, label %.split332.us, label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i.us
  %.sroa.4.1.i.us = sub nuw i64 %spec.select.pn.us, %.sroa.41.0306.us
  %.sroa.0.1.i.us = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.41.0306.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us, i64 noundef %.sroa.4.1.i.us)
          to label %bb.aq unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  %i.fe = load i64, ptr %i.b, align 8, !range !25, !noundef !23 ; 2 uses
  %.not77.us = icmp eq i64 %i.fe, -1
  br i1 %.not77.us, label %bb.ar, label %.split335.us

bb.ar:                                            ; preds = %bb.aq
  %.sroa.0178.0.copyload.us = load ptr, ptr %i.t, align 8
  %.sroa.4179.0.copyload.us = load i64, ptr %.sroa.4179.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ff = ptrtoint ptr %.sroa.0178.0.copyload.us to i64 ; 2 uses
  %.0.val.off.i.i.us = add i64 %i.ff, -1
  %switch.i.i.us = icmp ult i64 %.0.val.off.i.i.us, -2
  br i1 %switch.i.i.us, label %bb.as, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us

bb.as:                                            ; preds = %bb.ar
  %i.fg = inttoptr i64 %.sroa.4179.0.copyload.us to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fg, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !194
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us: ; preds = %bb.as, %bb.ar
  br i1 %.sroa.51.2.us, label %.thread228, label %bb.x

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.ap, %.thread207, %.loopexit.i, %.split322.us.invoke, %.invoke, %bb.bm, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader.i.i:                                   ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit
  %.sroa.5.0309 = phi i64 [ %.sroa.5.5, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit ], [ %.sroa.5.5.peel, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel ] ; 15 uses
  %.sroa.41.0306 = phi i64 [ %.sroa.41.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit ], [ %.sroa.41.2.peel, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel ] ; 4 uses
  %.sroa.9123.sroa.0.0304 = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit ], [ %.sroa.9123.sroa.0.4.peel, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel ] ; 2 uses
  %i.fh = icmp eq i64 %.sroa.5.0309, 0
  br i1 %i.fh, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.5.0309, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i, label %bb.au, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.at
  %i.fi = icmp eq i64 %.sroa.5.0309, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fi, label %bb.av, label %.loopexit.i

bb.au:                                            ; preds = %bb.at
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.5.0309
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !189, !noalias !190, !noundef !23
  %i.fl = icmp sgt i8 %i.fk, -65
  br i1 %i.fl, label %bb.av, label %.loopexit.i

bb.av:                                            ; preds = %bb.au, %.split.i.i.i.peel.i, %.preheader.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.5.0309 ; 4 uses
  %i.fn = icmp samesign eq i64 %.sroa.5.0309, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fn, label %.loopexit19.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fo = load i8, ptr %i.fm, align 1, !noalias !191, !noundef !23 ; 5 uses
  %i.fp = icmp sgt i8 %i.fo, -1
  br i1 %i.fp, label %bb.ax, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i: ; preds = %bb.aw
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fr = and i8 %i.fo, 31
  %i.fs = zext nneg i8 %i.fr to i32               ; 3 uses
  %i.ft = add nuw nsw i64 %.sroa.5.0309, 1
  %i.fu = icmp samesign ne i64 %i.ft, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = load i8, ptr %i.fq, align 1, !noalias !191, !noundef !23
  %i.fw = shl nuw nsw i32 %i.fs, 6
  %i.fx = and i8 %i.fv, 63
  %i.fy = zext nneg i8 %i.fx to i32               ; 2 uses
  %i.fz = or disjoint i32 %i.fw, %i.fy
  %i.ga = icmp samesign ugt i8 %i.fo, -33
  br i1 %i.ga, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i, label %bb.ay

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.gc = add nuw nsw i64 %.sroa.5.0309, 2
  %i.gd = icmp samesign ne i64 %i.gc, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = load i8, ptr %i.gb, align 1, !noalias !191, !noundef !23
  %i.gf = shl nuw nsw i32 %i.fy, 6
  %i.gg = and i8 %i.ge, 63
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gf, %i.gh            ; 2 uses
  %i.gj = shl nuw nsw i32 %i.fs, 12
  %i.gk = or disjoint i32 %i.gi, %i.gj
  %i.gl = icmp samesign ugt i8 %i.fo, -17
  br i1 %i.gl, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i, label %bb.ay

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.gn = add nuw nsw i64 %.sroa.5.0309, 3
  %i.go = icmp samesign ne i64 %i.gn, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = load i8, ptr %i.gm, align 1, !noalias !191, !noundef !23
  %i.gq = shl nuw nsw i32 %i.fs, 18
  %i.gr = and i32 %i.gq, 1835008
  %i.gs = shl nuw nsw i32 %i.gi, 6
  %i.gt = and i8 %i.gp, 63
  %i.gu = zext nneg i8 %i.gt to i32
  %i.gv = or disjoint i32 %i.gs, %i.gu
  %i.gw = or disjoint i32 %i.gv, %i.gr
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gx = zext nneg i8 %i.fo to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.gk, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i ], [ %i.gw, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i ], [ %i.fz, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i ], [ %i.gx, %bb.ax ] ; 4 uses
  %i.gy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.gy)
  br i1 %.sroa.9123.sroa.0.0304, label %.sink.split.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.gz, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ha = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.ha, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.hb, i64 3, i64 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.ba ], [ %..i.i.peel.i, %bb.bb ], [ 1, %bb.az ]
  %i.hc = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.5.0309 ; 23 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i.i.i = icmp ult i64 %i.hc, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.i, label %bb.be, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.bd
  %i.he = icmp eq i64 %i.hc, %.sroa.038.sroa.13.0.copyload
  br i1 %i.he, label %bb.bf, label %.loopexit.i

bb.be:                                            ; preds = %bb.bd
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.hc
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !189, !noalias !192, !noundef !23
  %i.hh = icmp sgt i8 %i.hg, -65
  br i1 %i.hh, label %bb.bf, label %.loopexit.i

bb.bf:                                            ; preds = %bb.be, %.split.i.i.i.i, %bb.bc
  %i.hi = icmp samesign eq i64 %i.hc, %.sroa.038.sroa.13.0.copyload
  br i1 %i.hi, label %.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.hc
  %i.hk = load i8, ptr %i.hj, align 1, !noalias !193, !noundef !23 ; 3 uses
  %i.hl = icmp sgt i8 %i.hk, -1
  br i1 %i.hl, label %.sink.split.i, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i: ; preds = %bb.bg
  %i.hm = add nuw nsw i64 %i.hc, 1
  %i.hn = icmp samesign ne i64 %i.hm, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.hn)
  %i.ho = icmp samesign ugt i8 %i.hk, -33
  br i1 %i.ho, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i
  %i.hp = add nuw nsw i64 %i.hc, 2
  %i.hq = icmp samesign ne i64 %i.hp, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.hq)
  %i.hr = icmp samesign ugt i8 %i.hk, -17
  br i1 %i.hr, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i
  %i.hs = add nuw nsw i64 %i.hc, 3
  %i.ht = icmp samesign ne i64 %i.hs, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ht)
  br label %.sink.split.i

.loopexit.i:                                      ; preds = %bb.be, %.split.i.i.i.i, %bb.au, %.split.i.i.i.peel.i, %bb.p, %.split.i.i.i.i.peel, %bb.f, %.split.i.i.i.peel.i.peel
  %.lcssa12.i = phi i64 [ %.sroa.038.sroa.4.0.copyload, %.split.i.i.i.peel.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.f ], [ %i.br, %.split.i.i.i.i.peel ], [ %i.br, %bb.p ], [ %i.hc, %bb.be ], [ %i.hc, %.split.i.i.i.i ], [ %.sroa.5.0309, %bb.au ], [ %.sroa.5.0309, %.split.i.i.i.peel.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload, i64 noundef %.sroa.038.sroa.13.0.copyload, i64 noundef %.lcssa12.i, i64 noundef %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1320) #68
          to label %.noexc unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit.i
  unreachable

.loopexit19.i:                                    ; preds = %bb.av
  br i1 %.sroa.9123.sroa.0.0304, label %.sink.split.i, label %bb.bh

.split322.us:                                     ; preds = %.lr.ph472
  %i.hu = add i64 %i.ea, %.sroa.038.sroa.4.0.copyload
  %umax.i113 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, i64 %i.hu)
  br label %.split322.us.invoke

.split322.us.invoke:                              ; preds = %bb.ad, %.lr.ph468, %bb.ak, %.lr.ph475, %.split313.us, %.split322.us
  %i.hv = phi i64 [ %umax.i113, %.split322.us ], [ %umax.i, %.split313.us ], [ %i.eq, %.lr.ph475 ], [ %i.er, %bb.ak ], [ %i.dm, %.lr.ph468 ], [ %i.do, %bb.ad ]
  %i.hw = phi i64 [ %.sroa.038.sroa.13.0.copyload, %.split322.us ], [ %.sroa.038.sroa.13.0.copyload, %.split313.us ], [ %.sroa.038.sroa.15.0.copyload, %.lr.ph475 ], [ %.sroa.038.sroa.13.0.copyload, %bb.ak ], [ %.sroa.038.sroa.15.0.copyload, %.lr.ph468 ], [ %.sroa.038.sroa.13.0.copyload, %bb.ad ]
  %i.hx = phi ptr [ @88, %.split322.us ], [ @88, %.split313.us ], [ @86, %.lr.ph475 ], [ @87, %bb.ak ], [ @86, %.lr.ph468 ], [ @87, %bb.ad ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hv, i64 noundef range(i64 0, -9223372036854775808) %i.hw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hx) #68
          to label %.split322.us.cont unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.split322.us.cont:                                ; preds = %.split322.us.invoke
  unreachable

.split313.us:                                     ; preds = %.lr.ph
  %i.hy = add i64 %i.cu, %.sroa.0.0.i.i.us
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, i64 %i.hy)
  br label %.split322.us.invoke

bb.bh:                                            ; preds = %.loopexit19.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i, %bb.bg, %bb.bf, %bb.ay, %.loopexit19.i, %bb.bh
  %.sroa.51.2 = phi i1 [ true, %bb.bh ], [ false, %.loopexit19.i ], [ false, %bb.ay ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i ], [ false, %bb.bf ], [ false, %bb.bg ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i ]
  %.sroa.41.2 = phi i64 [ %.sroa.41.0306, %bb.bh ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0309, %bb.ay ], [ %i.hc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.bf ], [ %i.hc, %bb.bg ], [ %i.hc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i ], [ %i.hc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i ]
  %.sroa.5.5 = phi i64 [ %.sroa.038.sroa.13.0.copyload, %bb.bh ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0309, %bb.ay ], [ %i.hc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.bf ], [ %i.hc, %bb.bg ], [ %i.hc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i ], [ %i.hc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i ]
  %spec.select.pn = phi i64 [ %spec.select, %bb.bh ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0309, %bb.ay ], [ %i.hc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.bf ], [ %i.hc, %bb.bg ], [ %i.hc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i ], [ %i.hc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i ] ; 2 uses
  %i.hz = icmp eq i64 %spec.select.pn, %.sroa.41.0306
  br i1 %i.hz, label %.split332.us, label %bb.bm

.thread228:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us
  %.not.i90 = icmp slt i64 %spec.select, 0
  br i1 %.not.i90, label %.invoke, label %bb.bi, !prof !24

bb.bi:                                            ; preds = %.thread228
  %i.ia = icmp eq i64 %spec.select, 0
  br i1 %i.ia, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !199
  %i.ib = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %spec.select, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !199 ; 3 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %.invoke, label %bb.bk

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244: ; preds = %bb.bi, %bb.bk
  %i.id = phi ptr [ %i.ib, %bb.bk ], [ inttoptr (i64 1 to ptr), %bb.bi ]
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select, ptr %i.ie, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.id, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.select, ptr %.sroa.556.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  %.val.i91 = load i64, ptr %1, align 8, !alias.scope !200 ; 2 uses
  %i.if = icmp eq i64 %.val.i91, 0
  br i1 %i.if, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84.sink.split

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ib, ptr nonnull align 1 %i.l, i64 %spec.select, i1 false)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84.sink.split: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244, %bb.c
  %.val.i91.sink = phi i64 [ %.val.i82, %bb.c ], [ %.val.i91, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244 ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i91.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !23
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84.sink.split, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244, %bb.c
  ret void

.split332.us:                                     ; preds = %.sink.split.i.peel, %.sink.split.i, %.sink.split.i.us
  %.not.i94 = icmp slt i64 %.val79, 0
  br i1 %.not.i94, label %.invoke, label %bb.bl, !prof !24

bb.bl:                                            ; preds = %.split332.us
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !201
  %i.ig = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.val79, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !201 ; 3 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %.invoke, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit96.thread255

bb.bm:                                            ; preds = %.sink.split.i
  %.sroa.4.1.i = sub nuw i64 %spec.select.pn, %.sroa.41.0306
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.41.0306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i)
          to label %bb.bn unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.invoke:                                          ; preds = %bb.bl, %.split332.us, %bb.bj, %.thread228
  %i.ii = phi i64 [ 0, %.thread228 ], [ 1, %bb.bj ], [ 1, %bb.bl ], [ 0, %.split332.us ]
  %i.ij = phi i64 [ %spec.select, %.thread228 ], [ %spec.select, %bb.bj ], [ %.val79, %bb.bl ], [ %.val79, %.split332.us ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.ii, i64 %i.ij) #68
          to label %.cont unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit96.thread255: ; preds = %bb.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr nonnull align 1 %.val, i64 %.val79, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val79, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ig, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val79, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.bn:                                            ; preds = %bb.bm
  %i.ik = load i64, ptr %i.b, align 8, !range !25, !noundef !23 ; 2 uses
  %.not77 = icmp eq i64 %i.ik, -1
  br i1 %.not77, label %bb.bu, label %.split335.us

.split335.us:                                     ; preds = %bb.u, %bb.bn, %bb.aq
  %.us-phi336 = phi i64 [ %i.fe, %bb.aq ], [ %i.ck, %bb.u ], [ %i.ik, %bb.bn ] ; 3 uses
  %.sroa.4187.0.copyload = load ptr, ptr %i.t, align 8 ; 3 uses
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6189.0.copyload = load i64, ptr %.sroa.6189.0..sroa_idx, align 8 ; 2 uses
  %i.il = load <2 x i64>, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7190.0.copyload = load ptr, ptr %.sroa.7190.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8191.0.copyload = load i64, ptr %.sroa.8191.0..sroa_idx, align 8
  %.not.i.i97 = icmp slt i64 %.val79, 0
  br i1 %.not.i.i97, label %bb.bs, label %bb.bo, !prof !24

bb.bo:                                            ; preds = %.split335.us
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !202
  %i.im = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.val79, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !202 ; 3 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.bs, label %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs63DIHKhvmTb_10lance_core.exit

bb.bp:                                            ; preds = %bb.bs
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ip = icmp eq i64 %.us-phi336, 0
  br i1 %i.ip, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4187.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4187.0.copyload, i64 noundef %.us-phi336, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !203
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.bq, %bb.bp
  %i.iq = icmp eq i64 %.sroa.6189.0.copyload, 0
  br i1 %i.iq, label %.body, label %bb.br

bb.br:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7190.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7190.0.copyload, i64 noundef %.sroa.6189.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !204
  br label %.body

bb.bs:                                            ; preds = %bb.bo, %.split335.us
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.bo ], [ 0, %.split335.us ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.val79) #68
          to label %bb.bt unwind label %bb.bp, !noalias !205

_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.im, ptr nonnull readonly align 1 %.val, i64 %.val79, i1 false), !noalias !206
  %i.ir = ptrtoint ptr %i.im to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.is = inttoptr i64 %.val79 to ptr
  store i64 %.val79, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ir, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.is, ptr %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx, align 8
  %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.us-phi336, ptr %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4187.0.copyload, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.571.sroa.4.0..sroa.571.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.il, ptr %.sroa.571.sroa.4.0..sroa.571.0..sroa_idx.sroa_idx, align 8
  %.sroa.571.sroa.6.0..sroa.571.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.7190.0.copyload, ptr %.sroa.571.sroa.6.0..sroa.571.0..sroa_idx.sroa_idx, align 8
  %.sroa.571.sroa.7.0..sroa.571.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.8191.0.copyload, ptr %.sroa.571.sroa.7.0..sroa.571.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.bn
  %.sroa.0178.0.copyload = load ptr, ptr %i.t, align 8
  %.sroa.4179.0.copyload = load i64, ptr %.sroa.4179.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.it = ptrtoint ptr %.sroa.0178.0.copyload to i64 ; 2 uses
  %.0.val.off.i.i = add i64 %i.it, -1
  %switch.i.i = icmp ult i64 %.0.val.off.i.i, -2
  br i1 %switch.i.i, label %bb.bv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit

bb.bv:                                            ; preds = %bb.bu
  %i.iu = inttoptr i64 %.sroa.4179.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iu) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef %i.it, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !194
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.bv, %bb.bu
  br i1 %.sroa.51.2, label %.thread228, label %.preheader.i.i, !llvm.loop !185

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvMNtCscI6d9CVNmLh_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs63DIHKhvmTb_10lance_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs63DIHKhvmTb_10lance_core.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs63DIHKhvmTb_10lance_core.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs63DIHKhvmTb_10lance_core.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !233, !noundef !23 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !233, !noundef !23
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
end_hunk_0
