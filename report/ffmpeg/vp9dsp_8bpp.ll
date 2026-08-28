Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9dsp_8bpp?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 126
begin_hunk_0_@dc_8x8_c:bb.a
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
  store i8 %i.at, ptr %i.l, align 1
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
  %4 = bitcast <8 x i8> %i.ak to i64              ; 4 uses
  %i.al = load <4 x i8>, ptr %3, align 1, !tbaa !11
  %i.am = load <4 x i8>, ptr %i.c, align 1, !tbaa !11
  %i.an = load i8, ptr %i.d, align 1, !tbaa !11
  %i.ao = zext <4 x i8> %i.am to <4 x i16>        ; 2 uses
  %i.ap = extractelement <4 x i16> %i.ao, i64 3   ; 2 uses
  %i.aq = shl nuw nsw i16 %i.ap, 1
  %i.ar = zext i8 %i.an to i16
  %i.as = zext <4 x i8> %i.al to <4 x i16>        ; 2 uses
  %i.at = add nuw nsw i16 %i.ar, 2
  %i.au = add nuw nsw i16 %i.at, %i.aq
  %i.av = add nuw nsw i16 %i.au, %i.g
  %i.aw = lshr i16 %i.av, 2
  %i.ax = trunc nuw i16 %i.aw to i8               ; 3 uses
  %i.ay = add nuw nsw i16 %i.ap, 2
  %i.az = add nuw nsw i16 %i.ay, %i.h
  %i.ba = add nuw nsw i16 %i.az, %i.k
  %i.bb = lshr i16 %i.ba, 2
  %i.bc = trunc nuw i16 %i.bb to i8               ; 2 uses
  %i.bd = shl nuw nsw <4 x i16> %i.as, splat (i16 1)
  %i.be = shufflevector <8 x i16> %i.ag, <8 x i16> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x i16> %i.be, <4 x i16> %i.as, <4 x i32> <i32 0, i32 poison, i32 5, i32 6>
  %i.bg = insertelement <4 x i16> %i.bf, i16 %i.b, i64 1
  %i.bh = add nuw nsw <4 x i16> %i.bg, <i16 0, i16 2, i16 2, i16 2>
  %i.bi = add nuw nsw <4 x i16> %i.bh, %i.bd
  %i.bj = add nuw nsw <4 x i16> %i.bi, %i.ao
  %i.bk = lshr <4 x i16> %i.bj, splat (i16 2)
  %i.bl = trunc <4 x i16> %i.bk to <4 x i8>       ; 5 uses
  %5 = bitcast <4 x i8> %i.bl to i32              ; 3 uses
  %.sroa.0.7.extract.trunc = extractelement <8 x i8> %i.ak, i64 7
  store i8 %.sroa.0.7.extract.trunc, ptr %0, align 1
  %.sroa_idx80 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store <4 x i8> %i.bl, ptr %.sroa_idx80, align 1
  %.sroa_idx81 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ax, ptr %.sroa_idx81, align 1
  %.sroa_idx82 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.bc, ptr %.sroa_idx82, align 1
  %.sroa_idx83 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.t, ptr %.sroa_idx83, align 1
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %1 ; 4 uses
  %bc = bitcast <8 x i8> %i.ak to <4 x i16>
  %.sroa.0.6.extract.trunc = extractelement <4 x i16> %bc, i64 3
  store i16 %.sroa.0.6.extract.trunc, ptr %i.bm, align 1
  %.sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store <4 x i8> %i.bl, ptr %.sroa_idx69, align 1
  %.sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.bm, i64 6
  store i8 %i.ax, ptr %.sroa_idx70, align 1
  %.sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.bm, i64 7
  store i8 %i.bc, ptr %.sroa_idx71, align 1
  %i.bn = shl nsw i64 %1, 1
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn ; 3 uses
  %.sroa.0.5.extract.shift = lshr i64 %4, 40
  %.sroa.0.5.extract.trunc = trunc nuw i64 %.sroa.0.5.extract.shift to i24
  store i24 %.sroa.0.5.extract.trunc, ptr %i.bo, align 1
  %.sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  store <4 x i8> %i.bl, ptr %.sroa_idx61, align 1
  %.sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.bo, i64 7
  store i8 %i.ax, ptr %.sroa_idx62, align 1
  %i.bp = mul nsw i64 %1, 3
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp ; 2 uses
  %bc95 = bitcast <8 x i8> %i.ak to <2 x i32>
  %.sroa.0.4.extract.trunc = extractelement <2 x i32> %bc95, i64 1
  store i32 %.sroa.0.4.extract.trunc, ptr %i.bq, align 1
  %.sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store <4 x i8> %i.bl, ptr %.sroa_idx56, align 1
  %i.br = shl nsw i64 %1, 2
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.br ; 2 uses
  %.sroa.0.3.extract.shift = lshr i64 %4, 24
  %.sroa.0.3.extract.trunc = trunc nuw i64 %.sroa.0.3.extract.shift to i40
  %.sroa.11.8.extract.trunc = trunc i32 %5 to i24
  store i40 %.sroa.0.3.extract.trunc, ptr %i.bs, align 1
  %.sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.bs, i64 5
  store i24 %.sroa.11.8.extract.trunc, ptr %.sroa_idx53, align 1
  %i.bt = mul nsw i64 %1, 5
  %i.bu = getelementptr inbounds i8, ptr %0, i64 %i.bt ; 2 uses
  %.sroa.0.2.extract.shift = lshr i64 %4, 16
  %.sroa.0.2.extract.trunc = trunc nuw i64 %.sroa.0.2.extract.shift to i48
  %.sroa.11.8.extract.trunc89 = trunc i32 %5 to i16
  store i48 %.sroa.0.2.extract.trunc, ptr %i.bu, align 1
  %.sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  store i16 %.sroa.11.8.extract.trunc89, ptr %.sroa_idx50, align 1
  %i.bv = mul nsw i64 %1, 6
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv ; 2 uses
  %.sroa.0.1.extract.shift = lshr i64 %4, 8
  %.sroa.0.1.extract.trunc = trunc nuw i64 %.sroa.0.1.extract.shift to i56
  %.sroa.11.8.extract.trunc91 = trunc i32 %5 to i8
  store i56 %.sroa.0.1.extract.trunc, ptr %i.bw, align 1
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 7
  store i8 %.sroa.11.8.extract.trunc91, ptr %.sroa_idx, align 1
  %i.bx = mul nsw i64 %1, 7
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx
  store <8 x i8> %i.ak, ptr %i.by, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @vert_right_8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = getelementptr i8, ptr %3, i64 -1
  %i.p = zext i8 %i.d to i16                      ; 2 uses
  %i.q = zext i8 %i.h to i16                      ; 3 uses
  %i.r = zext i8 %i.f to i16
  %i.s = zext i8 %i.n to i16                      ; 2 uses
  %i.t = zext i8 %i.j to i16                      ; 3 uses
  %i.u = zext i8 %i.b to i16                      ; 3 uses
  %i.v = shl nuw nsw i16 %i.u, 1
  %i.w = add nuw nsw i16 %i.v, 2
  %i.x = add nuw nsw i16 %i.w, %i.p
  %i.y = add nuw nsw i16 %i.x, %i.q
  %i.z = lshr i16 %i.y, 2
  %i.aa = shl nuw nsw i16 %i.t, 1
  %i.ab = add nuw nsw i16 %i.aa, 2
  %i.ac = add nuw nsw i16 %i.ab, %i.q
  %i.ad = add nuw nsw i16 %i.s, 2
  %i.ae = add nuw nsw i16 %i.t, 2
  %i.af = add nuw nsw i16 %i.u, 2
  %i.ag = load <8 x i8>, ptr %i.o, align 1, !tbaa !11
  %.scalar = shl nuw nsw i16 %i.s, 1
  %.scalar81 = add nuw nsw i16 %.scalar, 2
  %i.ah = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.scalar81, i64 0
  %i.ai = zext <8 x i8> %i.ag to <8 x i16>        ; 10 uses
  %i.aj = extractelement <8 x i16> %i.ai, i64 4
  %i.ak = extractelement <8 x i16> %i.ai, i64 5   ; 2 uses
  %i.al = zext i8 %i.l to i16                     ; 3 uses
  %i.am = shufflevector <8 x i16> %i.ai, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 2, i32 3, i32 4, i32 5> ; 2 uses
  %i.an = insertelement <8 x i16> %i.am, i16 %i.p, i64 0
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.q, i64 1
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.al, i64 2 ; 2 uses
  %i.aq = shl nuw nsw <8 x i16> %i.ai, <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 poison, i16 poison, i16 poison>
  %i.ar = shufflevector <8 x i16> %i.aq, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.as = shufflevector <8 x i16> %i.ap, <8 x i16> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.at = shufflevector <8 x i16> %i.ap, <8 x i16> %i.ai, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.au = shufflevector <8 x i16> %i.at, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 2, i16 2, i16 2, i16 2>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.av = add nuw nsw <8 x i16> %i.as, %i.au
  %i.aw = insertelement <8 x i16> %i.am, i16 %i.af, i64 0
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.ae, i64 1
  %i.ay = insertelement <8 x i16> %i.ax, i16 %i.ad, i64 2
  %i.az = shufflevector <8 x i16> %i.ay, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 4, i32 5, i32 6, i32 7>
  %i.ba = add nuw nsw <8 x i16> %i.av, %i.az
  %i.bb = shufflevector <8 x i16> %i.ai, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 1, i32 0, i32 1, i32 2, i32 3>
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.r, i64 0
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.u, i64 1
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.t, i64 2
  %i.bf = add nuw nsw <8 x i16> %i.ba, %i.be
  %i.bg = add nuw nsw i16 %i.ac, %i.al
  %i.bh = shl i16 %i.bg, 6                        ; 2 uses
  %.sroa.0112.1.insert.shift = and i16 %i.bh, -256
  %.sroa.0112.1.insert.mask = and i16 %i.z, 255
  %.sroa.0112.1.insert.insert = or disjoint i16 %.sroa.0112.1.insert.mask, %.sroa.0112.1.insert.shift
  %i.bi = lshr <8 x i16> %i.bf, splat (i16 2)
  %i.bj = trunc <8 x i16> %i.bi to <8 x i8>       ; 2 uses
  %4 = bitcast <8 x i8> %i.bj to i64              ; 3 uses
  %i.bk = shl nuw nsw i16 %i.ak, 1
  %i.bl = add nuw nsw i16 %i.bk, 2
  %i.bm = extractelement <8 x i16> %i.ai, i64 6   ; 3 uses
  %i.bn = add nuw nsw i16 %i.bl, %i.bm
  %i.bo = add nuw nsw i16 %i.bn, %i.aj
  %i.bp = lshr i16 %i.bo, 2
  %i.bq = trunc nuw i16 %i.bp to i8               ; 3 uses
  %i.br = shufflevector <8 x i16> %i.ai, <8 x i16> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.al, i64 0
  %i.bt = add nuw nsw <8 x i16> %i.ah, %i.bs
  %i.bu = add nuw nsw <8 x i16> %i.bt, %i.ai
  %i.bv = lshr <8 x i16> %i.bu, <i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %i.bw = trunc <8 x i16> %i.bv to <8 x i8>       ; 2 uses
  %5 = bitcast <8 x i8> %i.bw to i64              ; 3 uses
  %i.bx = shl nuw nsw i16 %i.bm, 1
  %i.by = add nuw nsw i16 %i.bx, 2
  %i.bz = extractelement <8 x i16> %i.ai, i64 7   ; 3 uses
  %i.ca = add nuw nsw i16 %i.by, %i.bz
  %i.cb = add nuw nsw i16 %i.ca, %i.ak
  %i.cc = lshr i16 %i.cb, 2
  %i.cd = trunc nuw i16 %i.cc to i8               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = zext i8 %i.cf to i16                    ; 2 uses
  %i.ch = add nuw nsw i16 %i.bz, 1
  %i.ci = add nuw nsw i16 %i.ch, %i.cg
  %i.cj = lshr i16 %i.ci, 1
  %i.ck = trunc nuw i16 %i.cj to i8
  %i.cl = shl nuw nsw i16 %i.bz, 1
  %i.cm = add nuw nsw i16 %i.cl, 2
  %i.cn = add nuw nsw i16 %i.cm, %i.cg
  %i.co = add nuw nsw i16 %i.cn, %i.bm
  %i.cp = lshr i16 %i.co, 2
  %i.cq = trunc nuw i16 %i.cp to i8
  %.sroa.6.3.extract.shift = lshr i64 %5, 8
  %.sroa.6.3.extract.trunc = trunc nuw i64 %.sroa.6.3.extract.shift to i56
  store i56 %.sroa.6.3.extract.trunc, ptr %0, align 1
  %.sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.ck, ptr %.sroa_idx111, align 1
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %1 ; 4 uses
  %.sroa.0.3.extract.shift = lshr i64 %4, 24
  %.sroa.0.3.extract.trunc = trunc nuw i64 %.sroa.0.3.extract.shift to i40
  store i40 %.sroa.0.3.extract.trunc, ptr %i.cr, align 1
  %.sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.cr, i64 5
  store i8 %i.bq, ptr %.sroa_idx96, align 1
  %.sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  store i8 %i.cd, ptr %.sroa_idx97, align 1
  %.sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.cr, i64 7
  store i8 %i.cq, ptr %.sroa_idx98, align 1
  %i.cs = shl nsw i64 %1, 1
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.cs
  store <8 x i8> %i.bw, ptr %i.ct, align 1
  %i.cu = mul nsw i64 %1, 3
  %i.cv = getelementptr inbounds i8, ptr %0, i64 %i.cu ; 3 uses
  %.sroa.0.2.extract.shift = lshr i64 %4, 16
  %.sroa.0.2.extract.trunc = trunc nuw i64 %.sroa.0.2.extract.shift to i48
  store i48 %.sroa.0.2.extract.trunc, ptr %i.cv, align 1
  %.sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  store i8 %i.bq, ptr %.sroa_idx88, align 1
  %.sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.cv, i64 7
  store i8 %i.cd, ptr %.sroa_idx89, align 1
  %i.cw = shl nsw i64 %1, 2
  %i.cx = getelementptr inbounds i8, ptr %0, i64 %i.cw ; 2 uses
  %.sroa.0112.1.extract.shift = lshr i16 %i.bh, 8
  %.sroa.0112.1.extract.trunc = trunc nuw i16 %.sroa.0112.1.extract.shift to i8
  %.sroa.6.2.extract.trunc = trunc i64 %5 to i56
  store i8 %.sroa.0112.1.extract.trunc, ptr %i.cx, align 1
  %.sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store i56 %.sroa.6.2.extract.trunc, ptr %.sroa_idx108, align 1
  %i.cy = mul nsw i64 %1, 5
  %i.cz = getelementptr inbounds i8, ptr %0, i64 %i.cy ; 2 uses
  %.sroa.0.1.extract.shift = lshr i64 %4, 8
  %.sroa.0.1.extract.trunc = trunc nuw i64 %.sroa.0.1.extract.shift to i56
  store i56 %.sroa.0.1.extract.trunc, ptr %i.cz, align 1
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 7
  store i8 %i.bq, ptr %.sroa_idx, align 1
  %i.da = mul nsw i64 %1, 6
  %i.db = getelementptr inbounds i8, ptr %0, i64 %i.da ; 2 uses
  %.sroa.6.2.extract.trunc115 = trunc i64 %5 to i48
  store i16 %.sroa.0112.1.insert.insert, ptr %i.db, align 1
  %.sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store i48 %.sroa.6.2.extract.trunc115, ptr %.sroa_idx105, align 1
  %i.dc = mul nsw i64 %1, 7
  %i.dd = getelementptr inbounds i8, ptr %0, i64 %i.dc
  store <8 x i8> %i.bj, ptr %i.dd, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @hor_down_8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %.sroa.0 = alloca [15 x i8], align 16           ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11
  %i.c = zext i8 %i.b to i16                      ; 4 uses
  %i.d = load i8, ptr %2, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i16                      ; 2 uses
  %i.f = add nuw nsw i16 %i.c, 1
  %i.g = add nuw nsw i16 %i.f, %i.e
  %i.h = lshr i16 %i.g, 1
  %i.i = trunc nuw i16 %i.h to i8
  store i8 %i.i, ptr %.sroa.0, align 16, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = zext i8 %i.k to i16                      ; 5 uses
  %i.m = shl nuw nsw i16 %i.c, 1
  %i.n = add nuw nsw i16 %i.m, 2
  %i.o = add nuw nsw i16 %i.n, %i.e
  %i.p = add nuw nsw i16 %i.o, %i.l
  %i.q = lshr i16 %i.p, 2
  %i.r = trunc nuw i16 %i.q to i8
  %.sroa.0.1..1..sroa_idx87 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.r, ptr %.sroa.0.1..1..sroa_idx87, align 1, !tbaa !11
  %i.s = getelementptr i8, ptr %3, i64 -1         ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11
  %i.u = getelementptr i8, ptr %3, i64 1
  %i.v = add nuw nsw i16 %i.l, 1
  %i.w = add nuw nsw i16 %i.v, %i.c
  %i.x = lshr i16 %i.w, 1
  %i.y = trunc nuw i16 %i.x to i8
  %.sroa.0.2..2..sroa_idx89 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.y, ptr %.sroa.0.2..2..sroa_idx89, align 2, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = zext i8 %i.aa to i16                    ; 5 uses
  %i.ac = shl nuw nsw i16 %i.l, 1
  %i.ad = add nuw nsw i16 %i.ac, 2
  %i.ae = add nuw nsw i16 %i.ad, %i.c
  %i.af = add nuw nsw i16 %i.ae, %i.ab
  %i.ag = lshr i16 %i.af, 2
  %i.ah = trunc nuw i16 %i.ag to i8
  %.sroa.0.3..3..sroa_idx90 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.ah, ptr %.sroa.0.3..3..sroa_idx90, align 1, !tbaa !11
  %i.ai = add nuw nsw i16 %i.ab, 1
  %i.aj = add nuw nsw i16 %i.ai, %i.l
  %i.ak = lshr i16 %i.aj, 1
  %i.al = trunc nuw i16 %i.ak to i8
  %.sroa.0.4..4..sroa_idx92 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i8 %i.al, ptr %.sroa.0.4..4..sroa_idx92, align 4, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11
  %i.ao = zext i8 %i.an to i16                    ; 5 uses
  %i.ap = shl nuw nsw i16 %i.ab, 1
  %i.aq = add nuw nsw i16 %i.ap, 2
  %i.ar = add nuw nsw i16 %i.aq, %i.l
  %i.as = add nuw nsw i16 %i.ar, %i.ao
  %i.at = lshr i16 %i.as, 2
  %i.au = trunc nuw i16 %i.at to i8
  %.sroa.0.5..5..sroa_idx93 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 5
  store i8 %i.au, ptr %.sroa.0.5..5..sroa_idx93, align 1, !tbaa !11
  %i.av = add nuw nsw i16 %i.ao, 1
  %i.aw = add nuw nsw i16 %i.av, %i.ab
  %i.ax = lshr i16 %i.aw, 1
  %i.ay = trunc nuw i16 %i.ax to i8
  %.sroa.0.6..6..sroa_idx95 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 6
  store i8 %i.ay, ptr %.sroa.0.6..6..sroa_idx95, align 2, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = zext i8 %i.ba to i16                    ; 5 uses
  %i.bc = shl nuw nsw i16 %i.ao, 1
  %i.bd = add nuw nsw i16 %i.bc, 2
  %i.be = add nuw nsw i16 %i.bd, %i.ab
  %i.bf = add nuw nsw i16 %i.be, %i.bb
  %i.bg = lshr i16 %i.bf, 2
  %i.bh = trunc nuw i16 %i.bg to i8
  %.sroa.0.7..7..sroa_idx96 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 7
  store i8 %i.bh, ptr %.sroa.0.7..7..sroa_idx96, align 1, !tbaa !11
  %i.bi = getelementptr i8, ptr %3, i64 4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = zext i8 %i.bj to i16                    ; 3 uses
  %i.bl = add nuw nsw i16 %i.bb, 1
  %i.bm = add nuw nsw i16 %i.bl, %i.ao
  %i.bn = lshr i16 %i.bm, 1
  %i.bo = trunc nuw i16 %i.bn to i8
  %.sroa.0.8..8..sroa_idx98 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  store i8 %i.bo, ptr %.sroa.0.8..8..sroa_idx98, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = zext i8 %i.bq to i16                    ; 5 uses
  %i.bs = shl nuw nsw i16 %i.bb, 1
  %i.bt = add nuw nsw i16 %i.bs, 2
  %i.bu = add nuw nsw i16 %i.bt, %i.ao
  %i.bv = add nuw nsw i16 %i.bu, %i.br
  %i.bw = lshr i16 %i.bv, 2
  %i.bx = trunc nuw i16 %i.bw to i8
  %.sroa.0.9..9..sroa_idx99 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 9
  store i8 %i.bx, ptr %.sroa.0.9..9..sroa_idx99, align 1, !tbaa !11
  %i.by = shl nuw nsw i16 %i.bk, 1
  %i.bz = getelementptr i8, ptr %3, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = zext i8 %i.ca to i16                    ; 2 uses
  %i.cc = add nuw nsw i16 %i.br, 1
  %i.cd = add nuw nsw i16 %i.cc, %i.bb
  %i.ce = lshr i16 %i.cd, 1
  %i.cf = trunc nuw i16 %i.ce to i8
  %.sroa.0.10..10..sroa_idx101 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 10
  store i8 %i.cf, ptr %.sroa.0.10..10..sroa_idx101, align 2, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = shl nuw nsw i16 %i.br, 1
  %i.cj = add nuw nsw i16 %i.ci, 2
  %i.ck = add nuw nsw i16 %i.cj, %i.bb
  %i.cl = shl nuw nsw i16 %i.cb, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = zext i8 %i.cn to i16
  %i.cp = add nuw nsw i16 %i.bk, 2
  %i.cq = add nuw nsw i16 %i.cp, %i.cl
  %i.cr = add nuw nsw i16 %i.cq, %i.co
  %i.cs = lshr i16 %i.cr, 2
  %i.ct = trunc nuw i16 %i.cs to i8
  %i.cu = load <4 x i8>, ptr %3, align 1, !tbaa !11
  %i.cv = load i8, ptr %i.u, align 1, !tbaa !11
  %i.cw = zext <4 x i8> %i.cu to <4 x i16>        ; 4 uses
  %i.cx = extractelement <4 x i16> %i.cw, i64 3   ; 2 uses
  %i.cy = shl nuw nsw i16 %i.cx, 1
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
  %4 = bitcast <4 x i8> %i.eo to i32              ; 2 uses
  %i.ep = shl nuw nsw i16 %i.dm, 1
  %i.eq = add nuw nsw i16 %i.dq, 2
  %i.er = add nuw nsw i16 %i.eq, %i.ep
  %i.es = add nuw nsw i16 %i.er, %i.br
  %i.et = lshr i16 %i.es, 2
  %i.eu = trunc nuw i16 %i.et to i8
  %.sroa.0.13..13..sroa_idx105 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 13
  store i8 %i.eu, ptr %.sroa.0.13..13..sroa_idx105, align 1, !tbaa !11
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
  %i.ev = getelementptr inbounds i8, ptr %0, i64 %1 ; 3 uses
  %.sroa.0.12..12..sroa_idx103 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  %.sroa.0.12..sroa.0.12..12.57 = load i24, ptr %.sroa.0.12..12..sroa_idx103, align 4
  store i24 %.sroa.0.12..sroa.0.12..12.57, ptr %i.ev, align 1
  %.sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.ev, i64 3
  store <4 x i8> %i.eo, ptr %.sroa_idx61, align 1
  %.sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.ev, i64 7
  store i8 %i.de, ptr %.sroa_idx62, align 1
  %i.ew = shl nsw i64 %1, 1
  %i.ex = getelementptr inbounds i8, ptr %0, i64 %i.ew ; 2 uses
  %.sroa.0.10..10..sroa_idx100 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 10
  %.sroa.0.10..sroa.0.10..10.54 = load i40, ptr %.sroa.0.10..10..sroa_idx100, align 2
  %.sroa.25.15.extract.trunc = trunc i32 %4 to i24
  store i40 %.sroa.0.10..sroa.0.10..10.54, ptr %i.ex, align 1
  %.sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  store i24 %.sroa.25.15.extract.trunc, ptr %.sroa_idx56, align 1
  %i.ey = mul nsw i64 %1, 3
  %i.ez = getelementptr inbounds i8, ptr %0, i64 %i.ey ; 2 uses
  %.sroa.0.8..8..sroa_idx97 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..8.52 = load i56, ptr %.sroa.0.8..8..sroa_idx97, align 8
  %.sroa.25.15.extract.trunc85 = trunc i32 %4 to i8
  store i56 %.sroa.0.8..sroa.0.8..8.52, ptr %i.ez, align 1
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 7
  store i8 %.sroa.25.15.extract.trunc85, ptr %.sroa_idx, align 1
  %i.fa = shl nsw i64 %1, 2
  %i.fb = getelementptr inbounds i8, ptr %0, i64 %i.fa
  %.sroa.0.6..6..sroa_idx94 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 6
  %.sroa.0.6..sroa.0.6..6. = load i64, ptr %.sroa.0.6..6..sroa_idx94, align 2
  store i64 %.sroa.0.6..sroa.0.6..6., ptr %i.fb, align 1
  %i.fc = mul nsw i64 %1, 5
  %i.fd = getelementptr inbounds i8, ptr %0, i64 %i.fc
  %.sroa.0.4..4..sroa_idx91 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.4..sroa.0.4..4. = load i64, ptr %.sroa.0.4..4..sroa_idx91, align 4
  store i64 %.sroa.0.4..sroa.0.4..4., ptr %i.fd, align 1
  %i.fe = mul nsw i64 %1, 6
  %i.ff = getelementptr inbounds i8, ptr %0, i64 %i.fe
  %.sroa.0.2..2..sroa_idx88 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.2..sroa.0.2..2. = load i64, ptr %.sroa.0.2..2..sroa_idx88, align 2
  store i64 %.sroa.0.2..sroa.0.2..2., ptr %i.ff, align 1
  %i.fg = mul nsw i64 %1, 7
  %i.fh = getelementptr inbounds i8, ptr %0, i64 %i.fg
  %.sroa.0.0..sroa.0.0..0. = load i64, ptr %.sroa.0, align 16
  store i64 %.sroa.0.0..sroa.0.0..0., ptr %i.fh, align 1
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
  store i8 %i.br, ptr %i.m, align 1
  store i8 %i.ai, ptr %i.n, align 1
  store <4 x i8> %i.aq, ptr %.sroa.4.0..sroa_idx, align 1
  store i8 %i.bb, ptr %.sroa.11.0..sroa_idx, align 1
  store i8 %i.bj, ptr %.sroa.12.0..sroa_idx, align 1
  %i.bs = load i8, ptr %i.k, align 1, !tbaa !11
  store i8 %i.bs, ptr %i.o, align 1
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
end_hunk_0
