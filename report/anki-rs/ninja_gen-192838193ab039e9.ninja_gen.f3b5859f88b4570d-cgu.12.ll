Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ninja_gen-192838193ab039e9.ninja_gen.f3b5859f88b4570d-cgu.12?download=true
inline.NumInlined: 203
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4core3str7pattern14TwoWaySearcher4next17h1b9f77b2b438d49fE:bb.a
  store i64 %i.aq, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.p:                                             ; preds = %.lr.ph89
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.087
  %i.as = load i8, ptr %i.ar, align 1, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.au = load i8, ptr %i.at, align 1, !noundef !3
  %.not21 = icmp eq i8 %i.as, %i.au
  br i1 %.not21, label %bb.g, label %bb.r

bb.q:                                             ; preds = %.lr.ph89
  %i.av = add i64 %.sroa.01.0, %i.n
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.av)
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aw = add i64 %i.n, 1
  %i.ax = add i64 %i.aw, %.sroa.02.087
  %i.ay = sub i64 %i.ax, %i.g                     ; 3 uses
  store i64 %i.ay, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator4fold17h3c0058093b33f845E(ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(128) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !7, !alias.scope !204, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.0.017 = phi ptr [ null, %.lr.ph ], [ %i.de, %bb.y ] ; 2 uses
  %.sroa.6.016 = phi i64 [ undef, %.lr.ph ], [ %i.dd, %bb.y ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !207, !nonnull !3, !align !12, !noundef !3 ; 8 uses
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !207, !noundef !3 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.r = load i64, ptr %0, align 8, !range !6, !alias.scope !210, !noundef !3
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.l, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.t = load i8, ptr %i.h, align 2, !range !7, !alias.scope !211, !noundef !3
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !210 ; 13 uses
  %.promoted26.i.i.i = load i8, ptr %i.i, align 8, !alias.scope !211 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.v = trunc nuw i8 %.promoted26.i.i.i to i1    ; 2 uses
  %i.w = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.w, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted.i.i.i, %.val1.i.i
  br i1 %.not.i.i.i.peel.i.i, label %bb.d, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %bb.c
  %i.x = icmp eq i64 %.promoted.i.i.i, %.val1.i.i
  br i1 %i.x, label %bb.e, label %.loopexit.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !213, !noalias !214, !noundef !3
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted.i.i.i ; 4 uses
  %i.ac = icmp samesign eq i64 %.promoted.i.i.i, %.val1.i.i
  br i1 %i.ac, label %.loopexit19.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.ab, align 1, !noalias !215, !noundef !3 ; 5 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i": ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ag = and i8 %i.ad, 31
  %i.ah = zext nneg i8 %i.ag to i32               ; 3 uses
  %i.ai = add nuw nsw i64 %.promoted.i.i.i, 1
  %i.aj = icmp samesign ne i64 %i.ai, %.val1.i.i
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.af, align 1, !noalias !215, !noundef !3
  %i.al = shl nuw nsw i32 %i.ah, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32               ; 2 uses
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = icmp samesign ugt i8 %i.ad, -33
  br i1 %i.ap, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i", label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i"
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ar = add nuw nsw i64 %.promoted.i.i.i, 2
  %i.as = icmp samesign ne i64 %i.ar, %.val1.i.i
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i8, ptr %i.aq, align 1, !noalias !215, !noundef !3
  %i.au = shl nuw nsw i32 %i.an, 6
  %i.av = and i8 %i.at, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw            ; 2 uses
  %i.ay = shl nuw nsw i32 %i.ah, 12
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = icmp samesign ugt i8 %i.ad, -17
  br i1 %i.ba, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i", label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i"
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.bc = add nuw nsw i64 %.promoted.i.i.i, 3
  %i.bd = icmp samesign ne i64 %i.bc, %.val1.i.i
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = load i8, ptr %i.bb, align 1, !noalias !215, !noundef !3
  %i.bf = shl nuw nsw i32 %i.ah, 18
  %i.bg = and i32 %i.bf, 1835008
  %i.bh = shl nuw nsw i32 %i.ax, 6
  %i.bi = and i8 %i.be, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = or disjoint i32 %i.bk, %i.bg
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = zext nneg i8 %i.ad to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i"
  %.sroa.4.0.i.ph.i.i.peel.i.i = phi i32 [ %i.az, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i" ], [ %i.bl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i" ], [ %i.ao, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i" ], [ %i.bm, %bb.g ] ; 4 uses
  %i.bn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bn)
  br i1 %i.v, label %.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 128
  br i1 %i.bo, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 2048
  br i1 %i.bp, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.bq, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.br = load i64, ptr %i.l, align 8, !alias.scope !210, !noundef !3
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = load ptr, ptr %i.m, align 8, !alias.scope !210, !nonnull !3, !align !12, !noundef !3 ; 2 uses
  %i.bu = load i64, ptr %i.n, align 8, !alias.scope !210, !noundef !3 ; 2 uses
  br i1 %i.bs, label %bb.u, label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i.i, %bb.k ], [ 1, %bb.i ]
  %i.bv = add i64 %.sroa.01.0.i.i.peel.i.i, %.promoted.i.i.i ; 16 uses
  store i64 %i.bv, ptr %i.g, align 8, !alias.scope !216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.i = icmp ult i64 %i.bv, %.val1.i.i
  br i1 %.not.i.i.i.i.i, label %bb.o, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.n
  %i.bx = icmp eq i64 %i.bv, %.val1.i.i
  br i1 %i.bx, label %bb.p, label %.loopexit.i.i

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bv
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !213, !noalias !218, !noundef !3
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.p, label %.loopexit.i.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.i, %bb.m
  %i.cb = icmp samesign eq i64 %i.bv, %.val1.i.i
  br i1 %i.cb, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bv
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !219, !noundef !3 ; 3 uses
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %.sink.split.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i": ; preds = %bb.q
  %i.cf = add nuw nsw i64 %i.bv, 1
  %i.cg = icmp samesign ne i64 %i.cf, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp samesign ugt i8 %i.cd, -33
  br i1 %i.ch, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i", label %.sink.split.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i"
  %i.ci = add nuw nsw i64 %i.bv, 2
  %i.cj = icmp samesign ne i64 %i.ci, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ugt i8 %i.cd, -17
  br i1 %i.ck, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i", label %.sink.split.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i"
  %i.cl = add nuw nsw i64 %i.bv, 3
  %i.cm = icmp samesign ne i64 %i.cl, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cm)
  br label %.sink.split.i.i

.loopexit.i.i:                                    ; preds = %bb.o, %.split.i.i.i.i.i, %bb.d, %.split.i.i.i.peel.i.i
  %.lcssa12.i.i = phi i64 [ %.promoted.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted.i.i.i, %bb.d ], [ %i.bv, %.split.i.i.i.i.i ], [ %i.bv, %bb.o ]
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %.lcssa12.i.i, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19, !noalias !218
  unreachable

.loopexit19.i.i:                                  ; preds = %bb.e
  %i.cn = xor i8 %.promoted26.i.i.i, 1
  store i8 %i.cn, ptr %i.i, align 8, !alias.scope !211
  br i1 %i.v, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i.i
  store i8 1, ptr %i.h, align 2, !alias.scope !211
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i.i"

.sink.split.i.i:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i", %bb.q, %bb.h
  %.lcssa14.i.i = phi i64 [ %.promoted.i.i.i, %bb.h ], [ %i.bv, %bb.q ], [ %i.bv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i" ], [ %i.bv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i" ], [ %i.bv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i" ]
  store i8 0, ptr %i.i, align 8, !alias.scope !211
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i.i, %.loopexit19.i.i, %bb.p
  %1 = phi i64 [ %.lcssa14.i.i, %.sink.split.i.i ], [ %.val1.i.i, %.loopexit19.i.i ], [ %.val1.i.i, %bb.p ] ; 2 uses
  store i64 %1, ptr %i.j, align 8, !alias.scope !208, !noalias !207
  store i64 %1, ptr %i.k, align 8, !alias.scope !208, !noalias !207
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i.i"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i.i": ; preds = %bb.s, %bb.r, %.preheader.i.i.i
  %storemerge.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i.i ]
  store i64 %storemerge.i.i.i, ptr %i.a, align 8, !alias.scope !208, !noalias !207
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i"

bb.t:                                             ; preds = %bb.l
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h1b9f77b2b438d49fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %i.bu, i1 noundef zeroext false)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i"

bb.u:                                             ; preds = %bb.l
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h1b9f77b2b438d49fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %i.bu, i1 noundef zeroext true)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i": ; preds = %bb.u, %bb.t, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i.i"
  %i.co = load i64, ptr %i.a, align 8, !range !6, !noalias !207, !noundef !3
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.y, label %bb.v

bb.v:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i"
  %i.cq = load i8, ptr %i.b, align 1, !range !7, !alias.scope !220, !noundef !3
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread.sink.split", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = load i8, ptr %i.o, align 8, !range !7, !alias.scope !220, !noundef !3
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %._crit_edge.i.i.i, label %bb.x

._crit_edge.i.i.i:                                ; preds = %bb.w
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !220
  %.pre3.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !220
  br label %.thread

bb.x:                                             ; preds = %bb.w
  %i.cu = load i64, ptr %i.p, align 8, !alias.scope !220, !noundef !3 ; 2 uses
  %i.cv = load i64, ptr %i.q, align 8, !alias.scope !220, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cu, %i.cv
  br i1 %.not.i.i.i, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread.sink.split", label %.thread

.thread:                                          ; preds = %._crit_edge.i.i.i, %bb.x
  %i.cw = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.cu, %bb.x ]
  %i.cx = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.cv, %bb.x ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !220, !nonnull !3, !align !12, !noundef !3
  %i.cy = sub nuw i64 %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.cx
  br label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread.sink.split"

bb.y:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i"
  %i.da = load i64, ptr %i.j, align 8, !noalias !207, !noundef !3
  %i.db = load i64, ptr %i.k, align 8, !noalias !207, !noundef !3
  %i.dc = load i64, ptr %i.q, align 8, !alias.scope !207, !noundef !3 ; 2 uses
  %i.dd = sub nuw i64 %i.da, %i.dc                ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dc ; 2 uses
  store i64 %i.db, ptr %i.q, align 8, !alias.scope !207
  %.pre = load i8, ptr %i.b, align 1, !range !7, !alias.scope !221
  %i.df = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !207
  br i1 %i.df, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread", label %bb.b

"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread.sink.split": ; preds = %bb.v, %bb.x, %.thread
  %.sroa.6.013.ph = phi i64 [ %i.cy, %.thread ], [ %.sroa.6.016, %bb.x ], [ %.sroa.6.016, %bb.v ]
  %.sroa.0.010.ph = phi ptr [ %i.cz, %.thread ], [ %.sroa.0.017, %bb.x ], [ %.sroa.0.017, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !207
  br label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread"

"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread": ; preds = %bb.y, %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread.sink.split", %bb.a
  %.sroa.6.013 = phi i64 [ %.sroa.6.013.ph, %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread.sink.split" ], [ undef, %bb.a ], [ %i.dd, %bb.y ]
  %.sroa.0.010 = phi ptr [ %.sroa.0.010.ph, %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread.sink.split" ], [ null, %bb.a ], [ %i.de, %bb.y ]
  %i.dg = insertvalue { ptr, i64 } poison, ptr %.sroa.0.010, 0
  %i.dh = insertvalue { ptr, i64 } %i.dg, i64 %.sroa.6.013, 1
  ret { ptr, i64 } %i.dh
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN80_$LT$ninja_gen..python..Complexipy$u20$as$u20$ninja_gen..action..BuildAction$GT$5files17h5ecf7ec4dfa57b8aE"(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(296) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  tail call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17h298b260d844b38f3E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.j = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #22 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @7, i64 noundef 16)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.i, align 8
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17h46507a6fe2abad40E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.n = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #22 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 17)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.q, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.522.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.g, align 8
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17h46507a6fe2abad40E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 10, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3, !align !12, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17hc5ce44241c4572b7E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i8, ptr %i.v, align 8, !range !7, !noundef !3
  %i.x = trunc nuw i8 %i.w to i1                  ; 4 uses
  %. = select i1 %i.x, i64 21, i64 0
  %.17 = select i1 %i.x, ptr @11, ptr inttoptr (i64 1 to ptr)
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17hc5ce44241c4572b7E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.17, i64 noundef %.)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = call noundef i64 @_ZN9ninja_gen4hash11simple_hash17hcc6a191e8bdd585fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.u)
  store i64 %i.y, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %spec.select = select i1 %i.x, ptr @14, ptr @13
  %spec.select29 = select i1 %i.x, i64 4, i64 5
  store ptr %spec.select, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select29, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h27b187f480cce668E", ptr %.sroa.410.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.aa, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h55433084d8216725E", ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !228
  store ptr @17, ptr %i.a, align 8, !noalias !229
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.425.0..sroa_idx, align 8, !noalias !229
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.526.0..sroa_idx, align 8, !noalias !229
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !229
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !229
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$16add_output_stamp17h7638c649108aa855E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

end_hunk_0
