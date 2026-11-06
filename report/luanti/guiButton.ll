Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiButton?download=true
inline.NumInlined: 861
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9GUIButton15setPressedImageEPN5video8ITextureERKN4core4rectIiEE:bb.a

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton7setTextEPKw(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement7setTextEPKw(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9GUIButton15setIsPushButtonEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(7452) initializes((7366, 7367)) %0, i1 noundef zeroext %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7366
  store i8 %i.a, ptr %i.b, align 2, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton9isPressedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7367
  %i.b = load i8, ptr %i.a, align 1, !tbaa !107, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton10setPressedEb(ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7367 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !107, !range !76, !noundef !77
  %i.c = zext i1 %1 to i8                         ; 2 uses
  %.not = icmp eq i8 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #28 ; 0 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !111
  %i.f = mul i64 %i.e, 1000
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !112
  %i.i = udiv i64 %i.h, 1000000
  %i.j = add i64 %i.i, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7352
  store i32 %i.k, ptr %i.l, align 8, !tbaa !126
  store i8 %i.c, ptr %i.a, align 1, !tbaa !107
  call void @_ZN9GUIButton12setFromStateEv(ptr noundef nonnull align 8 dereferenceable(7452) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton12isPushButtonEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7366
  %i.b = load i8, ptr %i.a, align 2, !tbaa !106, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9GUIButton18setUseAlphaChannelEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(7452) initializes((7368, 7369)) %0, i1 noundef zeroext %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7368
  store i8 %i.a, ptr %i.b, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton18isAlphaChannelUsedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7368
  %i.b = load i8, ptr %i.a, align 8, !tbaa !125, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK9GUIButton15isDrawingBorderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7452) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7369
  %i.b = load i8, ptr %i.a, align 1, !tbaa !69, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN9GUIButton9addButtonEPN3gui15IGUIEnvironmentERKN4core4rectIiEEP20ISimpleTextureSourcePNS0_11IGUIElementEiPKwSD_(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(7472) ptr @_Znwm(i64 noundef 7472) #30 ; 9 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %3, %bb.a ]
  %.sroa.0.0.copyload = load i64, ptr %1, align 4, !tbaa !82
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !82
  invoke void @_ZN9GUIButtonC1EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiN4core4rectIiEEP20ISimpleTextureSourceb(ptr noundef nonnull align 8 dereferenceable(7452) %i.a, ptr noundef %0, ptr noundef %i.f, i32 noundef %4, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %2, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not18 = icmp eq ptr %5, null
  br i1 %.not18, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(7452) %i.a, ptr noundef nonnull %5)
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 7472) #31
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.e, %bb.d
  %.not19 = icmp eq ptr %6, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(308) %i.a, ptr noundef nonnull %6)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !91
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !91
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.j, label %_ZNK17IReferenceCounted4dropEv.exit

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(12) %i.q) #28, !inline_history !4
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.i, %bb.j
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton8setColorEN5video6SColorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7452) initializes((7372, 7388), (7448, 7452)) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7448
  store i32 %1, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7372
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef 0)
  %2 = bitcast i32 %1 to <4 x i8>
  %3 = shufflevector <4 x i8> %2, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.m = uitofp <4 x i8> %3 to <4 x float>        ; 4 uses
  %4 = bitcast i32 %i.l to <4 x i8>
  %5 = shufflevector <4 x i8> %4, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.n = uitofp <4 x i8> %5 to <4 x float>
  %i.o = fmul nnan nsz <4 x float> %i.n, splat (float 6.500000e-01)
  %i.p = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> splat (float f0x3EB33334), <4 x float> %i.o)
  %i.q = fadd nsz <4 x float> %i.p, splat (float 5.000000e-01) ; 4 uses
  %i.r = extractelement <4 x float> %i.q, i64 0
  %i.s = tail call nsz noundef float @llvm.floor.f32(float %i.r)
  %i.t = fptosi float %i.s to i32
  %i.u = extractelement <4 x float> %i.q, i64 1
  %i.v = tail call nsz noundef float @llvm.floor.f32(float %i.u)
  %i.w = fptosi float %i.v to i32
  %i.x = extractelement <4 x float> %i.q, i64 2
  %i.y = tail call nsz noundef float @llvm.floor.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = extractelement <4 x float> %i.q, i64 3
  %i.ab = tail call nsz noundef float @llvm.floor.f32(float %i.aa)
  %i.ac = fptosi float %i.ab to i32
  %i.ad = shl i32 %i.t, 24
  %i.ae = shl i32 %i.w, 16
  %i.af = and i32 %i.ae, 16711680
  %i.ag = or disjoint i32 %i.af, %i.ad
  %i.ah = shl i32 %i.z, 8
  %i.ai = and i32 %i.ah, 65280
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = and i32 %i.ac, 255
  %i.al = or disjoint i32 %i.aj, %i.ak
  store i32 %i.al, ptr %i.c, align 4, !tbaa !82
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !81  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i32 noundef 1)
  %6 = bitcast i32 %i.au to <4 x i8>
  %7 = shufflevector <4 x i8> %6, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.av = uitofp <4 x i8> %7 to <4 x float>
  %i.aw = fmul nnan nsz <4 x float> %i.av, splat (float 6.500000e-01)
  %i.ax = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> splat (float f0x3EB33334), <4 x float> %i.aw)
  %i.ay = fadd nsz <4 x float> %i.ax, splat (float 5.000000e-01) ; 4 uses
  %i.az = extractelement <4 x float> %i.ay, i64 0
  %i.ba = tail call nsz noundef float @llvm.floor.f32(float %i.az)
  %i.bb = fptosi float %i.ba to i32
  %i.bc = extractelement <4 x float> %i.ay, i64 1
  %i.bd = tail call nsz noundef float @llvm.floor.f32(float %i.bc)
  %i.be = fptosi float %i.bd to i32
  %i.bf = extractelement <4 x float> %i.ay, i64 2
  %i.bg = tail call nsz noundef float @llvm.floor.f32(float %i.bf)
  %i.bh = fptosi float %i.bg to i32
  %i.bi = extractelement <4 x float> %i.ay, i64 3
  %i.bj = tail call nsz noundef float @llvm.floor.f32(float %i.bi)
  %i.bk = fptosi float %i.bj to i32
  %i.bl = shl i32 %i.bb, 24
  %i.bm = shl i32 %i.be, 16
  %i.bn = and i32 %i.bm, 16711680
  %i.bo = or disjoint i32 %i.bn, %i.bl
  %i.bp = shl i32 %i.bh, 8
  %i.bq = and i32 %i.bp, 65280
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = and i32 %i.bk, 255
  %i.bt = or disjoint i32 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 7376
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !82
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !81  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i32 noundef 2)
  %8 = bitcast i32 %i.cd to <4 x i8>
  %9 = shufflevector <4 x i8> %8, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ce = uitofp <4 x i8> %9 to <4 x float>
  %i.cf = fmul nnan nsz <4 x float> %i.ce, splat (float 6.500000e-01)
  %i.cg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> splat (float f0x3EB33334), <4 x float> %i.cf)
  %i.ch = fadd nsz <4 x float> %i.cg, splat (float 5.000000e-01) ; 4 uses
  %i.ci = extractelement <4 x float> %i.ch, i64 0
  %i.cj = tail call nsz noundef float @llvm.floor.f32(float %i.ci)
  %i.ck = fptosi float %i.cj to i32
  %i.cl = extractelement <4 x float> %i.ch, i64 1
  %i.cm = tail call nsz noundef float @llvm.floor.f32(float %i.cl)
  %i.cn = fptosi float %i.cm to i32
  %i.co = extractelement <4 x float> %i.ch, i64 2
  %i.cp = tail call nsz noundef float @llvm.floor.f32(float %i.co)
  %i.cq = fptosi float %i.cp to i32
  %i.cr = extractelement <4 x float> %i.ch, i64 3
  %i.cs = tail call nsz noundef float @llvm.floor.f32(float %i.cr)
  %i.ct = fptosi float %i.cs to i32
  %i.cu = shl i32 %i.ck, 24
  %i.cv = shl i32 %i.cn, 16
  %i.cw = and i32 %i.cv, 16711680
  %i.cx = or disjoint i32 %i.cw, %i.cu
  %i.cy = shl i32 %i.cq, 8
  %i.cz = and i32 %i.cy, 65280
  %i.da = or disjoint i32 %i.cx, %i.cz
  %i.db = and i32 %i.ct, 255
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 7380
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !82
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !81  ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.de) ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call i32 %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i32 noundef 3)
  %10 = bitcast i32 %i.dm to <4 x i8>
  %11 = shufflevector <4 x i8> %10, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dn = uitofp <4 x i8> %11 to <4 x float>
  %i.do = fmul nnan nsz <4 x float> %i.dn, splat (float 6.500000e-01)
  %i.dp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> splat (float f0x3EB33334), <4 x float> %i.do)
  %i.dq = fadd nsz <4 x float> %i.dp, splat (float 5.000000e-01) ; 4 uses
  %i.dr = extractelement <4 x float> %i.dq, i64 0
  %i.ds = tail call nsz noundef float @llvm.floor.f32(float %i.dr)
  %i.dt = fptosi float %i.ds to i32
  %i.du = extractelement <4 x float> %i.dq, i64 1
  %i.dv = tail call nsz noundef float @llvm.floor.f32(float %i.du)
  %i.dw = fptosi float %i.dv to i32
  %i.dx = extractelement <4 x float> %i.dq, i64 2
  %i.dy = tail call nsz noundef float @llvm.floor.f32(float %i.dx)
  %i.dz = fptosi float %i.dy to i32
  %i.ea = extractelement <4 x float> %i.dq, i64 3
  %i.eb = tail call nsz noundef float @llvm.floor.f32(float %i.ea)
  %i.ec = fptosi float %i.eb to i32
  %i.ed = shl i32 %i.dt, 24
  %i.ee = shl i32 %i.dw, 16
  %i.ef = and i32 %i.ee, 16711680
  %i.eg = or disjoint i32 %i.ef, %i.ed
  %i.eh = shl i32 %i.dz, 8
  %i.ei = and i32 %i.eh, 65280
  %i.ej = or disjoint i32 %i.eg, %i.ei
  %i.ek = and i32 %i.ec, 255
  %i.el = or disjoint i32 %i.ej, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 7384
  store i32 %i.el, ptr %i.em, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9StyleSpec28getStyleFromStatePropagationERKSt5arrayIS_Lm8EENS_5StateE(ptr dead_on_unwind noalias writable sret(%class.StyleSpec) align 8 %0, ptr noundef nonnull align 8 dereferenceable(6720) %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.StyleSpec, align 8           ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %1, i64 25, i1 false), !tbaa.struct !128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.r, %bb.e ]    ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %i.c, 5
  %.add4.i = add nuw nsw i64 %.idx.i.i, 32        ; 2 uses
  %.ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add4.i ; 6 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.ptr7.i, i64 16 ; 3 uses
  store ptr %i.e, ptr %.ptr7.i, align 8, !tbaa !92
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !129  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !93   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.h, ptr %i.a, align 8, !tbaa !130
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.ptr7.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.f ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %.ptr7.i, align 8, !tbaa !129
  %i.k = load i64, ptr %i.a, align 8, !tbaa !130
  store i64 %i.k, ptr %i.e, align 8, !tbaa !94
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !94
  store i8 %i.m, ptr %i.l, align 1, !tbaa !94
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.ptr7.i, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !93
  %i.p = load ptr, ptr %.ptr7.i, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.r = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, 25
  br i1 %i.s, label %_ZN9StyleSpecC2ERKS_.exit, label %bb.b

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = icmp eq i64 %i.c, 0
  br i1 %i.u, label %common.resume, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.idx.i = phi i64 [ %.add.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.add4.i, %bb.f ] ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.add.i = add nsw i64 %.idx.i, -32              ; 3 uses
  %.ptr5.i = getelementptr inbounds i8, ptr %0, i64 %.add.i
  %i.v = load ptr, ptr %.ptr5.i, align 8, !tbaa !129 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.ptr.i, i64 -16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.preheader.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !94
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.preheader.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aa = icmp eq i64 %.add.i, 32
  br i1 %i.aa, label %common.resume, label %.preheader.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.f, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.t, %bb.f ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN9StyleSpecC2ERKS_.exit:                        ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  store i8 %2, ptr %i.ab, align 8, !tbaa !99
  %i.ac = zext i8 %2 to i32                       ; 2 uses
  %.not15 = icmp eq i8 %2, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9StyleSpecC2ERKS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 832
  %i.ag = add nuw nsw i32 %i.ac, 1
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = and i32 %i.ah, %i.ac
  %.not12 = icmp eq i32 %i.ai, 0
  br i1 %.not12, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.aj = getelementptr inbounds nuw [840 x i8], ptr %1, i64 %indvars.iv
  invoke void @_ZNK9StyleSpecorERKS_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %3, ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %i.aj)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %3, i64 25, i1 false), !tbaa.struct !128
  %i.ak = call noundef nonnull align 8 dereferenceable(800) ptr @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(800) %i.ad, ptr noundef nonnull align 8 dereferenceable(800) %i.ae) #28 ; 0 uses
  %i.al = load i8, ptr %i.af, align 8, !tbaa !99
  store i8 %i.al, ptr %i.ab, align 8, !tbaa !99
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ad) #28
  br label %common.resume

bb.k:                                             ; preds = %bb.g, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !223

._crit_edge:                                      ; preds = %bb.k, %_ZN9StyleSpecC2ERKS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton12setFromStyleERK9StyleSpec(ptr noundef nonnull align 8 dereferenceable(7452) initializes((7372, 7388), (7448, 7452)) %0, ptr noundef nonnull align 8 dereferenceable(833) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::vector2d.1", align 8  ; 6 uses
  %3 = alloca %"class.core::rect", align 16       ; 5 uses
  %4 = alloca %"class.core::rect", align 16       ; 5 uses
  %5 = alloca %"class.video::SColor", align 4     ; 5 uses
  %6 = alloca %"class.video::SColor", align 4     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !99
  %.fr109 = freeze i8 %i.b                        ; 2 uses
  %i.c = and i8 %.fr109, 2
  %.not = icmp eq i8 %i.c, 0                      ; 2 uses
  %i.d = and i8 %.fr109, 4
  %.not55 = icmp eq i8 %i.d, 0                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !93
  %.not94 = icmp eq i64 %i.g, 0
  br i1 %.not94, label %bb.d, label %_ZNK9StyleSpec8getColorENS_8PropertyE.exit

_ZNK9StyleSpec8getColorENS_8PropertyE.exit:       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_0
begin_hunk_1_@_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EEaSERKS6_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 416
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 448
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 480
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 544
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 576
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 608
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 640
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 672
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 704
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 736
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 768
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIcEaSIcEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !93
  store i8 0, ptr %i.a, align 8, !tbaa !94
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  %i.c = load ptr, ptr %2, align 8, !tbaa !129    ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN4core6stringIcE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !94
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #31
  br label %_ZN4core6stringIcE5clearEb.exit

_ZN4core6stringIcE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !129
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 5 uses
  %i.j = and i64 %i.i, 4294967295                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !93
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = and i64 %i.i, 4294967295
  %.not18 = icmp eq i64 %i.n, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = and i64 %i.i, 4294967295
  %i.o = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 4294967292
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.r = load i8, ptr %i.q, align 1, !tbaa !94
  %i.s = load ptr, ptr %0, align 8, !tbaa !129
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.epil
  store i8 %i.r, ptr %i.t, align 1, !tbaa !94
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !283

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %i.u = load i64, ptr %i.k, align 8, !tbaa !93
  %i.v = icmp ugt i64 %i.u, %i.j
  br i1 %i.v, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !94
  %i.y = load ptr, ptr %0, align 8, !tbaa !129
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  store i8 %i.x, ptr %i.z, align 1, !tbaa !94
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !94
  %i.ac = load ptr, ptr %0, align 8, !tbaa !129
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !94
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !94
  %i.ag = load ptr, ptr %0, align 8, !tbaa !129
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !94
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !94
  %i.ak = load ptr, ptr %0, align 8, !tbaa !129
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.2
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !94
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !284

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIcE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

declare extern_weak void @_ZTH13warningstream() #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{null}
!1 = distinct !{!1, !79}
!2 = distinct !{!2, !79}
!3 = distinct !{null, null}
!4 = distinct !{null}
!5 = distinct !{!5, !79}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{!9, !79}
!10 = distinct !{null}
!11 = distinct !{!11, !79}
!12 = distinct !{null}
!13 = distinct !{null, null}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!18 = !{!"Simple C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"vtable pointer", !18, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"_ZTSN5video6SColorE", !20, i64 0}
!26 = !{!"bool", !19, i64 0}
!27 = !{!"_ZTSN9GUIButton12ButtonSpriteE", !20, i64 0, !25, i64 4, !26, i64 8}
!28 = !{!27, !20, i64 0}
!29 = !{!25, !20, i64 0}
!30 = !{!27, !26, i64 8}
!31 = !{!"_ZTS14IEventReceiver"}
!32 = !{!"any pointer", !19, i64 0}
!33 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !32, i64 0}
!34 = !{!"_ZTSNSt8__detail15_List_node_baseE", !33, i64 0, !33, i64 8}
!35 = !{!"long", !19, i64 0}
!36 = !{!"_ZTSNSt8__detail17_List_node_headerE", !34, i64 0, !35, i64 16}
!37 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EE10_List_implE", !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EEE", !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EEE", !38, i64 0}
!40 = !{!"p1 _ZTSN3gui11IGUIElementE", !32, i64 0}
!41 = !{!"_ZTSSt14_List_iteratorIPN3gui11IGUIElementEE", !33, i64 0}
!42 = !{!"_ZTSN4core8vector2dIiEE", !20, i64 0, !20, i64 4}
!43 = !{!"_ZTSN4core4rectIiEE", !42, i64 0, !42, i64 8}
!44 = !{!"float", !19, i64 0}
!45 = !{!"_ZTSN4core8vector2dIfEE", !44, i64 0, !44, i64 4}
!46 = !{!"_ZTSN4core4rectIfEE", !45, i64 0, !45, i64 8}
!47 = !{!"_ZTSN4core11dimension2dIjEE", !20, i64 0, !20, i64 4}
!48 = !{!"p1 wchar_t", !32, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !48, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !49, i64 0, !35, i64 8, !19, i64 16}
!51 = !{!"_ZTSN4core6stringIwEE", !50, i64 0}
!52 = !{!"p1 omnipotent char", !32, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !52, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !53, i64 0, !35, i64 8, !19, i64 16}
!55 = !{!"_ZTSN4core6stringIcEE", !54, i64 0}
!56 = !{!"_ZTSN3gui14EGUI_ALIGNMENTE", !19, i64 0}
!57 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !32, i64 0}
!58 = !{!"_ZTSN3gui17EGUI_ELEMENT_TYPEE", !19, i64 0}
!59 = !{!"_ZTSN3gui11IGUIElementE", !31, i64 0, !39, i64 8, !40, i64 32, !41, i64 40, !43, i64 48, !43, i64 64, !43, i64 80, !43, i64 96, !43, i64 112, !46, i64 128, !47, i64 144, !47, i64 152, !26, i64 160, !26, i64 161, !26, i64 162, !26, i64 163, !51, i64 168, !51, i64 200, !55, i64 232, !20, i64 264, !26, i64 268, !20, i64 272, !26, i64 276, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !57, i64 296, !58, i64 304}
!60 = !{!"_ZTSN3gui10IGUIButtonE", !59, i64 0}
!61 = !{!"p1 _ZTSN3gui14IGUISpriteBankE", !32, i64 0}
!62 = !{!"_ZTSSt5arrayI9StyleSpecLm8EE", !19, i64 0}
!63 = !{!"p1 _ZTSN3gui8IGUIFontE", !32, i64 0}
!64 = !{!"p1 _ZTS20ISimpleTextureSource", !32, i64 0}
!65 = !{!"p1 _ZTSN3gui14IGUIStaticTextE", !32, i64 0}
!66 = !{!"_ZTS9GUIButton", !60, i64 0, !19, i64 308, !61, i64 392, !19, i64 400, !62, i64 616, !63, i64 7336, !26, i64 7344, !25, i64 7348, !20, i64 7352, !20, i64 7356, !20, i64 7360, !26, i64 7364, !26, i64 7365, !26, i64 7366, !26, i64 7367, !26, i64 7368, !26, i64 7369, !26, i64 7370, !19, i64 7372, !26, i64 7388, !26, i64 7389, !64, i64 7392, !65, i64 7400, !43, i64 7408, !43, i64 7424, !42, i64 7440, !25, i64 7448}
!67 = !{!66, !63, i64 7336}
!68 = !{!66, !26, i64 7344}
!69 = !{!66, !26, i64 7369}
!70 = !{!66, !26, i64 7370}
!71 = !{!66, !64, i64 7392}
!72 = !{!59, !26, i64 163}
!73 = !{!59, !26, i64 268}
!74 = !{!59, !20, i64 272}
!75 = !{!59, !26, i64 276}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!59, !40, i64 32}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!40, !40, i64 0}
!81 = !{!59, !57, i64 296}
!82 = !{!20, !20, i64 0}
!83 = !{!50, !48, i64 0}
!84 = !{!42, !20, i64 0}
!85 = !{!42, !20, i64 4}
!86 = !{!66, !65, i64 7400}
!87 = !{!"p1 _ZTSN5video8ITextureE", !32, i64 0}
!88 = !{!"_ZTSN9GUIButton11ButtonImageE", !87, i64 0, !43, i64 8}
!89 = !{!88, !87, i64 0}
!90 = !{!"_ZTS17IReferenceCounted", !20, i64 8}
!91 = !{!90, !20, i64 8}
!92 = !{!53, !52, i64 0}
!93 = !{!54, !35, i64 8}
!94 = !{!19, !19, i64 0}
!95 = !{!"_ZTSSt5arrayIbLm25EE", !19, i64 0}
!96 = !{!"_ZTSSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EE", !19, i64 0}
!97 = !{!"_ZTSN9StyleSpec5StateE", !19, i64 0}
!98 = !{!"_ZTS9StyleSpec", !95, i64 0, !96, i64 32, !97, i64 832}
!99 = !{!98, !97, i64 832}
!100 = !{!"p1 _ZTSN5video6SColorE", !32, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!102 = !{!101, !100, i64 0}
!103 = !{!101, !100, i64 16}
!104 = !{!66, !61, i64 392}
!105 = !{ptr @_ZN9GUIButtonD1Ev}
!106 = !{!66, !26, i64 7366}
!107 = !{!66, !26, i64 7367}
!108 = !{!66, !26, i64 7364}
!109 = !{!66, !26, i64 7365}
!110 = !{!"_ZTS8timespec", !35, i64 0, !35, i64 8}
!111 = !{!110, !35, i64 0}
!112 = !{!110, !35, i64 8}
!113 = !{!66, !20, i64 7360}
!114 = !{!66, !20, i64 7356}
!115 = !{!43, !20, i64 0}
!116 = !{!43, !20, i64 4}
!117 = !{!43, !20, i64 12}
!118 = !{!59, !26, i64 160}
!119 = !{ptr @_ZNK9GUIButton9isHoveredEv}
!120 = !{ptr @_ZNK9GUIButton9isFocusedEv}
!121 = !{i64 0, i64 4, !82, i64 4, i64 4, !82, i64 8, i64 4, !82, i64 12, i64 4, !82}
!122 = !{!43, !20, i64 8}
!123 = !{!47, !20, i64 0}
!124 = !{!47, !20, i64 4}
!125 = !{!66, !26, i64 7368}
!126 = !{!66, !20, i64 7352}
!127 = !{!34, !33, i64 0}
!128 = !{i64 0, i64 25, !94}
!129 = !{!54, !52, i64 0}
!130 = !{!35, !35, i64 0}
!131 = !{!44, !44, i64 0}
!132 = !{!59, !56, i64 280}
!133 = !{!59, !44, i64 128}
!134 = !{!59, !56, i64 284}
!135 = !{!59, !44, i64 136}
!136 = !{!59, !56, i64 288}
!137 = !{!59, !44, i64 132}
!138 = !{!59, !56, i64 292}
!139 = !{!59, !44, i64 140}
!140 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0}
!141 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !140, i64 0, !140, i64 8, !140, i64 16}
!142 = !{!141, !140, i64 8}
!143 = !{!141, !140, i64 0}
!144 = !{!141, !140, i64 16}
!145 = !{!34, !33, i64 8}
!146 = !{!38, !35, i64 16}
!147 = !{!33, !33, i64 0}
!148 = !{!41, !33, i64 0}
!149 = !{!59, !26, i64 162}
!150 = !{!59, !26, i64 161}
!151 = !{!59, !20, i64 264}
!152 = !{!59, !58, i64 304}
!153 = !{ptr @_ZN3gui11IGUIElementD1Ev}
!154 = !{!26, !26, i64 0}
!155 = !{!49, !48, i64 0}
end_hunk_1
