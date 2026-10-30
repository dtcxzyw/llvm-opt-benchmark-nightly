Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9dsp_8bpp?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 126
begin_hunk_0_@diag_downleft_8x8_c:bb.a
  store i8 %i.an, ptr %i.bl, align 1
  %.sroa.14.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.ar, ptr %.sroa.14.5..sroa_idx, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i8, ptr %i.j, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bm, i8 %i.bn, i64 6, i1 false)
  %i.bo = mul nsw i64 %1, 6
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 2 uses
  store i8 %i.ar, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.j, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bq, i8 %i.br, i64 7, i1 false)
  %i.bs = mul nsw i64 %1, 7
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bs
  %i.bu = load i8, ptr %i.j, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.bt, i8 %i.bu, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @diag_downright_8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !26
  %i.b = zext i8 %i.a to i16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !26
  %i.g = zext i8 %i.f to i16                      ; 3 uses
  %i.h = shl nuw nsw i16 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = zext i8 %i.j to i16                      ; 2 uses
  %i.l = shl nuw nsw i16 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26
  %i.o = zext i8 %i.n to i16
  %i.p = add nuw nsw i16 %i.g, 2
  %i.q = add nuw nsw i16 %i.p, %i.l
  %i.r = add nuw nsw i16 %i.q, %i.o
  %i.s = lshr i16 %i.r, 2
  %.sroa.11.sroa.10.6.insert.ext = zext nneg i16 %i.s to i24
  %.sroa.11.sroa.10.6.insert.shift = shl i24 %.sroa.11.sroa.10.6.insert.ext, 16
  %i.t = getelementptr inbounds i8, ptr %3, i64 -1
  %i.u = load <8 x i8>, ptr %2, align 1, !tbaa !26 ; 3 uses
  %i.v = load <2 x i8>, ptr %i.t, align 1, !tbaa !26
  %i.w = shufflevector <2 x i8> %i.v, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.x = shufflevector <8 x i8> %i.u, <8 x i8> %i.w, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 7>
  %i.y = zext <8 x i8> %i.x to <8 x i16>
  %i.z = shufflevector <8 x i8> %i.u, <8 x i8> %i.w, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 6, i32 8>
  %i.aa = zext <8 x i8> %i.z to <8 x i16>
  %i.ab = shufflevector <8 x i8> %i.u, <8 x i8> %i.w, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 9>
  %i.ac = zext <8 x i8> %i.ab to <8 x i16>
  %i.ad = shl nuw nsw <8 x i16> %i.aa, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0, i16 1>
  %i.ae = shl nuw nsw <8 x i16> %i.ac, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0>
  %i.af = add nuw nsw <8 x i16> %i.y, splat (i16 2) ; 2 uses
  %i.ag = add nuw nsw <8 x i16> %i.af, %i.ad
  %i.ah = add nuw nsw <8 x i16> %i.ag, %i.ae
  %i.ai = lshr <8 x i16> %i.ah, splat (i16 2)
  %i.aj = trunc <8 x i16> %i.ai to <8 x i8>       ; 5 uses
  %i.ak = bitcast <8 x i8> %i.aj to i64           ; 4 uses
  %i.al = load <4 x i8>, ptr %3, align 1, !tbaa !26
  %i.am = load <4 x i8>, ptr %i.c, align 1, !tbaa !26
  %i.an = load i8, ptr %i.d, align 1, !tbaa !26
  %i.ao = zext <4 x i8> %i.am to <4 x i16>        ; 2 uses
  %i.ap = extractelement <4 x i16> %i.ao, i64 3   ; 2 uses
  %i.aq = shl nuw nsw i16 %i.ap, 1
  %i.ar = zext i8 %i.an to i16
  %i.as = zext <4 x i8> %i.al to <4 x i16>        ; 2 uses
  %i.at = add nuw nsw i16 %i.ar, 2
  %i.au = add nuw nsw i16 %i.at, %i.aq
  %i.av = add nuw nsw i16 %i.au, %i.g
  %i.aw = lshr i16 %i.av, 2                       ; 2 uses
  %i.ax = add nuw nsw i16 %i.ap, 2
  %i.ay = add nuw nsw i16 %i.ax, %i.h
  %i.az = add nuw nsw i16 %i.ay, %i.k
  %i.ba = shl i16 %i.az, 6
  %i.bb = and i16 %i.ba, -256
  %.sroa.11.sroa.10.5.insert.shift = zext i16 %i.bb to i24
  %i.bc = and i16 %i.aw, 255
  %.sroa.11.sroa.10.4.insert.ext.masked = zext nneg i16 %i.bc to i24
  %i.bd = or disjoint i24 %.sroa.11.sroa.10.6.insert.shift, %.sroa.11.sroa.10.5.insert.shift
  %.sroa.11.sroa.10.5.insert.insert = or disjoint i24 %i.bd, %.sroa.11.sroa.10.4.insert.ext.masked ; 2 uses
  %i.be = shl nuw nsw <4 x i16> %i.as, splat (i16 1)
  %i.bf = shufflevector <8 x i16> %i.af, <8 x i16> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x i16> %i.bf, <4 x i16> %i.as, <4 x i32> <i32 0, i32 poison, i32 5, i32 6>
  %i.bh = insertelement <4 x i16> %i.bg, i16 %i.b, i64 1
  %i.bi = add nuw nsw <4 x i16> %i.bh, <i16 0, i16 2, i16 2, i16 2>
  %i.bj = add nuw nsw <4 x i16> %i.bi, %i.be
  %i.bk = add nuw nsw <4 x i16> %i.bj, %i.ao
  %i.bl = lshr <4 x i16> %i.bk, splat (i16 2)
  %i.bm = trunc <4 x i16> %i.bl to <4 x i8>       ; 2 uses
  %i.bn = bitcast <4 x i8> %i.bm to i32           ; 7 uses
  %.sroa.11.sroa.0.sroa.0.0.extract.trunc = trunc i32 %i.bn to i24
  %.sroa.11.sroa.0.sroa.10.0.extract.trunc = extractelement <4 x i8> %i.bm, i64 3 ; 4 uses
  %.sroa.0.7.extract.trunc = extractelement <8 x i8> %i.aj, i64 7
  %.sroa.11.sroa.0.sroa.10.0.insert.ext = zext i8 %.sroa.11.sroa.0.sroa.10.0.extract.trunc to i32
  %.sroa.11.sroa.0.sroa.10.0.insert.shift = shl nuw i32 %.sroa.11.sroa.0.sroa.10.0.insert.ext, 24
  %.sroa.11.sroa.0.sroa.0.0.insert.ext = and i32 %i.bn, 16777215
  %.sroa.11.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.11.sroa.0.sroa.10.0.insert.shift, %.sroa.11.sroa.0.sroa.0.0.insert.ext
  store i8 %.sroa.0.7.extract.trunc, ptr %0, align 1
  %.sroa_idx65 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.11.sroa.0.sroa.0.0.insert.insert, ptr %.sroa_idx65, align 1
  %.sroa_idx65.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i24 %.sroa.11.sroa.10.5.insert.insert, ptr %.sroa_idx65.sroa_idx, align 1
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %1 ; 3 uses
  %bc = bitcast <8 x i8> %i.aj to <4 x i16>
  %.sroa.0.6.extract.trunc = extractelement <4 x i16> %bc, i64 3
  %.sroa.11.sroa.0.sroa.10.0.insert.ext86 = zext i8 %.sroa.11.sroa.0.sroa.10.0.extract.trunc to i32
  %.sroa.11.sroa.0.sroa.10.0.insert.shift87 = shl nuw i32 %.sroa.11.sroa.0.sroa.10.0.insert.ext86, 24
  %.sroa.11.sroa.0.sroa.0.0.insert.ext77 = and i32 %i.bn, 16777215
  %.sroa.11.sroa.0.sroa.0.0.insert.insert79 = or disjoint i32 %.sroa.11.sroa.0.sroa.10.0.insert.shift87, %.sroa.11.sroa.0.sroa.0.0.insert.ext77
  %.sroa.11.sroa.10.4.extract.trunc = trunc i24 %.sroa.11.sroa.10.5.insert.insert to i16
  store i16 %.sroa.0.6.extract.trunc, ptr %i.bo, align 1
  %.sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i32 %.sroa.11.sroa.0.sroa.0.0.insert.insert79, ptr %.sroa_idx62, align 1
  %.sroa_idx62.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  store i16 %.sroa.11.sroa.10.4.extract.trunc, ptr %.sroa_idx62.sroa_idx, align 1
  %i.bp = shl nsw i64 %1, 1
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp ; 3 uses
  %.sroa.0.5.extract.shift = lshr i64 %i.ak, 40
  %.sroa.0.5.extract.trunc = trunc nuw i64 %.sroa.0.5.extract.shift to i24
  %.sroa.11.sroa.0.sroa.10.0.insert.ext90 = zext i8 %.sroa.11.sroa.0.sroa.10.0.extract.trunc to i32
  %.sroa.11.sroa.0.sroa.10.0.insert.shift91 = shl nuw i32 %.sroa.11.sroa.0.sroa.10.0.insert.ext90, 24
  %.sroa.11.sroa.0.sroa.0.0.insert.ext80 = and i32 %i.bn, 16777215
  %.sroa.11.sroa.0.sroa.0.0.insert.insert82 = or disjoint i32 %.sroa.11.sroa.0.sroa.10.0.insert.shift91, %.sroa.11.sroa.0.sroa.0.0.insert.ext80
  %.sroa.11.sroa.10.4.extract.trunc76 = trunc i16 %i.aw to i8
  store i24 %.sroa.0.5.extract.trunc, ptr %i.bq, align 1
  %.sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  store i32 %.sroa.11.sroa.0.sroa.0.0.insert.insert82, ptr %.sroa_idx59, align 1
  %.sroa_idx59.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 7
  store i8 %.sroa.11.sroa.10.4.extract.trunc76, ptr %.sroa_idx59.sroa_idx, align 1
  %i.br = mul nsw i64 %1, 3
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.br ; 2 uses
  %bc107 = bitcast <8 x i8> %i.aj to <2 x i32>
  %.sroa.0.4.extract.trunc = extractelement <2 x i32> %bc107, i64 1
  %.sroa.11.sroa.0.sroa.10.0.insert.ext94 = zext i8 %.sroa.11.sroa.0.sroa.10.0.extract.trunc to i32
  %.sroa.11.sroa.0.sroa.10.0.insert.shift95 = shl nuw i32 %.sroa.11.sroa.0.sroa.10.0.insert.ext94, 24
  %.sroa.11.sroa.0.sroa.0.0.insert.ext83 = and i32 %i.bn, 16777215
  %.sroa.11.sroa.0.sroa.0.0.insert.insert85 = or disjoint i32 %.sroa.11.sroa.0.sroa.10.0.insert.shift95, %.sroa.11.sroa.0.sroa.0.0.insert.ext83
  store i32 %.sroa.0.4.extract.trunc, ptr %i.bs, align 1
  %.sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %.sroa.11.sroa.0.sroa.0.0.insert.insert85, ptr %.sroa_idx56, align 1
  %i.bt = shl nsw i64 %1, 2
  %i.bu = getelementptr inbounds i8, ptr %0, i64 %i.bt ; 2 uses
  %.sroa.0.3.extract.shift = lshr i64 %i.ak, 24
  %.sroa.0.3.extract.trunc = trunc nuw i64 %.sroa.0.3.extract.shift to i40
  store i40 %.sroa.0.3.extract.trunc, ptr %i.bu, align 1
  %.sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.bu, i64 5
  store i24 %.sroa.11.sroa.0.sroa.0.0.extract.trunc, ptr %.sroa_idx53, align 1
  %i.bv = mul nsw i64 %1, 5
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv ; 2 uses
  %.sroa.0.2.extract.shift = lshr i64 %i.ak, 16
  %.sroa.0.2.extract.trunc = trunc nuw i64 %.sroa.0.2.extract.shift to i48
  %.sroa.11.sroa.0.sroa.0.0.extract.trunc103 = trunc i32 %i.bn to i16
  store i48 %.sroa.0.2.extract.trunc, ptr %i.bw, align 1
  %.sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  store i16 %.sroa.11.sroa.0.sroa.0.0.extract.trunc103, ptr %.sroa_idx50, align 1
  %i.bx = mul nsw i64 %1, 6
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx ; 2 uses
  %.sroa.0.1.extract.shift = lshr i64 %i.ak, 8
  %.sroa.0.1.extract.trunc = trunc nuw i64 %.sroa.0.1.extract.shift to i56
  %.sroa.11.sroa.0.sroa.0.0.extract.trunc105 = trunc i32 %i.bn to i8
  store i56 %.sroa.0.1.extract.trunc, ptr %i.by, align 1
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 7
  store i8 %.sroa.11.sroa.0.sroa.0.0.extract.trunc105, ptr %.sroa_idx, align 1
  %i.bz = mul nsw i64 %1, 7
  %i.ca = getelementptr inbounds i8, ptr %0, i64 %i.bz
  store <8 x i8> %i.aj, ptr %i.ca, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @vert_right_8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.l = load i8, ptr %i.k, align 1, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26
  %i.o = getelementptr i8, ptr %3, i64 -1
  %i.p = zext i8 %i.b to i16                      ; 3 uses
  %i.q = zext i8 %i.d to i16                      ; 2 uses
  %i.r = shl nuw nsw i16 %i.p, 1
  %i.s = add nuw nsw i16 %i.r, 2
  %i.t = add nuw nsw i16 %i.s, %i.q
  %i.u = zext i8 %i.n to i16                      ; 2 uses
  %.scalar = shl nuw nsw i16 %i.u, 1
  %.scalar81 = add nuw nsw i16 %.scalar, 2
  %i.v = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.scalar81, i64 0
  %i.w = load <8 x i8>, ptr %i.o, align 1, !tbaa !26
  %i.x = zext <8 x i8> %i.w to <8 x i16>          ; 10 uses
  %i.y = extractelement <8 x i16> %i.x, i64 4
  %i.z = extractelement <8 x i16> %i.x, i64 5     ; 2 uses
  %i.aa = zext i8 %i.f to i16
  %i.ab = add nuw nsw i16 %i.p, 2
  %i.ac = zext i8 %i.h to i16                     ; 3 uses
  %i.ad = add nuw nsw i16 %i.t, %i.ac
  %i.ae = lshr i16 %i.ad, 2
  %i.af = zext i8 %i.j to i16                     ; 3 uses
  %i.ag = add nuw nsw i16 %i.af, 2
  %i.ah = shl nuw nsw i16 %i.af, 1
  %i.ai = add nuw nsw i16 %i.ah, 2
  %i.aj = add nuw nsw i16 %i.ai, %i.ac
  %i.ak = add nuw nsw i16 %i.u, 2
  %i.al = zext i8 %i.l to i16                     ; 3 uses
  %i.am = shufflevector <8 x i16> %i.x, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 2, i32 3, i32 4, i32 5> ; 2 uses
  %i.an = insertelement <8 x i16> %i.am, i16 %i.q, i64 0
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ac, i64 1
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.al, i64 2 ; 2 uses
  %i.aq = shl nuw nsw <8 x i16> %i.x, <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 poison, i16 poison, i16 poison>
  %i.ar = shufflevector <8 x i16> %i.aq, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.as = shufflevector <8 x i16> %i.ap, <8 x i16> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %4 = shufflevector <8 x i16> %i.ap, <8 x i16> %i.x, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <8 x i16> %4, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 2, i16 2, i16 2, i16 2>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.au = add nuw nsw <8 x i16> %i.as, %i.at
  %i.av = insertelement <8 x i16> %i.am, i16 %i.ab, i64 0
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ag, i64 1
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.ak, i64 2
  %i.ay = shufflevector <8 x i16> %i.ax, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 4, i32 5, i32 6, i32 7>
  %i.az = add nuw nsw <8 x i16> %i.au, %i.ay
  %i.ba = shufflevector <8 x i16> %i.x, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 1, i32 0, i32 1, i32 2, i32 3>
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.aa, i64 0
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.p, i64 1
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.af, i64 2
  %i.be = add nuw nsw <8 x i16> %i.az, %i.bd
  %i.bf = add nuw nsw i16 %i.aj, %i.al
  %i.bg = shl i16 %i.bf, 6                        ; 2 uses
  %.sroa.0103.1.insert.shift = and i16 %i.bg, -256
  %.sroa.0103.1.insert.mask = and i16 %i.ae, 255
  %.sroa.0103.1.insert.insert = or disjoint i16 %.sroa.0103.1.insert.mask, %.sroa.0103.1.insert.shift
  %i.bh = lshr <8 x i16> %i.be, splat (i16 2)
  %i.bi = trunc <8 x i16> %i.bh to <8 x i8>       ; 2 uses
  %i.bj = bitcast <8 x i8> %i.bi to i64           ; 3 uses
  %i.bk = shl nuw nsw i16 %i.z, 1
  %i.bl = add nuw nsw i16 %i.bk, 2
  %i.bm = extractelement <8 x i16> %i.x, i64 6    ; 3 uses
  %i.bn = add nuw nsw i16 %i.bl, %i.bm
  %i.bo = add nuw nsw i16 %i.bn, %i.y
  %i.bp = lshr i16 %i.bo, 2                       ; 2 uses
  %i.bq = shufflevector <8 x i16> %i.x, <8 x i16> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.al, i64 0
  %i.bs = add nuw nsw <8 x i16> %i.v, %i.br
  %i.bt = add nuw nsw <8 x i16> %i.bs, %i.x
  %i.bu = lshr <8 x i16> %i.bt, <i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %i.bv = trunc <8 x i16> %i.bu to <8 x i8>       ; 2 uses
  %i.bw = bitcast <8 x i8> %i.bv to i64           ; 3 uses
  %i.bx = shl nuw nsw i16 %i.bm, 1
  %i.by = add nuw nsw i16 %i.bx, 2
  %i.bz = extractelement <8 x i16> %i.x, i64 7    ; 3 uses
  %i.ca = add nuw nsw i16 %i.by, %i.bz
  %i.cb = add nuw nsw i16 %i.ca, %i.z
  %i.cc = shl i16 %i.cb, 6
  %i.cd = and i16 %i.cc, -256
  %i.ce = and i16 %i.bp, 255
  %.sroa.7.9.insert.insert108 = or disjoint i16 %i.ce, %i.cd ; 2 uses
  %.sroa.7.9.insert.insert = zext i16 %.sroa.7.9.insert.insert108 to i24
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !26
  %i.ch = zext i8 %i.cg to i16                    ; 2 uses
  %i.ci = add nuw nsw i16 %i.bz, 1
  %i.cj = add nuw nsw i16 %i.ci, %i.ch
  %i.ck = lshr i16 %i.cj, 1
  %i.cl = trunc nuw i16 %i.ck to i8
  %i.cm = shl nuw nsw i16 %i.bz, 1
  %i.cn = add nuw nsw i16 %i.cm, 2
  %i.co = add nuw nsw i16 %i.cn, %i.ch
  %i.cp = add nuw nsw i16 %i.co, %i.bm
  %i.cq = lshr i16 %i.cp, 2
  %.sroa.7.10.insert.ext = zext nneg i16 %i.cq to i24
  %.sroa.7.10.insert.shift = shl i24 %.sroa.7.10.insert.ext, 16
  %.sroa.7.10.insert.insert = or disjoint i24 %.sroa.7.10.insert.shift, %.sroa.7.9.insert.insert
  %.sroa.6.3.extract.shift = lshr i64 %i.bw, 8
  %.sroa.6.3.extract.trunc = trunc nuw i64 %.sroa.6.3.extract.shift to i56
  store i56 %.sroa.6.3.extract.trunc, ptr %0, align 1
  %.sroa_idx102 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.cl, ptr %.sroa_idx102, align 1
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %1 ; 2 uses
  %.sroa.0.3.extract.shift = lshr i64 %i.bj, 24
  %.sroa.0.3.extract.trunc = trunc nuw i64 %.sroa.0.3.extract.shift to i40
  store i40 %.sroa.0.3.extract.trunc, ptr %i.cr, align 1
  %.sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.cr, i64 5
  store i24 %.sroa.7.10.insert.insert, ptr %.sroa_idx89, align 1
  %i.cs = shl nsw i64 %1, 1
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.cs
  store <8 x i8> %i.bv, ptr %i.ct, align 1
  %i.cu = mul nsw i64 %1, 3
  %i.cv = getelementptr inbounds i8, ptr %0, i64 %i.cu ; 2 uses
  %.sroa.0.2.extract.shift = lshr i64 %i.bj, 16
  %.sroa.0.2.extract.trunc = trunc nuw i64 %.sroa.0.2.extract.shift to i48
  store i48 %.sroa.0.2.extract.trunc, ptr %i.cv, align 1
  %.sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  store i16 %.sroa.7.9.insert.insert108, ptr %.sroa_idx86, align 1
  %i.cw = shl nsw i64 %1, 2
  %i.cx = getelementptr inbounds i8, ptr %0, i64 %i.cw ; 2 uses
  %.sroa.0103.1.extract.shift = lshr i16 %i.bg, 8
  %.sroa.0103.1.extract.trunc = trunc nuw i16 %.sroa.0103.1.extract.shift to i8
  %.sroa.6.2.extract.trunc = trunc i64 %i.bw to i56
  store i8 %.sroa.0103.1.extract.trunc, ptr %i.cx, align 1
  %.sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store i56 %.sroa.6.2.extract.trunc, ptr %.sroa_idx99, align 1
  %i.cy = mul nsw i64 %1, 5
  %i.cz = getelementptr inbounds i8, ptr %0, i64 %i.cy ; 2 uses
  %.sroa.0.1.extract.shift = lshr i64 %i.bj, 8
  %.sroa.0.1.extract.trunc = trunc nuw i64 %.sroa.0.1.extract.shift to i56
  %.sroa.7.8.extract.trunc92 = trunc i16 %i.bp to i8
  store i56 %.sroa.0.1.extract.trunc, ptr %i.cz, align 1
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 7
  store i8 %.sroa.7.8.extract.trunc92, ptr %.sroa_idx, align 1
  %i.da = mul nsw i64 %1, 6
  %i.db = getelementptr inbounds i8, ptr %0, i64 %i.da ; 2 uses
  %.sroa.6.2.extract.trunc106 = trunc i64 %i.bw to i48
  store i16 %.sroa.0103.1.insert.insert, ptr %i.db, align 1
  %.sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store i48 %.sroa.6.2.extract.trunc106, ptr %.sroa_idx96, align 1
  %i.dc = mul nsw i64 %1, 7
  %i.dd = getelementptr inbounds i8, ptr %0, i64 %i.dc
  store <8 x i8> %i.bi, ptr %i.dd, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @hor_down_8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %.sroa.0 = alloca [18 x i8], align 16           ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = zext i8 %i.b to i16                      ; 4 uses
  %i.d = load i8, ptr %2, align 1, !tbaa !26
  %i.e = zext i8 %i.d to i16                      ; 2 uses
  %i.f = add nuw nsw i16 %i.c, 1
  %i.g = add nuw nsw i16 %i.f, %i.e
  %i.h = lshr i16 %i.g, 1
  %i.i = trunc nuw i16 %i.h to i8
  store i8 %i.i, ptr %.sroa.0, align 16, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = zext i8 %i.k to i16                      ; 5 uses
  %i.m = shl nuw nsw i16 %i.c, 1
  %i.n = add nuw nsw i16 %i.m, 2
  %i.o = add nuw nsw i16 %i.n, %i.e
  %i.p = add nuw nsw i16 %i.o, %i.l
  %i.q = lshr i16 %i.p, 2
  %i.r = trunc nuw i16 %i.q to i8
  %.sroa.0.1..1..sroa_idx65 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.r, ptr %.sroa.0.1..1..sroa_idx65, align 1, !tbaa !26
  %i.s = getelementptr i8, ptr %3, i64 -1         ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !26
  %i.u = zext i8 %i.t to i16
  %i.v = load i8, ptr %3, align 1, !tbaa !26
  %i.w = zext i8 %i.v to i16                      ; 2 uses
  %i.x = shl nuw nsw i16 %i.w, 1
  %i.y = getelementptr i8, ptr %3, i64 1
  %i.z = add nuw nsw i16 %i.u, 2
  %i.aa = add nuw nsw i16 %i.z, %i.x
  %i.ab = add nuw nsw i16 %i.l, 1
  %i.ac = add nuw nsw i16 %i.ab, %i.c
  %i.ad = lshr i16 %i.ac, 1
  %i.ae = trunc nuw i16 %i.ad to i8
  %.sroa.0.2..2..sroa_idx67 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.ae, ptr %.sroa.0.2..2..sroa_idx67, align 2, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !26
  %i.ah = zext i8 %i.ag to i16                    ; 5 uses
  %i.ai = shl nuw nsw i16 %i.l, 1
  %i.aj = add nuw nsw i16 %i.ai, 2
  %i.ak = add nuw nsw i16 %i.aj, %i.c
  %i.al = add nuw nsw i16 %i.ak, %i.ah
  %i.am = lshr i16 %i.al, 2
  %i.an = trunc nuw i16 %i.am to i8
  %.sroa.0.3..3..sroa_idx68 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.an, ptr %.sroa.0.3..3..sroa_idx68, align 1, !tbaa !26
  %i.ao = getelementptr i8, ptr %3, i64 2
  %i.ap = add nuw nsw i16 %i.w, 2
  %i.aq = add nuw nsw i16 %i.ah, 1
  %i.ar = add nuw nsw i16 %i.aq, %i.l
  %i.as = lshr i16 %i.ar, 1
  %i.at = trunc nuw i16 %i.as to i8
  %.sroa.0.4..4..sroa_idx70 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i8 %i.at, ptr %.sroa.0.4..4..sroa_idx70, align 4, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !26
  %i.aw = zext i8 %i.av to i16                    ; 5 uses
  %i.ax = shl nuw nsw i16 %i.ah, 1
  %i.ay = add nuw nsw i16 %i.ax, 2
  %i.az = add nuw nsw i16 %i.ay, %i.l
  %i.ba = add nuw nsw i16 %i.az, %i.aw
  %i.bb = lshr i16 %i.ba, 2
  %i.bc = trunc nuw i16 %i.bb to i8
  %.sroa.0.5..5..sroa_idx71 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 5
  store i8 %i.bc, ptr %.sroa.0.5..5..sroa_idx71, align 1, !tbaa !26
  %i.bd = getelementptr i8, ptr %3, i64 3
  %i.be = add nuw nsw i16 %i.aw, 1
  %i.bf = add nuw nsw i16 %i.be, %i.ah
  %i.bg = lshr i16 %i.bf, 1
  %i.bh = trunc nuw i16 %i.bg to i8
  %.sroa.0.6..6..sroa_idx73 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 6
  store i8 %i.bh, ptr %.sroa.0.6..6..sroa_idx73, align 2, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !26
  %i.bk = zext i8 %i.bj to i16                    ; 5 uses
  %i.bl = shl nuw nsw i16 %i.aw, 1
  %i.bm = add nuw nsw i16 %i.bl, 2
  %i.bn = add nuw nsw i16 %i.bm, %i.ah
  %i.bo = add nuw nsw i16 %i.bn, %i.bk
  %i.bp = lshr i16 %i.bo, 2
  %i.bq = trunc nuw i16 %i.bp to i8
  %.sroa.0.7..7..sroa_idx74 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 7
  store i8 %i.bq, ptr %.sroa.0.7..7..sroa_idx74, align 1, !tbaa !26
  %i.br = add nuw nsw i16 %i.bk, 1
  %i.bs = add nuw nsw i16 %i.br, %i.aw
  %i.bt = lshr i16 %i.bs, 1
  %i.bu = trunc nuw i16 %i.bt to i8
  %.sroa.0.8..8..sroa_idx76 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  store i8 %i.bu, ptr %.sroa.0.8..8..sroa_idx76, align 8, !tbaa !26
end_hunk_0
begin_hunk_1_@diag_downleft_16x16_c:bb.a
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
  %i.cz = load i8, ptr %i.ao, align 1, !tbaa !26
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
  %i.dd = load i8, ptr %i.ao, align 1, !tbaa !26
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
  %i.dh = load i8, ptr %i.ao, align 1, !tbaa !26
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
  %i.dl = load i8, ptr %i.ao, align 1, !tbaa !26
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
  %i.dp = load i8, ptr %i.ao, align 1, !tbaa !26
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
  %i.dt = load i8, ptr %i.ao, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ds, i8 %i.dt, i64 10, i1 false)
  %i.du = mul nsw i64 %1, 10
  %i.dv = getelementptr inbounds i8, ptr %0, i64 %i.du ; 6 uses
  store i8 %i.cb, ptr %i.dv, align 1
  %.sroa.24.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 %i.v, ptr %.sroa.24.10..sroa_idx, align 1
  %.sroa.26.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store i8 %i.ae, ptr %.sroa.26.10..sroa_idx, align 1
  %.sroa.28.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  store i8 %i.an, ptr %.sroa.28.10..sroa_idx, align 1
  %.sroa.30.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i8 %i.at, ptr %.sroa.30.10..sroa_idx, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 5
  %i.dx = load i8, ptr %i.ao, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.dw, i8 %i.dx, i64 11, i1 false)
  %i.dy = mul nsw i64 %1, 11
  %i.dz = getelementptr inbounds i8, ptr %0, i64 %i.dy ; 5 uses
  store i8 %i.v, ptr %i.dz, align 1
  %.sroa.26.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store i8 %i.ae, ptr %.sroa.26.11..sroa_idx, align 1
  %.sroa.28.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  store i8 %i.an, ptr %.sroa.28.11..sroa_idx, align 1
  %.sroa.30.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 3
  store i8 %i.at, ptr %.sroa.30.11..sroa_idx, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i8, ptr %i.ao, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ea, i8 %i.eb, i64 12, i1 false)
  %i.ec = mul nsw i64 %1, 12
  %i.ed = getelementptr inbounds i8, ptr %0, i64 %i.ec ; 4 uses
  store i8 %i.ae, ptr %i.ed, align 1
  %.sroa.28.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store i8 %i.an, ptr %.sroa.28.12..sroa_idx, align 1
  %.sroa.30.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store i8 %i.at, ptr %.sroa.30.12..sroa_idx, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 3
  %i.ef = load i8, ptr %i.ao, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ee, i8 %i.ef, i64 13, i1 false)
  %i.eg = mul nsw i64 %1, 13
  %i.eh = getelementptr inbounds i8, ptr %0, i64 %i.eg ; 3 uses
  store i8 %i.an, ptr %i.eh, align 1
  %.sroa.30.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store i8 %i.at, ptr %.sroa.30.13..sroa_idx, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ej = load i8, ptr %i.ao, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ei, i8 %i.ej, i64 14, i1 false)
  %i.ek = mul nsw i64 %1, 14
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.ek ; 2 uses
  store i8 %i.at, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.en = load i8, ptr %i.ao, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.em, i8 %i.en, i64 15, i1 false)
  %i.eo = mul nsw i64 %1, 15
  %i.ep = getelementptr inbounds i8, ptr %0, i64 %i.eo
  %i.eq = load i8, ptr %i.ao, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ep, i8 %i.eq, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @diag_downright_16x16_c(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !26
  %i.b = zext i8 %i.a to i16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26
  %i.e = zext i8 %i.d to i16                      ; 2 uses
  %i.f = shl nuw nsw i16 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  %i.i = zext i8 %i.h to i16                      ; 3 uses
  %i.j = add nuw nsw i16 %i.b, 2
  %i.k = add nuw nsw i16 %i.j, %i.f
  %i.l = add nuw nsw i16 %i.k, %i.i
  %i.m = lshr i16 %i.l, 2
  %i.n = trunc nuw i16 %i.m to i8                 ; 14 uses
  %i.o = shl nuw nsw i16 %i.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26
  %i.r = zext i8 %i.q to i16                      ; 3 uses
  %i.s = add nuw nsw i16 %i.e, 2
  %i.t = add nuw nsw i16 %i.s, %i.o
  %i.u = add nuw nsw i16 %i.t, %i.r
  %i.v = lshr i16 %i.u, 2
  %i.w = trunc nuw i16 %i.v to i8                 ; 13 uses
  %i.x = shl nuw nsw i16 %i.r, 1
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !26
  %i.aa = zext i8 %i.z to i16                     ; 2 uses
  %i.ab = add nuw nsw i16 %i.i, 2
  %i.ac = add nuw nsw i16 %i.ab, %i.x
  %i.ad = add nuw nsw i16 %i.ac, %i.aa
  %i.ae = lshr i16 %i.ad, 2
  %i.af = trunc nuw i16 %i.ae to i8               ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !26
  %i.am = getelementptr inbounds i8, ptr %3, i64 -1
  %i.an = load i8, ptr %i.c, align 1, !tbaa !26
  %.sroa.34.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.35.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.36.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.37.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.38.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.39.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.40.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.48.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %1 ; 9 uses
  %.sroa.32.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.sroa.34.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %.sroa.35.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %.sroa.36.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.sroa.37.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %.sroa.38.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  %.sroa.39.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 7
  %.sroa.40.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ap = shl nsw i64 %1, 1
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap ; 13 uses
  %.sroa.30.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %.sroa.32.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %.sroa.34.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %.sroa.35.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.sroa.36.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  %.sroa.37.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %.sroa.38.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 7
  %.sroa.39.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.40.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %.sroa.41.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %.sroa.45.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %.sroa.46.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 15
  %i.ar = mul nsw i64 %1, 3
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar ; 13 uses
  %.sroa.28.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.sroa.30.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.sroa.32.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %.sroa.34.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.sroa.35.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  %.sroa.36.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %.sroa.37.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 7
  %.sroa.38.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.39.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  %.sroa.40.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  %.sroa.41.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 11
  %.sroa.42.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.at = shl nsw i64 %1, 2
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at ; 16 uses
  %.sroa.26.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sroa.28.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %.sroa.30.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %.sroa.32.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.sroa.34.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 5
  %.sroa.35.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 6
  %.sroa.36.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 7
  %.sroa.37.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.38.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  %.sroa.39.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 10
  %.sroa.40.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 11
  %.sroa.41.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %.sroa.42.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 13
  %.sroa.43.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 14
  %.sroa.44.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 15
  %i.av = mul nsw i64 %1, 5
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av ; 16 uses
  %.sroa.24.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %.sroa.26.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %.sroa.28.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  %.sroa.30.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.sroa.32.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  %.sroa.34.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  %.sroa.35.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  %.sroa.36.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.37.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  %.sroa.38.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  %.sroa.39.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  %.sroa.40.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %.sroa.41.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  %.sroa.42.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %.sroa.43.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  %i.ax = mul nsw i64 %1, 6
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax ; 16 uses
  %.sroa.22.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %.sroa.24.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %.sroa.26.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %.sroa.28.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %.sroa.30.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  %.sroa.32.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %.sroa.34.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  %.sroa.35.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.36.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 9
  %.sroa.37.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %.sroa.38.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 11
  %.sroa.39.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %.sroa.40.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 13
  %.sroa.41.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 14
  %.sroa.42.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 15
  %i.az = mul nsw i64 %1, 7
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az ; 9 uses
  %.sroa.34.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.35.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  %.sroa.36.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %.sroa.37.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 11
  %.sroa.38.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %.sroa.39.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 13
  %.sroa.40.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %.sroa.41.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 15
  %i.bb = shl nsw i64 %1, 3
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %i.bb ; 9 uses
  %.sroa.32.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.34.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %.sroa.35.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %.sroa.36.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 11
  %.sroa.37.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %.sroa.38.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 13
  %.sroa.39.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %.sroa.40.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 15
  %i.bd = mul nsw i64 %1, 9
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bd ; 9 uses
  %.sroa.30.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.32.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  %.sroa.34.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %.sroa.35.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 11
  %.sroa.36.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.sroa.37.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 13
  %.sroa.38.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  %.sroa.39.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 15
  %i.bf = mul nsw i64 %1, 10
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.bf ; 9 uses
  %.sroa.28.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.30.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %.sroa.32.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %.sroa.34.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %.sroa.35.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %.sroa.36.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 13
  %.sroa.37.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %.sroa.38.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.bh = mul nsw i64 %1, 11
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh ; 9 uses
  %.sroa.26.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.28.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 9
  %.sroa.30.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %.sroa.32.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 11
  %.sroa.34.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %.sroa.35.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 13
  %.sroa.36.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 14
  %.sroa.37.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 15
  %i.bj = mul nsw i64 %1, 12
  %i.bk = getelementptr inbounds i8, ptr %0, i64 %i.bj ; 9 uses
  %.sroa.24.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.26.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %.sroa.28.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  %.sroa.30.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  %.sroa.32.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.sroa.34.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 13
  %.sroa.35.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %.sroa.36.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 15
  %i.bl = mul nsw i64 %1, 13
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl ; 9 uses
  %.sroa.22.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.24.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  %.sroa.26.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 10
  %.sroa.28.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 11
  %.sroa.30.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %.sroa.32.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 13
  %.sroa.34.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %.sroa.35.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 15
  %i.bn = mul nsw i64 %1, 14
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn ; 9 uses
  %.sroa.20.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.22.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %.sroa.24.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %.sroa.26.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 11
  %.sroa.28.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %.sroa.30.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 13
  %.sroa.32.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %.sroa.34.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 15
  %i.bp = mul nsw i64 %1, 15
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp
  %i.br = load <8 x i8>, ptr %2, align 1, !tbaa !26
  %i.bs = load <8 x i8>, ptr %i.aj, align 1, !tbaa !26 ; 2 uses
  %i.bt = load <2 x i8>, ptr %i.am, align 1, !tbaa !26
  %i.bu = load i8, ptr %3, align 1, !tbaa !26     ; 2 uses
  %i.bv = shufflevector <2 x i8> %i.bt, <2 x i8> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bw = shufflevector <8 x i8> %i.bs, <8 x i8> %i.bv, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 7>
  %i.bx = shufflevector <8 x i8> %i.br, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.by = shufflevector <16 x i8> %i.bx, <16 x i8> %i.bw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 3 uses
  %i.bz = zext <16 x i8> %i.by to <16 x i16>
  %i.ca = shufflevector <8 x i8> %i.bs, <8 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cb = shufflevector <16 x i8> %i.by, <16 x i8> %i.ca, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 22, i32 22, i32 14> ; 2 uses
  %i.cc = zext <16 x i8> %i.cb to <16 x i16>
  %i.cd = zext i8 %i.bu to i16
  %i.ce = shufflevector <16 x i8> %i.cb, <16 x i8> %i.by, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 31, i32 31, i32 poison>
  %i.cf = insertelement <16 x i8> %i.ce, i8 %i.bu, i64 15
  %i.cg = zext <16 x i8> %i.cf to <16 x i16>
  %i.ch = shl nuw nsw <16 x i16> %i.cc, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0, i16 1>
  %i.ci = shl nuw nsw <16 x i16> %i.cg, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0>
  %i.cj = add nuw nsw <16 x i16> %i.bz, splat (i16 2) ; 2 uses
  %i.ck = add nuw nsw <16 x i16> %i.cj, %i.ch
  %i.cl = add nuw nsw <16 x i16> %i.ck, %i.ci
  %i.cm = lshr <16 x i16> %i.cl, splat (i16 2)    ; 8 uses
  %i.cn = trunc <16 x i16> %i.cm to <16 x i8>     ; 9 uses
  %i.co = extractelement <16 x i8> %i.cn, i64 15  ; 14 uses
  %i.cp = extractelement <16 x i8> %i.cn, i64 14  ; 12 uses
  %i.cq = load <8 x i8>, ptr %i.ag, align 1, !tbaa !26
  %i.cr = load <8 x i8>, ptr %i.ah, align 1, !tbaa !26
  %i.cs = load <8 x i8>, ptr %i.ai, align 1, !tbaa !26
  %i.ct = zext <8 x i8> %i.cq to <8 x i16>        ; 3 uses
  %i.cu = zext <8 x i8> %i.cr to <8 x i16>        ; 2 uses
  %i.cv = zext <8 x i8> %i.cs to <8 x i16>        ; 2 uses
  %i.cw = shl nuw nsw <8 x i16> %i.cu, splat (i16 1)
  %i.cx = add nuw nsw <8 x i16> %i.ct, splat (i16 2)
  %i.cy = add nuw nsw <8 x i16> %i.cx, %i.cw
  %i.cz = add nuw nsw <8 x i16> %i.cy, %i.cv
  %i.da = lshr <8 x i16> %i.cz, splat (i16 2)     ; 3 uses
  %i.db = trunc <8 x i16> %i.da to <8 x i8>       ; 9 uses
  %i.dc = add nuw nsw i16 %i.r, 2
  %i.dd = zext i8 %i.al to i16
  %i.de = zext i8 %i.an to i16
  %i.df = shufflevector <8 x i16> %i.ct, <8 x i16> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dg = shufflevector <16 x i16> %i.cj, <16 x i16> %i.df, <4 x i32> <i32 14, i32 poison, i32 16, i32 poison>
  %i.dh = insertelement <4 x i16> %i.dg, i16 %i.dc, i64 1
  %i.di = shufflevector <8 x i16> %i.cv, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 7>
  %i.dj = shufflevector <4 x i16> %i.dh, <4 x i16> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dk = shl nuw nsw <4 x i16> %i.dj, <i16 0, i16 0, i16 1, i16 1>
  %i.dl = shufflevector <8 x i16> %i.cu, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 7>
  %i.dm = insertelement <4 x i16> %i.dl, i16 %i.cd, i64 0
  %i.dn = insertelement <4 x i16> %i.dm, i16 %i.aa, i64 1 ; 2 uses
  %i.do = shufflevector <4 x i16> %i.dn, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.dp = shufflevector <4 x i16> %i.dn, <4 x i16> <i16 poison, i16 poison, i16 2, i16 2>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dq = add nuw nsw <4 x i16> %i.do, %i.dp
  %i.dr = add nuw nsw <4 x i16> %i.dk, %i.dq
  %i.ds = shufflevector <8 x i16> %i.ct, <8 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dt = insertelement <4 x i16> %i.ds, i16 %i.de, i64 0
  %i.du = insertelement <4 x i16> %i.dt, i16 %i.dd, i64 3
  %i.dv = add nuw nsw <4 x i16> %i.dr, %i.du
  %i.dw = lshr <4 x i16> %i.dv, splat (i16 2)     ; 4 uses
  %i.dx = bitcast <4 x i16> %i.dw to <8 x i8>
  %i.dy = extractelement <8 x i8> %i.dx, i64 0    ; 15 uses
  %i.dz = bitcast <4 x i16> %i.dw to <8 x i8>
  %i.ea = extractelement <8 x i8> %i.dz, i64 2    ; 11 uses
  %i.eb = bitcast <4 x i16> %i.dw to <8 x i8>
  %i.ec = extractelement <8 x i8> %i.eb, i64 4    ; 10 uses
  %i.ed = bitcast <4 x i16> %i.dw to <8 x i8>
  %i.ee = extractelement <8 x i8> %i.ed, i64 6
  store i8 %i.co, ptr %0, align 1
  store i8 %i.dy, ptr %.sroa.34.15..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.15..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.15..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.15..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.15..sroa_idx, align 1
  store i8 %i.ec, ptr %.sroa.39.15..sroa_idx, align 1
  %i.ef = extractelement <8 x i8> %i.db, i64 0    ; 7 uses
  %i.eg = extractelement <8 x i8> %i.db, i64 1    ; 5 uses
  %i.eh = extractelement <8 x i8> %i.db, i64 2    ; 3 uses
  store <8 x i8> %i.db, ptr %.sroa.40.15..sroa_idx, align 1
  store i8 %i.ee, ptr %.sroa.48.15..sroa_idx, align 1
  store i8 %i.cp, ptr %i.ao, align 1
  store i8 %i.co, ptr %.sroa.32.14..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.14..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.14..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.14..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.14..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.14..sroa_idx, align 1
  store i8 %i.ec, ptr %.sroa.39.14..sroa_idx, align 1
  store <8 x i8> %i.db, ptr %.sroa.40.14..sroa_idx, align 1
  %i.ei = extractelement <16 x i8> %i.cn, i64 13  ; 10 uses
  store i8 %i.ei, ptr %i.aq, align 1
  store i8 %i.cp, ptr %.sroa.30.13..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.13..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.13..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.13..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.13..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.13..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.13..sroa_idx, align 1
  store i8 %i.ec, ptr %.sroa.39.13..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.40.13..sroa_idx, align 1
  %i.ej = extractelement <8 x i8> %i.db, i64 3    ; 2 uses
  %i.ek = extractelement <8 x i8> %i.db, i64 4
  %i.el = shufflevector <8 x i16> %i.da, <8 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.em = trunc <4 x i16> %i.el to <4 x i8>
  store <4 x i8> %i.em, ptr %.sroa.41.13..sroa_idx, align 1
  %i.en = extractelement <8 x i8> %i.db, i64 5
  store i8 %i.en, ptr %.sroa.45.13..sroa_idx, align 1
  %i.eo = extractelement <8 x i8> %i.db, i64 6
  store i8 %i.eo, ptr %.sroa.46.13..sroa_idx, align 1
  %i.ep = extractelement <16 x i8> %i.cn, i64 12  ; 8 uses
  store i8 %i.ep, ptr %i.as, align 1
  store i8 %i.ei, ptr %.sroa.28.12..sroa_idx, align 1
  store i8 %i.cp, ptr %.sroa.30.12..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.12..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.12..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.12..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.12..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.12..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.12..sroa_idx, align 1
  store i8 %i.ec, ptr %.sroa.39.12..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.40.12..sroa_idx, align 1
  store i8 %i.eg, ptr %.sroa.41.12..sroa_idx, align 1
  %i.eq = shufflevector <8 x i16> %i.da, <8 x i16> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.er = trunc <4 x i16> %i.eq to <4 x i8>
  store <4 x i8> %i.er, ptr %.sroa.42.12..sroa_idx, align 1
  %i.es = extractelement <16 x i8> %i.cn, i64 11  ; 6 uses
  store i8 %i.es, ptr %i.au, align 1
  store i8 %i.ep, ptr %.sroa.26.11..sroa_idx, align 1
  store i8 %i.ei, ptr %.sroa.28.11..sroa_idx, align 1
  store i8 %i.cp, ptr %.sroa.30.11..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.11..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.11..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.11..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.11..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.11..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.11..sroa_idx, align 1
  store i8 %i.ec, ptr %.sroa.39.11..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.40.11..sroa_idx, align 1
  store i8 %i.eg, ptr %.sroa.41.11..sroa_idx, align 1
  store i8 %i.eh, ptr %.sroa.42.11..sroa_idx, align 1
  store i8 %i.ej, ptr %.sroa.43.11..sroa_idx, align 1
  store i8 %i.ek, ptr %.sroa.44.11..sroa_idx, align 1
  %i.et = extractelement <16 x i8> %i.cn, i64 10  ; 4 uses
  store i8 %i.et, ptr %i.aw, align 1
  store i8 %i.es, ptr %.sroa.24.10..sroa_idx, align 1
  store i8 %i.ep, ptr %.sroa.26.10..sroa_idx, align 1
  store i8 %i.ei, ptr %.sroa.28.10..sroa_idx, align 1
  store i8 %i.cp, ptr %.sroa.30.10..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.10..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.10..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.10..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.10..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.10..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.10..sroa_idx, align 1
  store i8 %i.ec, ptr %.sroa.39.10..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.40.10..sroa_idx, align 1
  store i8 %i.eg, ptr %.sroa.41.10..sroa_idx, align 1
  store i8 %i.eh, ptr %.sroa.42.10..sroa_idx, align 1
  store i8 %i.ej, ptr %.sroa.43.10..sroa_idx, align 1
  %i.eu = extractelement <16 x i8> %i.cn, i64 9   ; 2 uses
  store i8 %i.eu, ptr %i.ay, align 1
  store i8 %i.et, ptr %.sroa.22.9..sroa_idx, align 1
  store i8 %i.es, ptr %.sroa.24.9..sroa_idx, align 1
  store i8 %i.ep, ptr %.sroa.26.9..sroa_idx, align 1
  store i8 %i.ei, ptr %.sroa.28.9..sroa_idx, align 1
  store i8 %i.cp, ptr %.sroa.30.9..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.9..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.9..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.9..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.9..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.9..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.9..sroa_idx, align 1
  store i8 %i.ec, ptr %.sroa.39.9..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.40.9..sroa_idx, align 1
  store i8 %i.eg, ptr %.sroa.41.9..sroa_idx, align 1
  store i8 %i.eh, ptr %.sroa.42.9..sroa_idx, align 1
  %i.ev = shufflevector <16 x i8> %i.cn, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i8> %i.ev, ptr %i.ba, align 1
  store i8 %i.dy, ptr %.sroa.34.8..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.8..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.8..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.8..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.8..sroa_idx, align 1
  store i8 %i.ec, ptr %.sroa.39.8..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.40.8..sroa_idx, align 1
  store i8 %i.eg, ptr %.sroa.41.8..sroa_idx, align 1
  %i.ew = shufflevector <16 x i16> %i.cm, <16 x i16> poison, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ex = trunc <8 x i16> %i.ew to <8 x i8>
  store <8 x i8> %i.ex, ptr %i.bc, align 1
  store i8 %i.co, ptr %.sroa.32.7..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.7..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.7..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.7..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.7..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.7..sroa_idx, align 1
  store i8 %i.ec, ptr %.sroa.39.7..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.40.7..sroa_idx, align 1
  %i.ey = shufflevector <16 x i16> %i.cm, <16 x i16> poison, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.ez = trunc <8 x i16> %i.ey to <8 x i8>
  store <8 x i8> %i.ez, ptr %i.be, align 1
  store i8 %i.cp, ptr %.sroa.30.6..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.6..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.6..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.6..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.6..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.6..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.6..sroa_idx, align 1
  store i8 %i.ec, ptr %.sroa.39.6..sroa_idx, align 1
  %i.fa = shufflevector <16 x i16> %i.cm, <16 x i16> poison, <8 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.fb = trunc <8 x i16> %i.fa to <8 x i8>
  store <8 x i8> %i.fb, ptr %i.bg, align 1
  store i8 %i.ei, ptr %.sroa.28.5..sroa_idx, align 1
  store i8 %i.cp, ptr %.sroa.30.5..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.5..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.5..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.5..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.5..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.5..sroa_idx, align 1
  store i8 %i.ea, ptr %.sroa.38.5..sroa_idx, align 1
  %i.fc = shufflevector <16 x i16> %i.cm, <16 x i16> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.fd = trunc <8 x i16> %i.fc to <8 x i8>
  store <8 x i8> %i.fd, ptr %i.bi, align 1
  store i8 %i.ep, ptr %.sroa.26.4..sroa_idx, align 1
  store i8 %i.ei, ptr %.sroa.28.4..sroa_idx, align 1
  store i8 %i.cp, ptr %.sroa.30.4..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.4..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.4..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.4..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.4..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.4..sroa_idx, align 1
  %i.fe = shufflevector <16 x i16> %i.cm, <16 x i16> poison, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10>
  %i.ff = trunc <8 x i16> %i.fe to <8 x i8>
  store <8 x i8> %i.ff, ptr %i.bk, align 1
  store i8 %i.es, ptr %.sroa.24.3..sroa_idx, align 1
  store i8 %i.ep, ptr %.sroa.26.3..sroa_idx, align 1
  store i8 %i.ei, ptr %.sroa.28.3..sroa_idx, align 1
  store i8 %i.cp, ptr %.sroa.30.3..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.3..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.3..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.3..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.3..sroa_idx, align 1
  %i.fg = shufflevector <16 x i16> %i.cm, <16 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9>
  %i.fh = trunc <8 x i16> %i.fg to <8 x i8>
  store <8 x i8> %i.fh, ptr %i.bm, align 1
  store i8 %i.et, ptr %.sroa.22.2..sroa_idx, align 1
  store i8 %i.es, ptr %.sroa.24.2..sroa_idx, align 1
  store i8 %i.ep, ptr %.sroa.26.2..sroa_idx, align 1
  store i8 %i.ei, ptr %.sroa.28.2..sroa_idx, align 1
  store i8 %i.cp, ptr %.sroa.30.2..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.2..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.2..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.2..sroa_idx, align 1
  %i.fi = shufflevector <16 x i16> %i.cm, <16 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.fj = trunc <8 x i16> %i.fi to <8 x i8>
  store <8 x i8> %i.fj, ptr %i.bo, align 1
  store i8 %i.eu, ptr %.sroa.20.1..sroa_idx, align 1
  store i8 %i.et, ptr %.sroa.22.1..sroa_idx, align 1
  store i8 %i.es, ptr %.sroa.24.1..sroa_idx, align 1
  store i8 %i.ep, ptr %.sroa.26.1..sroa_idx, align 1
  store i8 %i.ei, ptr %.sroa.28.1..sroa_idx, align 1
  store i8 %i.cp, ptr %.sroa.30.1..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.32.1..sroa_idx, align 1
  store i8 %i.dy, ptr %.sroa.34.1..sroa_idx, align 1
  store <16 x i8> %i.cn, ptr %i.bq, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @vert_right_16x16_c(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = zext i8 %i.b to i16                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %i.f = zext i8 %i.e to i16                      ; 2 uses
  %i.g = shl nuw nsw i16 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !26
  %i.j = zext i8 %i.i to i16
  %i.k = add nuw nsw i16 %i.c, 2
  %i.l = add nuw nsw i16 %i.k, %i.g
  %i.m = add nuw nsw i16 %i.l, %i.j
  %i.n = lshr i16 %i.m, 2
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26
  %i.r = zext i8 %i.q to i16                      ; 3 uses
  %i.s = shl nuw nsw i16 %i.c, 1
  %i.t = add nuw nsw i16 %i.s, 2
  %i.u = add nuw nsw i16 %i.t, %i.f
  %i.v = add nuw nsw i16 %i.u, %i.r
  %i.w = lshr i16 %i.v, 2
  %i.x = trunc nuw i16 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.z = load i8, ptr %i.y, align 1, !tbaa !26
  %i.aa = zext i8 %i.z to i16                     ; 3 uses
  %i.ab = shl nuw nsw i16 %i.r, 1
  %i.ac = add nuw nsw i16 %i.aa, 2
  %i.ad = add nuw nsw i16 %i.ac, %i.ab
  %i.ae = add nuw nsw i16 %i.ad, %i.c
  %i.af = lshr i16 %i.ae, 2
  %i.ag = trunc nuw i16 %i.af to i8               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !26
  %i.aj = zext i8 %i.ai to i16                    ; 3 uses
  %i.ak = shl nuw nsw i16 %i.aa, 1
  %i.al = add nuw nsw i16 %i.ak, 2
  %i.am = add nuw nsw i16 %i.al, %i.r
  %i.an = add nuw nsw i16 %i.am, %i.aj
  %i.ao = lshr i16 %i.an, 2
  %i.ap = trunc nuw i16 %i.ao to i8               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !26
  %i.as = zext i8 %i.ar to i16                    ; 3 uses
  %i.at = shl nuw nsw i16 %i.aj, 1
  %i.au = add nuw nsw i16 %i.as, 2
  %i.av = add nuw nsw i16 %i.au, %i.at
  %i.aw = add nuw nsw i16 %i.av, %i.aa
  %i.ax = lshr i16 %i.aw, 2
  %i.ay = trunc nuw i16 %i.ax to i8               ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !26
  %i.bb = zext i8 %i.ba to i16                    ; 3 uses
  %i.bc = shl nuw nsw i16 %i.as, 1
  %i.bd = add nuw nsw i16 %i.bc, 2
  %i.be = add nuw nsw i16 %i.bd, %i.aj
  %i.bf = add nuw nsw i16 %i.be, %i.bb
  %i.bg = lshr i16 %i.bf, 2
  %i.bh = trunc nuw i16 %i.bg to i8               ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !26
  %i.bk = zext i8 %i.bj to i16                    ; 3 uses
  %i.bl = shl nuw nsw i16 %i.bb, 1
  %i.bm = add nuw nsw i16 %i.bk, 2
  %i.bn = add nuw nsw i16 %i.bm, %i.bl
  %i.bo = add nuw nsw i16 %i.bn, %i.as
  %i.bp = lshr i16 %i.bo, 2
  %i.bq = trunc nuw i16 %i.bp to i8               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !26
  %i.bt = zext i8 %i.bs to i16                    ; 3 uses
  %i.bu = shl nuw nsw i16 %i.bk, 1
  %i.bv = add nuw nsw i16 %i.bu, 2
  %i.bw = add nuw nsw i16 %i.bv, %i.bb
  %i.bx = add nuw nsw i16 %i.bw, %i.bt
  %i.by = lshr i16 %i.bx, 2
  %i.bz = trunc nuw i16 %i.by to i8               ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !26
  %i.cc = zext i8 %i.cb to i16                    ; 3 uses
  %i.cd = shl nuw nsw i16 %i.bt, 1
  %i.ce = add nuw nsw i16 %i.cc, 2
  %i.cf = add nuw nsw i16 %i.ce, %i.cd
  %i.cg = add nuw nsw i16 %i.cf, %i.bk
  %i.ch = lshr i16 %i.cg, 2
  %i.ci = trunc nuw i16 %i.ch to i8               ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !26
  %i.cl = zext i8 %i.ck to i16                    ; 3 uses
  %i.cm = shl nuw nsw i16 %i.cc, 1
  %i.cn = add nuw nsw i16 %i.cm, 2
  %i.co = add nuw nsw i16 %i.cn, %i.bt
  %i.cp = add nuw nsw i16 %i.co, %i.cl
  %i.cq = lshr i16 %i.cp, 2
  %i.cr = trunc nuw i16 %i.cq to i8               ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !26
  %i.cu = shl nuw nsw i16 %i.cl, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !26
  %i.cz = zext i8 %i.cy to i16                    ; 2 uses
  %i.da = add nuw nsw i16 %i.cz, 2
  %i.db = getelementptr i8, ptr %3, i64 -1
  %i.dc = shl nuw nsw i16 %i.cz, 1
  %i.dd = add nuw nsw i16 %i.dc, 2
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 2
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !26
  %i.dj = zext i8 %i.di to i16                    ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !26
  %i.dm = zext i8 %i.dl to i16                    ; 2 uses
  %i.dn = shl nuw nsw i16 %i.dj, 1
  %i.do = add nuw nsw i16 %i.dn, 2
  %i.dp = add nuw nsw i16 %i.do, %i.dm
  %i.dq = getelementptr inbounds i8, ptr %0, i64 %1 ; 9 uses
  %.sroa.18.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %.sroa.19.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %.sroa.20.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 3
  %.sroa.21.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %.sroa.22.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 5
  %.sroa.30.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 13
  %.sroa.31.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 14
  %.sroa.32.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 15
  %i.dr = shl nsw i64 %1, 1
  %i.ds = getelementptr inbounds i8, ptr %0, i64 %i.dr ; 9 uses
  %.sroa.1668.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %.sroa.1869.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %.sroa.1970.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 3
  %.sroa.2071.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %.sroa.2172.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 5
  %.sroa.2273.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 6
  %.sroa.2374.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 7
  %.sroa.2475.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dt = mul nsw i64 %1, 3
  %i.du = getelementptr inbounds i8, ptr %0, i64 %i.dt
  %i.dv = zext i8 %i.ct to i16                    ; 3 uses
  %i.dw = add nuw nsw i16 %i.dv, 2
  %i.dx = add nuw nsw i16 %i.dw, %i.cu
  %i.dy = add nuw nsw i16 %i.dx, %i.cc
  %i.dz = lshr i16 %i.dy, 2
  %i.ea = trunc nuw i16 %i.dz to i8               ; 6 uses
  %7 = shl nuw nsw i16 %i.dv, 1
  %8 = add nuw nsw i16 %7, 2
  %9 = add nuw nsw i16 %8, %i.cl
  %10 = load <8 x i8>, ptr %i.dg, align 1, !tbaa !26
  %11 = zext <8 x i8> %10 to <8 x i16>            ; 5 uses
  %12 = extractelement <8 x i16> %11, i64 7
  %13 = shufflevector <8 x i16> %11, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison> ; 2 uses
  %14 = insertelement <16 x i16> %13, i16 %i.da, i64 0
  %i.eb = add nuw nsw i16 %i.dp, %12
  %15 = lshr i16 %i.eb, 2
  %16 = trunc nuw i16 %15 to i8
  %17 = zext i8 %i.cw to i16                      ; 3 uses
  %i.ec = add nuw nsw i16 %9, %17
  %i.ed = lshr i16 %i.ec, 2
  %i.ee = trunc nuw i16 %i.ed to i8               ; 6 uses
  %i.ef = load i8, ptr %i.db, align 1, !tbaa !26
  %i.eg = add nuw nsw i16 %i.dd, %17
  %i.eh = load i8, ptr %3, align 1, !tbaa !26
  %i.ei = load i8, ptr %i.de, align 1, !tbaa !26
  %18 = load i8, ptr %i.df, align 1, !tbaa !26
  %19 = load i8, ptr %4, align 1, !tbaa !26
  %20 = load i8, ptr %5, align 1, !tbaa !26
  %21 = load i8, ptr %6, align 1, !tbaa !26
  %22 = zext i8 %i.ef to i16                      ; 4 uses
  %23 = zext i8 %i.eh to i16                      ; 3 uses
  %24 = zext i8 %i.ei to i16                      ; 4 uses
  %25 = zext i8 %18 to i16                        ; 3 uses
  %26 = zext i8 %19 to i16                        ; 3 uses
  %i.ej = zext i8 %20 to i16                      ; 3 uses
  %27 = zext i8 %21 to i16                        ; 3 uses
  %28 = insertelement <8 x i16> poison, i16 %17, i64 0
  %29 = insertelement <8 x i16> %28, i16 %22, i64 1
  %30 = insertelement <8 x i16> %29, i16 %23, i64 2
  %31 = insertelement <8 x i16> %30, i16 %24, i64 3
  %32 = insertelement <8 x i16> %31, i16 %25, i64 4
  %33 = insertelement <8 x i16> %32, i16 %26, i64 5
  %i.ek = insertelement <8 x i16> %33, i16 %i.ej, i64 6
  %i.el = insertelement <8 x i16> %i.ek, i16 %27, i64 7
  %34 = add nuw nsw i16 %i.eg, %22
  %35 = lshr i16 %34, 2
  %36 = trunc nuw i16 %35 to i8                   ; 7 uses
  %37 = shufflevector <8 x i16> %11, <8 x i16> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %38 = insertelement <16 x i16> %37, i16 %22, i64 0
  %39 = insertelement <16 x i16> %38, i16 %23, i64 1
  %i.em = insertelement <16 x i16> %39, i16 %24, i64 2
  %i.en = insertelement <16 x i16> %i.em, i16 %25, i64 3
  %i.eo = insertelement <16 x i16> %i.en, i16 %26, i64 4
  %40 = insertelement <16 x i16> %i.eo, i16 %i.ej, i64 5
  %41 = insertelement <16 x i16> %40, i16 %27, i64 6 ; 2 uses
  %i.ep = insertelement <16 x i16> %41, i16 %i.dj, i64 15
  %i.eq = add nuw nsw <16 x i16> %i.ep, splat (i16 1)
  %i.er = shufflevector <8 x i16> %11, <8 x i16> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison>
  %i.es = shufflevector <16 x i16> %i.er, <16 x i16> %41, <16 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 poison, i32 poison>
  %i.et = insertelement <16 x i16> %i.es, i16 %i.dj, i64 14
  %i.eu = insertelement <16 x i16> %i.et, i16 %i.dm, i64 15
  %i.ev = add nuw nsw <16 x i16> %i.eq, %i.eu
  %i.ew = lshr <16 x i16> %i.ev, splat (i16 1)    ; 3 uses
  %i.ex = trunc <16 x i16> %i.ew to <16 x i8>     ; 14 uses
  %i.ey = shufflevector <8 x i16> %i.el, <8 x i16> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ez = shl nuw nsw <16 x i16> %i.ey, <i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1> ; 2 uses
  %i.fa = shufflevector <16 x i16> %i.ez, <16 x i16> <i16 poison, i16 poison, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fb = add nuw nsw <16 x i16> %i.ez, %i.fa
  %42 = insertelement <16 x i16> %14, i16 %24, i64 2
  %43 = insertelement <16 x i16> %42, i16 %25, i64 3
  %44 = insertelement <16 x i16> %43, i16 %26, i64 4
  %i.fc = insertelement <16 x i16> %44, i16 %i.ej, i64 5
  %45 = insertelement <16 x i16> %i.fc, i16 %27, i64 6
  %i.fd = shufflevector <16 x i16> %45, <16 x i16> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 16, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 poison> ; 2 uses
  %i.fe = insertelement <16 x i16> %i.fd, i16 %i.dj, i64 15
  %i.ff = shufflevector <16 x i16> %i.fe, <16 x i16> poison, <16 x i32> <i32 0, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fg = add nuw nsw <16 x i16> %i.fb, %i.ff
  %i.fh = shufflevector <16 x i16> %i.fd, <16 x i16> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.fi = insertelement <16 x i16> %i.fh, i16 %i.dv, i64 0
  %i.fj = insertelement <16 x i16> %i.fi, i16 %23, i64 1
  %i.fk = insertelement <16 x i16> %i.fj, i16 %22, i64 2
  %i.fl = insertelement <16 x i16> %i.fk, i16 %24, i64 4
  %i.fm = shufflevector <16 x i16> %i.fl, <16 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fn = add nuw nsw <16 x i16> %i.fg, %i.fm
  %i.fo = lshr <16 x i16> %i.fn, splat (i16 2)    ; 4 uses
  %i.fp = trunc <16 x i16> %i.fo to <16 x i8>     ; 16 uses
  store <16 x i8> %i.ex, ptr %0, align 1
  %i.fq = extractelement <16 x i8> %i.fp, i64 1   ; 7 uses
  store i8 %i.fq, ptr %i.dq, align 1
  %i.fr = extractelement <16 x i8> %i.fp, i64 2   ; 7 uses
  store i8 %i.fr, ptr %.sroa.18.7..sroa_idx, align 1
  %i.fs = extractelement <16 x i8> %i.fp, i64 3   ; 7 uses
  store i8 %i.fs, ptr %.sroa.19.7..sroa_idx, align 1
  %i.ft = extractelement <16 x i8> %i.fp, i64 4   ; 7 uses
  store i8 %i.ft, ptr %.sroa.20.7..sroa_idx, align 1
  %i.fu = extractelement <16 x i8> %i.fp, i64 5   ; 7 uses
  store i8 %i.fu, ptr %.sroa.21.7..sroa_idx, align 1
  %i.fv = extractelement <16 x i8> %i.fp, i64 6   ; 6 uses
  %i.fw = extractelement <16 x i8> %i.fp, i64 7   ; 5 uses
  %i.fx = extractelement <16 x i8> %i.fp, i64 8   ; 5 uses
  %i.fy = extractelement <16 x i8> %i.fp, i64 9   ; 5 uses
  %i.fz = extractelement <16 x i8> %i.fp, i64 10  ; 3 uses
  %i.ga = extractelement <16 x i8> %i.fp, i64 11  ; 2 uses
  %i.gb = extractelement <16 x i8> %i.fp, i64 12
  %i.gc = shufflevector <16 x i16> %i.fo, <16 x i16> poison, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.gd = trunc <8 x i16> %i.gc to <8 x i8>
  store <8 x i8> %i.gd, ptr %.sroa.22.7..sroa_idx, align 1
  %i.ge = extractelement <16 x i8> %i.fp, i64 14
  store i8 %i.ge, ptr %.sroa.30.7..sroa_idx, align 1
  %i.gf = extractelement <16 x i8> %i.fp, i64 15
  store i8 %i.gf, ptr %.sroa.31.7..sroa_idx, align 1
  store i8 %16, ptr %.sroa.32.7..sroa_idx, align 1
  store i8 %36, ptr %i.ds, align 1
  %i.gg = extractelement <16 x i8> %i.ex, i64 0   ; 7 uses
  store i8 %i.gg, ptr %.sroa.1668.6..sroa_idx, align 1
  %i.gh = extractelement <16 x i8> %i.ex, i64 1   ; 7 uses
  store i8 %i.gh, ptr %.sroa.1869.6..sroa_idx, align 1
  %i.gi = extractelement <16 x i8> %i.ex, i64 2   ; 7 uses
  store i8 %i.gi, ptr %.sroa.1970.6..sroa_idx, align 1
  %i.gj = extractelement <16 x i8> %i.ex, i64 3   ; 7 uses
  store i8 %i.gj, ptr %.sroa.2071.6..sroa_idx, align 1
  %i.gk = extractelement <16 x i8> %i.ex, i64 4   ; 7 uses
  store i8 %i.gk, ptr %.sroa.2172.6..sroa_idx, align 1
  %i.gl = extractelement <16 x i8> %i.ex, i64 5   ; 7 uses
  store i8 %i.gl, ptr %.sroa.2273.6..sroa_idx, align 1
  %i.gm = extractelement <16 x i8> %i.ex, i64 6   ; 6 uses
  store i8 %i.gm, ptr %.sroa.2374.6..sroa_idx, align 1
  %i.gn = extractelement <16 x i8> %i.ex, i64 7   ; 5 uses
  %i.go = extractelement <16 x i8> %i.ex, i64 8   ; 3 uses
  %i.gp = extractelement <16 x i8> %i.ex, i64 9   ; 2 uses
  %i.gq = extractelement <16 x i8> %i.ex, i64 10
  %i.gr = extractelement <16 x i8> %i.ex, i64 12
  %i.gs = shufflevector <16 x i16> %i.ew, <16 x i16> poison, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.gt = trunc <8 x i16> %i.gs to <8 x i8>
  store <8 x i8> %i.gt, ptr %.sroa.2475.6..sroa_idx, align 1
  store <16 x i8> %i.fp, ptr %i.du, align 1
  %i.gu = shl nsw i64 %1, 2
  %i.gv = getelementptr inbounds i8, ptr %0, i64 %i.gu ; 9 uses
  store i8 %i.ee, ptr %i.gv, align 1
  %.sroa.1467.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  store i8 %36, ptr %.sroa.1467.5..sroa_idx, align 1
  %.sroa.1668.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  store i8 %i.gg, ptr %.sroa.1668.5..sroa_idx, align 1
  %.sroa.1869.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 3
  store i8 %i.gh, ptr %.sroa.1869.5..sroa_idx, align 1
  %.sroa.1970.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i8 %i.gi, ptr %.sroa.1970.5..sroa_idx, align 1
  %.sroa.2071.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 5
  store i8 %i.gj, ptr %.sroa.2071.5..sroa_idx, align 1
  %.sroa.2172.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 6
  store i8 %i.gk, ptr %.sroa.2172.5..sroa_idx, align 1
  %.sroa.2273.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 7
  store i8 %i.gl, ptr %.sroa.2273.5..sroa_idx, align 1
  %.sroa.2374.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gw = shufflevector <16 x i16> %i.ew, <16 x i16> poison, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.gx = trunc <8 x i16> %i.gw to <8 x i8>
  store <8 x i8> %i.gx, ptr %.sroa.2374.5..sroa_idx, align 1
  %i.gy = mul nsw i64 %1, 5
  %i.gz = getelementptr inbounds i8, ptr %0, i64 %i.gy ; 9 uses
  store i8 %i.ea, ptr %i.gz, align 1
  %.sroa.14.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  %i.ha = extractelement <16 x i8> %i.fp, i64 0   ; 6 uses
  store i8 %i.ha, ptr %.sroa.14.5..sroa_idx, align 1
  %.sroa.16.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  store i8 %i.fq, ptr %.sroa.16.5..sroa_idx, align 1
  %.sroa.18.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 3
  store i8 %i.fr, ptr %.sroa.18.5..sroa_idx, align 1
  %.sroa.19.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store i8 %i.fs, ptr %.sroa.19.5..sroa_idx, align 1
  %.sroa.20.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 5
  store i8 %i.ft, ptr %.sroa.20.5..sroa_idx, align 1
  %.sroa.21.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 6
  store i8 %i.fu, ptr %.sroa.21.5..sroa_idx, align 1
  %.sroa.22.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 7
  store i8 %i.fv, ptr %.sroa.22.5..sroa_idx, align 1
  %.sroa.23.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = shufflevector <16 x i16> %i.fo, <16 x i16> poison, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.hc = trunc <8 x i16> %i.hb to <8 x i8>
  store <8 x i8> %i.hc, ptr %.sroa.23.5..sroa_idx, align 1
  %i.hd = mul nsw i64 %1, 6
  %i.he = getelementptr inbounds i8, ptr %0, i64 %i.hd ; 13 uses
  store i8 %i.cr, ptr %i.he, align 1
  %.sroa.1266.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store i8 %i.ee, ptr %.sroa.1266.4..sroa_idx, align 1
  %.sroa.1467.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  store i8 %36, ptr %.sroa.1467.4..sroa_idx, align 1
  %.sroa.1668.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 3
  store i8 %i.gg, ptr %.sroa.1668.4..sroa_idx, align 1
  %.sroa.1869.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i8 %i.gh, ptr %.sroa.1869.4..sroa_idx, align 1
  %.sroa.1970.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 5
  store i8 %i.gi, ptr %.sroa.1970.4..sroa_idx, align 1
  %.sroa.2071.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 6
  store i8 %i.gj, ptr %.sroa.2071.4..sroa_idx, align 1
  %.sroa.2172.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 7
  store i8 %i.gk, ptr %.sroa.2172.4..sroa_idx, align 1
  %.sroa.2273.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i8 %i.gl, ptr %.sroa.2273.4..sroa_idx, align 1
  %.sroa.2374.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 9
  store i8 %i.gm, ptr %.sroa.2374.4..sroa_idx, align 1
  %.sroa.2475.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 10
  store i8 %i.gn, ptr %.sroa.2475.4..sroa_idx, align 1
  %.sroa.2576.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 11
  %i.hf = shufflevector <16 x i8> %i.ex, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  store <4 x i8> %i.hf, ptr %.sroa.2576.4..sroa_idx, align 1
  %.sroa.2980.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 15
  store i8 %i.gr, ptr %.sroa.2980.4..sroa_idx, align 1
  %i.hg = mul nsw i64 %1, 7
  %i.hh = getelementptr inbounds i8, ptr %0, i64 %i.hg ; 13 uses
  store i8 %i.ci, ptr %i.hh, align 1
  %.sroa.12.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  store i8 %i.ea, ptr %.sroa.12.4..sroa_idx, align 1
  %.sroa.14.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  store i8 %i.ha, ptr %.sroa.14.4..sroa_idx, align 1
  %.sroa.16.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 3
  store i8 %i.fq, ptr %.sroa.16.4..sroa_idx, align 1
  %.sroa.18.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store i8 %i.fr, ptr %.sroa.18.4..sroa_idx, align 1
  %.sroa.19.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 5
  store i8 %i.fs, ptr %.sroa.19.4..sroa_idx, align 1
  %.sroa.20.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 6
  store i8 %i.ft, ptr %.sroa.20.4..sroa_idx, align 1
  %.sroa.21.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 7
  store i8 %i.fu, ptr %.sroa.21.4..sroa_idx, align 1
  %.sroa.22.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i8 %i.fv, ptr %.sroa.22.4..sroa_idx, align 1
  %.sroa.23.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 9
  store i8 %i.fw, ptr %.sroa.23.4..sroa_idx, align 1
  %.sroa.24.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 10
  store i8 %i.fx, ptr %.sroa.24.4..sroa_idx, align 1
  %.sroa.25.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 11
  store i8 %i.fy, ptr %.sroa.25.4..sroa_idx, align 1
  %.sroa.26.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hi = shufflevector <16 x i16> %i.fo, <16 x i16> poison, <4 x i32> <i32 10, i32 11, i32 12, i32 13>
  %i.hj = trunc <4 x i16> %i.hi to <4 x i8>
  store <4 x i8> %i.hj, ptr %.sroa.26.4..sroa_idx, align 1
  %i.hk = shl nsw i64 %1, 3
  %i.hl = getelementptr inbounds i8, ptr %0, i64 %i.hk ; 13 uses
  store i8 %i.bz, ptr %i.hl, align 1
  %.sroa.1065.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  store i8 %i.cr, ptr %.sroa.1065.3..sroa_idx, align 1
  %.sroa.1266.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  store i8 %i.ee, ptr %.sroa.1266.3..sroa_idx, align 1
  %.sroa.1467.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 3
  store i8 %36, ptr %.sroa.1467.3..sroa_idx, align 1
  %.sroa.1668.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store i8 %i.gg, ptr %.sroa.1668.3..sroa_idx, align 1
  %.sroa.1869.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 5
  store i8 %i.gh, ptr %.sroa.1869.3..sroa_idx, align 1
  %.sroa.1970.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 6
  store i8 %i.gi, ptr %.sroa.1970.3..sroa_idx, align 1
  %.sroa.2071.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 7
  store i8 %i.gj, ptr %.sroa.2071.3..sroa_idx, align 1
  %.sroa.2172.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i8 %i.gk, ptr %.sroa.2172.3..sroa_idx, align 1
  %.sroa.2273.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 9
  store i8 %i.gl, ptr %.sroa.2273.3..sroa_idx, align 1
  %.sroa.2374.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 10
  store i8 %i.gm, ptr %.sroa.2374.3..sroa_idx, align 1
  %.sroa.2475.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 11
  store i8 %i.gn, ptr %.sroa.2475.3..sroa_idx, align 1
  %.sroa.2576.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store <4 x i8> %i.hf, ptr %.sroa.2576.3..sroa_idx, align 1
  %i.hm = mul nsw i64 %1, 9
  %i.hn = getelementptr inbounds i8, ptr %0, i64 %i.hm ; 16 uses
  store i8 %i.bq, ptr %i.hn, align 1
  %.sroa.10.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store i8 %i.ci, ptr %.sroa.10.3..sroa_idx, align 1
  %.sroa.12.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  store i8 %i.ea, ptr %.sroa.12.3..sroa_idx, align 1
  %.sroa.14.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 3
  store i8 %i.ha, ptr %.sroa.14.3..sroa_idx, align 1
  %.sroa.16.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i8 %i.fq, ptr %.sroa.16.3..sroa_idx, align 1
  %.sroa.18.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 5
  store i8 %i.fr, ptr %.sroa.18.3..sroa_idx, align 1
  %.sroa.19.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 6
  store i8 %i.fs, ptr %.sroa.19.3..sroa_idx, align 1
  %.sroa.20.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 7
  store i8 %i.ft, ptr %.sroa.20.3..sroa_idx, align 1
  %.sroa.21.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i8 %i.fu, ptr %.sroa.21.3..sroa_idx, align 1
  %.sroa.22.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 9
  store i8 %i.fv, ptr %.sroa.22.3..sroa_idx, align 1
  %.sroa.23.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 10
  store i8 %i.fw, ptr %.sroa.23.3..sroa_idx, align 1
  %.sroa.24.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 11
  store i8 %i.fx, ptr %.sroa.24.3..sroa_idx, align 1
  %.sroa.25.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i8 %i.fy, ptr %.sroa.25.3..sroa_idx, align 1
  %.sroa.26.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 13
  store i8 %i.fz, ptr %.sroa.26.3..sroa_idx, align 1
  %.sroa.27.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 14
  store i8 %i.ga, ptr %.sroa.27.3..sroa_idx, align 1
  %.sroa.28.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 15
  store i8 %i.gb, ptr %.sroa.28.3..sroa_idx, align 1
  %i.ho = mul nsw i64 %1, 10
  %i.hp = getelementptr inbounds i8, ptr %0, i64 %i.ho ; 16 uses
  store i8 %i.bh, ptr %i.hp, align 1
  %.sroa.864.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  store i8 %i.bz, ptr %.sroa.864.2..sroa_idx, align 1
  %.sroa.1065.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  store i8 %i.cr, ptr %.sroa.1065.2..sroa_idx, align 1
  %.sroa.1266.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  store i8 %i.ee, ptr %.sroa.1266.2..sroa_idx, align 1
  %.sroa.1467.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  store i8 %36, ptr %.sroa.1467.2..sroa_idx, align 1
  %.sroa.1668.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 5
  store i8 %i.gg, ptr %.sroa.1668.2..sroa_idx, align 1
  %.sroa.1869.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 6
  store i8 %i.gh, ptr %.sroa.1869.2..sroa_idx, align 1
  %.sroa.1970.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 7
  store i8 %i.gi, ptr %.sroa.1970.2..sroa_idx, align 1
  %.sroa.2071.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i8 %i.gj, ptr %.sroa.2071.2..sroa_idx, align 1
  %.sroa.2172.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 9
  store i8 %i.gk, ptr %.sroa.2172.2..sroa_idx, align 1
  %.sroa.2273.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 10
  store i8 %i.gl, ptr %.sroa.2273.2..sroa_idx, align 1
  %.sroa.2374.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 11
  store i8 %i.gm, ptr %.sroa.2374.2..sroa_idx, align 1
  %.sroa.2475.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  store i8 %i.gn, ptr %.sroa.2475.2..sroa_idx, align 1
  %.sroa.2576.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 13
  store i8 %i.go, ptr %.sroa.2576.2..sroa_idx, align 1
  %.sroa.2677.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 14
  store i8 %i.gp, ptr %.sroa.2677.2..sroa_idx, align 1
  %.sroa.2778.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 15
  store i8 %i.gq, ptr %.sroa.2778.2..sroa_idx, align 1
  %i.hq = mul nsw i64 %1, 11
  %i.hr = getelementptr inbounds i8, ptr %0, i64 %i.hq ; 16 uses
  store i8 %i.ay, ptr %i.hr, align 1
  %.sroa.8.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  store i8 %i.bq, ptr %.sroa.8.2..sroa_idx, align 1
  %.sroa.10.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  store i8 %i.ci, ptr %.sroa.10.2..sroa_idx, align 1
  %.sroa.12.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 3
  store i8 %i.ea, ptr %.sroa.12.2..sroa_idx, align 1
  %.sroa.14.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i8 %i.ha, ptr %.sroa.14.2..sroa_idx, align 1
  %.sroa.16.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 5
  store i8 %i.fq, ptr %.sroa.16.2..sroa_idx, align 1
  %.sroa.18.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 6
  store i8 %i.fr, ptr %.sroa.18.2..sroa_idx, align 1
  %.sroa.19.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 7
  store i8 %i.fs, ptr %.sroa.19.2..sroa_idx, align 1
  %.sroa.20.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i8 %i.ft, ptr %.sroa.20.2..sroa_idx, align 1
  %.sroa.21.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 9
  store i8 %i.fu, ptr %.sroa.21.2..sroa_idx, align 1
  %.sroa.22.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 10
  store i8 %i.fv, ptr %.sroa.22.2..sroa_idx, align 1
  %.sroa.23.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 11
  store i8 %i.fw, ptr %.sroa.23.2..sroa_idx, align 1
  %.sroa.24.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store i8 %i.fx, ptr %.sroa.24.2..sroa_idx, align 1
  %.sroa.25.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 13
  store i8 %i.fy, ptr %.sroa.25.2..sroa_idx, align 1
  %.sroa.26.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 14
  store i8 %i.fz, ptr %.sroa.26.2..sroa_idx, align 1
  %.sroa.27.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 15
  store i8 %i.ga, ptr %.sroa.27.2..sroa_idx, align 1
  %i.hs = mul nsw i64 %1, 12
  %i.ht = getelementptr inbounds i8, ptr %0, i64 %i.hs ; 16 uses
  store i8 %i.ap, ptr %i.ht, align 1
  %.sroa.663.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  store i8 %i.bh, ptr %.sroa.663.1..sroa_idx, align 1
  %.sroa.864.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  store i8 %i.bz, ptr %.sroa.864.1..sroa_idx, align 1
  %.sroa.1065.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 3
  store i8 %i.cr, ptr %.sroa.1065.1..sroa_idx, align 1
  %.sroa.1266.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store i8 %i.ee, ptr %.sroa.1266.1..sroa_idx, align 1
  %.sroa.1467.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 5
  store i8 %36, ptr %.sroa.1467.1..sroa_idx, align 1
  %.sroa.1668.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 6
  store i8 %i.gg, ptr %.sroa.1668.1..sroa_idx, align 1
  %.sroa.1869.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 7
  store i8 %i.gh, ptr %.sroa.1869.1..sroa_idx, align 1
  %.sroa.1970.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i8 %i.gi, ptr %.sroa.1970.1..sroa_idx, align 1
  %.sroa.2071.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 9
  store i8 %i.gj, ptr %.sroa.2071.1..sroa_idx, align 1
  %.sroa.2172.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 10
  store i8 %i.gk, ptr %.sroa.2172.1..sroa_idx, align 1
  %.sroa.2273.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 11
  store i8 %i.gl, ptr %.sroa.2273.1..sroa_idx, align 1
  %.sroa.2374.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i8 %i.gm, ptr %.sroa.2374.1..sroa_idx, align 1
  %.sroa.2475.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 13
  store i8 %i.gn, ptr %.sroa.2475.1..sroa_idx, align 1
  %.sroa.2576.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 14
  store i8 %i.go, ptr %.sroa.2576.1..sroa_idx, align 1
  %.sroa.2677.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 15
  store i8 %i.gp, ptr %.sroa.2677.1..sroa_idx, align 1
  %i.hu = mul nsw i64 %1, 13
  %i.hv = getelementptr inbounds i8, ptr %0, i64 %i.hu ; 16 uses
  store i8 %i.ag, ptr %i.hv, align 1
  %.sroa.6.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  store i8 %i.ay, ptr %.sroa.6.1..sroa_idx, align 1
  %.sroa.8.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  store i8 %i.bq, ptr %.sroa.8.1..sroa_idx, align 1
  %.sroa.10.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 3
  store i8 %i.ci, ptr %.sroa.10.1..sroa_idx, align 1
  %.sroa.12.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store i8 %i.ea, ptr %.sroa.12.1..sroa_idx, align 1
  %.sroa.14.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 5
  store i8 %i.ha, ptr %.sroa.14.1..sroa_idx, align 1
  %.sroa.16.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 6
  store i8 %i.fq, ptr %.sroa.16.1..sroa_idx, align 1
  %.sroa.18.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 7
  store i8 %i.fr, ptr %.sroa.18.1..sroa_idx, align 1
  %.sroa.19.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i8 %i.fs, ptr %.sroa.19.1..sroa_idx, align 1
  %.sroa.20.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 9
  store i8 %i.ft, ptr %.sroa.20.1..sroa_idx, align 1
  %.sroa.21.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 10
  store i8 %i.fu, ptr %.sroa.21.1..sroa_idx, align 1
  %.sroa.22.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 11
  store i8 %i.fv, ptr %.sroa.22.1..sroa_idx, align 1
  %.sroa.23.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i8 %i.fw, ptr %.sroa.23.1..sroa_idx, align 1
  %.sroa.24.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 13
  store i8 %i.fx, ptr %.sroa.24.1..sroa_idx, align 1
  %.sroa.25.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 14
  store i8 %i.fy, ptr %.sroa.25.1..sroa_idx, align 1
  %.sroa.26.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 15
  store i8 %i.fz, ptr %.sroa.26.1..sroa_idx, align 1
  %i.hw = mul nsw i64 %1, 14
  %i.hx = getelementptr inbounds i8, ptr %0, i64 %i.hw ; 16 uses
  store i8 %i.x, ptr %i.hx, align 1
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  store i8 %i.ap, ptr %.sroa.462.0..sroa_idx, align 1
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  store i8 %i.bh, ptr %.sroa.663.0..sroa_idx, align 1
  %.sroa.864.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 3
  store i8 %i.bz, ptr %.sroa.864.0..sroa_idx, align 1
  %.sroa.1065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store i8 %i.cr, ptr %.sroa.1065.0..sroa_idx, align 1
  %.sroa.1266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 5
  store i8 %i.ee, ptr %.sroa.1266.0..sroa_idx, align 1
  %.sroa.1467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 6
  store i8 %36, ptr %.sroa.1467.0..sroa_idx, align 1
  %.sroa.1668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 7
  store i8 %i.gg, ptr %.sroa.1668.0..sroa_idx, align 1
  %.sroa.1869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i8 %i.gh, ptr %.sroa.1869.0..sroa_idx, align 1
  %.sroa.1970.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 9
  store i8 %i.gi, ptr %.sroa.1970.0..sroa_idx, align 1
  %.sroa.2071.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 10
  store i8 %i.gj, ptr %.sroa.2071.0..sroa_idx, align 1
  %.sroa.2172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 11
  store i8 %i.gk, ptr %.sroa.2172.0..sroa_idx, align 1
  %.sroa.2273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i8 %i.gl, ptr %.sroa.2273.0..sroa_idx, align 1
  %.sroa.2374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 13
  store i8 %i.gm, ptr %.sroa.2374.0..sroa_idx, align 1
  %.sroa.2475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 14
  store i8 %i.gn, ptr %.sroa.2475.0..sroa_idx, align 1
  %.sroa.2576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 15
  store i8 %i.go, ptr %.sroa.2576.0..sroa_idx, align 1
  %i.hy = mul nsw i64 %1, 15
  %i.hz = getelementptr inbounds i8, ptr %0, i64 %i.hy ; 16 uses
  store i8 %i.o, ptr %i.hz, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  store i8 %i.ag, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  store i8 %i.ay, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 3
  store i8 %i.bq, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store i8 %i.ci, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 5
  store i8 %i.ea, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 6
  store i8 %i.ha, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 7
  store i8 %i.fq, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i8 %i.fr, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 9
  store i8 %i.fs, ptr %.sroa.19.0..sroa_idx, align 1
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 10
  store i8 %i.ft, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 11
  store i8 %i.fu, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store i8 %i.fv, ptr %.sroa.22.0..sroa_idx, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 13
  store i8 %i.fw, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 14
  store i8 %i.fx, ptr %.sroa.24.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 15
  store i8 %i.fy, ptr %.sroa.25.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hor_down_16x16_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = alloca [46 x i8], align 16               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.pre = load i8, ptr %2, align 1, !tbaa !26
  %.pre48 = load i8, ptr %3, align 1, !tbaa !26   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %.pre48, %bb.a ], [ %i.af, %bb.b ]
  %i.c = phi i8 [ %.pre, %bb.a ], [ %i.e, %bb.b ]
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26    ; 2 uses
  %i.f = zext i8 %i.e to i16                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.h = zext i8 %i.c to i16                      ; 2 uses
  %i.i = add nuw nsw i16 %i.f, 1
  %i.j = add nuw nsw i16 %i.i, %i.h
  %i.k = lshr i16 %i.j, 1
  %i.l = trunc nuw i16 %i.k to i8
  %i.m = shl nuw nsw i64 %indvars.iv, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m ; 2 uses
  store i8 %i.l, ptr %i.n, align 2, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26
  %i.q = zext i8 %i.p to i16
  %i.r = shl nuw nsw i16 %i.f, 1
  %i.s = add nuw nsw i16 %i.r, 2
  %i.t = add nuw nsw i16 %i.s, %i.h
  %i.u = add nuw nsw i16 %i.t, %i.q
  %i.v = lshr i16 %i.u, 2
  %i.w = trunc nuw i16 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !26
  %i.y = getelementptr i8, ptr %3, i64 %indvars.iv
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !26
  %i.ab = zext i8 %i.aa to i16
  %i.ac = zext i8 %i.b to i16
  %i.ad = shl nuw nsw i16 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !26  ; 2 uses
  %i.ag = zext i8 %i.af to i16
  %i.ah = add nuw nsw i16 %i.ab, 2
  %i.ai = add nuw nsw i16 %i.ah, %i.ad
  %i.aj = add nuw nsw i16 %i.ai, %i.ag
  %i.ak = lshr i16 %i.aj, 2
  %i.al = trunc nuw i16 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i8 %i.al, ptr %i.an, align 1, !tbaa !26
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !36

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds i8, ptr %3, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !26
  %i.aq = zext i8 %i.ap to i16                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !26
  %i.at = zext i8 %i.as to i16                    ; 3 uses
  %i.au = add nuw nsw i16 %i.at, 1                ; 2 uses
  %i.av = add nuw nsw i16 %i.au, %i.aq
  %i.aw = lshr i16 %i.av, 1
  %i.ax = trunc nuw i16 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 30 ; 2 uses
  store i8 %i.ax, ptr %i.ay, align 2, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !26
  %i.bb = zext i8 %i.ba to i16                    ; 2 uses
  %i.bc = add nuw nsw i16 %i.au, %i.bb
  %i.bd = lshr i16 %i.bc, 1
  %i.be = trunc nuw i16 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 %i.be, ptr %i.bf, align 4, !tbaa !26
  %i.bg = zext i8 %.pre48 to i16
  %i.bh = shl nuw nsw i16 %i.aq, 1
  %i.bi = add nuw nsw i16 %i.bh, 2
  %i.bj = add nuw nsw i16 %i.bi, %i.at
  %i.bk = add nuw nsw i16 %i.bj, %i.bg
  %i.bl = lshr i16 %i.bk, 2
  %i.bm = trunc nuw i16 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !26
  %i.bo = shl nuw nsw i16 %i.at, 1
  %i.bp = add nuw nsw i16 %i.aq, 2
  %i.bq = add nuw nsw i16 %i.bp, %i.bo
  %i.br = add nuw nsw i16 %i.bq, %i.bb
  %i.bs = lshr i16 %i.br, 2
  %i.bt = trunc nuw i16 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 2 dereferenceable(16) %i.ay, i64 16, i1 false)
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bv, ptr noundef nonnull align 4 dereferenceable(16) %i.bw, i64 16, i1 false)
  %i.bx = shl nsw i64 %1, 1
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.by, ptr noundef nonnull align 2 dereferenceable(16) %i.bz, i64 16, i1 false)
  %i.ca = mul nsw i64 %1, 3
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false)
  %i.cd = shl nsw i64 %1, 2
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ce, ptr noundef nonnull align 2 dereferenceable(16) %i.cf, i64 16, i1 false)
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
end_hunk_1
