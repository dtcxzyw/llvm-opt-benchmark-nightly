inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 126
begin_hunk_0_@hor_8x8_c:bb.a
  store i32 %i.p, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 %1 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11
  %i.u = zext i8 %i.t to i32
  %i.v = mul nuw i32 %i.u, 16843009               ; 2 uses
  store i32 %i.v, ptr %i.r, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !11
  %i.x = getelementptr inbounds i8, ptr %i.r, i64 %1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nuw i32 %i.aa, 16843009             ; 2 uses
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !11
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %1 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nuw i32 %i.ag, 16843009             ; 2 uses
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !11
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.am = zext i8 %i.al to i32
  %i.an = mul nuw i32 %i.am, 16843009             ; 2 uses
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !11
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 %1 ; 2 uses
  %i.aq = load i8, ptr %2, align 1, !tbaa !11
  %i.ar = zext i8 %i.aq to i32
  %i.as = mul nuw i32 %i.ar, 16843009             ; 2 uses
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @dc_8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = zext i8 %i.v to i32
  %i.x = load i8, ptr %3, align 1, !tbaa !11
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.b, 8
  %i.av = add nuw nsw i32 %i.au, %i.e
  %i.aw = add nuw nsw i32 %i.av, %i.h
  %i.ax = add nuw nsw i32 %i.aw, %i.k
  %i.ay = add nuw nsw i32 %i.ax, %i.n
  %i.az = add nuw nsw i32 %i.ay, %i.q
  %i.ba = add nuw nsw i32 %i.az, %i.t
  %i.bb = add nuw nsw i32 %i.ba, %i.w
  %i.bc = add nuw nsw i32 %i.bb, %i.y
  %i.bd = add nuw nsw i32 %i.bc, %i.ab
  %i.be = add nuw nsw i32 %i.bd, %i.ae
  %i.bf = add nuw nsw i32 %i.be, %i.ah
  %i.bg = add nuw nsw i32 %i.bf, %i.ak
  %i.bh = add nuw nsw i32 %i.bg, %i.an
  %i.bi = add nuw nsw i32 %i.bh, %i.aq
  %i.bj = add nuw nsw i32 %i.bi, %i.at
  %i.bk = lshr i32 %i.bj, 4
  %i.bl = mul nuw i32 %i.bk, 16843009             ; 16 uses
  store i32 %i.bl, ptr %0, align 4, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !11
  %i.bn = getelementptr inbounds i8, ptr %0, i64 %1 ; 3 uses
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !11
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %1 ; 3 uses
  store i32 %i.bl, ptr %i.bp, align 4, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.bl, ptr %i.bq, align 4, !tbaa !11
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 %1 ; 3 uses
  store i32 %i.bl, ptr %i.br, align 4, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %i.bl, ptr %i.bs, align 4, !tbaa !11
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %1 ; 3 uses
  store i32 %i.bl, ptr %i.bt, align 4, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bl, ptr %i.bu, align 4, !tbaa !11
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %1 ; 3 uses
  store i32 %i.bl, ptr %i.bv, align 4, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.bl, ptr %i.bw, align 4, !tbaa !11
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %1 ; 3 uses
  store i32 %i.bl, ptr %i.bx, align 4, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.bl, ptr %i.by, align 4, !tbaa !11
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %1 ; 2 uses
  store i32 %i.bl, ptr %i.bz, align 4, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.bl, ptr %i.ca, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @diag_downleft_8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = add nuw nsw i16 %i.b, 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  %i.i = zext i8 %i.h to i16                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 7 ; 8 uses
  %i.k = mul nuw nsw i16 %i.i, 3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.m = getelementptr inbounds i8, ptr %0, i64 %1 ; 4 uses
  %i.n = load <4 x i8>, ptr %i.c, align 1, !tbaa !11
  %i.o = load <4 x i8>, ptr %i.d, align 1, !tbaa !11
  %i.p = load <4 x i8>, ptr %i.f, align 1, !tbaa !11
  %i.q = zext <4 x i8> %i.n to <4 x i16>          ; 3 uses
  %i.r = extractelement <4 x i16> %i.q, i64 0
  %i.s = shl nuw nsw i16 %i.r, 1
  %i.t = add nuw nsw i16 %i.e, %i.s
  %i.u = zext <4 x i8> %i.o to <4 x i16>          ; 2 uses
  %i.v = extractelement <4 x i16> %i.q, i64 1
  %i.w = add nuw nsw i16 %i.t, %i.v
  %i.x = lshr i16 %i.w, 2
  %i.y = trunc nuw i16 %i.x to i8
  %i.z = zext <4 x i8> %i.p to <4 x i16>          ; 2 uses
  %i.aa = shl nuw nsw <4 x i16> %i.u, splat (i16 1)
  %i.ab = add nuw nsw <4 x i16> %i.q, splat (i16 2)
  %i.ac = add nuw nsw <4 x i16> %i.ab, %i.aa
  %i.ad = add nuw nsw <4 x i16> %i.ac, %i.z
  %i.ae = lshr <4 x i16> %i.ad, splat (i16 2)
  %i.af = trunc <4 x i16> %i.ae to <4 x i8>       ; 5 uses
  %i.ag = extractelement <4 x i16> %i.z, i64 3    ; 2 uses
  %i.ah = shl nuw nsw i16 %i.ag, 1
  %i.ai = extractelement <4 x i16> %i.u, i64 3
  %i.aj = add nuw nsw i16 %i.ai, 2
  %i.ak = add nuw nsw i16 %i.aj, %i.ah
  %i.al = add nuw nsw i16 %i.ak, %i.i
  %i.am = lshr i16 %i.al, 2
  %i.an = trunc nuw i16 %i.am to i8               ; 6 uses
  %i.ao = add nuw nsw i16 %i.ag, 2
  %i.ap = add nuw nsw i16 %i.ao, %i.k
  %i.aq = lshr i16 %i.ap, 2
  %i.ar = trunc nuw i16 %i.aq to i8               ; 7 uses
  store i8 %i.y, ptr %0, align 1
  %i.as = extractelement <4 x i8> %i.af, i64 1
  store <4 x i8> %i.af, ptr %.sroa.4.0..sroa_idx, align 1
  store i8 %i.an, ptr %.sroa.12.0..sroa_idx, align 1
  store i8 %i.ar, ptr %.sroa.14.0..sroa_idx, align 1
  %i.at = load i8, ptr %i.j, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.l, i8 %i.at, i64 1, i1 false)
  store <4 x i8> %i.af, ptr %i.m, align 1
  %.sroa.12.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i8 %i.an, ptr %.sroa.12.1..sroa_idx, align 1
  %.sroa.14.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  store i8 %i.ar, ptr %.sroa.14.1..sroa_idx, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.av = load i8, ptr %i.j, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.au, i8 %i.av, i64 2, i1 false)
  %i.aw = shl nsw i64 %1, 1
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw ; 6 uses
  store i8 %i.as, ptr %i.ax, align 1
  %.sroa.8.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.ay = extractelement <4 x i8> %i.af, i64 2    ; 2 uses
  store i8 %i.ay, ptr %.sroa.8.2..sroa_idx, align 1
  %.sroa.10.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = extractelement <4 x i8> %i.af, i64 3    ; 3 uses
  store i8 %i.az, ptr %.sroa.10.2..sroa_idx, align 1
  %.sroa.12.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %i.an, ptr %.sroa.12.2..sroa_idx, align 1
  %.sroa.14.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i8 %i.ar, ptr %.sroa.14.2..sroa_idx, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 5
  %i.bb = load i8, ptr %i.j, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ba, i8 %i.bb, i64 3, i1 false)
  %i.bc = mul nsw i64 %1, 3
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.bc ; 5 uses
  store i8 %i.ay, ptr %i.bd, align 1
  %.sroa.10.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.az, ptr %.sroa.10.3..sroa_idx, align 1
  %.sroa.12.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i8 %i.an, ptr %.sroa.12.3..sroa_idx, align 1
  %.sroa.14.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  store i8 %i.ar, ptr %.sroa.14.3..sroa_idx, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i8, ptr %i.j, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.be, i8 %i.bf, i64 4, i1 false)
  %i.bg = shl nsw i64 %1, 2
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg ; 4 uses
  store i8 %i.az, ptr %i.bh, align 1
  %.sroa.12.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.an, ptr %.sroa.12.4..sroa_idx, align 1
  %.sroa.14.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.ar, ptr %.sroa.14.4..sroa_idx, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bj = load i8, ptr %i.j, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bi, i8 %i.bj, i64 5, i1 false)
  %i.bk = mul nsw i64 %1, 5
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk ; 3 uses
  store i8 %i.an, ptr %i.bl, align 1
  %.sroa.14.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.ar, ptr %.sroa.14.5..sroa_idx, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i8, ptr %i.j, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bm, i8 %i.bn, i64 6, i1 false)
  %i.bo = mul nsw i64 %1, 6
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 2 uses
  store i8 %i.ar, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.j, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bq, i8 %i.br, i64 7, i1 false)
  %i.bs = mul nsw i64 %1, 7
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bs
  %i.bu = load i8, ptr %i.j, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.bt, i8 %i.bu, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @diag_downright_8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = zext i8 %i.f to i16                      ; 3 uses
  %i.h = shl nuw nsw i16 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i16                      ; 2 uses
  %i.l = shl nuw nsw i16 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = zext i8 %i.n to i16
  %i.p = add nuw nsw i16 %i.g, 2
  %i.q = add nuw nsw i16 %i.p, %i.l
  %i.r = add nuw nsw i16 %i.q, %i.o
  %i.s = lshr i16 %i.r, 2
  %i.t = trunc nuw i16 %i.s to i8
  %i.u = getelementptr inbounds i8, ptr %3, i64 -1
  %i.v = load <8 x i8>, ptr %2, align 1, !tbaa !11 ; 3 uses
  %i.w = load <2 x i8>, ptr %i.u, align 1, !tbaa !11
  %i.x = shufflevector <2 x i8> %i.w, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.y = shufflevector <8 x i8> %i.v, <8 x i8> %i.x, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 7>
  %i.z = zext <8 x i8> %i.y to <8 x i16>
  %i.aa = shufflevector <8 x i8> %i.v, <8 x i8> %i.x, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 6, i32 8>
  %i.ab = zext <8 x i8> %i.aa to <8 x i16>
  %i.ac = shufflevector <8 x i8> %i.v, <8 x i8> %i.x, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 9>
  %i.ad = zext <8 x i8> %i.ac to <8 x i16>
  %i.ae = shl nuw nsw <8 x i16> %i.ab, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0, i16 1>
  %i.af = shl nuw nsw <8 x i16> %i.ad, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0>
  %i.ag = add nuw nsw <8 x i16> %i.z, splat (i16 2) ; 2 uses
  %i.ah = add nuw nsw <8 x i16> %i.ag, %i.ae
  %i.ai = add nuw nsw <8 x i16> %i.ah, %i.af
  %i.aj = lshr <8 x i16> %i.ai, splat (i16 2)
  %i.ak = trunc <8 x i16> %i.aj to <8 x i8>       ; 5 uses
  %i.al = bitcast <8 x i8> %i.ak to i64           ; 4 uses
  %i.am = load <4 x i8>, ptr %3, align 1, !tbaa !11
  %i.an = load <4 x i8>, ptr %i.c, align 1, !tbaa !11
  %i.ao = load i8, ptr %i.d, align 1, !tbaa !11
  %i.ap = zext <4 x i8> %i.an to <4 x i16>        ; 2 uses
  %i.aq = extractelement <4 x i16> %i.ap, i64 3   ; 2 uses
  %i.ar = shl nuw nsw i16 %i.aq, 1
  %i.as = zext i8 %i.ao to i16
  %i.at = zext <4 x i8> %i.am to <4 x i16>        ; 2 uses
  %i.au = add nuw nsw i16 %i.as, 2
  %i.av = add nuw nsw i16 %i.au, %i.ar
  %i.aw = add nuw nsw i16 %i.av, %i.g
  %i.ax = lshr i16 %i.aw, 2
  %i.ay = trunc nuw i16 %i.ax to i8               ; 3 uses
  %i.az = add nuw nsw i16 %i.aq, 2
  %i.ba = add nuw nsw i16 %i.az, %i.h
  %i.bb = add nuw nsw i16 %i.ba, %i.k
  %i.bc = lshr i16 %i.bb, 2
  %i.bd = trunc nuw i16 %i.bc to i8               ; 2 uses
  %i.be = shl nuw nsw <4 x i16> %i.at, splat (i16 1)
  %i.bf = shufflevector <8 x i16> %i.ag, <8 x i16> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x i16> %i.bf, <4 x i16> %i.at, <4 x i32> <i32 0, i32 poison, i32 5, i32 6>
  %i.bh = insertelement <4 x i16> %i.bg, i16 %i.b, i64 1
  %i.bi = add nuw nsw <4 x i16> %i.bh, <i16 0, i16 2, i16 2, i16 2>
  %i.bj = add nuw nsw <4 x i16> %i.bi, %i.be
  %i.bk = add nuw nsw <4 x i16> %i.bj, %i.ap
  %i.bl = lshr <4 x i16> %i.bk, splat (i16 2)
  %i.bm = trunc <4 x i16> %i.bl to <4 x i8>       ; 5 uses
  %i.bn = bitcast <4 x i8> %i.bm to i32           ; 3 uses
  %.sroa.0.7.extract.trunc = extractelement <8 x i8> %i.ak, i64 7
  store i8 %.sroa.0.7.extract.trunc, ptr %0, align 1
  %.sroa_idx80 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store <4 x i8> %i.bm, ptr %.sroa_idx80, align 1
  %.sroa_idx81 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ay, ptr %.sroa_idx81, align 1
  %.sroa_idx82 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.bd, ptr %.sroa_idx82, align 1
  %.sroa_idx83 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.t, ptr %.sroa_idx83, align 1
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %1 ; 4 uses
  %bc = bitcast <8 x i8> %i.ak to <4 x i16>
  %.sroa.0.6.extract.trunc = extractelement <4 x i16> %bc, i64 3
  store i16 %.sroa.0.6.extract.trunc, ptr %i.bo, align 1
  %.sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store <4 x i8> %i.bm, ptr %.sroa_idx69, align 1
  %.sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  store i8 %i.ay, ptr %.sroa_idx70, align 1
  %.sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.bo, i64 7
  store i8 %i.bd, ptr %.sroa_idx71, align 1
  %i.bp = shl nsw i64 %1, 1
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp ; 3 uses
  %.sroa.0.5.extract.shift = lshr i64 %i.al, 40
  %.sroa.0.5.extract.trunc = trunc nuw i64 %.sroa.0.5.extract.shift to i24
  store i24 %.sroa.0.5.extract.trunc, ptr %i.bq, align 1
  %.sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  store <4 x i8> %i.bm, ptr %.sroa_idx61, align 1
  %.sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.bq, i64 7
  store i8 %i.ay, ptr %.sroa_idx62, align 1
  %i.br = mul nsw i64 %1, 3
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.br ; 2 uses
  %bc95 = bitcast <8 x i8> %i.ak to <2 x i32>
  %.sroa.0.4.extract.trunc = extractelement <2 x i32> %bc95, i64 1
  store i32 %.sroa.0.4.extract.trunc, ptr %i.bs, align 1
  %.sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store <4 x i8> %i.bm, ptr %.sroa_idx56, align 1
  %i.bt = shl nsw i64 %1, 2
  %i.bu = getelementptr inbounds i8, ptr %0, i64 %i.bt ; 2 uses
  %.sroa.0.3.extract.shift = lshr i64 %i.al, 24
  %.sroa.0.3.extract.trunc = trunc nuw i64 %.sroa.0.3.extract.shift to i40
  %.sroa.11.8.extract.trunc = trunc i32 %i.bn to i24
  store i40 %.sroa.0.3.extract.trunc, ptr %i.bu, align 1
  %.sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.bu, i64 5
  store i24 %.sroa.11.8.extract.trunc, ptr %.sroa_idx53, align 1
  %i.bv = mul nsw i64 %1, 5
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv ; 2 uses
  %.sroa.0.2.extract.shift = lshr i64 %i.al, 16
  %.sroa.0.2.extract.trunc = trunc nuw i64 %.sroa.0.2.extract.shift to i48
  %.sroa.11.8.extract.trunc89 = trunc i32 %i.bn to i16
  store i48 %.sroa.0.2.extract.trunc, ptr %i.bw, align 1
  %.sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  store i16 %.sroa.11.8.extract.trunc89, ptr %.sroa_idx50, align 1
  %i.bx = mul nsw i64 %1, 6
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx ; 2 uses
  %.sroa.0.1.extract.shift = lshr i64 %i.al, 8
  %.sroa.0.1.extract.trunc = trunc nuw i64 %.sroa.0.1.extract.shift to i56
  %.sroa.11.8.extract.trunc91 = trunc i32 %i.bn to i8
  store i56 %.sroa.0.1.extract.trunc, ptr %i.by, align 1
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 7
  store i8 %.sroa.11.8.extract.trunc91, ptr %.sroa_idx, align 1
  %i.bz = mul nsw i64 %1, 7
  %i.ca = getelementptr inbounds i8, ptr %0, i64 %i.bz
  store <8 x i8> %i.ak, ptr %i.ca, align 1
  ret void
end_hunk_0
begin_hunk_1_@hor_down_8x8_c:bb.a
  %i.cz = extractelement <4 x i16> %i.cw, i64 2
  %i.da = add nuw nsw i16 %i.cz, 2
  %i.db = add nuw nsw i16 %i.da, %i.cy
  %i.dc = add nuw nsw i16 %i.db, %i.bk
  %i.dd = lshr i16 %i.dc, 2
  %i.de = trunc nuw i16 %i.dd to i8               ; 2 uses
  %i.df = add nuw nsw i16 %i.cx, 2
  %i.dg = add nuw nsw i16 %i.df, %i.by
  %i.dh = add nuw nsw i16 %i.dg, %i.cb
  %i.di = lshr i16 %i.dh, 2
  %i.dj = trunc nuw i16 %i.di to i8
  %i.dk = load i8, ptr %3, align 1, !tbaa !11
  %i.dl = load i8, ptr %i.s, align 1, !tbaa !11
  %i.dm = zext i8 %i.ch to i16                    ; 4 uses
  %i.dn = zext i8 %i.cv to i16
  %i.do = zext i8 %i.dk to i16
  %i.dp = zext i8 %i.t to i16
  %i.dq = zext i8 %i.dl to i16                    ; 3 uses
  %i.dr = shufflevector <4 x i16> %i.cw, <4 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 2>
  %i.ds = insertelement <4 x i16> %i.dr, i16 %i.dm, i64 0
  %i.dt = insertelement <4 x i16> %i.ds, i16 %i.do, i64 1
  %i.du = insertelement <4 x i16> %i.dt, i16 %i.dn, i64 2 ; 2 uses
  %i.dv = shl nuw nsw <4 x i16> %i.du, <i16 0, i16 1, i16 1, i16 1>
  %i.dw = add nuw nsw i16 %i.ck, %i.dm
  %i.dx = lshr i16 %i.dw, 2
  %i.dy = trunc nuw i16 %i.dx to i8
  %.sroa.0.11..11..sroa_idx102 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 11
  store i8 %i.dy, ptr %.sroa.0.11..11..sroa_idx102, align 1, !tbaa !11
  %i.dz = add nuw nsw i16 %i.dm, 1                ; 2 uses
  %i.ea = add nuw nsw i16 %i.dz, %i.dq
  %i.eb = lshr i16 %i.ea, 1
  %i.ec = trunc nuw i16 %i.eb to i8
  %.sroa.0.14..14..sroa_idx107 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 14
  store i8 %i.ec, ptr %.sroa.0.14..14..sroa_idx107, align 2, !tbaa !11
  %i.ed = add nuw nsw i16 %i.dz, %i.br
  %i.ee = lshr i16 %i.ed, 1
  %i.ef = trunc nuw i16 %i.ee to i8
  %.sroa.0.12..12..sroa_idx104 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  store i8 %i.ef, ptr %.sroa.0.12..12..sroa_idx104, align 4, !tbaa !11
  %i.eg = shufflevector <4 x i16> %i.du, <4 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.eh = insertelement <4 x i16> %i.eg, i16 %i.dq, i64 0
  %i.ei = insertelement <4 x i16> %i.eh, i16 %i.dp, i64 1
  %i.ej = shl nuw nsw <4 x i16> %i.ei, <i16 1, i16 0, i16 0, i16 0>
  %i.ek = add nuw nsw <4 x i16> %i.ej, splat (i16 2)
  %i.el = add nuw nsw <4 x i16> %i.ek, %i.dv
  %i.em = add nuw nsw <4 x i16> %i.el, %i.cw
  %i.en = lshr <4 x i16> %i.em, splat (i16 2)
  %i.eo = trunc <4 x i16> %i.en to <4 x i8>       ; 3 uses
  %i.ep = bitcast <4 x i8> %i.eo to i32           ; 2 uses
  %i.eq = shl nuw nsw i16 %i.dm, 1
  %i.er = add nuw nsw i16 %i.dq, 2
  %i.es = add nuw nsw i16 %i.er, %i.eq
  %i.et = add nuw nsw i16 %i.es, %i.br
  %i.eu = lshr i16 %i.et, 2
  %i.ev = trunc nuw i16 %i.eu to i8
  %.sroa.0.13..13..sroa_idx105 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 13
  store i8 %i.ev, ptr %.sroa.0.13..13..sroa_idx105, align 1, !tbaa !11
  %.sroa.0.14..14..sroa_idx106 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 14
  %.sroa.0.14..sroa.0.14..14.63 = load i8, ptr %.sroa.0.14..14..sroa_idx106, align 2
  store i8 %.sroa.0.14..sroa.0.14..14.63, ptr %0, align 1
  %.sroa_idx71 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store <4 x i8> %i.eo, ptr %.sroa_idx71, align 1
  %.sroa_idx72 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.de, ptr %.sroa_idx72, align 1
  %.sroa_idx73 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.dj, ptr %.sroa_idx73, align 1
  %.sroa_idx74 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.ct, ptr %.sroa_idx74, align 1
  %i.ew = getelementptr inbounds i8, ptr %0, i64 %1 ; 3 uses
  %.sroa.0.12..12..sroa_idx103 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  %.sroa.0.12..sroa.0.12..12.57 = load i24, ptr %.sroa.0.12..12..sroa_idx103, align 4
  store i24 %.sroa.0.12..sroa.0.12..12.57, ptr %i.ew, align 1
  %.sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.ew, i64 3
  store <4 x i8> %i.eo, ptr %.sroa_idx61, align 1
  %.sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.ew, i64 7
  store i8 %i.de, ptr %.sroa_idx62, align 1
  %i.ex = shl nsw i64 %1, 1
  %i.ey = getelementptr inbounds i8, ptr %0, i64 %i.ex ; 2 uses
  %.sroa.0.10..10..sroa_idx100 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 10
  %.sroa.0.10..sroa.0.10..10.54 = load i40, ptr %.sroa.0.10..10..sroa_idx100, align 2
  %.sroa.25.15.extract.trunc = trunc i32 %i.ep to i24
  store i40 %.sroa.0.10..sroa.0.10..10.54, ptr %i.ey, align 1
  %.sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.ey, i64 5
  store i24 %.sroa.25.15.extract.trunc, ptr %.sroa_idx56, align 1
  %i.ez = mul nsw i64 %1, 3
  %i.fa = getelementptr inbounds i8, ptr %0, i64 %i.ez ; 2 uses
  %.sroa.0.8..8..sroa_idx97 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..8.52 = load i56, ptr %.sroa.0.8..8..sroa_idx97, align 8
  %.sroa.25.15.extract.trunc85 = trunc i32 %i.ep to i8
  store i56 %.sroa.0.8..sroa.0.8..8.52, ptr %i.fa, align 1
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 7
  store i8 %.sroa.25.15.extract.trunc85, ptr %.sroa_idx, align 1
  %i.fb = shl nsw i64 %1, 2
  %i.fc = getelementptr inbounds i8, ptr %0, i64 %i.fb
  %.sroa.0.6..6..sroa_idx94 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 6
  %.sroa.0.6..sroa.0.6..6. = load i64, ptr %.sroa.0.6..6..sroa_idx94, align 2
  store i64 %.sroa.0.6..sroa.0.6..6., ptr %i.fc, align 1
  %i.fd = mul nsw i64 %1, 5
  %i.fe = getelementptr inbounds i8, ptr %0, i64 %i.fd
  %.sroa.0.4..4..sroa_idx91 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.4..sroa.0.4..4. = load i64, ptr %.sroa.0.4..4..sroa_idx91, align 4
  store i64 %.sroa.0.4..sroa.0.4..4., ptr %i.fe, align 1
  %i.ff = mul nsw i64 %1, 6
  %i.fg = getelementptr inbounds i8, ptr %0, i64 %i.ff
  %.sroa.0.2..2..sroa_idx88 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.2..sroa.0.2..2. = load i64, ptr %.sroa.0.2..2..sroa_idx88, align 2
  store i64 %.sroa.0.2..sroa.0.2..2., ptr %i.fg, align 1
  %i.fh = mul nsw i64 %1, 7
  %i.fi = getelementptr inbounds i8, ptr %0, i64 %i.fh
  %.sroa.0.0..sroa.0.0..0. = load i64, ptr %.sroa.0, align 16
  store i64 %.sroa.0.0..sroa.0.0..0., ptr %i.fi, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @vert_left_8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i16                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = add nuw nsw i16 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.f = add nuw nsw i16 %i.b, 2
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i16                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 7 ; 8 uses
  %i.l = mul nuw nsw i16 %i.j, 3
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.1154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.1255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.m = getelementptr i8, ptr %0, i64 7
  %i.n = getelementptr inbounds i8, ptr %0, i64 %1 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.o = getelementptr i8, ptr %i.n, i64 7
  %i.p = shl nsw i64 %1, 1
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 4 uses
  %.sroa.1154.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.1255.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.r = getelementptr i8, ptr %i.q, i64 6
  %i.s = mul nsw i64 %1, 3
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s ; 4 uses
  %i.u = load <4 x i8>, ptr %i.c, align 1, !tbaa !11
  %i.v = load <4 x i8>, ptr %i.e, align 1, !tbaa !11
  %i.w = load <4 x i8>, ptr %i.g, align 1, !tbaa !11
  %i.x = zext <4 x i8> %i.u to <4 x i16>          ; 5 uses
  %i.y = extractelement <4 x i16> %i.x, i64 0     ; 2 uses
  %i.z = add nuw nsw i16 %i.d, %i.y
  %i.aa = lshr i16 %i.z, 1
  %i.ab = trunc nuw i16 %i.aa to i8
  %i.ac = shl nuw nsw i16 %i.y, 1
  %i.ad = add nuw nsw i16 %i.f, %i.ac
  %i.ae = zext <4 x i8> %i.v to <4 x i16>         ; 3 uses
  %i.af = extractelement <4 x i16> %i.x, i64 1
  %i.ag = add nuw nsw i16 %i.ad, %i.af
  %i.ah = lshr i16 %i.ag, 2
  %i.ai = trunc nuw i16 %i.ah to i8
  %i.aj = zext <4 x i8> %i.w to <4 x i16>         ; 2 uses
  %i.ak = extractelement <4 x i16> %i.ae, i64 3   ; 2 uses
  %i.al = shl nuw nsw <4 x i16> %i.ae, splat (i16 1)
  %i.am = add nuw nsw <4 x i16> %i.x, splat (i16 2)
  %i.an = add nuw nsw <4 x i16> %i.am, %i.al
  %i.ao = add nuw nsw <4 x i16> %i.an, %i.aj
  %i.ap = lshr <4 x i16> %i.ao, splat (i16 2)
  %i.aq = trunc <4 x i16> %i.ap to <4 x i8>       ; 5 uses
  %i.ar = add nuw nsw i16 %i.ak, 1
  %i.as = extractelement <4 x i16> %i.aj, i64 3   ; 4 uses
  %i.at = add nuw nsw i16 %i.ar, %i.as
  %i.au = lshr i16 %i.at, 1
  %i.av = trunc nuw i16 %i.au to i8               ; 4 uses
  %i.aw = shl nuw nsw i16 %i.as, 1
  %i.ax = add nuw nsw i16 %i.ak, 2
  %i.ay = add nuw nsw i16 %i.ax, %i.aw
  %i.az = add nuw nsw i16 %i.ay, %i.j
  %i.ba = lshr i16 %i.az, 2
  %i.bb = trunc nuw i16 %i.ba to i8               ; 4 uses
  %i.bc = add nuw nsw i16 %i.as, 1
  %i.bd = add nuw nsw i16 %i.bc, %i.j
  %i.be = lshr i16 %i.bd, 1
  %i.bf = trunc nuw i16 %i.be to i8               ; 4 uses
  %i.bg = add nuw nsw i16 %i.as, 2
  %i.bh = add nuw nsw i16 %i.bg, %i.l
  %i.bi = lshr i16 %i.bh, 2
  %i.bj = trunc nuw i16 %i.bi to i8               ; 4 uses
  store i8 %i.ab, ptr %0, align 1
  store i8 %i.av, ptr %.sroa.1154.0..sroa_idx, align 1
  store i8 %i.bf, ptr %.sroa.1255.0..sroa_idx, align 1
  %i.bk = extractelement <4 x i8> %i.aq, i64 1
  %i.bl = add nuw nsw <4 x i16> %i.x, splat (i16 1)
  %i.bm = shufflevector <4 x i16> %i.x, <4 x i16> %i.ae, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %i.bn = add nuw nsw <4 x i16> %i.bl, %i.bm
  %i.bo = lshr <4 x i16> %i.bn, splat (i16 1)
  %i.bp = trunc <4 x i16> %i.bo to <4 x i8>       ; 5 uses
  %i.bq = extractelement <4 x i8> %i.bp, i64 1
  store <4 x i8> %i.bp, ptr %.sroa.450.0..sroa_idx, align 1
  %i.br = load i8, ptr %i.k, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.m, i8 %i.br, i64 1, i1 false)
  store i8 %i.ai, ptr %i.n, align 1
  store <4 x i8> %i.aq, ptr %.sroa.4.0..sroa_idx, align 1
  store i8 %i.bb, ptr %.sroa.11.0..sroa_idx, align 1
  store i8 %i.bj, ptr %.sroa.12.0..sroa_idx, align 1
  %i.bs = load i8, ptr %i.k, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i8 %i.bs, i64 1, i1 false)
  store <4 x i8> %i.bp, ptr %i.q, align 1
  store i8 %i.av, ptr %.sroa.1154.1..sroa_idx, align 1
  store i8 %i.bf, ptr %.sroa.1255.1..sroa_idx, align 1
  %i.bt = load i8, ptr %i.k, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.r, i8 %i.bt, i64 2, i1 false)
  store <4 x i8> %i.aq, ptr %i.t, align 1
  %.sroa.11.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i8 %i.bb, ptr %.sroa.11.1..sroa_idx, align 1
  %.sroa.12.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store i8 %i.bj, ptr %.sroa.12.1..sroa_idx, align 1
  %i.bu = getelementptr i8, ptr %i.t, i64 6
  %i.bv = load i8, ptr %i.k, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.bu, i8 %i.bv, i64 2, i1 false)
  %i.bw = shl nsw i64 %1, 2
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.bw ; 6 uses
  store i8 %i.bq, ptr %i.bx, align 1
  %.sroa.852.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.by = extractelement <4 x i8> %i.bp, i64 2    ; 2 uses
  store i8 %i.by, ptr %.sroa.852.2..sroa_idx, align 1
  %.sroa.1053.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.bz = extractelement <4 x i8> %i.bp, i64 3    ; 2 uses
  store i8 %i.bz, ptr %.sroa.1053.2..sroa_idx, align 1
  %.sroa.1154.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 3
  store i8 %i.av, ptr %.sroa.1154.2..sroa_idx, align 1
  %.sroa.1255.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i8 %i.bf, ptr %.sroa.1255.2..sroa_idx, align 1
  %i.ca = getelementptr i8, ptr %i.bx, i64 5
  %i.cb = load i8, ptr %i.k, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ca, i8 %i.cb, i64 3, i1 false)
  %i.cc = mul nsw i64 %1, 5
  %i.cd = getelementptr inbounds i8, ptr %0, i64 %i.cc ; 6 uses
  store i8 %i.bk, ptr %i.cd, align 1
  %.sroa.8.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.ce = extractelement <4 x i8> %i.aq, i64 2    ; 2 uses
  store i8 %i.ce, ptr %.sroa.8.2..sroa_idx, align 1
  %.sroa.10.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cf = extractelement <4 x i8> %i.aq, i64 3    ; 2 uses
  store i8 %i.cf, ptr %.sroa.10.2..sroa_idx, align 1
  %.sroa.11.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %i.bb, ptr %.sroa.11.2..sroa_idx, align 1
  %.sroa.12.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i8 %i.bj, ptr %.sroa.12.2..sroa_idx, align 1
  %i.cg = getelementptr i8, ptr %i.cd, i64 5
  %i.ch = load i8, ptr %i.k, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cg, i8 %i.ch, i64 3, i1 false)
  %i.ci = mul nsw i64 %1, 6
  %i.cj = getelementptr inbounds i8, ptr %0, i64 %i.ci ; 5 uses
  store i8 %i.by, ptr %i.cj, align 1
  %.sroa.1053.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store i8 %i.bz, ptr %.sroa.1053.3..sroa_idx, align 1
  %.sroa.1154.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i8 %i.av, ptr %.sroa.1154.3..sroa_idx, align 1
  %.sroa.1255.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  store i8 %i.bf, ptr %.sroa.1255.3..sroa_idx, align 1
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %i.cl = load i8, ptr %i.k, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ck, i8 %i.cl, i64 4, i1 false)
  %i.cm = mul nsw i64 %1, 7
  %i.cn = getelementptr inbounds i8, ptr %0, i64 %i.cm ; 5 uses
  store i8 %i.ce, ptr %i.cn, align 1
  %.sroa.10.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i8 %i.cf, ptr %.sroa.10.3..sroa_idx, align 1
  %.sroa.11.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i8 %i.bb, ptr %.sroa.11.3..sroa_idx, align 1
  %.sroa.12.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 3
  store i8 %i.bj, ptr %.sroa.12.3..sroa_idx, align 1
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %i.cp = load i8, ptr %i.k, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.co, i8 %i.cp, i64 4, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @hor_up_8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #1 {
.preheader.preheader:
  %i.a = alloca [14 x i8], align 8                ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %2, align 1, !tbaa !11
  %i.c = zext i8 %i.b to i16                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %i.f = zext i8 %i.e to i16                      ; 4 uses
  %i.g = add nuw nsw i16 %i.c, 1
  %i.h = add nuw nsw i16 %i.g, %i.f
  %i.i = lshr i16 %i.h, 1
  %i.j = trunc nuw i16 %i.i to i8
  store i8 %i.j, ptr %i.a, align 8, !tbaa !11
  %i.k = shl nuw nsw i16 %i.f, 1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = zext i8 %i.m to i16                      ; 5 uses
  %i.o = add nuw nsw i16 %i.c, 2
  %i.p = add nuw nsw i16 %i.o, %i.k
  %i.q = add nuw nsw i16 %i.p, %i.n
  %i.r = lshr i16 %i.q, 2
  %i.s = trunc nuw i16 %i.r to i8
  %.1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.s, ptr %.1..1..sroa_idx, align 1, !tbaa !11
  %i.t = add nuw nsw i16 %i.f, 1
  %i.u = add nuw nsw i16 %i.t, %i.n
  %i.v = lshr i16 %i.u, 1
  %i.w = trunc nuw i16 %i.v to i8
  %.2..2..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.w, ptr %.2..2..sroa_idx49, align 2, !tbaa !11
  %i.x = shl nuw nsw i16 %i.n, 1
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = zext i8 %i.z to i16                     ; 5 uses
  %i.ab = add nuw nsw i16 %i.f, 2
  %i.ac = add nuw nsw i16 %i.ab, %i.x
  %i.ad = add nuw nsw i16 %i.ac, %i.aa
  %i.ae = lshr i16 %i.ad, 2
  %i.af = trunc nuw i16 %i.ae to i8
  %.3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.af, ptr %.3..3..sroa_idx, align 1, !tbaa !11
  %i.ag = add nuw nsw i16 %i.n, 1
  %i.ah = add nuw nsw i16 %i.ag, %i.aa
  %i.ai = lshr i16 %i.ah, 1
  %i.aj = trunc nuw i16 %i.ai to i8
  %.4..4..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.aj, ptr %.4..4..sroa_idx50, align 4, !tbaa !11
  %i.ak = shl nuw nsw i16 %i.aa, 1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i16                    ; 5 uses
  %i.ao = add nuw nsw i16 %i.n, 2
  %i.ap = add nuw nsw i16 %i.ao, %i.ak
  %i.aq = add nuw nsw i16 %i.ap, %i.an
  %i.ar = lshr i16 %i.aq, 2
  %i.as = trunc nuw i16 %i.ar to i8
  %.5..5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.as, ptr %.5..5..sroa_idx, align 1, !tbaa !11
  %i.at = add nuw nsw i16 %i.aa, 1
  %i.au = add nuw nsw i16 %i.at, %i.an
  %i.av = lshr i16 %i.au, 1
  %i.aw = trunc nuw i16 %i.av to i8
  %.6..6..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.aw, ptr %.6..6..sroa_idx51, align 2, !tbaa !11
  %i.ax = shl nuw nsw i16 %i.an, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = zext i8 %i.az to i16                    ; 5 uses
  %i.bb = add nuw nsw i16 %i.aa, 2
  %i.bc = add nuw nsw i16 %i.bb, %i.ax
  %i.bd = add nuw nsw i16 %i.bc, %i.ba
  %i.be = lshr i16 %i.bd, 2
  %i.bf = trunc nuw i16 %i.be to i8
  %.7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.bf, ptr %.7..7..sroa_idx, align 1, !tbaa !11
  %i.bg = add nuw nsw i16 %i.an, 1
  %i.bh = add nuw nsw i16 %i.bg, %i.ba
  %i.bi = lshr i16 %i.bh, 1
  %i.bj = trunc nuw i16 %i.bi to i8
  %.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.bj, ptr %.8..8..sroa_idx, align 8, !tbaa !11
  %i.bk = shl nuw nsw i16 %i.ba, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bn = zext i8 %i.bm to i16                    ; 5 uses
  %i.bo = add nuw nsw i16 %i.an, 2
  %i.bp = add nuw nsw i16 %i.bo, %i.bk
  %i.bq = add nuw nsw i16 %i.bp, %i.bn
  %i.br = lshr i16 %i.bq, 2
  %i.bs = trunc nuw i16 %i.br to i8
  %.9..9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.bs, ptr %.9..9..sroa_idx, align 1, !tbaa !11
  %i.bt = add nuw nsw i16 %i.ba, 1
  %i.bu = add nuw nsw i16 %i.bt, %i.bn
  %i.bv = lshr i16 %i.bu, 1
  %i.bw = trunc nuw i16 %i.bv to i8
  %.10..10..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.bw, ptr %.10..10..sroa_idx52, align 2, !tbaa !11
  %i.bx = shl nuw nsw i16 %i.bn, 1
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = zext i8 %i.bz to i16                    ; 3 uses
  %i.cb = add nuw nsw i16 %i.ba, 2
  %i.cc = add nuw nsw i16 %i.cb, %i.bx
  %i.cd = add nuw nsw i16 %i.cc, %i.ca
  %i.ce = lshr i16 %i.cd, 2
  %i.cf = trunc nuw i16 %i.ce to i8
  %.11..11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.cf, ptr %.11..11..sroa_idx, align 1, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 4 uses
  %i.ch = add nuw nsw i16 %i.bn, 1
  %i.ci = add nuw nsw i16 %i.ch, %i.ca
  %i.cj = lshr i16 %i.ci, 1
  %i.ck = trunc nuw i16 %i.cj to i8
  %.12..12..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.ck, ptr %.12..12..sroa_idx53, align 4, !tbaa !11
  %i.cl = mul nuw nsw i16 %i.ca, 3
  %i.cm = add nuw nsw i16 %i.bn, 2
  %i.cn = add nuw nsw i16 %i.cm, %i.cl
  %i.co = lshr i16 %i.cn, 2
  %i.cp = trunc nuw i16 %i.co to i8
  %.13..13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.cp, ptr %.13..13..sroa_idx, align 1, !tbaa !11
  %.0..0. = load i64, ptr %i.a, align 8
  store i64 %.0..0., ptr %0, align 1
end_hunk_1
begin_hunk_2_@hor_16x16_c:bb.a
  store i32 %i.db, ptr %i.dd, align 4, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 %i.db, ptr %i.de, align 4, !tbaa !11
  %i.df = getelementptr inbounds i8, ptr %i.cx, i64 %1 ; 4 uses
  %i.dg = load i8, ptr %2, align 1, !tbaa !11
  %i.dh = zext i8 %i.dg to i32
  %i.di = mul nuw i32 %i.dh, 16843009             ; 4 uses
  store i32 %i.di, ptr %i.df, align 4, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %i.di, ptr %i.dk, align 4, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 %i.di, ptr %i.dl, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dc_16x16_c(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = load <16 x i8>, ptr %2, align 1, !tbaa !11
  %i.b = load <16 x i8>, ptr %3, align 1, !tbaa !11
  %i.c = shufflevector <16 x i8> %i.a, <16 x i8> %i.b, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.d = zext <32 x i8> %i.c to <32 x i32>
  %i.e = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.d)
  %op.rdx = add nuw nsw i32 %i.e, 16
  %i.f = lshr i32 %op.rdx, 5
  %i.g = mul nuw i32 %i.f, 16843009               ; 25 uses
  %i.h = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> zeroinitializer ; 10 uses
  store <4 x i32> %i.i, ptr %0, align 4, !tbaa !11
  %i.j = getelementptr inbounds i8, ptr %0, i64 %1 ; 2 uses
  store <4 x i32> %i.i, ptr %i.j, align 4, !tbaa !11
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %1 ; 2 uses
  store <4 x i32> %i.i, ptr %i.k, align 4, !tbaa !11
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %1 ; 2 uses
  store <4 x i32> %i.i, ptr %i.l, align 4, !tbaa !11
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %1 ; 2 uses
  store <4 x i32> %i.i, ptr %i.m, align 4, !tbaa !11
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %1 ; 2 uses
  store <4 x i32> %i.i, ptr %i.n, align 4, !tbaa !11
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %1 ; 2 uses
  store <4 x i32> %i.i, ptr %i.o, align 4, !tbaa !11
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %1 ; 2 uses
  store <4 x i32> %i.i, ptr %i.p, align 4, !tbaa !11
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %1 ; 2 uses
  store <4 x i32> %i.i, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %1 ; 2 uses
  store <4 x i32> %i.i, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %1 ; 5 uses
  store i32 %i.g, ptr %i.s, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.g, ptr %i.t, align 4, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.g, ptr %i.u, align 4, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.g, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %1 ; 5 uses
  store i32 %i.g, ptr %i.w, align 4, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.g, ptr %i.x, align 4, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.g, ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.g, ptr %i.z, align 4, !tbaa !11
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %1 ; 5 uses
  store i32 %i.g, ptr %i.aa, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.g, ptr %i.ab, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.g, ptr %i.ac, align 4, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %i.g, ptr %i.ad, align 4, !tbaa !11
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %1 ; 5 uses
  store i32 %i.g, ptr %i.ae, align 4, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.g, ptr %i.af, align 4, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.g, ptr %i.ag, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 %i.g, ptr %i.ah, align 4, !tbaa !11
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %1 ; 5 uses
  store i32 %i.g, ptr %i.ai, align 4, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.g, ptr %i.aj, align 4, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.g, ptr %i.ak, align 4, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 %i.g, ptr %i.al, align 4, !tbaa !11
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %1 ; 4 uses
  store i32 %i.g, ptr %i.am, align 4, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.g, ptr %i.an, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %i.g, ptr %i.ao, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %i.g, ptr %i.ap, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @diag_downleft_16x16_c(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = add nuw nsw i16 %i.b, 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  %i.i = zext i8 %i.h to i16                      ; 3 uses
  %i.j = shl nuw nsw i16 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i16                      ; 3 uses
  %i.n = shl nuw nsw i16 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i16                      ; 3 uses
  %i.r = add nuw nsw i16 %i.i, 2
  %i.s = add nuw nsw i16 %i.r, %i.n
  %i.t = add nuw nsw i16 %i.s, %i.q
  %i.u = lshr i16 %i.t, 2
  %i.v = trunc nuw i16 %i.u to i8                 ; 12 uses
  %i.w = shl nuw nsw i16 %i.q, 1
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i16                      ; 3 uses
  %i.aa = add nuw nsw i16 %i.m, 2
  %i.ab = add nuw nsw i16 %i.aa, %i.w
  %i.ac = add nuw nsw i16 %i.ab, %i.z
  %i.ad = lshr i16 %i.ac, 2
  %i.ae = trunc nuw i16 %i.ad to i8               ; 13 uses
  %i.af = shl nuw nsw i16 %i.z, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = zext i8 %i.ah to i16                    ; 2 uses
  %i.aj = add nuw nsw i16 %i.q, 2
  %i.ak = add nuw nsw i16 %i.aj, %i.af
  %i.al = add nuw nsw i16 %i.ak, %i.ai
  %i.am = lshr i16 %i.al, 2
  %i.an = trunc nuw i16 %i.am to i8               ; 14 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 15 ; 16 uses
  %i.ap = mul nuw nsw i16 %i.ai, 3
  %i.aq = add nuw nsw i16 %i.z, 2
  %i.ar = add nuw nsw i16 %i.aq, %i.ap
  %i.as = lshr i16 %i.ar, 2
  %i.at = trunc nuw i16 %i.as to i8               ; 15 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.av = getelementptr inbounds i8, ptr %0, i64 %1 ; 8 uses
  %i.aw = load <8 x i8>, ptr %i.c, align 1, !tbaa !11
  %i.ax = load <8 x i8>, ptr %i.d, align 1, !tbaa !11
  %i.ay = load <8 x i8>, ptr %i.f, align 1, !tbaa !11
  %i.az = zext <8 x i8> %i.aw to <8 x i16>        ; 3 uses
  %i.ba = extractelement <8 x i16> %i.az, i64 0
  %i.bb = shl nuw nsw i16 %i.ba, 1
  %i.bc = add nuw nsw i16 %i.e, %i.bb
  %i.bd = zext <8 x i8> %i.ax to <8 x i16>        ; 2 uses
  %i.be = extractelement <8 x i16> %i.az, i64 1
  %i.bf = add nuw nsw i16 %i.bc, %i.be
  %i.bg = lshr i16 %i.bf, 2
  %i.bh = trunc nuw i16 %i.bg to i8
  %i.bi = zext <8 x i8> %i.ay to <8 x i16>        ; 2 uses
  %i.bj = shl nuw nsw <8 x i16> %i.bd, splat (i16 1)
  %i.bk = add nuw nsw <8 x i16> %i.az, splat (i16 2)
  %i.bl = add nuw nsw <8 x i16> %i.bk, %i.bj
  %i.bm = add nuw nsw <8 x i16> %i.bl, %i.bi
  %i.bn = lshr <8 x i16> %i.bm, splat (i16 2)     ; 3 uses
  %i.bo = trunc <8 x i16> %i.bn to <8 x i8>       ; 7 uses
  %i.bp = extractelement <8 x i16> %i.bi, i64 7   ; 2 uses
  %i.bq = shl nuw nsw i16 %i.bp, 1
  %i.br = extractelement <8 x i16> %i.bd, i64 7
  %i.bs = add nuw nsw i16 %i.br, 2
  %i.bt = add nuw nsw i16 %i.bs, %i.bq
  %i.bu = add nuw nsw i16 %i.bt, %i.i
  %i.bv = lshr i16 %i.bu, 2
  %i.bw = trunc nuw i16 %i.bv to i8               ; 10 uses
  %i.bx = add nuw nsw i16 %i.bp, 2
  %i.by = add nuw nsw i16 %i.bx, %i.j
  %i.bz = add nuw nsw i16 %i.by, %i.m
  %i.ca = lshr i16 %i.bz, 2
  %i.cb = trunc nuw i16 %i.ca to i8               ; 11 uses
  store i8 %i.bh, ptr %0, align 1
  %i.cc = extractelement <8 x i8> %i.bo, i64 3
  store <8 x i8> %i.bo, ptr %.sroa.4.0..sroa_idx, align 1
  store i8 %i.bw, ptr %.sroa.20.0..sroa_idx, align 1
  store i8 %i.cb, ptr %.sroa.22.0..sroa_idx, align 1
  store i8 %i.v, ptr %.sroa.24.0..sroa_idx, align 1
  store i8 %i.ae, ptr %.sroa.26.0..sroa_idx, align 1
  store i8 %i.an, ptr %.sroa.28.0..sroa_idx, align 1
  store i8 %i.at, ptr %.sroa.30.0..sroa_idx, align 1
  %i.cd = load i8, ptr %i.ao, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, i8 %i.cd, i64 1, i1 false)
  store <8 x i8> %i.bo, ptr %i.av, align 1
  %.sroa.20.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.bw, ptr %.sroa.20.1..sroa_idx, align 1
  %.sroa.22.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.cb, ptr %.sroa.22.1..sroa_idx, align 1
  %.sroa.24.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 %i.v, ptr %.sroa.24.1..sroa_idx, align 1
  %.sroa.26.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 11
  store i8 %i.ae, ptr %.sroa.26.1..sroa_idx, align 1
  %.sroa.28.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i8 %i.an, ptr %.sroa.28.1..sroa_idx, align 1
  %.sroa.30.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 13
  store i8 %i.at, ptr %.sroa.30.1..sroa_idx, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.av, i64 14
  %i.cf = load i8, ptr %i.ao, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.ce, i8 %i.cf, i64 2, i1 false)
  %i.cg = shl nsw i64 %1, 1
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %i.cg ; 11 uses
  %i.ci = extractelement <8 x i8> %i.bo, i64 4    ; 2 uses
  %i.cj = shufflevector <8 x i16> %i.bn, <8 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ck = trunc <4 x i16> %i.cj to <4 x i8>
  store <4 x i8> %i.ck, ptr %i.ch, align 1
  %.sroa.14.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cl = extractelement <8 x i8> %i.bo, i64 5    ; 4 uses
  store i8 %i.cl, ptr %.sroa.14.2..sroa_idx, align 1
  %.sroa.16.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  %i.cm = extractelement <8 x i8> %i.bo, i64 6    ; 6 uses
  store i8 %i.cm, ptr %.sroa.16.2..sroa_idx, align 1
  %.sroa.18.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 6
  %i.cn = extractelement <8 x i8> %i.bo, i64 7    ; 7 uses
  store i8 %i.cn, ptr %.sroa.18.2..sroa_idx, align 1
  %.sroa.20.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 7
  store i8 %i.bw, ptr %.sroa.20.2..sroa_idx, align 1
  %.sroa.22.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.cb, ptr %.sroa.22.2..sroa_idx, align 1
  %.sroa.24.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  store i8 %i.v, ptr %.sroa.24.2..sroa_idx, align 1
  %.sroa.26.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 10
  store i8 %i.ae, ptr %.sroa.26.2..sroa_idx, align 1
  %.sroa.28.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 11
  store i8 %i.an, ptr %.sroa.28.2..sroa_idx, align 1
  %.sroa.30.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i8 %i.at, ptr %.sroa.30.2..sroa_idx, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 13
  %i.cp = load i8, ptr %i.ao, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.co, i8 %i.cp, i64 3, i1 false)
  %i.cq = mul nsw i64 %1, 3
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq ; 10 uses
  %i.cs = shufflevector <8 x i16> %i.bn, <8 x i16> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ct = trunc <4 x i16> %i.cs to <4 x i8>
  store <4 x i8> %i.ct, ptr %i.cr, align 1
  %.sroa.16.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i8 %i.cm, ptr %.sroa.16.3..sroa_idx, align 1
  %.sroa.18.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 5
  store i8 %i.cn, ptr %.sroa.18.3..sroa_idx, align 1
  %.sroa.20.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  store i8 %i.bw, ptr %.sroa.20.3..sroa_idx, align 1
  %.sroa.22.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 7
  store i8 %i.cb, ptr %.sroa.22.3..sroa_idx, align 1
  %.sroa.24.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.v, ptr %.sroa.24.3..sroa_idx, align 1
  %.sroa.26.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  store i8 %i.ae, ptr %.sroa.26.3..sroa_idx, align 1
  %.sroa.28.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 10
  store i8 %i.an, ptr %.sroa.28.3..sroa_idx, align 1
  %.sroa.30.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 11
  store i8 %i.at, ptr %.sroa.30.3..sroa_idx, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cv = load i8, ptr %i.ao, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.cu, i8 %i.cv, i64 4, i1 false)
  %i.cw = shl nsw i64 %1, 2
  %i.cx = getelementptr inbounds i8, ptr %0, i64 %i.cw ; 12 uses
  store i8 %i.cc, ptr %i.cx, align 1
  %.sroa.12.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store i8 %i.ci, ptr %.sroa.12.4..sroa_idx, align 1
  %.sroa.14.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i8 %i.cl, ptr %.sroa.14.4..sroa_idx, align 1
  %.sroa.16.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 3
  store i8 %i.cm, ptr %.sroa.16.4..sroa_idx, align 1
  %.sroa.18.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i8 %i.cn, ptr %.sroa.18.4..sroa_idx, align 1
  %.sroa.20.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 5
  store i8 %i.bw, ptr %.sroa.20.4..sroa_idx, align 1
  %.sroa.22.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 6
  store i8 %i.cb, ptr %.sroa.22.4..sroa_idx, align 1
  %.sroa.24.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 7
  store i8 %i.v, ptr %.sroa.24.4..sroa_idx, align 1
  %.sroa.26.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i8 %i.ae, ptr %.sroa.26.4..sroa_idx, align 1
  %.sroa.28.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 9
  store i8 %i.an, ptr %.sroa.28.4..sroa_idx, align 1
  %.sroa.30.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 10
  store i8 %i.at, ptr %.sroa.30.4..sroa_idx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 11
  %i.cz = load i8, ptr %i.ao, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cy, i8 %i.cz, i64 5, i1 false)
  %i.da = mul nsw i64 %1, 5
  %i.db = getelementptr inbounds i8, ptr %0, i64 %i.da ; 11 uses
  store i8 %i.ci, ptr %i.db, align 1
  %.sroa.14.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store i8 %i.cl, ptr %.sroa.14.5..sroa_idx, align 1
  %.sroa.16.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store i8 %i.cm, ptr %.sroa.16.5..sroa_idx, align 1
  %.sroa.18.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  store i8 %i.cn, ptr %.sroa.18.5..sroa_idx, align 1
  %.sroa.20.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i8 %i.bw, ptr %.sroa.20.5..sroa_idx, align 1
  %.sroa.22.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 5
  store i8 %i.cb, ptr %.sroa.22.5..sroa_idx, align 1
  %.sroa.24.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 6
  store i8 %i.v, ptr %.sroa.24.5..sroa_idx, align 1
  %.sroa.26.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 7
  store i8 %i.ae, ptr %.sroa.26.5..sroa_idx, align 1
  %.sroa.28.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 %i.an, ptr %.sroa.28.5..sroa_idx, align 1
  %.sroa.30.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 9
  store i8 %i.at, ptr %.sroa.30.5..sroa_idx, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 10
  %i.dd = load i8, ptr %i.ao, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dc, i8 %i.dd, i64 6, i1 false)
  %i.de = mul nsw i64 %1, 6
  %i.df = getelementptr inbounds i8, ptr %0, i64 %i.de ; 10 uses
  store i8 %i.cl, ptr %i.df, align 1
  %.sroa.16.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store i8 %i.cm, ptr %.sroa.16.6..sroa_idx, align 1
  %.sroa.18.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i8 %i.cn, ptr %.sroa.18.6..sroa_idx, align 1
  %.sroa.20.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 3
  store i8 %i.bw, ptr %.sroa.20.6..sroa_idx, align 1
  %.sroa.22.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i8 %i.cb, ptr %.sroa.22.6..sroa_idx, align 1
  %.sroa.24.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 5
  store i8 %i.v, ptr %.sroa.24.6..sroa_idx, align 1
  %.sroa.26.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  store i8 %i.ae, ptr %.sroa.26.6..sroa_idx, align 1
  %.sroa.28.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 7
  store i8 %i.an, ptr %.sroa.28.6..sroa_idx, align 1
  %.sroa.30.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i8 %i.at, ptr %.sroa.30.6..sroa_idx, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 9
  %i.dh = load i8, ptr %i.ao, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dg, i8 %i.dh, i64 7, i1 false)
  %i.di = mul nsw i64 %1, 7
  %i.dj = getelementptr inbounds i8, ptr %0, i64 %i.di ; 9 uses
  store i8 %i.cm, ptr %i.dj, align 1
  %.sroa.18.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 %i.cn, ptr %.sroa.18.7..sroa_idx, align 1
  %.sroa.20.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i8 %i.bw, ptr %.sroa.20.7..sroa_idx, align 1
  %.sroa.22.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 3
  store i8 %i.cb, ptr %.sroa.22.7..sroa_idx, align 1
  %.sroa.24.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i8 %i.v, ptr %.sroa.24.7..sroa_idx, align 1
  %.sroa.26.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 5
  store i8 %i.ae, ptr %.sroa.26.7..sroa_idx, align 1
  %.sroa.28.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  store i8 %i.an, ptr %.sroa.28.7..sroa_idx, align 1
  %.sroa.30.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 7
  store i8 %i.at, ptr %.sroa.30.7..sroa_idx, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i8, ptr %i.ao, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.dk, i8 %i.dl, i64 8, i1 false)
  %i.dm = shl nsw i64 %1, 3
  %i.dn = getelementptr inbounds i8, ptr %0, i64 %i.dm ; 8 uses
  store i8 %i.cn, ptr %i.dn, align 1
  %.sroa.20.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.bw, ptr %.sroa.20.8..sroa_idx, align 1
  %.sroa.22.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i8 %i.cb, ptr %.sroa.22.8..sroa_idx, align 1
  %.sroa.24.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  store i8 %i.v, ptr %.sroa.24.8..sroa_idx, align 1
  %.sroa.26.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i8 %i.ae, ptr %.sroa.26.8..sroa_idx, align 1
  %.sroa.28.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 5
  store i8 %i.an, ptr %.sroa.28.8..sroa_idx, align 1
  %.sroa.30.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 6
  store i8 %i.at, ptr %.sroa.30.8..sroa_idx, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 7
  %i.dp = load i8, ptr %i.ao, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.do, i8 %i.dp, i64 9, i1 false)
  %i.dq = mul nsw i64 %1, 9
  %i.dr = getelementptr inbounds i8, ptr %0, i64 %i.dq ; 7 uses
  store i8 %i.bw, ptr %i.dr, align 1
  %.sroa.22.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store i8 %i.cb, ptr %.sroa.22.9..sroa_idx, align 1
  %.sroa.24.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  store i8 %i.v, ptr %.sroa.24.9..sroa_idx, align 1
  %.sroa.26.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  store i8 %i.ae, ptr %.sroa.26.9..sroa_idx, align 1
  %.sroa.28.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i8 %i.an, ptr %.sroa.28.9..sroa_idx, align 1
  %.sroa.30.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 5
  store i8 %i.at, ptr %.sroa.30.9..sroa_idx, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 6
  %i.dt = load i8, ptr %i.ao, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ds, i8 %i.dt, i64 10, i1 false)
  %i.du = mul nsw i64 %1, 10
  %i.dv = getelementptr inbounds i8, ptr %0, i64 %i.du ; 6 uses
  store i8 %i.cb, ptr %i.dv, align 1
  %.sroa.24.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
end_hunk_2
begin_hunk_3_@hor_down_16x16_c:bb.a
  %i.cg = mul nsw i64 %1, 5
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ch, ptr noundef nonnull align 4 dereferenceable(16) %i.ci, i64 16, i1 false)
  %i.cj = mul nsw i64 %1, 6
  %i.ck = getelementptr inbounds i8, ptr %0, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ck, ptr noundef nonnull align 2 dereferenceable(16) %i.cl, i64 16, i1 false)
  %i.cm = mul nsw i64 %1, 7
  %i.cn = getelementptr inbounds i8, ptr %0, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cn, ptr noundef nonnull align 16 dereferenceable(16) %i.co, i64 16, i1 false)
  %i.cp = shl nsw i64 %1, 3
  %i.cq = getelementptr inbounds i8, ptr %0, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cq, ptr noundef nonnull align 2 dereferenceable(16) %i.cr, i64 16, i1 false)
  %i.cs = mul nsw i64 %1, 9
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %i.cu, i64 16, i1 false)
  %i.cv = mul nsw i64 %1, 10
  %i.cw = getelementptr inbounds i8, ptr %0, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cw, ptr noundef nonnull align 2 dereferenceable(16) %i.cx, i64 16, i1 false)
  %i.cy = mul nsw i64 %1, 11
  %i.cz = getelementptr inbounds i8, ptr %0, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false)
  %i.db = mul nsw i64 %1, 12
  %i.dc = getelementptr inbounds i8, ptr %0, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dc, ptr noundef nonnull align 2 dereferenceable(16) %i.dd, i64 16, i1 false)
  %i.de = mul nsw i64 %1, 13
  %i.df = getelementptr inbounds i8, ptr %0, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.df, ptr noundef nonnull align 4 dereferenceable(16) %i.dg, i64 16, i1 false)
  %i.dh = mul nsw i64 %1, 14
  %i.di = getelementptr inbounds i8, ptr %0, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.di, ptr noundef nonnull align 2 dereferenceable(16) %i.dj, i64 16, i1 false)
  %i.dk = mul nsw i64 %1, 15
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %i.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dl, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @vert_left_16x16_c(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !11
  %i.b = zext i8 %i.a to i16                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = add nuw nsw i16 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.f = add nuw nsw i16 %i.b, 2
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i16                      ; 5 uses
  %i.k = shl nuw nsw i16 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = zext i8 %i.m to i16                      ; 5 uses
  %i.o = add nuw nsw i16 %i.j, 1
  %i.p = add nuw nsw i16 %i.o, %i.n
  %i.q = lshr i16 %i.p, 1
  %i.r = trunc nuw i16 %i.q to i8                 ; 8 uses
  %i.s = shl nuw nsw i16 %i.n, 1
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = zext i8 %i.u to i16                      ; 5 uses
  %i.w = add nuw nsw i16 %i.j, 2
  %i.x = add nuw nsw i16 %i.w, %i.s
  %i.y = add nuw nsw i16 %i.x, %i.v
  %i.z = lshr i16 %i.y, 2
  %i.aa = trunc nuw i16 %i.z to i8                ; 8 uses
  %i.ab = add nuw nsw i16 %i.n, 1
  %i.ac = add nuw nsw i16 %i.ab, %i.v
  %i.ad = lshr i16 %i.ac, 1
  %i.ae = trunc nuw i16 %i.ad to i8               ; 8 uses
  %i.af = shl nuw nsw i16 %i.v, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = zext i8 %i.ah to i16                    ; 5 uses
  %i.aj = add nuw nsw i16 %i.n, 2
  %i.ak = add nuw nsw i16 %i.aj, %i.af
  %i.al = add nuw nsw i16 %i.ak, %i.ai
  %i.am = lshr i16 %i.al, 2
  %i.an = trunc nuw i16 %i.am to i8               ; 8 uses
  %i.ao = add nuw nsw i16 %i.v, 1
  %i.ap = add nuw nsw i16 %i.ao, %i.ai
  %i.aq = lshr i16 %i.ap, 1
  %i.ar = trunc nuw i16 %i.aq to i8               ; 8 uses
  %i.as = shl nuw nsw i16 %i.ai, 1
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = zext i8 %i.au to i16                    ; 3 uses
  %i.aw = add nuw nsw i16 %i.v, 2
  %i.ax = add nuw nsw i16 %i.aw, %i.as
  %i.ay = add nuw nsw i16 %i.ax, %i.av
  %i.az = lshr i16 %i.ay, 2
  %i.ba = trunc nuw i16 %i.az to i8               ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 15 ; 16 uses
  %i.bc = add nuw nsw i16 %i.ai, 1
  %i.bd = add nuw nsw i16 %i.bc, %i.av
  %i.be = lshr i16 %i.bd, 1
  %i.bf = trunc nuw i16 %i.be to i8               ; 8 uses
  %i.bg = mul nuw nsw i16 %i.av, 3
  %i.bh = add nuw nsw i16 %i.ai, 2
  %i.bi = add nuw nsw i16 %i.bh, %i.bg
  %i.bj = lshr i16 %i.bi, 2
  %i.bk = trunc nuw i16 %i.bj to i8               ; 8 uses
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.1958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.2059.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.sroa.2160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  %.sroa.2261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.2362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.2463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bl = getelementptr i8, ptr %0, i64 15
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %1 ; 9 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 10
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 11
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 13
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %i.bn = getelementptr i8, ptr %i.bm, i64 15
  %i.bo = shl nsw i64 %1, 1
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 8 uses
  %.sroa.1958.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.2059.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 9
  %.sroa.2160.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %.sroa.2261.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 11
  %.sroa.2362.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %.sroa.2463.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 13
  %i.bq = getelementptr i8, ptr %i.bp, i64 14
  %i.br = mul nsw i64 %1, 3
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.br ; 8 uses
  %i.bt = load <8 x i8>, ptr %i.c, align 1, !tbaa !11
  %i.bu = load <8 x i8>, ptr %i.e, align 1, !tbaa !11
  %i.bv = load <8 x i8>, ptr %i.g, align 1, !tbaa !11
  %i.bw = zext <8 x i8> %i.bt to <8 x i16>        ; 5 uses
  %i.bx = extractelement <8 x i16> %i.bw, i64 0   ; 2 uses
  %i.by = add nuw nsw i16 %i.d, %i.bx
  %i.bz = lshr i16 %i.by, 1
  %i.ca = trunc nuw i16 %i.bz to i8
  %i.cb = shl nuw nsw i16 %i.bx, 1
  %i.cc = add nuw nsw i16 %i.f, %i.cb
  %i.cd = zext <8 x i8> %i.bu to <8 x i16>        ; 3 uses
  %i.ce = extractelement <8 x i16> %i.bw, i64 1
  %i.cf = add nuw nsw i16 %i.cc, %i.ce
  %i.cg = lshr i16 %i.cf, 2
  %i.ch = trunc nuw i16 %i.cg to i8
  %i.ci = zext <8 x i8> %i.bv to <8 x i16>        ; 2 uses
  %i.cj = extractelement <8 x i16> %i.cd, i64 7   ; 2 uses
  %i.ck = shl nuw nsw <8 x i16> %i.cd, splat (i16 1)
  %i.cl = add nuw nsw <8 x i16> %i.bw, splat (i16 2)
  %i.cm = add nuw nsw <8 x i16> %i.cl, %i.ck
  %i.cn = add nuw nsw <8 x i16> %i.cm, %i.ci
  %i.co = lshr <8 x i16> %i.cn, splat (i16 2)     ; 3 uses
  %i.cp = trunc <8 x i16> %i.co to <8 x i8>       ; 7 uses
  %i.cq = add nuw nsw i16 %i.cj, 1
  %i.cr = extractelement <8 x i16> %i.ci, i64 7   ; 4 uses
  %i.cs = add nuw nsw i16 %i.cq, %i.cr
  %i.ct = lshr i16 %i.cs, 1
  %i.cu = trunc nuw i16 %i.ct to i8               ; 8 uses
  %i.cv = shl nuw nsw i16 %i.cr, 1
  %i.cw = add nuw nsw i16 %i.cj, 2
  %i.cx = add nuw nsw i16 %i.cw, %i.cv
  %i.cy = add nuw nsw i16 %i.cx, %i.j
  %i.cz = lshr i16 %i.cy, 2
  %i.da = trunc nuw i16 %i.cz to i8               ; 8 uses
  %i.db = add nuw nsw i16 %i.cr, 1
  %i.dc = add nuw nsw i16 %i.db, %i.j
  %i.dd = lshr i16 %i.dc, 1
  %i.de = trunc nuw i16 %i.dd to i8               ; 8 uses
  %i.df = add nuw nsw i16 %i.cr, 2
  %i.dg = add nuw nsw i16 %i.df, %i.k
  %i.dh = add nuw nsw i16 %i.dg, %i.n
  %i.di = lshr i16 %i.dh, 2
  %i.dj = trunc nuw i16 %i.di to i8               ; 8 uses
  store i8 %i.ca, ptr %0, align 1
  store i8 %i.cu, ptr %.sroa.1958.0..sroa_idx, align 1
  store i8 %i.de, ptr %.sroa.2059.0..sroa_idx, align 1
  store i8 %i.r, ptr %.sroa.2160.0..sroa_idx, align 1
  store i8 %i.ae, ptr %.sroa.2261.0..sroa_idx, align 1
  store i8 %i.ar, ptr %.sroa.2362.0..sroa_idx, align 1
  store i8 %i.bf, ptr %.sroa.2463.0..sroa_idx, align 1
  %i.dk = extractelement <8 x i8> %i.cp, i64 3
  %i.dl = add nuw nsw <8 x i16> %i.bw, splat (i16 1)
  %i.dm = shufflevector <8 x i16> %i.bw, <8 x i16> %i.cd, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 15>
  %i.dn = add nuw nsw <8 x i16> %i.dl, %i.dm
  %i.do = lshr <8 x i16> %i.dn, splat (i16 1)     ; 3 uses
  %i.dp = trunc <8 x i16> %i.do to <8 x i8>       ; 7 uses
  %i.dq = extractelement <8 x i8> %i.dp, i64 3
  store <8 x i8> %i.dp, ptr %.sroa.450.0..sroa_idx, align 1
  %i.dr = load i8, ptr %i.bb, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, i8 %i.dr, i64 1, i1 false)
  store i8 %i.ch, ptr %i.bm, align 1
  store <8 x i8> %i.cp, ptr %.sroa.4.0..sroa_idx, align 1
  store i8 %i.da, ptr %.sroa.19.0..sroa_idx, align 1
  store i8 %i.dj, ptr %.sroa.20.0..sroa_idx, align 1
  store i8 %i.aa, ptr %.sroa.21.0..sroa_idx, align 1
  store i8 %i.an, ptr %.sroa.22.0..sroa_idx, align 1
  store i8 %i.ba, ptr %.sroa.23.0..sroa_idx, align 1
  store i8 %i.bk, ptr %.sroa.24.0..sroa_idx, align 1
  %i.ds = load i8, ptr %i.bb, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i8 %i.ds, i64 1, i1 false)
  store <8 x i8> %i.dp, ptr %i.bp, align 1
  store i8 %i.cu, ptr %.sroa.1958.1..sroa_idx, align 1
  store i8 %i.de, ptr %.sroa.2059.1..sroa_idx, align 1
  store i8 %i.r, ptr %.sroa.2160.1..sroa_idx, align 1
  store i8 %i.ae, ptr %.sroa.2261.1..sroa_idx, align 1
  store i8 %i.ar, ptr %.sroa.2362.1..sroa_idx, align 1
  store i8 %i.bf, ptr %.sroa.2463.1..sroa_idx, align 1
  %i.dt = load i8, ptr %i.bb, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.bq, i8 %i.dt, i64 2, i1 false)
  store <8 x i8> %i.cp, ptr %i.bs, align 1
  %.sroa.19.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %i.da, ptr %.sroa.19.1..sroa_idx, align 1
  %.sroa.20.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 9
  store i8 %i.dj, ptr %.sroa.20.1..sroa_idx, align 1
  %.sroa.21.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  store i8 %i.aa, ptr %.sroa.21.1..sroa_idx, align 1
  %.sroa.22.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  store i8 %i.an, ptr %.sroa.22.1..sroa_idx, align 1
  %.sroa.23.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i8 %i.ba, ptr %.sroa.23.1..sroa_idx, align 1
  %.sroa.24.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 13
  store i8 %i.bk, ptr %.sroa.24.1..sroa_idx, align 1
  %i.du = getelementptr i8, ptr %i.bs, i64 14
  %i.dv = load i8, ptr %i.bb, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.du, i8 %i.dv, i64 2, i1 false)
  %i.dw = shl nsw i64 %1, 2
  %i.dx = getelementptr inbounds i8, ptr %0, i64 %i.dw ; 11 uses
  %i.dy = extractelement <8 x i8> %i.dp, i64 4    ; 2 uses
  %i.dz = shufflevector <8 x i16> %i.do, <8 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ea = trunc <4 x i16> %i.dz to <4 x i8>
  store <4 x i8> %i.ea, ptr %i.dx, align 1
  %.sroa.1455.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.eb = extractelement <8 x i8> %i.dp, i64 5    ; 4 uses
  store i8 %i.eb, ptr %.sroa.1455.2..sroa_idx, align 1
  %.sroa.1656.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 5
  %i.ec = extractelement <8 x i8> %i.dp, i64 6    ; 6 uses
  store i8 %i.ec, ptr %.sroa.1656.2..sroa_idx, align 1
  %.sroa.1857.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 6
  %i.ed = extractelement <8 x i8> %i.dp, i64 7    ; 6 uses
  store i8 %i.ed, ptr %.sroa.1857.2..sroa_idx, align 1
  %.sroa.1958.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 7
  store i8 %i.cu, ptr %.sroa.1958.2..sroa_idx, align 1
  %.sroa.2059.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i8 %i.de, ptr %.sroa.2059.2..sroa_idx, align 1
  %.sroa.2160.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 9
  store i8 %i.r, ptr %.sroa.2160.2..sroa_idx, align 1
  %.sroa.2261.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 10
  store i8 %i.ae, ptr %.sroa.2261.2..sroa_idx, align 1
  %.sroa.2362.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 11
  store i8 %i.ar, ptr %.sroa.2362.2..sroa_idx, align 1
  %.sroa.2463.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i8 %i.bf, ptr %.sroa.2463.2..sroa_idx, align 1
  %i.ee = getelementptr i8, ptr %i.dx, i64 13
  %i.ef = load i8, ptr %i.bb, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ee, i8 %i.ef, i64 3, i1 false)
  %i.eg = mul nsw i64 %1, 5
  %i.eh = getelementptr inbounds i8, ptr %0, i64 %i.eg ; 11 uses
  %i.ei = extractelement <8 x i8> %i.cp, i64 4    ; 2 uses
  %i.ej = shufflevector <8 x i16> %i.co, <8 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ek = trunc <4 x i16> %i.ej to <4 x i8>
  store <4 x i8> %i.ek, ptr %i.eh, align 1
  %.sroa.14.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.el = extractelement <8 x i8> %i.cp, i64 5    ; 4 uses
  store i8 %i.el, ptr %.sroa.14.2..sroa_idx, align 1
  %.sroa.16.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 5
  %i.em = extractelement <8 x i8> %i.cp, i64 6    ; 6 uses
  store i8 %i.em, ptr %.sroa.16.2..sroa_idx, align 1
  %.sroa.18.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 6
  %i.en = extractelement <8 x i8> %i.cp, i64 7    ; 6 uses
  store i8 %i.en, ptr %.sroa.18.2..sroa_idx, align 1
  %.sroa.19.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 7
  store i8 %i.da, ptr %.sroa.19.2..sroa_idx, align 1
  %.sroa.20.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i8 %i.dj, ptr %.sroa.20.2..sroa_idx, align 1
  %.sroa.21.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 9
  store i8 %i.aa, ptr %.sroa.21.2..sroa_idx, align 1
  %.sroa.22.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 10
  store i8 %i.an, ptr %.sroa.22.2..sroa_idx, align 1
  %.sroa.23.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 11
  store i8 %i.ba, ptr %.sroa.23.2..sroa_idx, align 1
  %.sroa.24.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i8 %i.bk, ptr %.sroa.24.2..sroa_idx, align 1
  %i.eo = getelementptr i8, ptr %i.eh, i64 13
  %i.ep = load i8, ptr %i.bb, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.eo, i8 %i.ep, i64 3, i1 false)
  %i.eq = mul nsw i64 %1, 6
  %i.er = getelementptr inbounds i8, ptr %0, i64 %i.eq ; 10 uses
  %i.es = shufflevector <8 x i16> %i.do, <8 x i16> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.et = trunc <4 x i16> %i.es to <4 x i8>
  store <4 x i8> %i.et, ptr %i.er, align 1
  %.sroa.1656.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i8 %i.ec, ptr %.sroa.1656.3..sroa_idx, align 1
  %.sroa.1857.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 5
  store i8 %i.ed, ptr %.sroa.1857.3..sroa_idx, align 1
  %.sroa.1958.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 6
  store i8 %i.cu, ptr %.sroa.1958.3..sroa_idx, align 1
  %.sroa.2059.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 7
  store i8 %i.de, ptr %.sroa.2059.3..sroa_idx, align 1
  %.sroa.2160.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i8 %i.r, ptr %.sroa.2160.3..sroa_idx, align 1
  %.sroa.2261.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 9
  store i8 %i.ae, ptr %.sroa.2261.3..sroa_idx, align 1
  %.sroa.2362.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 10
  store i8 %i.ar, ptr %.sroa.2362.3..sroa_idx, align 1
  %.sroa.2463.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 11
  store i8 %i.bf, ptr %.sroa.2463.3..sroa_idx, align 1
  %i.eu = getelementptr i8, ptr %i.er, i64 12
  %i.ev = load i8, ptr %i.bb, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.eu, i8 %i.ev, i64 4, i1 false)
  %i.ew = mul nsw i64 %1, 7
  %i.ex = getelementptr inbounds i8, ptr %0, i64 %i.ew ; 10 uses
  %i.ey = shufflevector <8 x i16> %i.co, <8 x i16> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ez = trunc <4 x i16> %i.ey to <4 x i8>
  store <4 x i8> %i.ez, ptr %i.ex, align 1
  %.sroa.16.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store i8 %i.em, ptr %.sroa.16.3..sroa_idx, align 1
  %.sroa.18.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  store i8 %i.en, ptr %.sroa.18.3..sroa_idx, align 1
  %.sroa.19.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  store i8 %i.da, ptr %.sroa.19.3..sroa_idx, align 1
  %.sroa.20.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 7
  store i8 %i.dj, ptr %.sroa.20.3..sroa_idx, align 1
  %.sroa.21.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i8 %i.aa, ptr %.sroa.21.3..sroa_idx, align 1
  %.sroa.22.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 9
  store i8 %i.an, ptr %.sroa.22.3..sroa_idx, align 1
  %.sroa.23.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 10
  store i8 %i.ba, ptr %.sroa.23.3..sroa_idx, align 1
  %.sroa.24.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 11
  store i8 %i.bk, ptr %.sroa.24.3..sroa_idx, align 1
  %i.fa = getelementptr i8, ptr %i.ex, i64 12
  %i.fb = load i8, ptr %i.bb, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.fa, i8 %i.fb, i64 4, i1 false)
  %i.fc = shl nsw i64 %1, 3
  %i.fd = getelementptr inbounds i8, ptr %0, i64 %i.fc ; 12 uses
  store i8 %i.dq, ptr %i.fd, align 1
  %.sroa.1254.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store i8 %i.dy, ptr %.sroa.1254.4..sroa_idx, align 1
  %.sroa.1455.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  store i8 %i.eb, ptr %.sroa.1455.4..sroa_idx, align 1
  %.sroa.1656.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  store i8 %i.ec, ptr %.sroa.1656.4..sroa_idx, align 1
  %.sroa.1857.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i8 %i.ed, ptr %.sroa.1857.4..sroa_idx, align 1
  %.sroa.1958.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 5
  store i8 %i.cu, ptr %.sroa.1958.4..sroa_idx, align 1
  %.sroa.2059.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 6
  store i8 %i.de, ptr %.sroa.2059.4..sroa_idx, align 1
  %.sroa.2160.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 7
  store i8 %i.r, ptr %.sroa.2160.4..sroa_idx, align 1
  %.sroa.2261.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i8 %i.ae, ptr %.sroa.2261.4..sroa_idx, align 1
  %.sroa.2362.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 9
  store i8 %i.ar, ptr %.sroa.2362.4..sroa_idx, align 1
  %.sroa.2463.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 10
  store i8 %i.bf, ptr %.sroa.2463.4..sroa_idx, align 1
  %i.fe = getelementptr i8, ptr %i.fd, i64 11
  %i.ff = load i8, ptr %i.bb, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.fe, i8 %i.ff, i64 5, i1 false)
  %i.fg = mul nsw i64 %1, 9
  %i.fh = getelementptr inbounds i8, ptr %0, i64 %i.fg ; 12 uses
  store i8 %i.dk, ptr %i.fh, align 1
  %.sroa.12.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store i8 %i.ei, ptr %.sroa.12.4..sroa_idx, align 1
  %.sroa.14.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  store i8 %i.el, ptr %.sroa.14.4..sroa_idx, align 1
  %.sroa.16.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 3
  store i8 %i.em, ptr %.sroa.16.4..sroa_idx, align 1
  %.sroa.18.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i8 %i.en, ptr %.sroa.18.4..sroa_idx, align 1
  %.sroa.19.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 5
  store i8 %i.da, ptr %.sroa.19.4..sroa_idx, align 1
  %.sroa.20.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 6
  store i8 %i.dj, ptr %.sroa.20.4..sroa_idx, align 1
  %.sroa.21.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 7
  store i8 %i.aa, ptr %.sroa.21.4..sroa_idx, align 1
  %.sroa.22.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i8 %i.an, ptr %.sroa.22.4..sroa_idx, align 1
  %.sroa.23.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 9
  store i8 %i.ba, ptr %.sroa.23.4..sroa_idx, align 1
  %.sroa.24.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 10
  store i8 %i.bk, ptr %.sroa.24.4..sroa_idx, align 1
  %i.fi = getelementptr i8, ptr %i.fh, i64 11
  %i.fj = load i8, ptr %i.bb, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.fi, i8 %i.fj, i64 5, i1 false)
  %i.fk = mul nsw i64 %1, 10
  %i.fl = getelementptr inbounds i8, ptr %0, i64 %i.fk ; 11 uses
  store i8 %i.dy, ptr %i.fl, align 1
  %.sroa.1455.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store i8 %i.eb, ptr %.sroa.1455.5..sroa_idx, align 1
  %.sroa.1656.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  store i8 %i.ec, ptr %.sroa.1656.5..sroa_idx, align 1
  %.sroa.1857.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  store i8 %i.ed, ptr %.sroa.1857.5..sroa_idx, align 1
  %.sroa.1958.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i8 %i.cu, ptr %.sroa.1958.5..sroa_idx, align 1
  %.sroa.2059.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 5
  store i8 %i.de, ptr %.sroa.2059.5..sroa_idx, align 1
  %.sroa.2160.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 6
  store i8 %i.r, ptr %.sroa.2160.5..sroa_idx, align 1
end_hunk_3
