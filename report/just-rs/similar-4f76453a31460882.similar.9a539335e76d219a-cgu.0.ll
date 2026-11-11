Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write:bb.a
bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !10093
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
  br i1 %i.r, label %bb.g, label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !10093, !noundef !5
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !10091, !noundef !5
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !10091
  %i.ae = icmp ugt i64 %i.e, 8
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 5 uses
  %i.af = sub nuw nsw i64 8, %.sroa.0.0.i         ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 8
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %._crit_edge.i, label %bb.k

bb.i:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !10091, !noundef !5
  %i.al = xor i64 %i.ak, %i.ad                    ; 3 uses
  %i.am = load i64, ptr %0, align 8, !alias.scope !10094, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !10094, !noundef !5 ; 3 uses
  %i.ap = add i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !10094, !noundef !5
  %i.as = add i64 %i.ar, %i.al                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.au = xor i64 %i.at, %i.ap                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 16)
  %i.aw = xor i64 %i.as, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 32)
  %i.ay = add i64 %i.as, %i.au                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ay, %i.ba
  store i64 %i.bb, ptr %i.an, align 8, !alias.scope !10094
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az
  store i64 %i.bd, ptr %i.aj, align 8, !alias.scope !10094
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !10094
  %i.bf = xor i64 %i.az, %i.ad
  store i64 %i.bf, ptr %0, align 8, !alias.scope !10091
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i
  %i.bg = add i64 %i.e, 8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdftwklc2oBO_7similar.exit

._crit_edge.i:                                    ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.0.0.i, 8
  %.promoted22.i = load i64, ptr %i.bj, align 8, !alias.scope !10095
  %.promoted19.i = load i64, ptr %i.bh, align 8, !alias.scope !10091
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.bl, align 1, !alias.scope !10092 ; 2 uses
  %i.bm = xor i64 %.sroa.07.0.copyload.i, %.promoted19.i ; 3 uses
  %i.bn = add i64 %i.bm, %.promoted22.i           ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 16)
  %i.bp = xor i64 %i.bn, %i.bo                    ; 3 uses
  %.promoted20.i = load i64, ptr %i.bi, align 8, !alias.scope !10095 ; 3 uses
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !10091
  %i.bq = add i64 %.promoted.i, %.promoted20.i    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bs = add i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = xor i64 %i.bs, %.sroa.07.0.copyload.i
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted20.i, i64 %.promoted20.i, i64 13)
  %i.bv = xor i64 %i.bq, %i.bu                    ; 3 uses
  %i.bw = add i64 %i.bv, %i.bn                    ; 3 uses
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 32)
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 21)
  %i.bz = xor i64 %i.bs, %i.by
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 17)
  %i.cb = xor i64 %i.bw, %i.ca
  store i64 %i.bz, ptr %i.bh, align 8, !alias.scope !10091
  store i64 %i.cb, ptr %i.bi, align 8, !alias.scope !10095
  store i64 %i.bx, ptr %i.bj, align 8, !alias.scope !10095
  store i64 %i.bt, ptr %0, align 8, !alias.scope !10091
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %i.bk, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.cc = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.cd, align 1, !alias.scope !10096
  %i.ce = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.ce, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.cf = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.cg = icmp samesign ult i64 %i.cf, %i.ag
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.ci, align 1, !alias.scope !10096
  %i.cj = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.ck = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.cl = shl nuw nsw i64 %i.cj, %i.ck
  %i.cm = or i64 %i.cl, %.sroa.0.0.i11.i
  %i.cn = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.cn, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.cm, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.co = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.co, label %bb.p, label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.cp = add nsw i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 8
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !10096, !noundef !5
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cv = shl nuw nsw i64 %i.ct, %i.cu
  %i.cw = or i64 %i.cv, %.sroa.0.1.i13.i
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.cw, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cx, align 8, !alias.scope !10091
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdftwklc2oBO_7similar.exit

_RNvXs3_NtNtCsj6eKBz9Db1c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdftwklc2oBO_7similar.exit: ; preds = %bb.j, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bg, %bb.j ], [ %i.ag, %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !10091
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs5_NtCs96hDHc8Uzvz_20unicode_segmentation4wordNtB5_11UWordBoundsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 28 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 18 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.cj, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %.promoted378 = load i8, ptr %i.h, align 8      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.lr.ph, %bb.ar
  %.sroa.074.0.ph367616 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.sroa.074.0.ph367606, %bb.ar ] ; 2 uses
  %.sroa.073.0.ph368602 = phi i8 [ 1, %.lr.ph.lr.ph ], [ %.sroa.073.0.ph368592, %bb.ar ] ; 2 uses
  %.promoted381 = phi i8 [ %.promoted378, %.lr.ph.lr.ph ], [ %.promoted379, %bb.ar ] ; 2 uses
  %i.j = phi i8 [ %.promoted378, %.lr.ph.lr.ph ], [ -1, %bb.ar ] ; 2 uses
  %.sroa.011.0355 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.sroa.011.1, %bb.ar ] ; 2 uses
  %.sroa.028.0354 = phi i8 [ 1, %.lr.ph.lr.ph ], [ %.sroa.028.2689, %bb.ar ] ; 2 uses
  %.sroa.050.0353 = phi i8 [ 0, %.lr.ph.lr.ph ], [ %.sroa.050.1, %bb.ar ] ; 2 uses
  %.sroa.42.0352 = phi i8 [ undef, %.lr.ph.lr.ph ], [ %.sroa.42.1, %bb.ar ] ; 2 uses
  %.sroa.0.0136351 = phi ptr [ %i.f, %.lr.ph.lr.ph ], [ %.sroa.0.1660, %bb.ar ] ; 4 uses
  %.sroa.11.0350 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %i.ds, %bb.ar ] ; 2 uses
  %1 = ptrtoint ptr %.sroa.0.0136351 to i64       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0136351, i64 1 ; 2 uses
  %i.l = load i8, ptr %.sroa.0.0136351, align 1, !noalias !10109, !noundef !5 ; 3 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.c, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i

.lr.ph.jt7:                                       ; preds = %.outer.jt7, %bb.at
  %.sroa.074.0.ph367612 = phi i64 [ %.sroa.074.0.ph367617, %bb.at ], [ %.sroa.074.1.jt7, %.outer.jt7 ] ; 7 uses
  %.sroa.073.0.ph368598 = phi i8 [ %.sroa.073.0.ph368603, %bb.at ], [ %.sroa.073.1.jt7, %.outer.jt7 ] ; 7 uses
  %.promoted381.jt7 = phi i8 [ %i.ek, %bb.at ], [ %.promoted380686, %.outer.jt7 ] ; 5 uses
  %.sroa.011.0355.jt7 = phi i1 [ %.sroa.011.0355628, %bb.at ], [ %.sroa.011.0355483.jt7, %.outer.jt7 ] ; 4 uses
  %.sroa.028.0354.jt7 = phi i8 [ %.sroa.028.2, %bb.at ], [ %.sroa.028.2542.jt7, %.outer.jt7 ] ; 2 uses
  %.sroa.42.0352.jt7 = phi i8 [ 1, %bb.at ], [ %.sroa.42.2.jt7, %.outer.jt7 ] ; 6 uses
  %.sroa.0.0136351.jt7 = phi ptr [ %.sroa.0.1, %bb.at ], [ %.sroa.0.1672, %.outer.jt7 ] ; 4 uses
  %.sroa.11.0350.jt7 = phi i64 [ %i.by, %bb.at ], [ %i.el, %.outer.jt7 ] ; 8 uses
  %2 = ptrtoint ptr %.sroa.0.0136351.jt7 to i64   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0136351.jt7, i64 1 ; 8 uses
  %i.o = load i8, ptr %.sroa.0.0136351.jt7, align 1, !noalias !10109, !noundef !5 ; 3 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.e, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i

.lr.ph.jt5:                                       ; preds = %.outer.jt5
  %3 = ptrtoint ptr %.sroa.0.1673 to i64          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1673, i64 1 ; 6 uses
  %i.r = load i8, ptr %.sroa.0.1673, align 1, !noalias !10109, !noundef !5 ; 3 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.f, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i

.lr.ph.jt8:                                       ; preds = %.outer.jt8, %bb.as
  %i.t = phi i8 [ -1, %bb.as ], [ %.promoted380, %.outer.jt8 ] ; 3 uses
  %.sroa.028.0354.jt8 = phi i8 [ %.sroa.028.2, %bb.as ], [ 18, %.outer.jt8 ] ; 2 uses
  %.sroa.050.0353.jt8 = phi i8 [ 9, %bb.as ], [ 8, %.outer.jt8 ] ; 4 uses
  %4 = ptrtoint ptr %.sroa.0.1 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 6 uses
  %i.v = load i8, ptr %.sroa.0.1, align 1, !noalias !10109, !noundef !5 ; 3 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i

.lr.ph.jt10:                                      ; preds = %.outer.jt10
  %5 = ptrtoint ptr %.sroa.0.1668 to i64          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1668, i64 1 ; 6 uses
  %i.y = load i8, ptr %.sroa.0.1668, align 1, !noalias !10109, !noundef !5 ; 3 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.h, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i

.lr.ph.jt6:                                       ; preds = %.outer.jt6
  %6 = ptrtoint ptr %.sroa.0.1669 to i64          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.1669, i64 1 ; 6 uses
  %i.ab = load i8, ptr %.sroa.0.1669, align 1, !noalias !10109, !noundef !5 ; 3 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i

.lr.ph.jt4:                                       ; preds = %.outer.jt4
  %7 = ptrtoint ptr %.sroa.0.1674 to i64          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.1674, i64 1 ; 6 uses
  %i.ae = load i8, ptr %.sroa.0.1674, align 1, !noalias !10109, !noundef !5 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %bb.j, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i

.lr.ph.jt1:                                       ; preds = %.outer.jt1
  %8 = ptrtoint ptr %.sroa.0.1670 to i64          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1670, i64 1 ; 6 uses
  %i.ah = load i8, ptr %.sroa.0.1670, align 1, !noalias !10109, !noundef !5 ; 3 uses
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.k, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i

.lr.ph.jt3:                                       ; preds = %.outer.jt3
  %9 = ptrtoint ptr %.sroa.0.1671 to i64          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.1671, i64 1 ; 6 uses
  %i.ak = load i8, ptr %.sroa.0.1671, align 1, !noalias !10109, !noundef !5 ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.l, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i: ; preds = %.lr.ph.jt7, %.lr.ph.jt5, %.lr.ph.jt8, %.lr.ph.jt10, %.lr.ph.jt6, %.lr.ph.jt4, %.lr.ph.jt1, %.lr.ph.jt3, %bb.b
  %i.am = phi i8 [ %i.o, %.lr.ph.jt7 ], [ %i.r, %.lr.ph.jt5 ], [ %i.v, %.lr.ph.jt8 ], [ %i.y, %.lr.ph.jt10 ], [ %i.ab, %.lr.ph.jt6 ], [ %i.ae, %.lr.ph.jt4 ], [ %i.ah, %.lr.ph.jt1 ], [ %i.ak, %.lr.ph.jt3 ], [ %i.l, %bb.b ] ; 3 uses
  %i.an = phi ptr [ %i.n, %.lr.ph.jt7 ], [ %i.q, %.lr.ph.jt5 ], [ %i.u, %.lr.ph.jt8 ], [ %i.x, %.lr.ph.jt10 ], [ %i.aa, %.lr.ph.jt6 ], [ %i.ad, %.lr.ph.jt4 ], [ %i.ag, %.lr.ph.jt1 ], [ %i.aj, %.lr.ph.jt3 ], [ %i.k, %bb.b ] ; 2 uses
  %10 = phi i64 [ %2, %.lr.ph.jt7 ], [ %3, %.lr.ph.jt5 ], [ %4, %.lr.ph.jt8 ], [ %5, %.lr.ph.jt10 ], [ %6, %.lr.ph.jt6 ], [ %7, %.lr.ph.jt4 ], [ %8, %.lr.ph.jt1 ], [ %9, %.lr.ph.jt3 ], [ %1, %bb.b ] ; 3 uses
  %.sroa.11.0350639 = phi i64 [ %.sroa.11.0350.jt7, %.lr.ph.jt7 ], [ %i.en, %.lr.ph.jt5 ], [ %i.by, %.lr.ph.jt8 ], [ %i.eq, %.lr.ph.jt10 ], [ %i.es, %.lr.ph.jt6 ], [ %i.eu, %.lr.ph.jt4 ], [ %i.ew, %.lr.ph.jt1 ], [ %i.ey, %.lr.ph.jt3 ], [ %.sroa.11.0350, %bb.b ] ; 3 uses
  %.sroa.0.0136351638 = phi ptr [ %.sroa.0.0136351.jt7, %.lr.ph.jt7 ], [ %.sroa.0.1673, %.lr.ph.jt5 ], [ %.sroa.0.1, %.lr.ph.jt8 ], [ %.sroa.0.1668, %.lr.ph.jt10 ], [ %.sroa.0.1669, %.lr.ph.jt6 ], [ %.sroa.0.1674, %.lr.ph.jt4 ], [ %.sroa.0.1670, %.lr.ph.jt1 ], [ %.sroa.0.1671, %.lr.ph.jt3 ], [ %.sroa.0.0136351, %bb.b ] ; 3 uses
  %.sroa.42.0352634 = phi i8 [ %.sroa.42.0352.jt7, %.lr.ph.jt7 ], [ undef, %.lr.ph.jt5 ], [ undef, %.lr.ph.jt8 ], [ undef, %.lr.ph.jt10 ], [ %.sroa.42.2.jt6, %.lr.ph.jt6 ], [ undef, %.lr.ph.jt4 ], [ undef, %.lr.ph.jt1 ], [ undef, %.lr.ph.jt3 ], [ %.sroa.42.0352, %bb.b ] ; 3 uses
  %.sroa.050.0353631 = phi i8 [ 7, %.lr.ph.jt7 ], [ 5, %.lr.ph.jt5 ], [ %.sroa.050.0353.jt8, %.lr.ph.jt8 ], [ 10, %.lr.ph.jt10 ], [ 6, %.lr.ph.jt6 ], [ 4, %.lr.ph.jt4 ], [ %.sroa.050.2.jt1, %.lr.ph.jt1 ], [ 3, %.lr.ph.jt3 ], [ %.sroa.050.0353, %bb.b ] ; 3 uses
  %.sroa.028.0354629 = phi i8 [ %.sroa.028.0354.jt7, %.lr.ph.jt7 ], [ 5, %.lr.ph.jt5 ], [ %.sroa.028.0354.jt8, %.lr.ph.jt8 ], [ 17, %.lr.ph.jt10 ], [ 15, %.lr.ph.jt6 ], [ 8, %.lr.ph.jt4 ], [ %.sroa.028.2542.jt1, %.lr.ph.jt1 ], [ 14, %.lr.ph.jt3 ], [ %.sroa.028.0354, %bb.b ] ; 3 uses
  %.sroa.011.0355620 = phi i1 [ %.sroa.011.0355.jt7, %.lr.ph.jt7 ], [ %.sroa.011.0355483.jt5, %.lr.ph.jt5 ], [ %.sroa.011.0355628, %.lr.ph.jt8 ], [ %.sroa.011.0355483.jt10, %.lr.ph.jt10 ], [ %.sroa.011.0355483.jt6, %.lr.ph.jt6 ], [ %.sroa.011.0355483.jt4, %.lr.ph.jt4 ], [ %.sroa.011.0355483.jt1, %.lr.ph.jt1 ], [ %.sroa.011.0355483.jt3, %.lr.ph.jt3 ], [ %.sroa.011.0355, %bb.b ] ; 3 uses
  %i.ao = phi i8 [ %.promoted381.jt7, %.lr.ph.jt7 ], [ %.promoted380687, %.lr.ph.jt5 ], [ %i.t, %.lr.ph.jt8 ], [ %.promoted380682, %.lr.ph.jt10 ], [ %.promoted380683, %.lr.ph.jt6 ], [ %.promoted380688, %.lr.ph.jt4 ], [ %.promoted380684, %.lr.ph.jt1 ], [ %.promoted380685, %.lr.ph.jt3 ], [ %i.j, %bb.b ] ; 3 uses
  %.promoted381618 = phi i8 [ %.promoted381.jt7, %.lr.ph.jt7 ], [ %.promoted380687, %.lr.ph.jt5 ], [ %.promoted380, %.lr.ph.jt8 ], [ %.promoted380682, %.lr.ph.jt10 ], [ %.promoted380683, %.lr.ph.jt6 ], [ %.promoted380688, %.lr.ph.jt4 ], [ %.promoted380684, %.lr.ph.jt1 ], [ %.promoted380685, %.lr.ph.jt3 ], [ %.promoted381, %bb.b ] ; 3 uses
  %.sroa.074.0.ph367605 = phi i64 [ %.sroa.074.0.ph367612, %.lr.ph.jt7 ], [ %.sroa.074.1.jt5, %.lr.ph.jt5 ], [ %.sroa.074.0.ph367617, %.lr.ph.jt8 ], [ %.sroa.074.1.jt10, %.lr.ph.jt10 ], [ %.sroa.074.1.jt6, %.lr.ph.jt6 ], [ %.sroa.074.1.jt4, %.lr.ph.jt4 ], [ %.sroa.074.1.jt1, %.lr.ph.jt1 ], [ %.sroa.074.1.jt3, %.lr.ph.jt3 ], [ %.sroa.074.0.ph367616, %bb.b ] ; 3 uses
  %.sroa.073.0.ph368591 = phi i8 [ %.sroa.073.0.ph368598, %.lr.ph.jt7 ], [ %.sroa.073.1.jt5, %.lr.ph.jt5 ], [ %.sroa.073.0.ph368603, %.lr.ph.jt8 ], [ %.sroa.073.1.jt10, %.lr.ph.jt10 ], [ %.sroa.073.1.jt6, %.lr.ph.jt6 ], [ %.sroa.073.1.jt4, %.lr.ph.jt4 ], [ %.sroa.073.1.jt1, %.lr.ph.jt1 ], [ %.sroa.073.1.jt3, %.lr.ph.jt3 ], [ %.sroa.073.0.ph368602, %bb.b ] ; 3 uses
  %i.ap = and i8 %i.am, 31
  %i.aq = zext nneg i8 %i.ap to i32               ; 3 uses
  %i.ar = icmp ne ptr %i.an, %i.g
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0136351638, i64 2 ; 3 uses
  %i.at = load i8, ptr %i.an, align 1, !noalias !10109, !noundef !5
  %i.au = shl nuw nsw i32 %i.aq, 6
  %i.av = and i8 %i.at, 63
  %i.aw = zext nneg i8 %i.av to i32               ; 2 uses
  %i.ax = or disjoint i32 %i.au, %i.aw
  %i.ay = icmp samesign ugt i8 %i.am, -33
  br i1 %i.ay, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.az = zext nneg i8 %i.l to i32
  br label %bb.d

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i
  %i.ba = icmp ne ptr %i.as, %i.g
  call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0136351638, i64 3 ; 3 uses
  %i.bc = load i8, ptr %i.as, align 1, !noalias !10109, !noundef !5
  %i.bd = shl nuw nsw i32 %i.aw, 6
  %i.be = and i8 %i.bc, 63
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf            ; 2 uses
  %i.bh = shl nuw nsw i32 %i.aq, 12
  %i.bi = or disjoint i32 %i.bg, %i.bh
  %i.bj = icmp samesign ugt i8 %i.am, -17
  br i1 %i.bj, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i
  %i.bk = icmp ne ptr %i.bb, %i.g
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0136351638, i64 4
  %i.bm = load i8, ptr %i.bb, align 1, !noalias !10109, !noundef !5
  %i.bn = shl nuw nsw i32 %i.aq, 18
  %i.bo = and i32 %i.bn, 1835008
  %i.bp = shl nuw nsw i32 %i.bg, 6
  %i.bq = and i8 %i.bm, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = or disjoint i32 %i.bs, %i.bo
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i, %bb.c, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i
  %11 = phi i64 [ %10, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %10, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %1, %bb.c ], [ %10, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ]
  %.sroa.11.0350659 = phi i64 [ %.sroa.11.0350639, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %.sroa.11.0350639, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %.sroa.11.0350, %bb.c ], [ %.sroa.11.0350639, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 30 uses
  %.sroa.42.0352637 = phi i8 [ %.sroa.42.0352634, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %.sroa.42.0352634, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %.sroa.42.0352, %bb.c ], [ %.sroa.42.0352634, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 5 uses
  %.sroa.050.0353633 = phi i8 [ %.sroa.050.0353631, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %.sroa.050.0353631, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %.sroa.050.0353, %bb.c ], [ %.sroa.050.0353631, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 7 uses
  %.sroa.028.0354630 = phi i8 [ %.sroa.028.0354629, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %.sroa.028.0354629, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %.sroa.028.0354, %bb.c ], [ %.sroa.028.0354629, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ]
  %.sroa.011.0355628 = phi i1 [ %.sroa.011.0355620, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %.sroa.011.0355620, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %.sroa.011.0355, %bb.c ], [ %.sroa.011.0355620, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 18 uses
  %i.bu = phi i8 [ %i.ao, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %i.ao, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %i.j, %bb.c ], [ %i.ao, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 2 uses
  %.promoted381619 = phi i8 [ %.promoted381618, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %.promoted381618, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %.promoted381, %bb.c ], [ %.promoted381618, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ]
  %.sroa.074.0.ph367617 = phi i64 [ %.sroa.074.0.ph367605, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %.sroa.074.0.ph367605, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %.sroa.074.0.ph367616, %bb.c ], [ %.sroa.074.0.ph367605, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 24 uses
  %.sroa.073.0.ph368603 = phi i8 [ %.sroa.073.0.ph368591, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %.sroa.073.0.ph368591, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %.sroa.073.0.ph368602, %bb.c ], [ %.sroa.073.0.ph368591, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 24 uses
  %.sroa.0.1 = phi ptr [ %i.bl, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %i.bb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %i.k, %bb.c ], [ %i.as, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 27 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.bt, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %i.bi, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %i.az, %bb.c ], [ %i.ax, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 3 uses
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.bv)
  %i.bw = ptrtoint ptr %.sroa.0.1 to i64
  %i.bx = sub i64 %.sroa.11.0350659, %11          ; 2 uses
  %i.by = add i64 %i.bx, %i.bw                    ; 26 uses
  %i.bz = icmp eq i8 %.sroa.028.0354630, 18
  %.not115 = icmp eq i8 %i.bu, -1
  br i1 %.not115, label %bb.v, label %bb.m

bb.e:                                             ; preds = %.lr.ph.jt7
  %i.ca = zext nneg i8 %i.o to i32                ; 2 uses
  %i.cb = ptrtoint ptr %i.n to i64
  %i.cc = sub i64 %.sroa.11.0350.jt7, %2
  %i.cd = add i64 %i.cc, %i.cb                    ; 6 uses
  %i.ce = icmp eq i8 %.sroa.028.0354.jt7, 18
  %.not115.jt7 = icmp eq i8 %.promoted381.jt7, -1
  br i1 %.not115.jt7, label %bb.w, label %bb.n

bb.f:                                             ; preds = %.lr.ph.jt5
  %i.cf = ptrtoint ptr %i.q to i64
  %i.cg = sub i64 %i.en, %3
  %i.ch = add i64 %i.cg, %i.cf                    ; 4 uses
  %.not115.jt5 = icmp eq i8 %.promoted380687, -1
  br i1 %.not115.jt5, label %bb.x, label %bb.o

bb.g:                                             ; preds = %.lr.ph.jt8
  %i.ci = zext nneg i8 %i.v to i32                ; 2 uses
  %i.cj = ptrtoint ptr %i.u to i64
  %i.ck = add i64 %i.bx, %i.cj                    ; 4 uses
  %i.cl = icmp eq i8 %.sroa.028.0354.jt8, 18
  %.not115.jt8 = icmp eq i8 %i.t, -1
  br i1 %.not115.jt8, label %bb.y, label %bb.p

bb.h:                                             ; preds = %.lr.ph.jt10
  %i.cm = ptrtoint ptr %i.x to i64
  %i.cn = sub i64 %i.eq, %5
  %i.co = add i64 %i.cn, %i.cm                    ; 4 uses
  %.not115.jt10 = icmp eq i8 %.promoted380682, -1
  br i1 %.not115.jt10, label %bb.z, label %bb.q

bb.i:                                             ; preds = %.lr.ph.jt6
  %i.cp = ptrtoint ptr %i.aa to i64
  %i.cq = sub i64 %i.es, %6
  %i.cr = add i64 %i.cq, %i.cp                    ; 4 uses
  %.not115.jt6 = icmp eq i8 %.promoted380683, -1
  br i1 %.not115.jt6, label %bb.aa, label %bb.r

bb.j:                                             ; preds = %.lr.ph.jt4
  %i.cs = ptrtoint ptr %i.ad to i64
  %i.ct = sub i64 %i.eu, %7
  %i.cu = add i64 %i.ct, %i.cs                    ; 4 uses
  %.not115.jt4 = icmp eq i8 %.promoted380688, -1
  br i1 %.not115.jt4, label %bb.ab, label %bb.s

bb.k:                                             ; preds = %.lr.ph.jt1
  %i.cv = ptrtoint ptr %i.ag to i64
  %i.cw = sub i64 %i.ew, %8
  %i.cx = add i64 %i.cw, %i.cv                    ; 4 uses
  %.not115.jt1 = icmp eq i8 %.promoted380684, -1
  br i1 %.not115.jt1, label %bb.ac, label %bb.t

bb.l:                                             ; preds = %.lr.ph.jt3
  %i.cy = ptrtoint ptr %i.aj to i64
  %i.cz = sub i64 %i.ey, %9
  %i.da = add i64 %i.cz, %i.cy                    ; 4 uses
  %.not115.jt3 = icmp eq i8 %.promoted380685, -1
  br i1 %.not115.jt3, label %bb.ad, label %bb.u

.outer._crit_edge:                                ; preds = %bb.ar
  %i.db = icmp eq i8 %.sroa.050.1, 7
  br i1 %i.db, label %.thread, label %.thread147

bb.m:                                             ; preds = %bb.d
  store i8 -1, ptr %i.h, align 8
  br label %bb.ae

bb.n:                                             ; preds = %bb.e
  store i8 -1, ptr %i.h, align 8
  br label %bb.ag

bb.o:                                             ; preds = %bb.f
  store i8 -1, ptr %i.h, align 8
  br label %bb.ah

bb.p:                                             ; preds = %bb.g
  store i8 -1, ptr %i.h, align 8
  br label %bb.ai

bb.q:                                             ; preds = %bb.h
  store i8 -1, ptr %i.h, align 8
  br label %bb.aj

bb.r:                                             ; preds = %bb.i
  store i8 -1, ptr %i.h, align 8
  br label %bb.ak

bb.s:                                             ; preds = %bb.j
  store i8 -1, ptr %i.h, align 8
  br label %bb.al

bb.t:                                             ; preds = %bb.k
  store i8 -1, ptr %i.h, align 8
  br label %bb.am

bb.u:                                             ; preds = %bb.l
  store i8 -1, ptr %i.h, align 8
  br label %bb.an

bb.v:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs96hDHc8Uzvz_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %.sroa.4.0.i.ph.i)
  %i.dc = load i8, ptr %i.i, align 4, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.w:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs96hDHc8Uzvz_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.ca)
  %i.dd = load i8, ptr %i.i, align 4, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ag

bb.x:                                             ; preds = %bb.f
  %i.de = zext nneg i8 %i.r to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs96hDHc8Uzvz_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.de)
  %i.df = load i8, ptr %i.i, align 4, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.y:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs96hDHc8Uzvz_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.ci)
  %i.dg = load i8, ptr %i.i, align 4, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ai

bb.z:                                             ; preds = %bb.h
  %i.dh = zext nneg i8 %i.y to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs96hDHc8Uzvz_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.dh)
  %i.di = load i8, ptr %i.i, align 4, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.aa:                                            ; preds = %bb.i
  %i.dj = zext nneg i8 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs96hDHc8Uzvz_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.dj)
  %i.dk = load i8, ptr %i.i, align 4, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ab:                                            ; preds = %bb.j
  %i.dl = zext nneg i8 %i.ae to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs96hDHc8Uzvz_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.dl)
  %i.dm = load i8, ptr %i.i, align 4, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.ac:                                            ; preds = %bb.k
  %i.dn = zext nneg i8 %i.ah to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs96hDHc8Uzvz_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.dn)
  %i.do = load i8, ptr %i.i, align 4, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.am

bb.ad:                                            ; preds = %bb.l
  %i.dp = zext nneg i8 %i.ak to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs96hDHc8Uzvz_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.dp)
  %i.dq = load i8, ptr %i.i, align 4, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.an

bb.ae:                                            ; preds = %bb.m, %bb.v
  %.promoted380 = phi i8 [ -1, %bb.m ], [ %.promoted381619, %bb.v ] ; 21 uses
  %.sroa.028.2 = phi i8 [ %i.bu, %bb.m ], [ %i.dc, %bb.v ] ; 19 uses
  %i.dr = icmp eq i8 %.sroa.050.0353633, 0
  br i1 %i.dr, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  switch i8 %.sroa.028.2, label %bb.ao [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.ag:                                            ; preds = %bb.w, %bb.n
  %.promoted380.jt7 = phi i8 [ %.promoted381.jt7, %bb.w ], [ -1, %bb.n ] ; 6 uses
  %.sroa.028.2.jt7 = phi i8 [ %i.dd, %bb.w ], [ %.promoted381.jt7, %bb.n ] ; 7 uses
  switch i8 %.sroa.028.2.jt7, label %bb.ap [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.ah:                                            ; preds = %bb.x, %bb.o
  %.sroa.028.2.jt5 = phi i8 [ %i.df, %bb.x ], [ %.promoted380687, %bb.o ] ; 5 uses
  switch i8 %.sroa.028.2.jt5, label %bb.bd [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.ai:                                            ; preds = %bb.y, %bb.p
  %.promoted380.jt8 = phi i8 [ %.promoted380, %bb.y ], [ -1, %bb.p ] ; 4 uses
  %.sroa.028.2.jt8 = phi i8 [ %i.dg, %bb.y ], [ %i.t, %bb.p ] ; 7 uses
  switch i8 %.sroa.028.2.jt8, label %bb.aq [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.aj:                                            ; preds = %bb.z, %bb.q
  %.sroa.028.2.jt10 = phi i8 [ %i.di, %bb.z ], [ %.promoted380682, %bb.q ] ; 5 uses
  switch i8 %.sroa.028.2.jt10, label %bb.bg [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.ak:                                            ; preds = %bb.aa, %bb.r
  %.sroa.028.2.jt6 = phi i8 [ %i.dk, %bb.aa ], [ %.promoted380683, %bb.r ] ; 5 uses
  switch i8 %.sroa.028.2.jt6, label %bb.be [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ab, %bb.s
  %.sroa.028.2.jt4 = phi i8 [ %i.dm, %bb.ab ], [ %.promoted380688, %bb.s ] ; 5 uses
  switch i8 %.sroa.028.2.jt4, label %bb.bc [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.am:                                            ; preds = %bb.ac, %bb.t
  %.sroa.028.2.jt1 = phi i8 [ %i.do, %bb.ac ], [ %.promoted380684, %bb.t ] ; 5 uses
  switch i8 %.sroa.028.2.jt1, label %bb.ba [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.an:                                            ; preds = %bb.ad, %bb.u
  %.sroa.028.2.jt3 = phi i8 [ %i.dq, %bb.ad ], [ %.promoted380685, %bb.u ] ; 5 uses
  switch i8 %.sroa.028.2.jt3, label %bb.bb [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.ae, %bb.af
  br i1 %i.bz, label %bb.av, label %bb.au

bb.ap:                                            ; preds = %bb.ag
  br i1 %i.ce, label %bb.aw, label %bb.bf

bb.aq:                                            ; preds = %bb.ai
  br i1 %i.cl, label %bb.ax, label %.thread150
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr22tokenize_unicode_words:bb.a
  %.not5.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not5.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_NtNtCs96hDHc8Uzvz_20unicode_segmentation4word11UWordBoundsE11spec_extendCsdftwklc2oBO_7similar.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.noexc13.i, %.lr.ph.i.i.i
  %i.p = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.x, %.noexc13.i ]
  %i.q = phi i64 [ 4, %.lr.ph.i.i.i ], [ %i.y, %.noexc13.i ] ; 3 uses
  %i.r = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.ab, %.noexc13.i ] ; 4 uses
  %.pn.i.i.i = phi { ptr, i64 } [ %i.m, %.lr.ph.i.i.i ], [ %i.ac, %.noexc13.i ]
  %i.s = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.ad, %.noexc13.i ]
  %i.t = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.u = icmp samesign ult i64 %i.r, 576460752303423488
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.r, %i.q
  br i1 %i.v, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCsdftwklc2oBO_7similar.exit.i.i.i, label %bb.e

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCsdftwklc2oBO_7similar.exit.i.i.i: ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !10352, !noalias !10346, !noundef !5
  %.not4.i.i.i = icmp eq i64 %.val.i.i.i, 0
  %i.w = select i1 %.not4.i.i.i, i64 1, i64 2
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef range(i64 1, 0) %i.w, i64 noundef 8, i64 noundef 16)
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !noalias !10346

.noexc12.i:                                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCsdftwklc2oBO_7similar.exit.i.i.i
  %.pre6.i.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !10353, !noalias !10346
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10353, !noalias !10346
  br label %bb.e

bb.e:                                             ; preds = %.noexc12.i, %bb.d
  %i.x = phi ptr [ %i.p, %bb.d ], [ %.pre.i, %.noexc12.i ] ; 2 uses
  %i.y = phi i64 [ %i.q, %bb.d ], [ %.pre6.i.i.i, %.noexc12.i ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.r ; 2 uses
  store ptr %i.s, ptr %i.z, align 8, !noalias !10354, !captures !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.t, ptr %i.aa, align 8, !noalias !10354
  %i.ab = add nuw nsw i64 %i.r, 1                 ; 2 uses
  store i64 %i.ab, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !10353, !noalias !10346
  %i.ac = invoke fastcc { ptr, i64 } @_RNvXs5_NtCs96hDHc8Uzvz_20unicode_segmentation4wordNtB5_11UWordBoundsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #40
          to label %.noexc13.i unwind label %.loopexit.split-lp.i, !noalias !10346 ; 2 uses

.noexc13.i:                                       ; preds = %bb.e
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i11.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_NtNtCs96hDHc8Uzvz_20unicode_segmentation4word11UWordBoundsE11spec_extendCsdftwklc2oBO_7similar.exit.i, label %bb.d

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !10345
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !10345
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !10345
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_NtNtCs96hDHc8Uzvz_20unicode_segmentation4word11UWordBoundsE9from_iterCsdftwklc2oBO_7similar.exit

.loopexit.split-lp.thread.i:                      ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdftwklc2oBO_7similar.exit.i
  %lpad.loopexit.split-lp14.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %bb.e, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCsdftwklc2oBO_7similar.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i = load i64, ptr %i.b, align 8, !noalias !10346 ; 2 uses
  %i.ag = icmp eq i64 %.val.pre.i, 0
  br i1 %i.ag, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECsdftwklc2oBO_7similar.exit.i, label %.loopexit.split-lp.i._crit_edge

.loopexit.split-lp.i._crit_edge:                  ; preds = %.loopexit.split-lp.i
  %.val9.i.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10346
  %i.ah = shl nuw i64 %.val.pre.i, 4
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i._crit_edge, %.loopexit.split-lp.thread.i
  %.val9.i = phi ptr [ %i.i, %.loopexit.split-lp.thread.i ], [ %.val9.i.pre, %.loopexit.split-lp.i._crit_edge ]
  %lpad.phi23.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp14.i, %.loopexit.split-lp.thread.i ], [ %lpad.loopexit.i, %.loopexit.split-lp.i._crit_edge ]
  %.val22.i = phi i64 [ 64, %.loopexit.split-lp.thread.i ], [ %i.ah, %.loopexit.split-lp.i._crit_edge ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val22.i, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10346
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECsdftwklc2oBO_7similar.exit.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_NtNtCs96hDHc8Uzvz_20unicode_segmentation4word11UWordBoundsE11spec_extendCsdftwklc2oBO_7similar.exit.i: ; preds = %.noexc13.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !10355
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_NtNtCs96hDHc8Uzvz_20unicode_segmentation4word11UWordBoundsE9from_iterCsdftwklc2oBO_7similar.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECsdftwklc2oBO_7similar.exit.i: ; preds = %bb.g, %.loopexit.split-lp.i
  %lpad.phi24.i = phi { ptr, i32 } [ %lpad.phi23.i, %bb.g ], [ %lpad.loopexit.i, %.loopexit.split-lp.i ]
  resume { ptr, i32 } %lpad.phi24.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_NtNtCs96hDHc8Uzvz_20unicode_segmentation4word11UWordBoundsE9from_iterCsdftwklc2oBO_7similar.exit: ; preds = %bb.f, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_NtNtCs96hDHc8Uzvz_20unicode_segmentation4word11UWordBoundsE11spec_extendCsdftwklc2oBO_7similar.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr27tokenize_lines_and_newlines(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 14 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit, %bb.a
  %i.e = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.fb, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit ]
  %i.f = phi i64 [ 0, %bb.a ], [ %i.fe, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit ] ; 3 uses
  %.sroa.31.0 = phi i32 [ -2, %bb.a ], [ %.sroa.3.0.i.i.i53, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit ] ; 2 uses
  %.sroa.29.0 = phi i64 [ undef, %bb.a ], [ %.sroa.0.0.i.i.i54, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit ]
  %.sroa.22.0 = phi i64 [ 0, %bb.a ], [ %.sroa.22.551, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.752, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit ] ; 8 uses
  %.not = icmp eq i32 %.sroa.31.0, -2
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %.sroa.0.0 to i64
  %i.h = icmp eq ptr %.sroa.0.0, %i.d
  br i1 %i.h, label %.thread127, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1 ; 3 uses
  %i.j = load i8, ptr %.sroa.0.0, align 1, !noalias !10374, !noundef !5 ; 5 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.e, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i: ; preds = %bb.d
  %i.l = and i8 %i.j, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = icmp ne ptr %i.i, %i.d
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2 ; 3 uses
  %i.p = load i8, ptr %i.i, align 1, !noalias !10374, !noundef !5
  %i.q = shl nuw nsw i32 %i.m, 6
  %i.r = and i8 %i.p, 63
  %i.s = zext nneg i8 %i.r to i32                 ; 2 uses
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = icmp samesign ugt i8 %i.j, -33
  br i1 %i.u, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = zext nneg i8 %i.j to i32
  br label %bb.f

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i
  %i.w = icmp ne ptr %i.o, %i.d
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3 ; 3 uses
  %i.y = load i8, ptr %i.o, align 1, !noalias !10374, !noundef !5
  %i.z = shl nuw nsw i32 %i.s, 6
  %i.aa = and i8 %i.y, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab             ; 2 uses
  %i.ad = shl nuw nsw i32 %i.m, 12
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = icmp samesign ugt i8 %i.j, -17
  br i1 %i.af, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i, label %bb.f

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i
  %i.ag = icmp ne ptr %i.x, %i.d
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.ai = load i8, ptr %i.x, align 1, !noalias !10374, !noundef !5
  %i.aj = shl nuw nsw i32 %i.m, 18
  %i.ak = and i32 %i.aj, 1835008
  %i.al = shl nuw nsw i32 %i.ac, 6
  %i.am = and i8 %i.ai, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ao, %i.ak
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i, %bb.e, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i
  %.sroa.0.4 = phi ptr [ %i.i, %bb.e ], [ %i.ah, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %i.x, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %i.o, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 2 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.v, %bb.e ], [ %i.ap, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i ], [ %i.ae, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i ], [ %i.t, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i ] ; 2 uses
  %i.aq = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = ptrtoint ptr %.sroa.0.4 to i64
  %i.as = sub i64 %.sroa.22.0, %i.g
  %i.at = add i64 %i.as, %i.ar
  br label %bb.h

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread61
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.au = icmp eq i64 %.val, 0
  br i1 %i.au, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECsdftwklc2oBO_7similar.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val27 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.av = shl nuw i64 %.val, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECsdftwklc2oBO_7similar.exit

bb.h:                                             ; preds = %bb.f, %bb.b
  %.sroa.22.1 = phi i64 [ %.sroa.22.0, %bb.b ], [ %i.at, %bb.f ] ; 4 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.b ], [ %.sroa.0.4, %bb.f ] ; 10 uses
  %.sroa.7.0 = phi i32 [ %.sroa.31.0, %bb.b ], [ %.sroa.4.0.i.ph.i, %bb.f ] ; 6 uses
  %.sroa.01.0 = phi i64 [ %.sroa.29.0, %bb.b ], [ %.sroa.22.0, %bb.f ] ; 9 uses
  switch i32 %.sroa.7.0, label %switch.edge [
    i32 -1, label %.thread127
    i32 13, label %.thread132
    i32 10, label %.thread132
  ]

.thread127:                                       ; preds = %bb.c, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

switch.edge:                                      ; preds = %bb.h
  %i.aw = icmp samesign ult i32 %.sroa.7.0, 1114112
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp samesign ult i32 %.sroa.7.0, 128
  br i1 %i.ax, label %bb.k, label %bb.i

bb.i:                                             ; preds = %switch.edge
  %i.ay = icmp samesign ult i32 %.sroa.7.0, 2048
  br i1 %i.ay, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp samesign ult i32 %.sroa.7.0, 65536
  %. = select i1 %i.az, i64 3, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %switch.edge
  %.sroa.09.0 = phi i64 [ 2, %bb.i ], [ %., %bb.j ], [ 1, %switch.edge ]
  %i.ba = add i64 %.sroa.09.0, %.sroa.01.0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  %i.bb = icmp eq ptr %.sroa.0.1, %i.d
  br i1 %i.bb, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.thread, label %.lr.ph.split.preheader

.thread132:                                       ; preds = %bb.h, %bb.h
  %i.bc = icmp samesign ult i32 %.sroa.7.0, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add i64 %.sroa.01.0, 1                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  %i.be = icmp eq ptr %.sroa.0.1, %i.d
  br i1 %i.be, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.thread, label %.lr.ph.split.us.preheader

.lr.ph.split.preheader:                           ; preds = %bb.k
  %3 = ptrtoint ptr %.sroa.0.1 to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.thread132
  %4 = ptrtoint ptr %.sroa.0.1 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %switch.edge25.thr_comm.us
  %i.bf = phi i64 [ %i.cp, %switch.edge25.thr_comm.us ], [ %4, %.lr.ph.split.us.preheader ]
  %.sroa.05.068.us = phi i64 [ %i.cs, %switch.edge25.thr_comm.us ], [ %i.bd, %.lr.ph.split.us.preheader ] ; 2 uses
  %.sroa.0.267.us = phi ptr [ %.sroa.0.6.us, %switch.edge25.thr_comm.us ], [ %.sroa.0.1, %.lr.ph.split.us.preheader ] ; 5 uses
  %.sroa.22.266.us = phi i64 [ %i.cr, %switch.edge25.thr_comm.us ], [ %.sroa.22.1, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.267.us, i64 1 ; 3 uses
  %i.bh = load i8, ptr %.sroa.0.267.us, align 1, !noalias !10375, !noundef !5 ; 5 uses
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %bb.l, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i.us

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i.us: ; preds = %.lr.ph.split.us
  %i.bj = and i8 %i.bh, 31
  %i.bk = zext nneg i8 %i.bj to i32               ; 3 uses
  %i.bl = icmp ne ptr %i.bg, %i.d
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.267.us, i64 2 ; 3 uses
  %i.bn = load i8, ptr %i.bg, align 1, !noalias !10375, !noundef !5
  %i.bo = shl nuw nsw i32 %i.bk, 6
  %i.bp = and i8 %i.bn, 63
  %i.bq = zext nneg i8 %i.bp to i32               ; 2 uses
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = icmp samesign ugt i8 %i.bh, -33
  br i1 %i.bs, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i.us, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i.us: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i.us
  %i.bt = icmp ne ptr %i.bm, %i.d
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.267.us, i64 3 ; 3 uses
  %i.bv = load i8, ptr %i.bm, align 1, !noalias !10375, !noundef !5
  %i.bw = shl nuw nsw i32 %i.bq, 6
  %i.bx = and i8 %i.bv, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bw, %i.by            ; 2 uses
  %i.ca = shl nuw nsw i32 %i.bk, 12
  %i.cb = or disjoint i32 %i.bz, %i.ca
  %i.cc = icmp samesign ugt i8 %i.bh, -17
  br i1 %i.cc, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i.i.i.us, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i.i.i.us: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i.us
  %i.cd = icmp ne ptr %i.bu, %i.d
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.267.us, i64 4
  %i.cf = load i8, ptr %i.bu, align 1, !noalias !10375, !noundef !5
  %i.cg = shl nuw nsw i32 %i.bk, 18
  %i.ch = and i32 %i.cg, 1835008
  %i.ci = shl nuw nsw i32 %i.bz, 6
  %i.cj = and i8 %i.cf, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck
  %i.cm = or disjoint i32 %i.cl, %i.ch
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.cn = zext nneg i8 %i.bh to i32
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us: ; preds = %bb.l, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i.i.i.us, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i.us, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i.us
  %.sroa.0.6.us = phi ptr [ %i.bg, %bb.l ], [ %i.ce, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i.i.i.us ], [ %i.bu, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i.us ], [ %i.bm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i.us ] ; 5 uses
  %.sroa.4.0.i.ph.i.i.i.us = phi i32 [ %i.cn, %bb.l ], [ %i.cm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i.i.i.us ], [ %i.cb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i.us ], [ %i.br, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i.us ] ; 3 uses
  %i.co = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.us, 1114112
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = ptrtoint ptr %.sroa.0.6.us to i64       ; 2 uses
  %i.cq = sub i64 %i.cp, %i.bf
  %i.cr = add i64 %i.cq, %.sroa.22.266.us         ; 3 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.us, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.thread [
    i32 10, label %switch.edge25.thr_comm.us
    i32 13, label %switch.edge25.thr_comm.us
  ]

switch.edge25.thr_comm.us:                        ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us
  %i.cs = add i64 %.sroa.05.068.us, 1             ; 2 uses
  %i.ct = icmp eq ptr %.sroa.0.6.us, %i.d
  br i1 %i.ct, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.thread
  %i.cu = phi i64 [ %i.ee, %.thread ], [ %3, %.lr.ph.split.preheader ]
  %.sroa.05.068 = phi i64 [ %i.es, %.thread ], [ %i.ba, %.lr.ph.split.preheader ] ; 3 uses
  %.sroa.0.267 = phi ptr [ %.sroa.0.6, %.thread ], [ %.sroa.0.1, %.lr.ph.split.preheader ] ; 5 uses
  %.sroa.22.266 = phi i64 [ %i.eg, %.thread ], [ %.sroa.22.1, %.lr.ph.split.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.267, i64 1 ; 3 uses
  %i.cw = load i8, ptr %.sroa.0.267, align 1, !noalias !10375, !noundef !5 ; 5 uses
  %i.cx = icmp sgt i8 %i.cw, -1
  br i1 %i.cx, label %bb.m, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i: ; preds = %.lr.ph.split
  %i.cy = and i8 %i.cw, 31
  %i.cz = zext nneg i8 %i.cy to i32               ; 3 uses
  %i.da = icmp ne ptr %i.cv, %i.d
  tail call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.267, i64 2 ; 3 uses
  %i.dc = load i8, ptr %i.cv, align 1, !noalias !10375, !noundef !5
  %i.dd = shl nuw nsw i32 %i.cz, 6
  %i.de = and i8 %i.dc, 63
  %i.df = zext nneg i8 %i.de to i32               ; 2 uses
  %i.dg = or disjoint i32 %i.dd, %i.df
  %i.dh = icmp samesign ugt i8 %i.cw, -33
  br i1 %i.dh, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit

bb.m:                                             ; preds = %.lr.ph.split
  %i.di = zext nneg i8 %i.cw to i32
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i
  %i.dj = icmp ne ptr %i.db, %i.d
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.267, i64 3 ; 3 uses
  %i.dl = load i8, ptr %i.db, align 1, !noalias !10375, !noundef !5
  %i.dm = shl nuw nsw i32 %i.df, 6
  %i.dn = and i8 %i.dl, 63
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = or disjoint i32 %i.dm, %i.do            ; 2 uses
  %i.dq = shl nuw nsw i32 %i.cz, 12
  %i.dr = or disjoint i32 %i.dp, %i.dq
  %i.ds = icmp samesign ugt i8 %i.cw, -17
  br i1 %i.ds, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i
  %i.dt = icmp ne ptr %i.dk, %i.d
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.267, i64 4
  %i.dv = load i8, ptr %i.dk, align 1, !noalias !10375, !noundef !5
  %i.dw = shl nuw nsw i32 %i.cz, 18
  %i.dx = and i32 %i.dw, 1835008
  %i.dy = shl nuw nsw i32 %i.dp, 6
  %i.dz = and i8 %i.dv, 63
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = or disjoint i32 %i.dy, %i.ea
  %i.ec = or disjoint i32 %i.eb, %i.dx
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i, %bb.m, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i.i.i
  %.sroa.0.6 = phi ptr [ %i.cv, %bb.m ], [ %i.du, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i.i.i ], [ %i.dk, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i ], [ %i.db, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.di, %bb.m ], [ %i.ec, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i.i.i.i ], [ %i.dr, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i.i.i.i ], [ %i.dg, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i.i.i.i ] ; 7 uses
  %i.ed = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = ptrtoint ptr %.sroa.0.6 to i64          ; 2 uses
  %i.ef = sub i64 %i.ee, %i.cu
  %i.eg = add i64 %i.ef, %.sroa.22.266            ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i, label %switch.edge25 [
    i32 10, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.thread
    i32 13, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.thread
  ]

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.thread: ; preds = %switch.edge25.thr_comm.us, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit, %.thread, %.thread132, %bb.k
  %.sroa.05.0.lcssa = phi i64 [ %i.ba, %bb.k ], [ %i.bd, %.thread132 ], [ %.sroa.05.068, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit ], [ %.sroa.05.068, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit ], [ %i.es, %.thread ], [ %i.cs, %switch.edge25.thr_comm.us ], [ %.sroa.05.068.us, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us ] ; 6 uses
  %.sroa.0.0.i.i.i54 = phi i64 [ undef, %bb.k ], [ undef, %.thread132 ], [ %.sroa.22.266, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit ], [ %.sroa.22.266, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit ], [ undef, %.thread ], [ undef, %switch.edge25.thr_comm.us ], [ %.sroa.22.266.us, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us ]
  %.sroa.3.0.i.i.i53 = phi i32 [ -1, %bb.k ], [ -1, %.thread132 ], [ %.sroa.4.0.i.ph.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit ], [ %.sroa.4.0.i.ph.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit ], [ -1, %.thread ], [ -1, %switch.edge25.thr_comm.us ], [ %.sroa.4.0.i.ph.i.i.i.us, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us ]
  %.sroa.0.752 = phi ptr [ %.sroa.0.1, %bb.k ], [ %.sroa.0.1, %.thread132 ], [ %.sroa.0.6, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit ], [ %.sroa.0.6, %.thread ], [ %.sroa.0.6, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit ], [ %.sroa.0.6.us, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us ], [ %.sroa.0.6.us, %switch.edge25.thr_comm.us ]
  %.sroa.22.551 = phi i64 [ %.sroa.22.1, %bb.k ], [ %.sroa.22.1, %.thread132 ], [ %i.eg, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit ], [ %i.eg, %.thread ], [ %i.eg, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit ], [ %i.cr, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.us ], [ %i.cr, %switch.edge25.thr_comm.us ]
  %i.eh = icmp ugt i64 %.sroa.01.0, %.sroa.05.0.lcssa
  %i.ei = icmp ugt i64 %.sroa.05.0.lcssa, %2
  %or.cond.i = or i1 %i.eh, %i.ei
  br i1 %or.cond.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread61, label %bb.n, !prof !30

bb.n:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.thread
  %i.ej = icmp eq i64 %.sroa.01.0, %2
  br i1 %i.ej, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ek = icmp eq i64 %.sroa.01.0, 0
  br i1 %i.ek, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.el = icmp eq i64 %.sroa.05.0.lcssa, %2
  br i1 %i.el, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit

bb.q:                                             ; preds = %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !10376, !noundef !5
  %i.eo = icmp sgt i8 %i.en, -65
  br i1 %i.eo, label %bb.p, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread61, !prof !31

switch.edge25:                                    ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit
  %i.ep = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 128
  br i1 %i.ep, label %.thread, label %bb.r

bb.r:                                             ; preds = %switch.edge25
  %i.eq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 2048
  br i1 %i.eq, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.er = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 65536
  %.26 = select i1 %i.er, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.s, %switch.edge25
  %.sroa.012.0 = phi i64 [ 2, %bb.r ], [ %.26, %bb.s ], [ 1, %switch.edge25 ]
  %i.es = add i64 %.sroa.012.0, %.sroa.05.068     ; 2 uses
  %i.et = icmp eq ptr %.sroa.0.6, %i.d
  br i1 %i.et, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.thread, label %.lr.ph.split

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit: ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.05.0.lcssa
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !10376, !noundef !5
  %i.ew = icmp sgt i8 %i.ev, -65
  br i1 %i.ew, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread61, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread61: ; preds = %bb.q, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsdftwklc2oBO_7similar.exit.thread, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.0, i64 noundef %.sroa.05.0.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #38
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread: ; preds = %bb.p, %bb.n, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  %i.ex = sub nuw i64 %.sroa.05.0.lcssa, %.sroa.01.0
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10377)
  %i.ez = load i64, ptr %i.a, align 8, !range !6, !alias.scope !10377, !noundef !5
  %i.fa = icmp eq i64 %i.f, %i.ez
  br i1 %i.fa, label %bb.t, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit

bb.t:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #34
          to label %._RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit_crit_edge: ; preds = %bb.t
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !10377
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit: ; preds = %._RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit_crit_edge, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  %i.fb = phi ptr [ %.pre, %._RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsdftwklc2oBO_7similar.exit_crit_edge ], [ %i.e, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.f ; 2 uses
  store ptr %i.ey, ptr %i.fc, align 8, !noalias !10378, !captures !33
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %i.ex, ptr %i.fd, align 8, !noalias !10377
  %i.fe = add i64 %i.f, 1                         ; 2 uses
  store i64 %i.fe, ptr %i.c, align 8, !alias.scope !10377
  br label %bb.b

bb.u:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread61
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECsdftwklc2oBO_7similar.exit: ; preds = %bb.g, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp155
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr5slice(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %2, %3
  %i.b = icmp ugt i64 %3, %1
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, %1
  br i1 %i.c, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.e = icmp eq i64 %3, %1
  br i1 %i.e, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !10381, !noundef !5
  %i.h = icmp sgt i8 %i.g, -65
  br i1 %i.h, label %bb.d, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3, !prof !31

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !10381, !noundef !5
  %i.k = icmp sgt i8 %i.j, -65
  br i1 %i.k, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3: ; preds = %bb.e, %bb.a, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #37
  unreachable

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread: ; preds = %bb.d, %bb.b, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  %i.l = sub nuw i64 %3, %2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.n = insertvalue { ptr, i64 } poison, ptr %i.m, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %i.l, 1
  ret { ptr, i64 } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsj6eKBz9Db1c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10386)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10386, !noundef !5 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !6, !alias.scope !10387, !noundef !5
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdftwklc2oBO_7similar.exit.i, !prof !13

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdftwklc2oBO_7similar.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdftwklc2oBO_7similar.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !10386, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdftwklc2oBO_7similar.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdftwklc2oBO_7similar.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !10386
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !10386
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !10386
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !10386
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !10386
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !10386
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !10386
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !10386
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !10386
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !10386
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !10386
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10396)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10397, !noundef !5 ; 5 uses
end_hunk_1
