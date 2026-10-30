Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.10?download=true
inline.NumInlined: 148
inline.NumDeleted: 77
begin_hunk_0_@_ZN4core4hash4Hash10hash_slice17h70dab3cdb332fa61E:bb.a
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %.idx = shl nuw nsw i64 %1, 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.04 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16 ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.04, align 8, !nonnull !4, !align !9, !noundef !4
  %i.e = getelementptr i8, ptr %.sroa.0.04, i64 8
  %.sroa.0.0.val3 = load i64, ptr %i.e, align 8, !noundef !4
  tail call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h5e946ae7ca700182E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35
  store i8 -1, ptr %i.a, align 1, !noalias !35
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h5e946ae7ca700182E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35
  %i.f = icmp eq ptr %i.d, %i.b
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator4fold17h2e1b89611d06ce42E(ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !10, !alias.scope !63, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread", label %.lr.ph

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !66, !nonnull !4, !align !9, !noundef !4 ; 8 uses
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !66, !noundef !4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.r = load i64, ptr %0, align 8, !range !8, !alias.scope !69, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.l, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.t = load i8, ptr %i.h, align 2, !range !10, !alias.scope !70, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !69 ; 13 uses
  %.promoted26.i.i.i = load i8, ptr %i.i, align 8, !alias.scope !70 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
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
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !72, !noalias !73, !noundef !4
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted.i.i.i ; 4 uses
  %i.ac = icmp samesign eq i64 %.promoted.i.i.i, %.val1.i.i
  br i1 %i.ac, label %.loopexit19.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.ab, align 1, !noalias !74, !noundef !4 ; 5 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i": ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ag = and i8 %i.ad, 31
  %i.ah = zext nneg i8 %i.ag to i32               ; 3 uses
  %i.ai = add nuw nsw i64 %.promoted.i.i.i, 1
  %i.aj = icmp samesign ne i64 %i.ai, %.val1.i.i
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.af, align 1, !noalias !74, !noundef !4
  %i.al = shl nuw nsw i32 %i.ah, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32               ; 2 uses
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = icmp samesign ugt i8 %i.ad, -33
  br i1 %i.ap, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i", label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i"
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ar = add nuw nsw i64 %.promoted.i.i.i, 2
  %i.as = icmp samesign ne i64 %i.ar, %.val1.i.i
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i8, ptr %i.aq, align 1, !noalias !74, !noundef !4
  %i.au = shl nuw nsw i32 %i.an, 6
  %i.av = and i8 %i.at, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw            ; 2 uses
  %i.ay = shl nuw nsw i32 %i.ah, 12
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = icmp samesign ugt i8 %i.ad, -17
  br i1 %i.ba, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i", label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i"
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.bc = add nuw nsw i64 %.promoted.i.i.i, 3
  %i.bd = icmp samesign ne i64 %i.bc, %.val1.i.i
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = load i8, ptr %i.bb, align 1, !noalias !74, !noundef !4
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

bb.h:                                             ; preds = %bb.g, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i"
  %.sroa.4.0.i.ph.i.i.peel.i.i = phi i32 [ %i.az, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i" ], [ %i.bl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i" ], [ %i.ao, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i" ], [ %i.bm, %bb.g ] ; 4 uses
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
  %i.br = load i64, ptr %i.l, align 8, !alias.scope !69, !noundef !4
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = load ptr, ptr %i.m, align 8, !alias.scope !69, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.bu = load i64, ptr %i.n, align 8, !alias.scope !69, !noundef !4 ; 2 uses
  br i1 %i.bs, label %bb.u, label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i.i, %bb.k ], [ 1, %bb.i ]
  %i.bv = add i64 %.sroa.01.0.i.i.peel.i.i, %.promoted.i.i.i ; 16 uses
  store i64 %i.bv, ptr %i.g, align 8, !alias.scope !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
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
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !72, !noalias !77, !noundef !4
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.p, label %.loopexit.i.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.i, %bb.m
  %i.cb = icmp samesign eq i64 %i.bv, %.val1.i.i
  br i1 %i.cb, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bv
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !78, !noundef !4 ; 3 uses
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %.sink.split.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i": ; preds = %bb.q
  %i.cf = add nuw nsw i64 %i.bv, 1
  %i.cg = icmp samesign ne i64 %i.cf, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp samesign ugt i8 %i.cd, -33
  br i1 %i.ch, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i", label %.sink.split.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i"
  %i.ci = add nuw nsw i64 %i.bv, 2
  %i.cj = icmp samesign ne i64 %i.ci, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ugt i8 %i.cd, -17
  br i1 %i.ck, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i", label %.sink.split.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i"
  %i.cl = add nuw nsw i64 %i.bv, 3
  %i.cm = icmp samesign ne i64 %i.cl, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cm)
  br label %.sink.split.i.i

.loopexit.i.i:                                    ; preds = %bb.o, %.split.i.i.i.i.i, %bb.d, %.split.i.i.i.peel.i.i
  %.lcssa12.i.i = phi i64 [ %.promoted.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted.i.i.i, %bb.d ], [ %i.bv, %.split.i.i.i.i.i ], [ %i.bv, %bb.o ]
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %.lcssa12.i.i, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #18, !noalias !77
  unreachable

.loopexit19.i.i:                                  ; preds = %bb.e
  %i.cn = xor i8 %.promoted26.i.i.i, 1
  store i8 %i.cn, ptr %i.i, align 8, !alias.scope !70
  br i1 %i.v, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i.i
  store i8 1, ptr %i.h, align 2, !alias.scope !70
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i.i"

.sink.split.i.i:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i", %bb.q, %bb.h
  %.lcssa14.i.i = phi i64 [ %.promoted.i.i.i, %bb.h ], [ %i.bv, %bb.q ], [ %i.bv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i" ], [ %i.bv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i" ], [ %i.bv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i" ]
  store i8 0, ptr %i.i, align 8, !alias.scope !70
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i.i, %.loopexit19.i.i, %bb.p
  %1 = phi i64 [ %.lcssa14.i.i, %.sink.split.i.i ], [ %.val1.i.i, %.loopexit19.i.i ], [ %.val1.i.i, %bb.p ] ; 2 uses
  store i64 %1, ptr %i.j, align 8, !alias.scope !67, !noalias !66
  store i64 %1, ptr %i.k, align 8, !alias.scope !67, !noalias !66
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i.i"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i.i": ; preds = %bb.s, %bb.r, %.preheader.i.i.i
  %storemerge.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i.i ]
  store i64 %storemerge.i.i.i, ptr %i.a, align 8, !alias.scope !67, !noalias !66
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i"

bb.t:                                             ; preds = %bb.l
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %i.bu, i1 noundef zeroext false)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i"

bb.u:                                             ; preds = %bb.l
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17hc95d8737fa102c25E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bt, i64 noundef %i.bu, i1 noundef zeroext true)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i": ; preds = %bb.u, %bb.t, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i.i"
  %i.co = load i64, ptr %i.a, align 8, !range !8, !noalias !66, !noundef !4
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.y, label %bb.v

bb.v:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i"
  %i.cq = load i8, ptr %i.b, align 1, !range !10, !alias.scope !79, !noundef !4
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread.sink.split", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = load i8, ptr %i.o, align 8, !range !10, !alias.scope !79, !noundef !4
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %._crit_edge.i.i.i, label %bb.x

._crit_edge.i.i.i:                                ; preds = %bb.w
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !79
  %.pre3.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !79
  br label %.thread

bb.x:                                             ; preds = %bb.w
  %i.cu = load i64, ptr %i.p, align 8, !alias.scope !79, !noundef !4 ; 2 uses
  %i.cv = load i64, ptr %i.q, align 8, !alias.scope !79, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cu, %i.cv
  br i1 %.not.i.i.i, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread.sink.split", label %.thread

.thread:                                          ; preds = %._crit_edge.i.i.i, %bb.x
  %i.cw = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.cu, %bb.x ]
  %i.cx = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.cv, %bb.x ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !79, !nonnull !4, !align !9, !noundef !4
  %i.cy = sub nuw i64 %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.cx
  br label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread.sink.split"

bb.y:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.i"
  %i.da = load i64, ptr %i.j, align 8, !noalias !66, !noundef !4
  %i.db = load i64, ptr %i.k, align 8, !noalias !66, !noundef !4
  %i.dc = load i64, ptr %i.q, align 8, !alias.scope !66, !noundef !4 ; 2 uses
  %i.dd = sub nuw i64 %i.da, %i.dc                ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dc ; 2 uses
  store i64 %i.db, ptr %i.q, align 8, !alias.scope !66
  %.pre = load i8, ptr %i.b, align 1, !range !10, !alias.scope !80
  %i.df = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  br i1 %i.df, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread", label %bb.b

"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread.sink.split": ; preds = %bb.v, %bb.x, %.thread
  %.sroa.6.013.ph = phi i64 [ %i.cy, %.thread ], [ %.sroa.6.016, %bb.x ], [ %.sroa.6.016, %bb.v ]
  %.sroa.0.010.ph = phi ptr [ %i.cz, %.thread ], [ %.sroa.0.017, %bb.x ], [ %.sroa.0.017, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  br label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread"

"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread": ; preds = %bb.y, %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread.sink.split", %bb.a
  %.sroa.6.013 = phi i64 [ %.sroa.6.013.ph, %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread.sink.split" ], [ undef, %bb.a ], [ %i.dd, %bb.y ]
  %.sroa.0.010 = phi ptr [ %.sroa.0.010.ph, %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had1dc90ac7b6cc50E.exit.thread.sink.split" ], [ null, %bb.a ], [ %i.de, %bb.y ]
  %i.dg = insertvalue { ptr, i64 } poison, ptr %.sroa.0.010, 0
  %i.dh = insertvalue { ptr, i64 } %i.dg, i64 %.sroa.6.013, 1
  ret { ptr, i64 } %i.dh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN59_$LT$anki_io..error..FileOp$u20$as$u20$core..fmt..Debug$GT$3fmt17h98121c6bc1368113E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775802
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.b, -9223372036854775808
  %i.e = icmp slt i64 %i.b, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 6
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @7, i64 noundef 8)
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 4)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 4)
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10, i64 noundef 6)
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @11, i64 noundef 5)
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 6)
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @15, i64 noundef 6)
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @16, i64 noundef 7)
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 4)
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @18, i64 noundef 8)
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @19, i64 noundef 18)
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @20, i64 noundef 12)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @21, i64 noundef 7)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.l, %bb.h ], [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.o, %bb.k ], [ %i.p, %bb.l ], [ %i.q, %bb.m ], [ %i.r, %bb.n ], [ %i.s, %bb.o ], [ %i.t, %bb.p ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$anki_io..error..FileIoError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb191c47308b3d168E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @25, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @26, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @27, i64 noundef 2, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @28, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h74eb3348ed036be9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @32, i64 noundef 5, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @33, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h5e946ae7ca700182E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_0
