Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.12?download=true
inline.NumInlined: 1208
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvXsu_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtNtCskxN0Kp1MEon_2h25proto7streams12flow_control6WindowENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskeugdADtBsi_12pingora_core:bb.a
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCskxN0Kp1MEon_2h25proto7streams12flow_control6WindowNtB6_7Display3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_12DisplayValueRReENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRReNtB6_7Display3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !40, !noundef !18
  switch i64 %i.a, label %default.unreachable117 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable117:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !range !847, !noundef !18
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.t, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !18, !noundef !18 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load i64, ptr %i.h, align 8, !noundef !18 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !18 ; 5 uses
  %.not41 = icmp ult i64 %i.k, %i.i
  br i1 %.not41, label %bb.u, label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !18 ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load i64, ptr %i.n, align 8, !noundef !18 ; 18 uses
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.t, label %bb.y

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !847, !noundef !18 ; 2 uses
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  %i.t = xor i8 %i.r, 1
  store i8 %i.t, ptr %i.q, align 8
  %i.u = load i64, ptr %i.b, align 8, !noundef !18 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !18, !noundef !18 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load i64, ptr %i.x, align 8, !noundef !18 ; 8 uses
  %i.z = icmp eq i64 %i.u, 0
  br i1 %i.z, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp ult i64 %i.u, %i.y
  br i1 %.not.i, label %bb.g, label %.split.i

.split.i:                                         ; preds = %bb.f
  %i.aa = icmp eq i64 %i.u, %i.y
  br i1 %i.aa, label %bb.h, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !2646, !noundef !18
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %.split.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u ; 4 uses
  %i.af = icmp samesign eq i64 %i.u, %i.y
  br i1 %i.af, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.ae, align 1, !noalias !2649, !noundef !18 ; 5 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.j, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i: ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.aj = and i8 %i.ag, 31
  %i.ak = zext nneg i8 %i.aj to i32               ; 3 uses
  %i.al = add nuw nsw i64 %i.u, 1
  %i.am = icmp samesign ne i64 %i.al, %i.y
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load i8, ptr %i.ai, align 1, !noalias !2649, !noundef !18
  %i.ao = shl nuw nsw i32 %i.ak, 6
  %i.ap = and i8 %i.an, 63
  %i.aq = zext nneg i8 %i.ap to i32               ; 2 uses
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = icmp samesign ugt i8 %i.ag, -33
  br i1 %i.as, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.at = zext nneg i8 %i.ag to i32
  br label %bb.l

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.av = add nuw nsw i64 %i.u, 2
  %i.aw = icmp samesign ne i64 %i.av, %i.y
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i8, ptr %i.au, align 1, !noalias !2649, !noundef !18
  %i.ay = shl nuw nsw i32 %i.aq, 6
  %i.az = and i8 %i.ax, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba            ; 2 uses
  %i.bc = shl nuw nsw i32 %i.ak, 12
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = icmp samesign ugt i8 %i.ag, -17
  br i1 %i.be, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i, label %bb.l

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.bg = add nuw nsw i64 %i.u, 3
  %i.bh = icmp samesign ne i64 %i.bg, %i.y
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.bf, align 1, !noalias !2649, !noundef !18
  %i.bj = shl nuw nsw i32 %i.ak, 18
  %i.bk = and i32 %i.bj, 1835008
  %i.bl = shl nuw nsw i32 %i.bb, 6
  %i.bm = and i8 %i.bi, 63
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = or disjoint i32 %i.bo, %i.bk
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y, i64 noundef %i.u, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #35
  unreachable

bb.l:                                             ; preds = %bb.j, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.bd, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i ], [ %i.bp, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i ], [ %i.ar, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i ], [ %i.at, %bb.j ] ; 4 uses
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bq)
  br i1 %i.s, label %bb.o, label %bb.p

bb.m:                                             ; preds = %bb.h
  br i1 %i.s, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.c, align 2
  br label %bb.t

bb.o:                                             ; preds = %bb.l, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.bs, align 8
  br label %bb.t

bb.p:                                             ; preds = %bb.l
  %i.bt = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.bt, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.bu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.bv, i64 3, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.sroa.01.0 = phi i64 [ 2, %bb.q ], [ %., %bb.r ], [ 1, %bb.p ]
  %i.bw = add i64 %.sroa.01.0, %i.u               ; 2 uses
  store i64 %i.bw, ptr %i.b, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bw, ptr %i.by, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.d, %bb.c, %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskeugdADtBsi_12pingora_core.exit, %bb.n, %bb.o, %bb.s, %.loopexit59, %bb.w, %.loopexit
  %.sink = phi i64 [ 0, %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskeugdADtBsi_12pingora_core.exit ], [ 2, %bb.n ], [ 0, %bb.o ], [ 1, %bb.s ], [ 1, %.loopexit59 ], [ 0, %bb.w ], [ 1, %.loopexit ], [ 2, %bb.c ], [ 2, %bb.d ], [ 2, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.u:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.ca = load i8, ptr %i.bz, align 1, !noundef !18
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = load i8, ptr %i.cb, align 8, !noundef !18
  %i.cd = icmp eq i8 %i.ca, %i.cc
  %i.ce = add nuw i64 %i.k, 1                     ; 4 uses
  br i1 %i.cd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not42 = icmp ult i64 %i.ce, %i.i
  br i1 %.not42, label %.preheader.split, label %.loopexit

bb.w:                                             ; preds = %bb.u
  store i64 %i.ce, ptr %i.j, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ce, ptr %i.cg, align 8
  br label %bb.t

.preheader.split:                                 ; preds = %bb.v, %bb.x
  %.sroa.08.0 = phi i64 [ %i.cj, %bb.x ], [ %i.ce, %bb.v ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.08.0
  %3 = load i8, ptr %2, align 1, !noundef !18
  %4 = icmp sgt i8 %3, -65
  br i1 %4, label %.loopexit, label %bb.x

.loopexit:                                        ; preds = %.preheader.split, %bb.x, %bb.v
  %.sroa.02.0 = phi i64 [ %i.i, %bb.v ], [ %i.i, %bb.x ], [ %.sroa.08.0, %.preheader.split ] ; 2 uses
  store i64 %.sroa.02.0, ptr %i.j, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0, ptr %i.ci, align 8
  br label %bb.t

bb.x:                                             ; preds = %.preheader.split
  %i.cj = add i64 %.sroa.08.0, 1                  ; 2 uses
  %exitcond96.not = icmp eq i64 %i.cj, %i.i
  br i1 %exitcond96.not, label %.loopexit, label %.preheader.split

bb.y:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !18 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, -1                   ; 2 uses
  %i.co = load ptr, ptr %i.ck, align 8, !nonnull !18, !noundef !18 ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !18, !noundef !18 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !18 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  %i.ct = add nsw i64 %i.cs, -1                   ; 3 uses
  %i.cu = add i64 %i.m, %i.ct                     ; 3 uses
  %i.cv = icmp ult i64 %i.cu, %i.o
  br i1 %i.cv, label %.lr.ph.i, label %.loopexit59

.lr.ph.i:                                         ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !2655, !noalias !2661 ; 2 uses
  %i.cz = load i64, ptr %i.cw, align 8, !alias.scope !2655, !noalias !2661 ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !2655, !noalias !2661 ; 2 uses
  %i.dc = sub i64 %i.cs, %i.db
  %i.dd = add i64 %i.m, 1
  %invariant.op.i = sub i64 %i.dd, %i.cz          ; 2 uses
  %i.de = add i64 %i.db, %i.m                     ; 2 uses
  %i.df = add i64 %i.m, %i.cs                     ; 4 uses
  br i1 %i.cn, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 range(i64 0, -9223372036854775808) %i.cs)
  %i.dg = add i64 %i.cz, -1
  %.first_iter = icmp ult i64 %i.dg, %i.cs
  %exitcond.not.i.us159.not = icmp ult i64 %i.cz, %i.cs
  %.not73162 = icmp eq i64 %i.cz, 0
  br label %bb.z

bb.z:                                             ; preds = %.loopexit137, %.lr.ph.i.split.us
  %i.dh = phi i64 [ %i.cu, %.lr.ph.i.split.us ], [ %i.ed, %.loopexit137 ]
  %i.di = phi i64 [ %i.m, %.lr.ph.i.split.us ], [ %.sink135, %.loopexit137 ] ; 2 uses
  %.not.i46.us = icmp eq i64 %i.m, %i.di
  br i1 %.not.i46.us, label %bb.aa, label %.split.us

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dh
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !2657, !noalias !2662, !noundef !18
  %i.dl = and i8 %i.dk, 63
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.cy
  %.not20.i.us = icmp eq i64 %i.do, 0
  br i1 %.not20.i.us, label %.loopexit137, label %.preheader75.preheader.a

.preheader75.preheader.a:                         ; preds = %bb.aa
  br i1 %exitcond.not.i.us159.not, label %.lr.ph161.a, label %.preheader74.preheader

.preheader75.a:                                   ; preds = %.lr.ph161.a
  %i.dp = add i64 %.sroa.04.0.i.us160, 1          ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.dp, %umax.i.us
  br i1 %exitcond.not.i.us, label %.preheader74.preheader, label %.lr.ph161.a

.preheader74.preheader:                           ; preds = %.preheader75.a, %.preheader75.preheader.a
  br i1 %.not73162, label %.split69.us, label %.lr.ph164

.lr.ph161.a:                                      ; preds = %.preheader75.preheader.a, %.preheader75.a
  %.sroa.04.0.i.us160 = phi i64 [ %i.dp, %.preheader75.a ], [ %i.cz, %.preheader75.preheader.a ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.04.0.i.us160
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !2659, !noalias !2663, !noundef !18
  %i.ds = add i64 %.sroa.04.0.i.us160, %i.m       ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.o
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !2657, !noalias !2662, !noundef !18
  %.not22.i.us = icmp eq i8 %i.dr, %i.dv
  br i1 %.not22.i.us, label %.preheader75.a, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph161.a
  %.reass.i.us = add i64 %invariant.op.i, %.sroa.04.0.i.us160
  br label %.loopexit137

.preheader74:                                     ; preds = %bb.ac
  %.not73 = icmp eq i64 %i.dw, 0
  br i1 %.not73, label %.split69.us, label %.lr.ph164

.lr.ph164:                                        ; preds = %.preheader74.preheader, %.preheader74
  %.sroa.2.0.i.us163 = phi i64 [ %i.dw, %.preheader74 ], [ %i.cz, %.preheader74.preheader ]
  %i.dw = add i64 %.sroa.2.0.i.us163, -1          ; 5 uses
  br i1 %.first_iter, label %bb.ac, label %.split71.us

bb.ac:                                            ; preds = %.lr.ph164
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !2659, !noalias !2663, !noundef !18
  %i.dz = add i64 %i.dw, %i.m                     ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.o
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dz
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !2657, !noalias !2662, !noundef !18
  %.not21.i.us = icmp eq i8 %i.dy, %i.ec
  br i1 %.not21.i.us, label %.preheader74, label %.loopexit137

.loopexit137:                                     ; preds = %bb.ac, %bb.aa, %bb.ab
  %.sink135 = phi i64 [ %i.df, %bb.aa ], [ %.reass.i.us, %bb.ab ], [ %i.de, %bb.ac ] ; 3 uses
  store i64 %.sink135, ptr %i.l, align 8, !alias.scope !2655, !noalias !2661
  %i.ed = add i64 %.sink135, %i.ct                ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.o
  br i1 %i.ee, label %bb.z, label %.loopexit59

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.sink.split.i
  %i.ef = phi i64 [ %.sink55.i, %.sink.split.i ], [ %i.cm, %.lr.ph.i ] ; 3 uses
  %i.eg = phi i64 [ %i.eo, %.sink.split.i ], [ %i.cu, %.lr.ph.i ]
  %i.eh = phi i64 [ %.sink136, %.sink.split.i ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.not.i46 = icmp eq i64 %i.m, %i.eh
  br i1 %.not.i46, label %bb.ad, label %.split.us

bb.ad:                                            ; preds = %.lr.ph.i.split
  %i.ei = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !2657, !noalias !2662, !noundef !18
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = and i64 %i.em, %i.cy
  %.not20.i = icmp eq i64 %i.en, 0
  br i1 %.not20.i, label %.sink.split.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.cz) ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -9223372036854775808) %i.cs)
  %exitcond.not.i155.not = icmp ult i64 %..i.i, %i.cs
  br i1 %exitcond.not.i155.not, label %.lr.ph, label %.preheader76.preheader

.sink.split.i:                                    ; preds = %bb.ah, %bb.ad, %bb.ai
  %.sink136 = phi i64 [ %i.df, %bb.ad ], [ %.reass.i, %bb.ai ], [ %i.de, %bb.ah ] ; 3 uses
  %.sink55.i = phi i64 [ 0, %bb.ad ], [ 0, %bb.ai ], [ %i.dc, %bb.ah ] ; 2 uses
  store i64 %.sink136, ptr %i.l, align 8, !alias.scope !2655, !noalias !2661
  store i64 %.sink55.i, ptr %i.cl, align 8, !alias.scope !2655, !noalias !2661
  %i.eo = add i64 %.sink136, %i.ct                ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.o
  br i1 %i.ep, label %.lr.ph.i.split, label %.loopexit59

bb.af:                                            ; preds = %.lr.ph
  %i.eq = add i64 %.sroa.04.0.i156, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eq, %umax.i
  br i1 %exitcond.not.i, label %.preheader76.preheader, label %.lr.ph

.preheader76.preheader:                           ; preds = %bb.af, %bb.ae
  %i.er = icmp ult i64 %i.ef, %i.cz
  br i1 %i.er, label %.lr.ph158, label %.split69.us

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.04.0.i156 = phi i64 [ %i.eq, %bb.af ], [ %..i.i, %bb.ae ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.04.0.i156
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !2659, !noalias !2663, !noundef !18
  %i.eu = add i64 %.sroa.04.0.i156, %i.m          ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.o
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eu
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !2657, !noalias !2662, !noundef !18
  %.not22.i = icmp eq i8 %i.et, %i.ex
  br i1 %.not22.i, label %bb.af, label %bb.ai

.preheader76:                                     ; preds = %bb.ah
  %i.ey = icmp ult i64 %i.ef, %i.ez
  br i1 %i.ey, label %.lr.ph158, label %.split69.us

.split69.us:                                      ; preds = %.preheader76.preheader, %.preheader76, %.preheader74.preheader, %.preheader74
  store i64 %i.df, ptr %i.l, align 8, !alias.scope !2655, !noalias !2661
  br i1 %i.cn, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskeugdADtBsi_12pingora_core.exit, label %bb.ag

.lr.ph158:                                        ; preds = %.preheader76.preheader, %.preheader76
  %.sroa.2.0.i157 = phi i64 [ %i.ez, %.preheader76 ], [ %i.cz, %.preheader76.preheader ]
  %i.ez = add i64 %.sroa.2.0.i157, -1             ; 6 uses
  %i.fa = icmp ult i64 %i.ez, %i.cs
  br i1 %i.fa, label %bb.ah, label %.split71.us

bb.ag:                                            ; preds = %.split69.us
  store i64 0, ptr %i.cl, align 8, !alias.scope !2655, !noalias !2661
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskeugdADtBsi_12pingora_core.exit

bb.ah:                                            ; preds = %.lr.ph158
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !2659, !noalias !2663, !noundef !18
  %i.fd = add i64 %i.ez, %i.m                     ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.o
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fd
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !2657, !noalias !2662, !noundef !18
  %.not21.i = icmp eq i8 %i.fc, %i.fg
  br i1 %.not21.i, label %.preheader76, label %.sink.split.i

.split71.us:                                      ; preds = %.lr.ph158, %.lr.ph164
  %.us-phi72 = phi i64 [ %i.dw, %.lr.ph164 ], [ %i.ez, %.lr.ph158 ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi72, i64 noundef range(i64 0, -9223372036854775808) %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #35, !noalias !2664
  unreachable

bb.ai:                                            ; preds = %.lr.ph
  %.reass.i = add i64 %invariant.op.i, %.sroa.04.0.i156
  br label %.sink.split.i

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECskeugdADtBsi_12pingora_core.exit: ; preds = %.split69.us, %bb.ag
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.fh, align 8, !alias.scope !2652, !noalias !2665
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.df, ptr %i.fi, align 8, !alias.scope !2652, !noalias !2665
  br label %bb.t

.split.us:                                        ; preds = %.lr.ph.i.split, %bb.z
  %.us-phi = phi i64 [ %i.di, %bb.z ], [ %i.eh, %.lr.ph.i.split ] ; 5 uses
  %.not = icmp ult i64 %.us-phi, %i.o
  br i1 %.not, label %.preheader58.split, label %.loopexit59

.preheader58.split:                               ; preds = %.split.us, %bb.aj
  %.sroa.013.0 = phi i64 [ %i.fm, %bb.aj ], [ %.us-phi, %.split.us ] ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.013.0
  %6 = load i8, ptr %5, align 1, !noundef !18
  %7 = icmp sgt i8 %6, -65
  br i1 %7, label %.loopexit59, label %bb.aj

.loopexit59:                                      ; preds = %.sink.split.i, %.loopexit137, %.preheader58.split, %bb.aj, %bb.y, %.split.us
  %i.fj = phi i64 [ %.us-phi, %.split.us ], [ %i.o, %bb.y ], [ %.us-phi, %.preheader58.split ], [ %i.o, %.loopexit137 ], [ %.us-phi, %bb.aj ], [ %i.o, %.sink.split.i ]
  %.sroa.018.0 = phi i64 [ %i.o, %.split.us ], [ %i.o, %bb.y ], [ %i.o, %bb.aj ], [ %i.o, %.loopexit137 ], [ %.sroa.013.0, %.preheader58.split ], [ %i.o, %.sink.split.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.fj, i64 %.sroa.018.0)
  store i64 %..i, ptr %i.l, align 8
  store i64 %i.m, ptr %i.fk, align 8
  store i64 %.sroa.018.0, ptr %i.fl, align 8
  br label %bb.t

bb.aj:                                            ; preds = %.preheader58.split
  %i.fm = add nuw i64 %.sroa.013.0, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.fm, %i.o
  br i1 %exitcond.not, label %.loopexit59, label %.preheader58.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRINtNtCskxN0Kp1MEon_2h25frame5FrameINtNtNtNtB13_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @158) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRINtNtCskxN0Kp1MEon_2h26server11HandshakingINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtB5_5Value6recordB2i_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRINtNtNtCskxN0Kp1MEon_2h25frame4data4DataINtNtNtNtB15_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtCskxN0Kp1MEon_2h25frame5FrameENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskKLDkoKarTP_4core2io5error9ErrorKindENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame13window_update12WindowUpdateENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame4data4DataENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame4ping4PingENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame5reset5ResetENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame6reason6ReasonENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame7headers11PushPromiseENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame7headers7HeadersENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame8priority8PriorityENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @171) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame8settings8SettingsENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25frame9stream_id8StreamIdENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25proto10connection5StateENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25proto5error5ErrorENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCskxN0Kp1MEon_2h25proto5error9InitiatorENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_10DebugValueRNtNtNtNtCskxN0Kp1MEon_2h25proto7streams5state5StateENtB5_5Value6recordCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !18, !nonnull !18
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleENtNtBG_4task8Schedule9yield_nowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs5_NtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule8schedule(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !847, !noalias !2666, !noundef !18
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5inner9THREAD_ID0s_0CskeugdADtBsi_12pingora_core.exit, label %bb.b, !prof !929

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECskeugdADtBsi_12pingora_core(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0)
end_hunk_0
