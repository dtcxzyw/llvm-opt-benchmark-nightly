Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.02?download=true
inline.NumInlined: 190
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write:bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !213
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !213
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !213, !noundef !4
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !211, !noundef !4
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !211
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i            ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !211
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.aj, align 8, !alias.scope !211
  %.promoted20.i = load i64, ptr %i.ak, align 8, !alias.scope !214
  %.promoted22.i = load i64, ptr %i.al, align 8, !alias.scope !214
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !211, !noundef !4
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !215, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !215, !noundef !4 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !215, !noundef !4
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !215
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !215
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !215
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8, !alias.scope !211
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.bj = add i64 %i.e, %2
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1YANDSn9Kib_7git_xet.exit

._crit_edge.i:                                    ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8, !alias.scope !211
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !214
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !214
  store i64 %i.da, ptr %0, align 8, !alias.scope !211
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %i.db, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.bl, align 1, !alias.scope !216
  %i.bm = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bq, align 1, !alias.scope !216
  %i.br = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11.i
  %i.bv = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !216, !noundef !4
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cf, align 8, !alias.scope !211
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1YANDSn9Kib_7git_xet.exit

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %i.cg = phi i64 [ %.promoted22.i, %.lr.ph.i ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20.i, %.lr.ph.i ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.cy, %bb.q ]
  %.sroa.0.118.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.ck, align 1, !alias.scope !212 ; 2 uses
  %i.cl = xor i64 %.sroa.07.0.copyload.i, %i.ci   ; 3 uses
  %i.cm = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cn = add i64 %i.cl, %i.cg                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.cm, %i.co                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload.i   ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118.i, 8           ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.j, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !211
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !9, !alias.scope !235, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, -1                     ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load i64, ptr %i.h, align 8              ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load i64, ptr %i.l, align 8              ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 4 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  %.promoted65 = load i64, ptr %i.p, align 8      ; 20 uses
  %.promoted66 = load i64, ptr %i.q, align 8
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %.split.us
    i64 1, label %.split.us81
    i64 2, label %.split.us93
  ]

.split.us:                                        ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.v = load i8, ptr %i.u, align 2, !range !236
  %i.w = trunc nuw i8 %i.v to i1
  %.promoted111 = load i8, ptr %i.t, align 1      ; 4 uses
  br i1 %i.w, label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5, label %.lr.ph

.lr.ph:                                           ; preds = %.split.us
  %i.x = icmp eq i64 %.promoted65, 0
  %.not.i.i.us = icmp ult i64 %.promoted65, %i.i  ; 2 uses
  %i.y = icmp eq i64 %.promoted65, %i.i           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted65 ; 6 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1 ; 2 uses
  %i.ab = icmp ne i64 %.promoted65, 1             ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -2 ; 2 uses
  %i.ad = icmp ne i64 %.promoted65, 2             ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 -3 ; 2 uses
  %i.af = icmp ne i64 %.promoted65, 3             ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.z, i64 -4 ; 2 uses
  br i1 %i.x, label %.lr.ph.split.us.split, label %.lr.ph.split.split.peel

.lr.ph.split.split.peel:                          ; preds = %.lr.ph
  %i.ah = trunc nuw i8 %.promoted111 to i1
  br i1 %.not.i.i.us, label %bb.b, label %.split.i.i.us.peel

.split.i.i.us.peel:                               ; preds = %.lr.ph.split.split.peel
  br i1 %i.y, label %bb.c, label %.split72.us

bb.b:                                             ; preds = %.lr.ph.split.split.peel
  %i.ai = load i8, ptr %i.z, align 1, !alias.scope !237, !noalias !238, !noundef !4
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %bb.c, label %.split72.us

bb.c:                                             ; preds = %bb.b, %.split.i.i.us.peel
  %i.ak = load i8, ptr %i.aa, align 1, !noalias !239, !noundef !4 ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.f, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us.peel

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us.peel: ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.ab)
  %i.am = load i8, ptr %i.ac, align 1, !noalias !239, !noundef !4 ; 3 uses
  %i.an = and i8 %i.am, 31
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = icmp slt i8 %i.am, -64
  br i1 %i.ap, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us.peel, label %bb.e

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us.peel: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us.peel
  tail call void @llvm.assume(i1 %i.ad)
  %i.aq = load i8, ptr %i.ae, align 1, !noalias !239, !noundef !4 ; 3 uses
  %i.ar = and i8 %i.aq, 15
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = icmp slt i8 %i.aq, -64
  br i1 %i.at, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us.peel, label %bb.d

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us.peel: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us.peel
  tail call void @llvm.assume(i1 %i.af)
  %i.au = load i8, ptr %i.ag, align 1, !noalias !239, !noundef !4
  %i.av = and i8 %i.au, 7
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 6
  %i.ay = and i8 %i.aq, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us.peel, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us.peel
  %.sroa.010.1.i.i.us.peel = phi i32 [ %i.ba, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us.peel ], [ %i.as, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us.peel ]
  %i.bb = shl nuw nsw i32 %.sroa.010.1.i.i.us.peel, 6
  %i.bc = and i8 %i.am, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us.peel
  %.sroa.010.0.i.i.us.peel = phi i32 [ %i.be, %bb.d ], [ %i.ao, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us.peel ]
  %i.bf = shl nuw nsw i32 %.sroa.010.0.i.i.us.peel, 6
  %i.bg = and i8 %i.ak, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.bj = zext nneg i8 %i.ak to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.1.i.ph.i.us.peel = phi i32 [ %i.bj, %bb.f ], [ %i.bi, %bb.e ] ; 2 uses
  %i.bk = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.peel, 1114112
  tail call void @llvm.assume(i1 %i.bk)
  br i1 %i.ah, label %.lr.ph.split.split, label %.split76.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  %i.bl = trunc nuw i8 %.promoted111 to i1
  br i1 %i.bl, label %.lr.ph127, label %.split80.us

.lr.ph127:                                        ; preds = %.lr.ph.split.us.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  br label %.split80.us

.lr.ph.split.split:                               ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  br i1 %.not.i.i.us, label %bb.h, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %.lr.ph.split.split
  br i1 %i.y, label %bb.i, label %.split72.us

bb.h:                                             ; preds = %.lr.ph.split.split
  %i.bm = load i8, ptr %i.z, align 1, !alias.scope !237, !noalias !240, !noundef !4
  %i.bn = icmp sgt i8 %i.bm, -65
  br i1 %i.bn, label %bb.i, label %.split72.us

bb.i:                                             ; preds = %bb.h, %.split.i.i.us
  %i.bo = load i8, ptr %i.aa, align 1, !noalias !241, !noundef !4 ; 3 uses
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %bb.l, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us: ; preds = %bb.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.bq = load i8, ptr %i.ac, align 1, !noalias !241, !noundef !4 ; 3 uses
  %i.br = and i8 %i.bq, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = icmp slt i8 %i.bq, -64
  br i1 %i.bt, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us, label %bb.k

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us
  tail call void @llvm.assume(i1 %i.ad)
  %i.bu = load i8, ptr %i.ae, align 1, !noalias !241, !noundef !4 ; 3 uses
  %i.bv = and i8 %i.bu, 15
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = icmp slt i8 %i.bu, -64
  br i1 %i.bx, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us, label %bb.j

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us
  tail call void @llvm.assume(i1 %i.af)
  %i.by = load i8, ptr %i.ag, align 1, !noalias !241, !noundef !4
  %i.bz = and i8 %i.by, 7
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 6
  %i.cc = and i8 %i.bu, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us
  %.sroa.010.1.i.i.us = phi i32 [ %i.ce, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit21.i.i.us ], [ %i.bw, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit19.i.i.us ]
  %i.cf = shl nuw nsw i32 %.sroa.010.1.i.i.us, 6
  %i.cg = and i8 %i.bq, 63
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.cf, %i.ch
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us
  %.sroa.010.0.i.i.us = phi i32 [ %i.ci, %bb.j ], [ %i.bs, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs1YANDSn9Kib_7git_xet.exit17.i.i.us ]
  %i.cj = shl nuw nsw i32 %.sroa.010.0.i.i.us, 6
  %i.ck = and i8 %i.bo, 63
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl
  br label %.split76.us.loopexit

bb.l:                                             ; preds = %bb.i
  %i.cn = zext nneg i8 %i.bo to i32
  br label %.split76.us.loopexit

.split76.us.loopexit:                             ; preds = %bb.l, %bb.k
  %.sroa.4.1.i.ph.i.us = phi i32 [ %i.cn, %bb.l ], [ %i.cm, %bb.k ] ; 2 uses
  %i.co = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.co)
  br label %.split76.us

.split72.us:                                      ; preds = %.split.i.i.us, %bb.h, %bb.b, %.split.i.i.us.peel
  %.lcssa = phi i8 [ %.promoted111, %.split.i.i.us.peel ], [ %.promoted111, %bb.b ], [ 0, %bb.h ], [ 0, %.split.i.i.us ]
  %i.cp = xor i8 %.lcssa, 1
  store i8 %i.cp, ptr %i.t, align 1, !alias.scope !235
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef 0, i64 noundef %.promoted65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22, !noalias !240
  unreachable

.split76.us:                                      ; preds = %.split76.us.loopexit, %bb.g
  %.sroa.4.1.i.ph.i.us.lcssa = phi i32 [ %.sroa.4.1.i.ph.i.us.peel, %bb.g ], [ %.sroa.4.1.i.ph.i.us, %.split76.us.loopexit ] ; 3 uses
  store i8 1, ptr %i.t, align 1, !alias.scope !235
  %i.cq = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.lcssa, 128
  br i1 %i.cq, label %bb.ab, label %bb.z

.split80.us:                                      ; preds = %.lr.ph127, %.lr.ph.split.us.split
  store i8 1, ptr %i.t, align 1, !alias.scope !235
  store i8 1, ptr %i.u, align 2, !alias.scope !235
  br label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5

.split.us81:                                      ; preds = %bb.a
  %i.cr = icmp eq i64 %.promoted65, 0
  br i1 %i.cr, label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %.split.us81
  %i.cs = add i64 %.promoted65, -1
  %.first_iter = icmp ult i64 %i.cs, %i.i
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %bb.n
  %i.ct = phi i64 [ %i.cu, %bb.n ], [ %.promoted65, %.lr.ph128.preheader ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.cu = add i64 %i.ct, -1                       ; 8 uses
  br i1 %.first_iter, label %bb.m, label %.split83.us

bb.m:                                             ; preds = %.lr.ph128
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !240, !noundef !4 ; 2 uses
  %i.cx = icmp eq i8 %i.cw, %i.s
  br i1 %i.cx, label %bb.n, label %.split87.us

bb.n:                                             ; preds = %bb.m
  store i64 %i.cu, ptr %i.p, align 8, !alias.scope !235
  %i.cy = icmp eq i64 %i.cu, 0
  br i1 %i.cy, label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5, label %.lr.ph128

.split.us93:                                      ; preds = %bb.a
  %i.cz = icmp eq i64 %.promoted, 0
  br i1 %i.cz, label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5, label %.lr.ph129

.lr.ph129:                                        ; preds = %.split.us93
  %i.da = load i64, ptr %i.r, align 8             ; 2 uses
  %umax53.i.i.us = tail call i64 @llvm.umax.i64(i64 %.promoted65, i64 range(i64 0, -9223372036854775808) %i.m) ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph129, %bb.y
  %i.db = phi i64 [ %.promoted, %.lr.ph129 ], [ %i.di, %bb.y ] ; 6 uses
  %i.dc = phi i64 [ %.promoted66, %.lr.ph129 ], [ %i.ek, %bb.y ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.dd = sub i64 %i.db, %i.m                     ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.i
  br i1 %i.de, label %.lr.ph.i.i.us, label %.loopexit.i

.lr.ph.i.i.us:                                    ; preds = %bb.o
  %invariant.op.i.i.us = sub i64 %i.db, %.promoted65
  %i.df = sub i64 %i.db, %i.da                    ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %.lr.ph.i.i.us
  %i.dg = phi i64 [ %i.dc, %.lr.ph.i.i.us ], [ %i.ef, %bb.w ] ; 4 uses
  %i.dh = phi i64 [ %i.dc, %.lr.ph.i.i.us ], [ %i.eg, %bb.w ] ; 5 uses
  %i.di = phi i64 [ %i.dd, %.lr.ph.i.i.us ], [ %i.ei, %bb.w ] ; 9 uses
  %i.dj = phi i64 [ %i.db, %.lr.ph.i.i.us ], [ %i.eh, %bb.w ] ; 2 uses
  %.not.i14.i.us = icmp eq i64 %i.db, %i.dj
  br i1 %.not.i14.i.us, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.di
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !243, !noalias !240, !noundef !4
  %i.dm = and i8 %i.dl, 63
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = and i64 %i.do, %i.o
  %.not19.i.i.us = icmp eq i64 %i.dp, 0
  br i1 %.not19.i.i.us, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %..i.i.i.us = tail call i64 @llvm.umin.i64(i64 %i.dh, i64 %.promoted65)
  %.sroa.03.0.i.i.us = select i1 %i.e, i64 %.promoted65, i64 %..i.i.i.us
  %.sroa.03.0.i.fr.i.us = freeze i64 %.sroa.03.0.i.i.us ; 3 uses
  %i.dq = add i64 %.sroa.03.0.i.fr.i.us, -1       ; 2 uses
  %.first_iter.i.i.us = icmp ult i64 %i.dq, %i.m
  %.not20.i.us.i.us231 = icmp eq i64 %.sroa.03.0.i.fr.i.us, 0 ; 2 uses
  br i1 %.first_iter.i.i.us, label %.split.us.i.us.preheader, label %.split.i.us

.split.us.i.us.preheader:                         ; preds = %bb.r
  br i1 %.not20.i.us.i.us231, label %.split39.us.i.us, label %.lr.ph233

.split.i.us:                                      ; preds = %bb.r
  br i1 %.not20.i.us.i.us231, label %.split39.us.i.us, label %.split104.us

.split.us.i.us:                                   ; preds = %.lr.ph233
  %.not20.i.us.i.us = icmp eq i64 %i.dr, 0
  br i1 %.not20.i.us.i.us, label %.split39.us.i.us, label %.lr.ph233

.lr.ph233:                                        ; preds = %.split.us.i.us.preheader, %.split.us.i.us
  %.sroa.2.0.i.us.i.us232 = phi i64 [ %i.dr, %.split.us.i.us ], [ %.sroa.03.0.i.fr.i.us, %.split.us.i.us.preheader ]
  %i.dr = add i64 %.sroa.2.0.i.us.i.us232, -1     ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !244, !noalias !240, !noundef !4
  %i.du = add i64 %i.dr, %i.di                    ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.i
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.du
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !243, !noalias !240, !noundef !4
  %.not22.i.us.i.us = icmp eq i8 %i.dt, %i.dx
  br i1 %.not22.i.us.i.us, label %.split.us.i.us, label %.split41.us.i.us

.split41.us.i.us:                                 ; preds = %.lr.ph233
  %.reass.i.i.us = add i64 %i.dr, %invariant.op.i.i.us ; 3 uses
  store i64 %.reass.i.i.us, ptr %i.b, align 8, !alias.scope !245
  br i1 %i.e, label %bb.w, label %.sink.split.i.i.us

.split39.us.i.us:                                 ; preds = %.split.us.i.us, %.split.us.i.us.preheader, %.split.i.us
  %.sroa.08.0.i.i.us = select i1 %i.e, i64 %i.m, i64 %i.dh ; 2 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i.i.us, i64 %.promoted65)
  %exitcond.not.i.i.us234.not = icmp ult i64 %.promoted65, %.sroa.08.0.i.i.us
  br i1 %exitcond.not.i.i.us234.not, label %.lr.ph236, label %.split39.us.i.us._crit_edge

bb.s:                                             ; preds = %bb.t
  %i.dy = add nuw i64 %.sroa.09.0.i.i.us235, 1    ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.dy, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.split39.us.i.us._crit_edge, label %.lr.ph236

.lr.ph236:                                        ; preds = %.split39.us.i.us, %bb.s
  %.sroa.09.0.i.i.us235 = phi i64 [ %i.dy, %bb.s ], [ %.promoted65, %.split39.us.i.us ] ; 4 uses
  %exitcond54.not.i.i.us = icmp eq i64 %.sroa.09.0.i.i.us235, %umax53.i.i.us
  br i1 %exitcond54.not.i.i.us, label %.split108.us, label %bb.t

bb.t:                                             ; preds = %.lr.ph236
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.09.0.i.i.us235
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !244, !noalias !240, !noundef !4
  %i.eb = add i64 %.sroa.09.0.i.i.us235, %i.di    ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.i
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !243, !noalias !240, !noundef !4
  %.not21.i.i.us = icmp eq i8 %i.ea, %i.ee
  br i1 %.not21.i.i.us, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %i.df, ptr %i.b, align 8, !alias.scope !245
  br i1 %i.e, label %bb.w, label %.sink.split.i.i.us

bb.v:                                             ; preds = %bb.q
  store i64 %i.di, ptr %i.b, align 8, !alias.scope !245
  br i1 %i.e, label %bb.w, label %.sink.split.i.i.us

.sink.split.i.i.us:                               ; preds = %bb.v, %bb.u, %.split41.us.i.us
  %.sink75.i.i.us = phi i64 [ %i.da, %bb.u ], [ %i.m, %.split41.us.i.us ], [ %i.m, %bb.v ] ; 3 uses
  %.ph74.i.i.us = phi i64 [ %i.df, %bb.u ], [ %.reass.i.i.us, %.split41.us.i.us ], [ %i.di, %bb.v ]
  store i64 %.sink75.i.i.us, ptr %i.q, align 8, !alias.scope !245
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i.i.us, %bb.v, %bb.u, %.split41.us.i.us
  %i.ef = phi i64 [ %i.dg, %.split41.us.i.us ], [ %i.dg, %bb.v ], [ %i.dg, %bb.u ], [ %.sink75.i.i.us, %.sink.split.i.i.us ]
  %i.eg = phi i64 [ %i.dh, %.split41.us.i.us ], [ %i.dh, %bb.v ], [ %i.dh, %bb.u ], [ %.sink75.i.i.us, %.sink.split.i.i.us ]
  %i.eh = phi i64 [ %.reass.i.i.us, %.split41.us.i.us ], [ %i.di, %bb.v ], [ %i.df, %bb.u ], [ %.ph74.i.i.us, %.sink.split.i.i.us ] ; 2 uses
  %i.ei = sub i64 %i.eh, %i.m                     ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.i
  br i1 %i.ej, label %bb.p, label %.loopexit.i

.split39.us.i.us._crit_edge:                      ; preds = %.split39.us.i.us, %bb.s
  store i64 %i.di, ptr %i.b, align 8, !alias.scope !245
  br i1 %i.e, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.split39.us.i.us._crit_edge
  store i64 %i.m, ptr %i.q, align 8, !alias.scope !245
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.split39.us.i.us._crit_edge
  %i.ek = phi i64 [ %i.m, %bb.x ], [ %i.dg, %.split39.us.i.us._crit_edge ]
  %i.el = icmp eq i64 %i.di, 0
  br i1 %i.el, label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5, label %bb.o

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.z:                                             ; preds = %.split76.us
  %i.em = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.lcssa, 2048
  br i1 %i.em, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.lcssa, 65536
  %..i = select i1 %i.en, i64 -3, i64 -4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.split76.us
  %.sroa.01.0.neg.i = phi i64 [ -2, %bb.z ], [ %..i, %bb.aa ], [ -1, %.split76.us ]
  %i.eo = add i64 %.sroa.01.0.neg.i, %.promoted65 ; 2 uses
  store i64 %i.eo, ptr %i.p, align 8, !alias.scope !235
  br label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit

.split83.us:                                      ; preds = %.lr.ph128
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cu, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22, !noalias !240
  unreachable

.split87.us:                                      ; preds = %bb.m
  %i.ep = icmp sgt i8 %i.cw, -65
  br i1 %i.ep, label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.split87.us
  %i.eq = icmp ne i64 %i.cu, 0
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = add i64 %i.ct, -2                       ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !246, !noalias !240, !noundef !4
  %i.eu = icmp sgt i8 %i.et, -65
  br i1 %i.eu, label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = icmp ugt i64 %i.cu, 1
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = add i64 %i.ct, -3                       ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !246, !noalias !240, !noundef !4
  %i.ez = icmp sgt i8 %i.ey, -65
  %i.fa = add i64 %i.ct, -4
  %spec.select.i.i = select i1 %i.ez, i64 %i.ew, i64 %i.fa
  br label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i

_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i: ; preds = %bb.ad, %bb.ac, %.split87.us
  %.sroa.0.0.i13.i = phi i64 [ %i.er, %bb.ac ], [ %spec.select.i.i, %bb.ad ], [ %i.cu, %.split87.us ] ; 2 uses
  store i64 %.sroa.0.0.i13.i, ptr %i.p, align 8, !alias.scope !235
  br label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit

.split104.us:                                     ; preds = %.split.i.us
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dq, i64 noundef range(i64 0, -9223372036854775808) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22, !noalias !247
  unreachable

.split108.us:                                     ; preds = %.lr.ph236
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax53.i.i.us, i64 noundef range(i64 0, -9223372036854775808) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !noalias !247
  unreachable

.loopexit.i:                                      ; preds = %bb.o, %bb.w, %bb.p
  %i.fb = phi i64 [ 0, %bb.w ], [ %i.dj, %bb.p ], [ 0, %bb.o ] ; 9 uses
  %.not.i15.i = icmp ult i64 %i.fb, %i.i
  br i1 %.not.i15.i, label %bb.ae, label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i

bb.ae:                                            ; preds = %.loopexit.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !248, !noalias !240, !noundef !4
  %i.fe = icmp sgt i8 %i.fd, -65
  br i1 %i.fe, label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = icmp ne i64 %i.fb, 0
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = add i64 %i.fb, -1                       ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !248, !noalias !240, !noundef !4
  %i.fj = icmp sgt i8 %i.fi, -65
  br i1 %i.fj, label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fk = icmp ugt i64 %i.fb, 1
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = add i64 %i.fb, -2                       ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !248, !noalias !240, !noundef !4
  %i.fo = icmp sgt i8 %i.fn, -65
  %i.fp = add i64 %i.fb, -3
  %spec.select.i17.i = select i1 %i.fo, i64 %i.fl, i64 %i.fp
  br label %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i

_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i: ; preds = %bb.ag, %bb.af, %bb.ae, %.loopexit.i
  %.sroa.0.0.i16.i = phi i64 [ %i.i, %.loopexit.i ], [ %spec.select.i17.i, %bb.ag ], [ %i.fb, %bb.ae ], [ %i.fg, %bb.af ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.fb, i64 %.sroa.0.0.i16.i)
  store i64 %..i.i, ptr %i.b, align 8, !alias.scope !235
  br label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit

_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i, %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i, %bb.ab
  %.sroa.12.0 = phi i64 [ %.promoted65, %bb.ab ], [ %i.ct, %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i ], [ %i.db, %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i ]
  %.sroa.5.0 = phi i64 [ %i.eo, %bb.ab ], [ %.sroa.0.0.i13.i, %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit.i ], [ %.sroa.0.0.i16.i, %_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary.exit18.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0, ptr %i.fr, align 8
  br label %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5

_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread5: ; preds = %bb.y, %bb.n, %.split.us, %.split.us93, %.split.us81, %.split80.us, %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit
  %storemerge = phi i64 [ 1, %_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit ], [ 0, %.split80.us ], [ 0, %bb.n ], [ 0, %.split.us81 ], [ 0, %.split.us93 ], [ 0, %.split.us ], [ 0, %bb.y ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvXso_NtCsexYYUdYSQU6_5alloc6stringRNtB5_6StringNtNtNtCskKLDkoKarTP_4core3str7pattern7Pattern13into_searcher(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs_NtNtNtCsiAynQAjgDuT_10xet_client6common4auth6basicsNtB4_22BearerCredentialHelper3new(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvMNtCsexYYUdYSQU6_5alloc6stringNtB5_6String6retainNtB2_10PanicGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE11extend_withCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskAvCZhvKF0K_11shell_words5quote(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs1YANDSn9Kib_7git_xet5utils16process_wrapping38run_git_captured_with_input_and_outputRNtNtCsG258MDvU3F_3std4path4PathReAB20_j1_B20_EB6_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs1YANDSn9Kib_7git_xet5utils16process_wrappingNtB2_15CapturedCommand5stdin(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 4 dereferenceable(28)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtCsG258MDvU3F_3std7process10ChildStdinNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs1YANDSn9Kib_7git_xet5utils16process_wrappingNtB2_15CapturedCommand16wait_with_output(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(28)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtB8_3vec3VechEEE13with_capacityCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs1YANDSn9Kib_7git_xet6errorsNtB3_11GitXetError12config_errorNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsdCDTHl3mYPb_4http6header3map3PosE16into_boxed_sliceCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs12_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_6Danger7set_red(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtBb_3vec3VechEEENtNtB9_8buf_read7BufRead9read_lineCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { inlinehint }
attributes #18 = { cold }
attributes #19 = { nounwind }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 0, i64 2}
!6 = !{i64 0, i64 -9223372036854775807}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 -1, i64 -9223372036854775808}
!9 = !{i64 0, i64 3}
!10 = distinct !{!10, i1 true, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtNtB8_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB1g_ENtB2_12IntoIterator9into_iterCs1YANDSn9Kib_7git_xet"}
!11 = distinct !{!11, !10, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtNtB8_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB1g_ENtB2_12IntoIterator9into_iterCs1YANDSn9Kib_7git_xet: argument 1"}
!12 = distinct !{!12, !10, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters5chain5ChainINtNtNtB8_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB1g_ENtB2_12IntoIterator9into_iterCs1YANDSn9Kib_7git_xet: argument 0"}
!13 = distinct !{!13, i1 true, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet"}
!14 = distinct !{!14, !13, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet: argument 1"}
!15 = distinct !{!15, !13, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet: argument 0"}
!16 = distinct !{!16, !13, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB10_ENtNtNtB9_6traits8iterator8Iterator4foldB1q_NCINvCskAvCZhvKF0K_11shell_words4joinBO_RB1q_E0ECs1YANDSn9Kib_7git_xet: argument 2"}
!17 = distinct !{!17, i1 true, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_QNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet"}
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!23 = distinct !{!23, !20, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringEB21_ERB2r_E0INtB7_5FnMutTB2r_B39_EE8call_mutCs1YANDSn9Kib_7git_xet: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet"}
!25 = distinct !{!25, !24, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet: argument 1"}
!26 = distinct !{!26, !24, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvCskAvCZhvKF0K_11shell_words4joinINtNtNtB1z_8adapters5chain5ChainBF_BF_ERBQ_E0ECs1YANDSn9Kib_7git_xet: argument 0"}
!27 = distinct !{!27, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop"}
!28 = distinct !{!28, !27, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop: argument 0"}
!29 = distinct !{!29, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!30 = distinct !{!30, !29, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
!31 = !{!12, !11}
!32 = !{!15, !14}
!33 = !{!19, !18, !15, !14, !16}
!34 = !{!15, !14, !16}
!35 = !{!23, !22, !21, !19, !18, !15, !14, !16}
!36 = !{!26, !25, !15, !14, !16}
!37 = !{!14}
!38 = !{!30, !28}
!39 = distinct !{!39, i1 true, !"_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet"}
!40 = distinct !{!40, !39, !"_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet: argument 1"}
!41 = distinct !{!41, !39, !"_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet: argument 0"}
!42 = distinct !{!42, i1 true, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet"}
!43 = distinct !{!43, !42, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet: argument 1"}
!44 = distinct !{!44, !42, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet: argument 0"}
!45 = distinct !{!45, i1 true, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet"}
!46 = distinct !{!46, !45, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet: argument 1"}
!47 = distinct !{!47, !45, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs1YANDSn9Kib_7git_xet: argument 0"}
!48 = distinct !{!48, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!49 = distinct !{!49, !48, !"_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!50 = distinct !{!50, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!51 = distinct !{!51, !50, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
!52 = distinct !{!52, i1 true, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet"}
!53 = distinct !{!53, !52, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet: argument 1"}
!54 = distinct !{!54, !52, !"_RNvXsp_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet: argument 0"}
!55 = distinct !{!55, i1 true, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet"}
!56 = distinct !{!56, !55, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet: argument 1"}
!57 = distinct !{!57, !55, !"_RNvYINtNtNtCskKLDkoKarTP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet: argument 0"}
!58 = distinct !{!58, i1 true, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs1YANDSn9Kib_7git_xet"}
!59 = distinct !{!59, !58, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs1YANDSn9Kib_7git_xet: argument 1"}
!60 = distinct !{!60, !58, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs1YANDSn9Kib_7git_xet: argument 0"}
!61 = distinct !{!61, i1 true, !"_RNvXs4_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!62 = distinct !{!62, !61, !"_RNvXs4_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!63 = distinct !{!63, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!64 = distinct !{!64, !63, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
!65 = !{!51, !49, !47, !46, !44, !43, !41, !40}
!66 = !{!47, !46, !44, !43, !41, !40}
!67 = !{!64, !62, !60, !59, !57, !56, !54, !53}
!68 = !{!60, !59, !57, !56, !54, !53}
!69 = distinct !{!69, i1 true, !"_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet"}
!70 = distinct !{!70, !69, !"_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet: argument 1"}
!71 = distinct !{!71, !69, !"_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs1YANDSn9Kib_7git_xet: argument 0"}
!72 = distinct !{!72, i1 true, !"_RNvXs0_NtNtCskKLDkoKarTP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back"}
!73 = distinct !{!73, !72, !"_RNvXs0_NtNtCskKLDkoKarTP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back: argument 1"}
!74 = distinct !{!74, !72, !"_RNvXs0_NtNtCskKLDkoKarTP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back: argument 0"}
!75 = distinct !{!75, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!76 = distinct !{!76, !75, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
!77 = !{!76, !74, !73, !71, !70}
!78 = distinct !{!78, i1 true, !"_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet"}
!79 = distinct !{!79, !78, !"_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet: argument 1"}
!80 = distinct !{!80, !78, !"_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs1YANDSn9Kib_7git_xet: argument 0"}
!81 = distinct !{!81, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next"}
!82 = distinct !{!82, !81, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next: argument 1"}
!83 = distinct !{!83, !81, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next: argument 0"}
!84 = distinct !{!84, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!85 = distinct !{!85, !84, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
!86 = !{!85, !83, !82, !80, !79}
!87 = distinct !{!87, i1 true, !"_RNvMNtNtCs1YANDSn9Kib_7git_xet4auth3gitNtB2_19GitCredentialHelper12authenticate"}
!88 = distinct !{!88, !87, !"_RNvMNtNtCs1YANDSn9Kib_7git_xet4auth3gitNtB2_19GitCredentialHelper12authenticate: argument 2"}
!89 = distinct !{!89, !87, !"_RNvMNtNtCs1YANDSn9Kib_7git_xet4auth3gitNtB2_19GitCredentialHelper12authenticate: argument 1"}
!90 = distinct !{!90, !87, !"_RNvMNtNtCs1YANDSn9Kib_7git_xet4auth3gitNtB2_19GitCredentialHelper12authenticate: argument 0"}
!91 = distinct !{!91, i1 true, !"_RNvXs8_NtNtCsexYYUdYSQU6_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtB9_3vec3VechEEEENtNtNtNtB1x_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet"}
!92 = distinct !{!92, !91, !"_RNvXs8_NtNtCsexYYUdYSQU6_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtB9_3vec3VechEEEENtNtNtNtB1x_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet: argument 1"}
!93 = distinct !{!93, !91, !"_RNvXs8_NtNtCsexYYUdYSQU6_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtB9_3vec3VechEEEENtNtNtNtB1x_4iter6traits8iterator8Iterator4nextCs1YANDSn9Kib_7git_xet: argument 0"}
!94 = distinct !{!94, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop"}
!95 = distinct !{!95, !94, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop: argument 0"}
!96 = distinct !{!96, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!97 = distinct !{!97, !96, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
!98 = distinct !{!98, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop"}
!99 = distinct !{!99, !98, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3pop: argument 0"}
!100 = distinct !{!100, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!101 = distinct !{!101, !100, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
!102 = distinct !{!102, i1 true, !"_RINvMNtCsexYYUdYSQU6_5alloc6stringNtB3_6String6retainNCNvMNtNtCs1YANDSn9Kib_7git_xet4auth3gitNtBU_19GitCredentialHelper12authenticate0EBY_"}
!103 = distinct !{!103, !102, !"_RINvMNtCsexYYUdYSQU6_5alloc6stringNtB3_6String6retainNCNvMNtNtCs1YANDSn9Kib_7git_xet4auth3gitNtBU_19GitCredentialHelper12authenticate0EBY_: argument 0"}
!104 = distinct !{!104, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!105 = distinct !{!105, !104, !"_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!106 = distinct !{!106, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!107 = distinct !{!107, !106, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
!108 = distinct !{!108, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!109 = distinct !{!109, !108, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
!110 = distinct !{!110, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet5utils16process_wrapping15CapturedCommandEBH_"}
!111 = distinct !{!111, !110, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet5utils16process_wrapping15CapturedCommandEBH_: argument 0"}
!112 = distinct !{!112, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process5ChildECs1YANDSn9Kib_7git_xet"}
!113 = distinct !{!113, !112, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process5ChildECs1YANDSn9Kib_7git_xet: argument 0"}
!114 = !{!90, !89, !88}
!115 = !{i64 -1, i64 11}
!116 = !{!89, !88}
!117 = !{!90}
!118 = !{i32 0, i32 -1}
!119 = !{!93, !92, !90, !89, !88}
!120 = !{!93, !90}
!121 = !{!92, !90, !89, !88}
!122 = !{!95}
!123 = !{!97, !95, !93, !90}
!124 = !{!101, !99, !93, !90}
!125 = !{!107, !105, !103, !90}
!126 = !{!103, !90, !89, !88}
!127 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!128 = !{!109, !103, !90}
!129 = !{!103, !90}
!130 = !{!111}
!131 = !{!113}
!132 = !{!113, !111}
!133 = !{!113, !111, !90}
!134 = distinct !{!134, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorINtNtBK_3vec3VechEEEECs1YANDSn9Kib_7git_xet"}
!135 = distinct !{!135, !134, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorINtNtBK_3vec3VechEEEECs1YANDSn9Kib_7git_xet: argument 0"}
!136 = !{!135}
!137 = distinct !{!137, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process5ChildECs1YANDSn9Kib_7git_xet"}
!138 = distinct !{!138, !137, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process5ChildECs1YANDSn9Kib_7git_xet: argument 0"}
!139 = !{!138}
!140 = distinct !{!140, i1 true, !"_RINvXsz_NtNtCsdCDTHl3mYPb_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs1YANDSn9Kib_7git_xet"}
!141 = distinct !{!141, !140, !"_RINvXsz_NtNtCsdCDTHl3mYPb_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs1YANDSn9Kib_7git_xet: argument 0"}
!142 = distinct !{!142, i1 true, !"_RINvXsH_NtNtCsdCDTHl3mYPb_4http6header4nameINtB6_4ReprNtB6_6CustomENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs1YANDSn9Kib_7git_xet"}
!143 = distinct !{!143, !142, !"_RINvXsH_NtNtCsdCDTHl3mYPb_4http6header4nameINtB6_4ReprNtB6_6CustomENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs1YANDSn9Kib_7git_xet: argument 0"}
!144 = distinct !{!144, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCs1YANDSn9Kib_7git_xet"}
!145 = distinct !{!145, !144, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCs1YANDSn9Kib_7git_xet: argument 0"}
!146 = distinct !{!146, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs1YANDSn9Kib_7git_xet"}
!147 = distinct !{!147, !146, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs1YANDSn9Kib_7git_xet: argument 0"}
!148 = distinct !{!148, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCs1YANDSn9Kib_7git_xet"}
!149 = distinct !{!149, !148, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCs1YANDSn9Kib_7git_xet: argument 0"}
!150 = distinct !{!150, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs1YANDSn9Kib_7git_xet"}
!151 = distinct !{!151, !150, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs1YANDSn9Kib_7git_xet: argument 0"}
!152 = distinct !{!152, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs1YANDSn9Kib_7git_xet"}
!153 = distinct !{!153, !152, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs1YANDSn9Kib_7git_xet: argument 0"}
!154 = distinct !{!154, i1 true, !"_RINvXsz_NtNtCsdCDTHl3mYPb_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs1YANDSn9Kib_7git_xet"}
!155 = distinct !{!155, !154, !"_RINvXsz_NtNtCsdCDTHl3mYPb_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs1YANDSn9Kib_7git_xet: argument 0"}
!156 = distinct !{!156, i1 true, !"_RINvXsH_NtNtCsdCDTHl3mYPb_4http6header4nameINtB6_4ReprNtB6_6CustomENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs1YANDSn9Kib_7git_xet"}
!157 = distinct !{!157, !156, !"_RINvXsH_NtNtCsdCDTHl3mYPb_4http6header4nameINtB6_4ReprNtB6_6CustomENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs1YANDSn9Kib_7git_xet: argument 0"}
!158 = distinct !{!158, i1 true, !"_RNvXs18_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!159 = distinct !{!159, !158, !"_RNvXs18_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!160 = distinct !{!160, i1 true, !"_RINvXst_NtNtCsdCDTHl3mYPb_4http6header4nameNtB6_6CustomNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs1YANDSn9Kib_7git_xet"}
!161 = distinct !{!161, !160, !"_RINvXst_NtNtCsdCDTHl3mYPb_4http6header4nameNtB6_6CustomNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs1YANDSn9Kib_7git_xet: argument 0"}
!162 = distinct !{!162, !171}
!163 = !{!143, !141}
!164 = !{!147, !145, !143, !141}
!165 = !{i8 0, i8 81}
!166 = !{!151, !149, !143, !141}
!167 = !{!153}
!168 = !{!157, !155}
!169 = !{!159}
!170 = !{!161, !157, !155}
!171 = !{!"llvm.loop.unroll.disable"}
!172 = distinct !{!172, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs1YANDSn9Kib_7git_xet"}
!173 = distinct !{!173, !172, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs1YANDSn9Kib_7git_xet: argument 0"}
!174 = distinct !{!174, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push"}
!175 = distinct !{!175, !174, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push: argument 0"}
!176 = distinct !{!176, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs1YANDSn9Kib_7git_xet"}
!177 = distinct !{!177, !176, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs1YANDSn9Kib_7git_xet: argument 0"}
!178 = !{!173}
!179 = !{!175}
!180 = !{!177}
!181 = distinct !{!181, i1 true, !"_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1YANDSn9Kib_7git_xet"}
!182 = distinct !{!182, !181, !"_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1YANDSn9Kib_7git_xet: argument 0"}
!183 = distinct !{!183, !188, !189}
!184 = distinct !{!184, !189, !188}
!185 = distinct !{!185, i1 true, !"_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap7rebuildCs1YANDSn9Kib_7git_xet"}
!186 = distinct !{!186, !185, !"_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap7rebuildCs1YANDSn9Kib_7git_xet: argument 0"}
!187 = !{!182}
!188 = !{!"llvm.loop.isvectorized", i32 1}
!189 = !{!"llvm.loop.unroll.runtime.disable"}
!190 = !{!186}
!191 = distinct !{!191, i1 true, !"_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1YANDSn9Kib_7git_xet"}
!192 = distinct !{!192, !191, !"_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsdCDTHl3mYPb_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1YANDSn9Kib_7git_xet: argument 0"}
!193 = distinct !{!193, i1 true, !"_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs1YANDSn9Kib_7git_xet"}
!194 = distinct !{!194, !193, !"_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs1YANDSn9Kib_7git_xet: argument 0"}
!195 = distinct !{!195, i1 true, !"_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs1YANDSn9Kib_7git_xet"}
!196 = distinct !{!196, !195, !"_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCs1YANDSn9Kib_7git_xet: argument 0"}
!197 = !{!192}
!198 = !{!194}
!199 = !{!196}
!200 = distinct !{!200, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1YANDSn9Kib_7git_xet"}
!201 = distinct !{!201, !200, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1YANDSn9Kib_7git_xet: argument 0"}
!202 = distinct !{!202, !200, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1YANDSn9Kib_7git_xet: argument 1"}
!203 = distinct !{!203, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le"}
!204 = distinct !{!204, !203, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le: argument 0"}
!205 = distinct !{!205, i1 true, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!206 = distinct !{!206, !205, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!207 = distinct !{!207, i1 true, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!208 = distinct !{!208, !207, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!209 = distinct !{!209, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le"}
!210 = distinct !{!210, !209, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le: argument 0"}
!211 = !{!201}
!212 = !{!202}
!213 = !{!204, !202}
!214 = !{!206, !201}
!215 = !{!208, !201}
!216 = !{!210, !202}
!217 = distinct !{!217, i1 true, !"_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back"}
!218 = distinct !{!218, !217, !"_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back: argument 1"}
!219 = distinct !{!219, i1 true, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!220 = distinct !{!220, !219, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!221 = distinct !{!221, i1 true, !"_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back"}
!222 = distinct !{!222, !221, !"_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back: argument 1:Peel0"}
!223 = distinct !{!223, !217, !"_RNvXsw_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back: argument 0"}
!224 = distinct !{!224, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet"}
!225 = distinct !{!225, !224, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1YANDSn9Kib_7git_xet: argument 0"}
!226 = distinct !{!226, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_14RejectAndMatchECs1YANDSn9Kib_7git_xet"}
!227 = distinct !{!227, !226, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_14RejectAndMatchECs1YANDSn9Kib_7git_xet: argument 1"}
!228 = distinct !{!228, !226, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_14RejectAndMatchECs1YANDSn9Kib_7git_xet: argument 2"}
!229 = distinct !{!229, !226, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_14RejectAndMatchECs1YANDSn9Kib_7git_xet: argument 3"}
!230 = distinct !{!230, i1 true, !"_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary"}
!231 = distinct !{!231, !230, !"_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary: argument 0"}
!232 = distinct !{!232, !226, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_14RejectAndMatchECs1YANDSn9Kib_7git_xet: argument 0"}
!233 = distinct !{!233, i1 true, !"_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary"}
!234 = distinct !{!234, !233, !"_RNvMNtCskKLDkoKarTP_4core3stre19floor_char_boundary: argument 0"}
!235 = !{!218}
!236 = !{i8 0, i8 2}
!237 = !{!220}
!238 = !{!223, !222}
!239 = !{!225, !223, !222}
!240 = !{!223, !218}
!241 = !{!225, !223, !218}
!242 = !{!227}
!243 = !{!228}
!244 = !{!229}
!245 = !{!227, !218}
!246 = !{!231}
!247 = !{!232, !227, !228, !229, !223, !218}
!248 = !{!234}
end_hunk_1
