Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGUIImage?download=true
inline.NumInlined: 314
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZTv0_n24_N3gui9CGUIImageD1Ev:bb.a
  store i32 %i.o, ptr %i.l, align 8, !tbaa !50
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN3gui9CGUIImageD1Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.k) #20, !inline_history !55
  br label %_ZN3gui9CGUIImageD1Ev.exit

_ZN3gui9CGUIImageD1Ev.exit:                       ; preds = %bb.a, %bb.d, %bb.e
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(361) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN3gui9CGUIImageE, i64 16)) #20, !inline_history !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gui9CGUIImageD0Ev(ptr noundef nonnull align 8 dereferenceable(361) initializes((0, 8), (368, 376)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 392) (i8, ptr @_ZTVN3gui9CGUIImageE, i64 24), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN3gui9CGUIImageE, i64 440), ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3gui9CGUIImageD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #19, !inline_history !54
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !50
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN3gui9CGUIImageD1Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #20, !inline_history !55
  br label %_ZN3gui9CGUIImageD1Ev.exit

_ZN3gui9CGUIImageD1Ev.exit:                       ; preds = %bb.a, %bb.d, %bb.e
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(361) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN3gui9CGUIImageE, i64 16)) #20, !inline_history !54
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N3gui9CGUIImageD0Ev(ptr noundef %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 392) (i8, ptr @_ZTVN3gui9CGUIImageE, i64 24), ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN3gui9CGUIImageE, i64 440), ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN3gui9CGUIImageD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #19, !inline_history !56
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.o, ptr %i.l, align 8, !tbaa !50
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN3gui9CGUIImageD0Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.k) #20, !inline_history !57
  br label %_ZN3gui9CGUIImageD0Ev.exit

_ZN3gui9CGUIImageD0Ev.exit:                       ; preds = %bb.a, %bb.d, %bb.e
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(361) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN3gui9CGUIImageE, i64 16)) #20, !inline_history !56
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(361) %i.d, i64 noundef 384) #21, !inline_history !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gui9CGUIImage8setImageEPN5video8ITextureE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(361) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !50
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.f, label %_ZNK17IReferenceCounted4dropEv.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #20, !inline_history !52
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.f, %bb.e, %bb.b
  store ptr %1, ptr %i.a, align 8, !tbaa !10
  %.not4 = icmp eq ptr %1, null
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !50
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %_ZNK17IReferenceCounted4dropEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK3gui9CGUIImage8getImageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(361) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gui9CGUIImage8setColorEN5video6SColorE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(361) initializes((320, 324)) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %1, ptr %i.a, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @_ZNK3gui9CGUIImage8getColorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(361) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 8, !tbaa !59
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gui9CGUIImage4drawEv(ptr noundef nonnull align 8 dereferenceable(361) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.core::rect", align 4        ; 12 uses
  %2 = alloca [4 x %"class.video::SColor"], align 16 ; 4 uses
  %3 = alloca %"class.core::rect", align 16       ; 6 uses
  %4 = alloca %"class.core::rect", align 16       ; 9 uses
  %5 = alloca %"class.core::rect", align 16       ; 6 uses
  %6 = alloca %"class.video::SColor", align 4     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !60, !range !61, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN3gui11IGUIElement4drawEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 4 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10   ; 5 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !65   ; 2 uses
  %i.t = load i32, ptr %1, align 4, !tbaa !66     ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !67   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !68   ; 2 uses
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !69 ; 2 uses
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !70 ; 2 uses
  store i32 0, ptr %1, align 4, !tbaa !59
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !59
  store i32 %i.ad, ptr %i.r, align 4, !tbaa !59
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ac, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = phi i32 [ 0, %bb.e ], [ %i.y, %bb.d ]
  %i.af = phi i32 [ %i.ac, %bb.e ], [ %i.w, %bb.d ]
  %i.ag = phi i32 [ 0, %bb.e ], [ %i.t, %bb.d ]
  %i.ah = phi i32 [ %i.ad, %bb.e ], [ %i.s, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 325
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !47, !range !61, !noundef !62
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.am = load i32, ptr %i.al, align 8, !tbaa !59
  %i.an = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ao, ptr %2, align 16, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.as = load <4 x i32>, ptr %3, align 16, !tbaa !59 ; 4 uses
  %i.at = shufflevector <4 x i32> %i.as, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.au = shufflevector <4 x i32> %i.as, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.av = sub nsw <4 x i32> %i.at, %i.au
  %i.aw = sitofp <4 x i32> %i.av to <4 x float>
  %i.ax = load <2 x float>, ptr %i.aq, align 8, !tbaa !48
  %i.ay = load <2 x float>, ptr %i.ar, align 8, !tbaa !48
  %i.az = fsub <2 x float> splat (float 1.000000e+00), %i.ay
  %i.ba = shufflevector <2 x float> %i.ax, <2 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bb = fmul <4 x float> %i.ba, %i.aw
  %i.bc = fadd <4 x float> %i.bb, splat (float 5.000000e-01)
  %i.bd = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.bc)
  %i.be = fptosi <4 x float> %i.bd to <4 x i32>   ; 2 uses
  %i.bf = add nsw <4 x i32> %i.as, %i.be
  %i.bg = sub nsw <4 x i32> %i.as, %i.be
  %i.bh = shufflevector <4 x i32> %i.bf, <4 x i32> %i.bg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bh, ptr %3, align 16, !tbaa !59
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !46, !range !61, !noundef !62
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 416
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull %3, ptr noundef nonnull %2, i1 noundef zeroext %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bq = sub nsw i32 %i.ah, %i.ag                ; 2 uses
  %i.br = sub nsw i32 %i.af, %i.ae                ; 2 uses
  %i.bs = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bu = trunc i64 %i.bs to i32
  %i.bv = add nsw i32 %i.bq, %i.bu
  %i.bw = lshr i64 %i.bs, 32
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = add nsw i32 %i.br, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cd = insertelement <2 x i32> poison, i32 %i.bq, i64 0
  %i.ce = insertelement <2 x i32> %i.cd, i32 %i.br, i64 1
  %i.cf = shufflevector <2 x i32> %i.ce, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cg = sitofp <4 x i32> %i.cf to <4 x float>
  %i.ch = load <2 x float>, ptr %i.cb, align 8, !tbaa !48
  %i.ci = load <2 x float>, ptr %i.cc, align 8, !tbaa !48
  %i.cj = fsub <2 x float> splat (float 1.000000e+00), %i.ci
  %i.ck = shufflevector <2 x float> %i.ch, <2 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cl = fmul <4 x float> %i.ck, %i.cg
  %i.cm = fadd <4 x float> %i.cl, splat (float 5.000000e-01)
  %7 = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.cm)
  %8 = fptosi <4 x float> %7 to <4 x i32>         ; 2 uses
  %9 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %10 = bitcast <2 x i64> %9 to <4 x i32>
  %11 = insertelement <4 x i32> %10, i32 %i.bv, i64 2
  %12 = insertelement <4 x i32> %11, i32 %i.by, i64 3 ; 2 uses
  %13 = add nsw <4 x i32> %12, %8                 ; 3 uses
  %14 = sub nsw <4 x i32> %12, %8                 ; 3 uses
  %15 = shufflevector <4 x i32> %13, <4 x i32> %14, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %15, ptr %4, align 16, !tbaa !59
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !65 ; 6 uses
  %16 = extractelement <4 x i32> %14, i64 2       ; 2 uses
  %i.cq = icmp slt i32 %i.cp, %16
  br i1 %i.cq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.cp, ptr %i.bt, align 8, !tbaa !65
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cr = phi i32 [ %i.cp, %bb.i ], [ %16, %bb.h ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !67 ; 6 uses
  %17 = extractelement <4 x i32> %14, i64 3       ; 2 uses
  %i.cu = icmp slt i32 %i.ct, %17
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ct, ptr %i.bz, align 4, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cv = phi i32 [ %i.ct, %bb.k ], [ %17, %bb.j ]
  %i.cw = load i32, ptr %i.cn, align 8, !tbaa !66 ; 4 uses
  %i.cx = icmp sgt i32 %i.cw, %i.cr
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.cw, ptr %i.bt, align 8, !tbaa !65
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !68 ; 4 uses
  %i.da = icmp sgt i32 %i.cz, %i.cv
  br i1 %i.da, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.cz, ptr %i.bz, align 4, !tbaa !67
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %18 = extractelement <4 x i32> %13, i64 0       ; 2 uses
  %i.db = icmp slt i32 %i.cp, %18
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.cp, ptr %4, align 16, !tbaa !66
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dc = phi i32 [ %i.cp, %bb.q ], [ %18, %bb.p ]
  %19 = extractelement <4 x i32> %13, i64 1       ; 2 uses
  %i.dd = icmp slt i32 %i.ct, %19
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.ct, ptr %i.ca, align 4, !tbaa !68
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.de = phi i32 [ %i.ct, %bb.s ], [ %19, %bb.r ]
  %i.df = icmp sgt i32 %i.cw, %i.dc
  br i1 %i.df, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.cw, ptr %4, align 16, !tbaa !66
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dg = icmp sgt i32 %i.cz, %i.de
  br i1 %i.dg, label %bb.w, label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

bb.w:                                             ; preds = %bb.v
  store i32 %i.cz, ptr %i.ca, align 4, !tbaa !68
  br label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

_ZN4core4rectIiE11clipAgainstERKS1_.exit:         ; preds = %bb.v, %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.0.0.copyload = load i32, ptr %i.dh, align 8, !tbaa !59
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.dj = load i8, ptr %i.di, align 4, !tbaa !46, !range !61, !noundef !62
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 400
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull %4, i32 %.sroa.0.0.copyload, i1 noundef zeroext %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.x

bb.x:                                             ; preds = %_ZN4core4rectIiE11clipAgainstERKS1_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.aa

bb.y:                                             ; preds = %bb.b
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !49, !range !61, !noundef !62
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa.struct !64
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.du = load <4 x i32>, ptr %5, align 16, !tbaa !59 ; 4 uses
  %i.dv = shufflevector <4 x i32> %i.du, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dw = shufflevector <4 x i32> %i.du, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dx = sub nsw <4 x i32> %i.dv, %i.dw
  %i.dy = sitofp <4 x i32> %i.dx to <4 x float>
  %i.dz = load <2 x float>, ptr %i.ds, align 8, !tbaa !48
  %i.ea = load <2 x float>, ptr %i.dt, align 8, !tbaa !48
  %i.eb = fsub <2 x float> splat (float 1.000000e+00), %i.ea
  %i.ec = shufflevector <2 x float> %i.dz, <2 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ed = fmul <4 x float> %i.ec, %i.dy
  %i.ee = fadd <4 x float> %i.ed, splat (float 5.000000e-01)
  %i.ef = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ee)
  %i.eg = fptosi <4 x float> %i.ef to <4 x i32>   ; 2 uses
  %i.eh = add nsw <4 x i32> %i.du, %i.eg
  %i.ei = sub nsw <4 x i32> %i.du, %i.eg
  %i.ej = shufflevector <4 x i32> %i.eh, <4 x i32> %i.ei, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ej, ptr %5, align 16, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ek = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call i32 %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 0)
  store i32 %i.en, ptr %6, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 216
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.eo, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %i.es = load ptr, ptr %0, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(308) %0), !inline_history !71
  br i1 %i.ev, label %bb.ab, label %_ZN3gui11IGUIElement4drawEv.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.04.07.i = load ptr, ptr %i.ew, align 8, !tbaa !72 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.04.07.i, %i.ew
  br i1 %.not8.i, label %_ZN3gui11IGUIElement4drawEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.i
  %.sroa.04.09.i = phi ptr [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.07.i, %bb.ab ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !73 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(308) %i.ey), !inline_history !71
  %.sroa.04.0.i = load ptr, ptr %.sroa.04.09.i, align 8, !tbaa !72 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %i.ew
  br i1 %.not.i, label %_ZN3gui11IGUIElement4drawEv.exit, label %.lr.ph.i

_ZN3gui11IGUIElement4drawEv.exit:                 ; preds = %.lr.ph.i, %bb.ab, %bb.aa, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gui11IGUIElement4drawEv(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(308) %0)
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.04.07 = load ptr, ptr %i.e, align 8, !tbaa !72 ; 2 uses
  %.not8 = icmp eq ptr %.sroa.04.07, %i.e
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.04.09 = phi ptr [ %.sroa.04.0, %.lr.ph ], [ %.sroa.04.07, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(308) %i.g)
  %.sroa.04.0 = load ptr, ptr %.sroa.04.09, align 8, !tbaa !72 ; 2 uses
  %.not = icmp eq ptr %.sroa.04.0, %i.e
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gui9CGUIImage18setUseAlphaChannelEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(361) initializes((324, 325)) %0, i1 noundef zeroext %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 %i.a, ptr %i.b, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gui9CGUIImage13setScaleImageEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(361) initializes((325, 326)) %0, i1 noundef zeroext %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 325
  store i8 %i.a, ptr %i.b, align 1, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK3gui9CGUIImage13isImageScaledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(361) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 325
  %i.b = load i8, ptr %i.a, align 1, !tbaa !47, !range !61, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK3gui9CGUIImage18isAlphaChannelUsedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(361) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.b = load i8, ptr %i.a, align 4, !tbaa !46, !range !61, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gui9CGUIImage13setSourceRectERKN4core4rectIiEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(361) initializes((328, 344)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK3gui9CGUIImage13getSourceRectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(361) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gui9CGUIImage13setDrawBoundsERKN4core4rectIfEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(361) initializes((344, 360)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !48 ; 2 uses
end_hunk_0
