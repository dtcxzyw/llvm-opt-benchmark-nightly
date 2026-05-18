inline.NumInlined: 2593
inline.NumDeleted: 619
begin_hunk_0_@_ZN6cineon13GenericHeader5ResetEv:bb.a
  store i32 -1, ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 0, ptr %i.b, align 4
  store ptr @.str, ptr %1, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !19
  %i.d = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %i.b, ptr noundef nonnull dead_on_return %1, i64 noundef 8) #29 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 1024, i32 1024, i32 0, i32 2048>, ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.f, i8 0, i64 160, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 -1, ptr %i.g, align 4
  store <4 x float> splat (float +inf), ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 436
  store <4 x float> splat (float +inf), ptr %i.i, align 4, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(228) %i.j, i8 0, i64 228, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i32 -1, ptr %i.l, align 4, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i32 -1, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, i8 -1, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(252) %i.n, i8 0, i64 252, i1 false)
  store <2 x float> splat (float +inf), ptr %i.o, align 4, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 980
  store float +inf, ptr %i.p, align 4, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef, ptr noundef dead_on_return, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6cineon14IndustryHeader5ResetEv(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(1024) initializes((0, 3), (4, 1024)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  store i8 -1, ptr %0, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.a, align 1, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 -1, ptr %i.b, align 2, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.d, align 4, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.f, align 4, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float +inf, ptr %i.g, align 4, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(972) %i.h, i8 0, i64 972, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6cineon12ImageElementC2Ev(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(28) initializes((2, 3), (12, 28)) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x float> splat (float f0x4F800000), ptr %i.a, align 4, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 -1, ptr %i.b, align 2, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6cineon6Header4ReadEPNS_8InStreamE(ptr noundef nonnull align 4 dereferenceable(2048) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.d = load ptr, ptr %1, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i64 noundef 2048)
  %.not = icmp eq i64 %i.g, 2048
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN6cineon6Header8ValidateEv(ptr noundef nonnull align 4 dereferenceable(2048) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN6cineon6Header8ValidateEv(ptr noundef nonnull align 4 dereferenceable(2048) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  %cond = icmp eq i32 %i.a, -681629056            ; 2 uses
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load <16 x i8>, ptr %i.b, align 4, !tbaa !33
  %i.d = shufflevector <16 x i8> %i.c, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.d, ptr %i.b, align 4, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load <4 x i8>, ptr %i.e, align 4, !tbaa !33
  %i.g = shufflevector <4 x i8> %i.f, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.g, ptr %i.e, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = load <16 x i8>, ptr %i.h, align 4, !tbaa !33
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.j, ptr %i.h, align 4, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.l = load <8 x i8>, ptr %i.k, align 4, !tbaa !33
  %i.m = shufflevector <8 x i8> %i.l, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.m, ptr %i.k, align 4, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.o = load <16 x i8>, ptr %i.n, align 4, !tbaa !33
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.p, ptr %i.n, align 4, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.r = load <8 x i8>, ptr %i.q, align 4, !tbaa !33
  %i.s = shufflevector <8 x i8> %i.r, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.s, ptr %i.q, align 4, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.u = load <16 x i8>, ptr %i.t, align 4, !tbaa !33
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.v, ptr %i.t, align 4, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.x = load <8 x i8>, ptr %i.w, align 4, !tbaa !33
  %i.y = shufflevector <8 x i8> %i.x, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.y, ptr %i.w, align 4, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.aa = load <16 x i8>, ptr %i.z, align 4, !tbaa !33
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.ab, ptr %i.z, align 4, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.ad = load <8 x i8>, ptr %i.ac, align 4, !tbaa !33
  %i.ae = shufflevector <8 x i8> %i.ad, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.ae, ptr %i.ac, align 4, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ag = load <16 x i8>, ptr %i.af, align 4, !tbaa !33
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.ah, ptr %i.af, align 4, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.aj = load <8 x i8>, ptr %i.ai, align 4, !tbaa !33
  %i.ak = shufflevector <8 x i8> %i.aj, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.ak, ptr %i.ai, align 4, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.am = load <16 x i8>, ptr %i.al, align 4, !tbaa !33
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.an, ptr %i.al, align 4, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.ap = load <8 x i8>, ptr %i.ao, align 4, !tbaa !33
  %i.aq = shufflevector <8 x i8> %i.ap, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.aq, ptr %i.ao, align 4, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.as = load <16 x i8>, ptr %i.ar, align 4, !tbaa !33
  %i.at = shufflevector <16 x i8> %i.as, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.at, ptr %i.ar, align 4, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.av = load <8 x i8>, ptr %i.au, align 4, !tbaa !33
  %i.aw = shufflevector <8 x i8> %i.av, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.aw, ptr %i.au, align 4, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 4, !tbaa !33
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.az, ptr %i.ax, align 4, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.bb = load <8 x i8>, ptr %i.ba, align 4, !tbaa !33
  %i.bc = shufflevector <8 x i8> %i.bb, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.bc, ptr %i.ba, align 4, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 4, !tbaa !33
  %i.bf = shufflevector <16 x i8> %i.be, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.bf, ptr %i.bd, align 4, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 2 uses
  %i.bh = load <16 x i8>, ptr %i.bg, align 4, !tbaa !33
  %i.bi = shufflevector <16 x i8> %i.bh, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.bi, ptr %i.bg, align 4, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 684 ; 2 uses
  %i.bk = load <8 x i8>, ptr %i.bj, align 4, !tbaa !33
  %i.bl = shufflevector <8 x i8> %i.bk, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.bl, ptr %i.bj, align 4, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.bn = load <8 x i8>, ptr %i.bm, align 4, !tbaa !33
  %i.bo = shufflevector <8 x i8> %i.bn, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.bo, ptr %i.bm, align 4, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 972 ; 2 uses
  %1 = load <8 x i8>, ptr %i.bp, align 4, !tbaa !33
  %2 = shufflevector <8 x i8> %1, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %2, ptr %i.bp, align 4, !tbaa !33
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 2 uses
  %4 = load <4 x i8>, ptr %3, align 4, !tbaa !33
  %5 = shufflevector <4 x i8> %4, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %5, ptr %3, align 4, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.br = load <8 x i8>, ptr %i.bq, align 4, !tbaa !33
  %i.bs = shufflevector <8 x i8> %i.br, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.bs, ptr %i.bq, align 4, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 2 uses
  %i.bu = load <8 x i8>, ptr %i.bt, align 4, !tbaa !33
  %i.bv = shufflevector <8 x i8> %i.bu, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.bv, ptr %i.bt, align 4, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.bw = icmp eq i32 %i.a, -2144706601
  %spec.select.i = or i1 %i.bw, %cond
  ret i1 %spec.select.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6cineon6Header5CheckEv(ptr noundef nonnull readnone align 4 captures(none) dereferenceable(2048) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6cineon6Header16ValidMagicCookieEj(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %0, -2144706601
  %i.b = icmp eq i32 %0, -681629056
  %spec.select = or i1 %i.a, %i.b
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6cineon6Header17DetermineByteSwapEj(ptr noundef nonnull readnone align 4 captures(none) dereferenceable(2048) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp ne i32 %1, -2144706601
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6cineon6Header5ResetEv(ptr noundef nonnull align 4 dereferenceable(2048) initializes((0, 8), (24, 32)) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 -2144706601, ptr %0, align 4, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 0, ptr %i.b, align 4
  store ptr @.str, ptr %1, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !19
  %i.d = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %i.b, ptr noundef nonnull dead_on_return %1, i64 noundef 8) #29 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 1024, i32 1024, i32 0, i32 2048>, ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.f, i8 0, i64 160, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 -1, ptr %i.g, align 4
  store <4 x float> splat (float +inf), ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 436
  store <4 x float> splat (float +inf), ptr %i.i, align 4, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(228) %i.j, i8 0, i64 228, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i32 -1, ptr %i.l, align 4, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i32 -1, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, i8 -1, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(252) %i.n, i8 0, i64 252, i1 false)
  store <2 x float> splat (float +inf), ptr %i.o, align 4, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 980
  store float +inf, ptr %i.p, align 4, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i8 -1, ptr %i.s, align 4, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1025
  store i8 -1, ptr %i.t, align 1, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1026
  store i8 -1, ptr %i.u, align 2, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 -1, ptr %i.v, align 4, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i32 -1, ptr %i.w, align 4, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1036
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1068
  store i32 -1, ptr %i.y, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store float +inf, ptr %i.z, align 4, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(972) %i.aa, i8 0, i64 972, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 9) i32 @_ZNK6cineon13GenericHeader17ImageElementCountEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(1024) %0) local_unnamed_addr #8 align 2 {
_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 197
  %i.b = load i8, ptr %i.a, align 1, !tbaa !33
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.a, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.1

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.1: ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !33
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.a, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.2

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.2: ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 253
  %i.h = load i8, ptr %i.g, align 1, !tbaa !33
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %bb.a, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.3

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.3: ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.k = load i8, ptr %i.j, align 1, !tbaa !33
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %bb.a, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.4

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.4: ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 309
  %i.n = load i8, ptr %i.m, align 1, !tbaa !33
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %bb.a, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.5

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.5: ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %bb.a, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.6

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.6: ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 365
  %i.t = load i8, ptr %i.s, align 1, !tbaa !33
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.a, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.7

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.7: ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 393
  %i.w = load i8, ptr %i.v, align 1, !tbaa !33
  %i.x = icmp eq i8 %i.w, -1
  %spec.select = select i1 %i.x, i32 7, i32 8
  br label %bb.a

bb.a:                                             ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.7, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.6, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.5, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.4, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.3, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.2, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.1, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit
  %.0.lcssa = phi i32 [ 0, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit ], [ 4, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.4 ], [ 1, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.1 ], [ %spec.select, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.7 ], [ 2, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.2 ], [ 5, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.5 ], [ 3, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.3 ], [ 6, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.6 ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 4) i32 @_ZNK6cineon13GenericHeader17ComponentDataSizeEi(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(1024) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [28 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 198
  %i.d = load i8, ptr %i.c, align 2, !tbaa !9
  switch i8 %i.d, label %bb.e [
    i8 8, label %bb.f
    i8 10, label %bb.c
    i8 12, label %bb.c
    i8 16, label %bb.c
    i8 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 3, %bb.e ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 9) i32 @_ZNK6cineon13GenericHeader18ComponentByteCountEi(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(1024) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 7
  br i1 %or.cond, label %bb.f, label %bb.b

end_hunk_0
