Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGUIImage?download=true
inline.NumInlined: 314
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZTv0_n24_N3gui9CGUIImageD1Ev:bb.a

bb.d:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.o, ptr %i.l, align 8, !tbaa !55
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN3gui9CGUIImageD1Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.k) #20, !inline_history !1
  br label %_ZN3gui9CGUIImageD1Ev.exit

_ZN3gui9CGUIImageD1Ev.exit:                       ; preds = %bb.a, %bb.d, %bb.e
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(361) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN3gui9CGUIImageE, i64 16)) #20, !inline_history !56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gui9CGUIImageD0Ev(ptr noundef nonnull align 8 dereferenceable(361) initializes((0, 8), (368, 376)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 392) (i8, ptr @_ZTVN3gui9CGUIImageE, i64 24), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN3gui9CGUIImageE, i64 440), ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3gui9CGUIImageD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #19, !inline_history !56
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !55
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN3gui9CGUIImageD1Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #20, !inline_history !1
  br label %_ZN3gui9CGUIImageD1Ev.exit

_ZN3gui9CGUIImageD1Ev.exit:                       ; preds = %bb.a, %bb.d, %bb.e
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(361) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN3gui9CGUIImageE, i64 16)) #20, !inline_history !56
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N3gui9CGUIImageD0Ev(ptr noundef %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 392) (i8, ptr @_ZTVN3gui9CGUIImageE, i64 24), ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN3gui9CGUIImageE, i64 440), ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN3gui9CGUIImageD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #19, !inline_history !100
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.o, ptr %i.l, align 8, !tbaa !55
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN3gui9CGUIImageD0Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.k) #20, !inline_history !99
  br label %_ZN3gui9CGUIImageD0Ev.exit

_ZN3gui9CGUIImageD0Ev.exit:                       ; preds = %bb.a, %bb.d, %bb.e
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(361) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN3gui9CGUIImageE, i64 16)) #20, !inline_history !100
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(361) %i.d, i64 noundef 384) #21, !inline_history !101
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gui9CGUIImage8setImageEPN5video8ITextureE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(361) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !55
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.f, label %_ZNK17IReferenceCounted4dropEv.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #20, !inline_history !0
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.f, %bb.e, %bb.b
  store ptr %1, ptr %i.a, align 8, !tbaa !48
  %.not4 = icmp eq ptr %1, null
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !13
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !55
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %_ZNK17IReferenceCounted4dropEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK3gui9CGUIImage8getImageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(361) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gui9CGUIImage8setColorEN5video6SColorE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(361) initializes((320, 324)) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %1, ptr %i.a, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @_ZNK3gui9CGUIImage8getColorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(361) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 8, !tbaa !57
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gui9CGUIImage4drawEv(ptr noundef nonnull align 8 dereferenceable(361) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.core::rect", align 16       ; 10 uses
  %2 = alloca [4 x %"class.video::SColor"], align 16 ; 4 uses
  %3 = alloca %"class.core::rect", align 16       ; 6 uses
  %4 = alloca %"class.core::rect", align 16       ; 9 uses
  %5 = alloca %"class.core::rect", align 16       ; 6 uses
  %6 = alloca %"class.video::SColor", align 4     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !58, !range !59, !noundef !60
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN3gui11IGUIElement4drawEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 4 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 4 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !62
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !63   ; 2 uses
  %i.t = load i32, ptr %1, align 16, !tbaa !64    ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %7 = load i32, ptr %i.v, align 4, !tbaa !65     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !66   ; 2 uses
  %8 = icmp eq i32 %7, %i.x
  %9 = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %10 = insertelement <2 x i32> %9, i32 %7, i64 1
  %11 = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %12 = insertelement <2 x i32> %11, i32 %i.x, i64 1
  br i1 %8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.z = load <2 x i32>, ptr %i.y, align 4, !tbaa !57 ; 2 uses
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ab = shufflevector <4 x i32> %i.aa, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  store <4 x i32> %i.ab, ptr %1, align 16, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi <2 x i32> [ %i.z, %bb.e ], [ %10, %bb.d ]
  %i.ad = phi <2 x i32> [ zeroinitializer, %bb.e ], [ %12, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 325
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !51, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ai = load <1 x i32>, ptr %i.ah, align 8
  %i.aj = shufflevector <1 x i32> %i.ai, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.aj, ptr %2, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !62
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.an = load <4 x i32>, ptr %3, align 16, !tbaa !57 ; 4 uses
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ap = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aq = sub nsw <4 x i32> %i.ao, %i.ap
  %i.ar = sitofp <4 x i32> %i.aq to <4 x float>
  %i.as = load <2 x float>, ptr %i.al, align 8, !tbaa !52
  %i.at = load <2 x float>, ptr %i.am, align 8, !tbaa !52
  %i.au = fsub <2 x float> splat (float 1.000000e+00), %i.at
  %i.av = shufflevector <2 x float> %i.as, <2 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aw = fmul <4 x float> %i.av, %i.ar
  %i.ax = fadd <4 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ax)
  %i.az = fptosi <4 x float> %i.ay to <4 x i32>   ; 2 uses
  %i.ba = add nsw <4 x i32> %i.an, %i.az
  %i.bb = sub nsw <4 x i32> %i.an, %i.az
  %i.bc = shufflevector <4 x i32> %i.ba, <4 x i32> %i.bb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bc, ptr %3, align 16, !tbaa !57
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !50, !range !59, !noundef !60
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 416
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.bd, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull %3, ptr noundef nonnull %2, i1 noundef zeroext %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bl = sub nsw <2 x i32> %i.ac, %i.ad          ; 2 uses
  %i.bm = shufflevector <2 x i32> %i.bl, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bn = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bp = lshr i64 %i.bn, 32
  %i.bq = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %i.br = insertelement <2 x i64> %i.bq, i64 %i.bp, i64 1
  %i.bs = trunc <2 x i64> %i.br to <2 x i32>      ; 2 uses
  %i.bt = add nsw <2 x i32> %i.bl, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.by = sitofp <4 x i32> %i.bm to <4 x float>
  %i.bz = load <2 x float>, ptr %i.bw, align 8, !tbaa !52
  %i.ca = load <2 x float>, ptr %i.bx, align 8, !tbaa !52
  %i.cb = fsub <2 x float> splat (float 1.000000e+00), %i.ca
  %i.cc = shufflevector <2 x float> %i.bz, <2 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = fmul <4 x float> %i.cc, %i.by
  %i.ce = fadd <4 x float> %i.cd, splat (float 5.000000e-01)
  %i.cf = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ce)
  %i.cg = fptosi <4 x float> %i.cf to <4 x i32>   ; 2 uses
  %i.ch = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ci = add nsw <4 x i32> %i.ch, %i.cg          ; 3 uses
  %i.cj = sub nsw <4 x i32> %i.ch, %i.cg          ; 3 uses
  %i.ck = shufflevector <4 x i32> %i.ci, <4 x i32> %i.cj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ck, ptr %4, align 16, !tbaa !57
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !63 ; 6 uses
  %i.co = extractelement <4 x i32> %i.cj, i64 2   ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.cn, ptr %i.bo, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cq = phi i32 [ %i.cn, %bb.i ], [ %i.co, %bb.h ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !65 ; 6 uses
  %i.ct = extractelement <4 x i32> %i.cj, i64 3   ; 2 uses
  %i.cu = icmp slt i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.cs, ptr %i.bu, align 4, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cv = phi i32 [ %i.cs, %bb.k ], [ %i.ct, %bb.j ]
  %i.cw = load i32, ptr %i.cl, align 8, !tbaa !64 ; 4 uses
  %i.cx = icmp sgt i32 %i.cw, %i.cq
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.cw, ptr %i.bo, align 8, !tbaa !63
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !66 ; 4 uses
  %i.da = icmp sgt i32 %i.cz, %i.cv
  br i1 %i.da, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.cz, ptr %i.bu, align 4, !tbaa !65
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.db = extractelement <4 x i32> %i.ci, i64 0   ; 2 uses
  %i.dc = icmp slt i32 %i.cn, %i.db
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.cn, ptr %4, align 16, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dd = phi i32 [ %i.cn, %bb.q ], [ %i.db, %bb.p ]
  %i.de = extractelement <4 x i32> %i.ci, i64 1   ; 2 uses
  %i.df = icmp slt i32 %i.cs, %i.de
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.cs, ptr %i.bv, align 4, !tbaa !66
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dg = phi i32 [ %i.cs, %bb.s ], [ %i.de, %bb.r ]
  %i.dh = icmp sgt i32 %i.cw, %i.dd
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.cw, ptr %4, align 16, !tbaa !64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.di = icmp sgt i32 %i.cz, %i.dg
  br i1 %i.di, label %bb.w, label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

bb.w:                                             ; preds = %bb.v
  store i32 %i.cz, ptr %i.bv, align 4, !tbaa !66
  br label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

_ZN4core4rectIiE11clipAgainstERKS1_.exit:         ; preds = %bb.v, %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.0.0.copyload = load i32, ptr %i.dj, align 8, !tbaa !57
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !50, !range !59, !noundef !60
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 400
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull align 4 dereferenceable(8) %i.bk, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull %4, i32 %.sroa.0.0.copyload, i1 noundef zeroext %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.x

bb.x:                                             ; preds = %_ZN4core4rectIiE11clipAgainstERKS1_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.aa

bb.y:                                             ; preds = %bb.b
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !53, !range !59, !noundef !60
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false), !tbaa.struct !62
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dw = load <4 x i32>, ptr %5, align 16, !tbaa !57 ; 4 uses
  %i.dx = shufflevector <4 x i32> %i.dw, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dy = shufflevector <4 x i32> %i.dw, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dz = sub nsw <4 x i32> %i.dx, %i.dy
  %i.ea = sitofp <4 x i32> %i.dz to <4 x float>
  %i.eb = load <2 x float>, ptr %i.du, align 8, !tbaa !52
  %i.ec = load <2 x float>, ptr %i.dv, align 8, !tbaa !52
  %i.ed = fsub <2 x float> splat (float 1.000000e+00), %i.ec
  %i.ee = shufflevector <2 x float> %i.eb, <2 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ef = fmul <4 x float> %i.ee, %i.ea
  %i.eg = fadd <4 x float> %i.ef, splat (float 5.000000e-01)
  %i.eh = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.eg)
  %i.ei = fptosi <4 x float> %i.eh to <4 x i32>   ; 2 uses
  %i.ej = add nsw <4 x i32> %i.dw, %i.ei
  %i.ek = sub nsw <4 x i32> %i.dw, %i.ei
  %i.el = shufflevector <4 x i32> %i.ej, <4 x i32> %i.ek, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.el, ptr %5, align 16, !tbaa !57
end_hunk_0
