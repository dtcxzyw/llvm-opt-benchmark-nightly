Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiScene?download=true
inline.NumInlined: 525
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZTv0_n24_N8GUISceneD1Ev:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !77
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !77
  %.not.i2.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i2.i.i, label %bb.c, label %_ZN8GUISceneD1Ev.exit

bb.c:                                             ; preds = %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #26, !inline_history !3
  br label %_ZN8GUISceneD1Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #29, !inline_history !88
  unreachable

_ZN8GUISceneD1Ev.exit:                            ; preds = %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i, %bb.c
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(436) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT8GUIScene, i64 8)) #26, !inline_history !88
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8GUISceneD0Ev(ptr noundef nonnull align 8 dereferenceable(436) initializes((0, 8), (440, 448)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 280) (i8, ptr @_ZTV8GUIScene, i64 24), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTV8GUIScene, i64 328), ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(218) %i.c)
          to label %.noexc.i.i unwind label %bb.d, !inline_history !87

.noexc.i.i:                                       ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !85
  br label %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i

_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i: ; preds = %.noexc.i.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !77
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !77
  %.not.i2.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i2.i.i, label %bb.c, label %_ZN8GUISceneD1Ev.exit

bb.c:                                             ; preds = %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #26, !inline_history !3
  br label %_ZN8GUISceneD1Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #29, !inline_history !88
  unreachable

_ZN8GUISceneD1Ev.exit:                            ; preds = %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i, %bb.c
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT8GUIScene, i64 8)) #26, !inline_history !88
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 456) #28
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @_ZTv0_n24_N8GUISceneD0Ev(ptr noundef %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-24, 280) (i8, ptr @_ZTV8GUIScene, i64 24), ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTV8GUIScene, i64 328), ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(218) %i.g)
          to label %.noexc.i.i.i unwind label %bb.d, !inline_history !129

.noexc.i.i.i:                                     ; preds = %bb.b
  store ptr null, ptr %i.f, align 8, !tbaa !85
  br label %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i.i

_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i.i: ; preds = %.noexc.i.i.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !77
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !77
  %.not.i2.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i2.i.i.i, label %bb.c, label %_ZN8GUISceneD0Ev.exit

bb.c:                                             ; preds = %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #26, !inline_history !128
  br label %_ZN8GUISceneD0Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #29, !inline_history !130
  unreachable

_ZN8GUISceneD0Ev.exit:                            ; preds = %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i.i, %bb.c
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(436) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT8GUIScene, i64 8)) #26, !inline_history !130
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(436) %i.d, i64 noundef 456) #28, !inline_history !131
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN5scene21AnimatedMeshSceneNode13animateJointsEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene10setTextureEjPN5video8ITextureE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(436) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(127) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(432) %i.b, i32 noundef %1) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 1, ptr %i.g, align 8, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store float 5.000000e-01, ptr %i.h, align 8, !tbaa !140
  store ptr %2, ptr %i.f, align 8, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 126 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  store i8 0, ptr %i.k, align 2, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  store i8 0, ptr %i.l, align 1, !tbaa !148
  %i.m = and i8 %i.j, -93
  %i.n = or disjoint i8 %i.m, 68
  store i8 %i.n, ptr %i.i, align 2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene4drawEv(ptr noundef nonnull align 8 dereferenceable(436) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %"class.core::rect", align 4        ; 4 uses
  %3 = alloca %"class.core::rect", align 16       ; 4 uses
  %4 = alloca %"class.core::rect", align 16       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i16 noundef zeroext 2, i32 -16777216, float noundef 1.000000e+00, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.f = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %1) #26 ; 0 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !151
  %i.h = mul i64 %i.g, 1000
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !152
  %i.k = udiv i64 %i.j, 1000000
  %i.l = add i64 %i.k, %i.h                       ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !153  ; 4 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %i.l, %i.n
  %i.o = sub nuw i64 %i.l, %i.n
  %5 = sub nuw i64 %i.n, %i.l
  %.0.i = select i1 %.not.i, i64 %5, i64 %i.o
  %i.p = uitofp nsz i64 %.0.i to float
  %i.q = fmul nnan nsz float %i.p, -3.000000e-02
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.q, %bb.b ], [ -0.000000e+00, %bb.a ]
  store i64 %i.l, ptr %i.m, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 352
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef nonnull align 4 dereferenceable(16) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !65
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load <2 x i64>, ptr %i.x, align 8, !tbaa !64
  store <2 x i64> %i.y, ptr %3, align 16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !56
  %.not38 = icmp eq i32 %i.ad, 0
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load <2 x i64>, ptr %i.ak, align 8, !tbaa !64
  store <2 x i64> %i.al, ptr %4, align 16
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !74 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.ac, align 8, !tbaa !64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 160
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %0, i32 %.sroa.01.0.copyload, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.x, align 8, !tbaa !64 ; 2 uses
  %.sroa.2.0.copyload.i14 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !64 ; 2 uses
  %i.au = sub i64 %.sroa.2.0.copyload.i14, %.sroa.0.0.copyload.i12
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i14, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %.sroa.035.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i12, 32
  %.sroa.035.4.extract.trunc = trunc nuw i64 %.sroa.035.4.extract.shift to i32
  %i.av = sub nsw i32 %.sroa.5.12.extract.trunc, %.sroa.035.4.extract.trunc
  %.sroa.0.0.extract.trunc = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) ; 2 uses
  %i.bc = sitofp nsz i32 %.sroa.0.0.extract.trunc to float
  %i.bd = sitofp nsz i32 %i.av to float
  %i.be = fdiv nsz float %i.bc, %i.bd
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 416
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(233) %i.bb, float noundef %i.be)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !89
  %.not5 = icmp eq ptr %i.bj, null
  br i1 %.not5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !58 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef null, i32 noundef -1) ; 3 uses
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !89
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %i.bp, i64 12, i1 false), !tbaa.struct !90
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 256
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(218) %i.bo), !inline_history !154
  %i.bu = load ptr, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 232
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call { <2 x float>, float } %i.bx(ptr noundef nonnull align 8 dereferenceable(218) %i.bu), !inline_history !154 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { <2 x float>, float } %i.by, 0
  %.fca.1.extract.i.i = extractvalue { <2 x float>, float } %i.by, 1
  store <2 x float> %.fca.0.extract.i.i, ptr %i.bp, align 4, !tbaa !59
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 388
  store float %.fca.1.extract.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %i.bp, i64 12, i1 false), !tbaa.struct !90
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !61 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 216
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef nonnull align 4 dereferenceable(12) ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(218) %i.ca), !inline_history !149
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i64 12, i1 false), !tbaa.struct !90
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 429
  store i8 1, ptr %i.cg, align 1, !tbaa !91
  %i.ch = load float, ptr %i.cf, align 8, !tbaa !92
  %i.ci = load float, ptr %i.bp, align 4, !tbaa !92
  %i.cj = fsub nsz float %i.ch, %i.ci             ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cm = load <2 x float>, ptr %i.ck, align 4, !tbaa !59
  %i.cn = load <2 x float>, ptr %i.cl, align 8, !tbaa !59
  %i.co = fsub nsz <2 x float> %i.cm, %i.cn       ; 3 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.co, %i.co
  %i.cp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cq = call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cp)
  %i.cr = call nsz noundef float @llvm.sqrt.f32(float %i.cq)
  %i.cs = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cj, i64 1
  %i.cu = fpext <2 x float> %i.ct to <2 x double>
  %i.cv = fpext <2 x float> %i.co to <2 x double>
  %i.cw = call nsz <2 x double> @llvm.atan2.v2f64(<2 x double> %i.cu, <2 x double> %i.cv)
  %i.cx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> splat (double f0x404CA5DC1A63C1F8), <2 x double> <double -9.000000e+01, double -0.000000e+00>) ; 2 uses
  %i.cy = fptrunc <2 x double> %i.cx to <2 x float> ; 2 uses
  %i.cz = fcmp nsz olt <2 x double> %i.cx, splat (double f0xB690000000000000)
  %i.da = fadd nsz <2 x float> %i.cy, splat (float 3.600000e+02)
  %i.db = select <2 x i1> %i.cz, <2 x float> %i.da, <2 x float> %i.cy ; 3 uses
  %i.dc = fcmp nsz ult <2 x float> %i.db, splat (float 3.600000e+02)
  %i.dd = fadd nsz <2 x float> %i.db, splat (float -3.600000e+02)
  %i.de = select <2 x i1> %i.dc, <2 x float> %i.db, <2 x float> %i.dd
  call void @_ZN8GUIScene17setCameraRotationEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(436) %0, <2 x float> %i.de, float 0.000000e+00)
  %i.df = load ptr, ptr %i.bz, align 8, !tbaa !61 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 464
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(233) %i.df, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN8GUIScene10cameraLoopEv(ptr noundef nonnull align 8 dereferenceable(436) %0)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 430
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !155, !range !93, !noundef !94
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.do = load float, ptr %i.dm, align 8, !tbaa !92
  %i.dp = load float, ptr %i.dn, align 4, !tbaa !92
  %i.dq = fsub nsz float %i.do, %i.dp             ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.dt = fpext nsz float %i.dq to double
  %i.du = load <2 x float>, ptr %i.dr, align 4, !tbaa !59
  %i.dv = load <2 x float>, ptr %i.ds, align 8, !tbaa !59
  %i.dw = fsub nsz <2 x float> %i.du, %i.dv       ; 3 uses
  %i.dx = fpext <2 x float> %i.dw to <2 x double> ; 2 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 1
  %i.dz = call nsz double @llvm.atan2.f64(double %i.dt, double %i.dy)
  %i.ea = fmul nsz double %i.dz, f0x404CA5DC1A63C1F8
  %foldExtExtBinop41 = fmul nsz <2 x float> %i.dw, %i.dw
  %i.eb = extractelement <2 x float> %foldExtExtBinop41, i64 1
  %i.ec = call nsz float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.eb)
  %i.ed = call nsz noundef float @llvm.sqrt.f32(float %i.ec)
  %i.ee = fpext nsz float %i.ed to double
  %i.ef = extractelement <2 x double> %i.dx, i64 0
  %i.eg = call nsz double @llvm.atan2.f64(double %i.ee, double %i.ef)
  %i.eh = call nsz double @llvm.fmuladd.f64(double %i.eg, double f0x404CA5DC1A63C1F8, double -9.000000e+01)
  %i.ei = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.eh, i64 1 ; 2 uses
  %i.ek = fptrunc <2 x double> %i.ej to <2 x float> ; 2 uses
  %i.el = fcmp nsz olt <2 x double> %i.ej, splat (double f0xB690000000000000)
  %i.em = fadd nsz <2 x float> %i.ek, splat (float 3.600000e+02)
  %i.en = select <2 x i1> %i.el, <2 x float> %i.em, <2 x float> %i.ek ; 3 uses
  %i.eo = fcmp nsz ult <2 x float> %i.en, splat (float 3.600000e+02)
  %i.ep = fadd nsz <2 x float> %i.en, splat (float -3.600000e+02)
  %i.eq = select <2 x i1> %i.eo, <2 x float> %i.en, <2 x float> %i.ep ; 2 uses
  %i.er = extractelement <2 x float> %i.eq, i64 0
  %i.es = fadd nsz float %.0, %i.er
  %i.et = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i.i22 = insertelement <2 x float> %i.et, float %i.es, i64 1
  call void @_ZN8GUIScene17setCameraRotationEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(436) %0, <2 x float> %.sroa.0.4.vec.insert.i.i22, float 0.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.eu = load ptr, ptr %i.aw, align 8, !tbaa !58 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 144
end_hunk_0
begin_hunk_1_@_ZN4core6stringIwEaSIwEERS1_PKT_:bb.a

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %i.p
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !67
  %i.ae = icmp ugt i64 %i.ad, %i.l
  br i1 %i.ae, label %bb.g, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !69
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !69
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !69
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.am, ptr %i.an, align 4, !tbaa !69
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !69
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !69
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !203

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIwE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #17

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIcEaSIcEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !71
  store i8 0, ptr %i.a, align 8, !tbaa !72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  %i.c = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN4core6stringIcE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !72
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #28
  br label %_ZN4core6stringIcE5clearEb.exit

_ZN4core6stringIcE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !82
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 5 uses
  %i.j = and i64 %i.i, 4294967295                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
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
  %i.r = load i8, ptr %i.q, align 1, !tbaa !72
  %i.s = load ptr, ptr %0, align 8, !tbaa !82
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.epil
  store i8 %i.r, ptr %i.t, align 1, !tbaa !72
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !206

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %i.u = load i64, ptr %i.k, align 8, !tbaa !71
  %i.v = icmp ugt i64 %i.u, %i.j
  br i1 %i.v, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !72
  %i.y = load ptr, ptr %0, align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  store i8 %i.x, ptr %i.z, align 1, !tbaa !72
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !72
  %i.ac = load ptr, ptr %0, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !72
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !72
  %i.ag = load ptr, ptr %0, align 8, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !72
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !72
  %i.ak = load ptr, ptr %0, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.2
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !72
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !207

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIcE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.atan2.v2f64(<2 x double>, <2 x double>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{null}
!1 = distinct !{!1, !84}
!2 = distinct !{null}
!3 = distinct !{ptr @_ZN8GUISceneD1Ev, ptr @_ZN8GUISceneD2Ev, null}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"vtable pointer", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTS14IEventReceiver"}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !17, i64 0}
!19 = !{!"_ZTSNSt8__detail15_List_node_baseE", !18, i64 0, !18, i64 8}
!20 = !{!"long", !10, i64 0}
!21 = !{!"_ZTSNSt8__detail17_List_node_headerE", !19, i64 0, !20, i64 16}
!22 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EE10_List_implE", !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EEE", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EEE", !23, i64 0}
!25 = !{!"p1 _ZTSN3gui11IGUIElementE", !17, i64 0}
!26 = !{!"_ZTSSt14_List_iteratorIPN3gui11IGUIElementEE", !18, i64 0}
!27 = !{!"_ZTSN4core8vector2dIiEE", !11, i64 0, !11, i64 4}
!28 = !{!"_ZTSN4core4rectIiEE", !27, i64 0, !27, i64 8}
!29 = !{!"float", !10, i64 0}
!30 = !{!"_ZTSN4core8vector2dIfEE", !29, i64 0, !29, i64 4}
!31 = !{!"_ZTSN4core4rectIfEE", !30, i64 0, !30, i64 8}
!32 = !{!"_ZTSN4core11dimension2dIjEE", !11, i64 0, !11, i64 4}
!33 = !{!"bool", !10, i64 0}
!34 = !{!"p1 wchar_t", !17, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !34, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !35, i64 0, !20, i64 8, !10, i64 16}
!37 = !{!"_ZTSN4core6stringIwEE", !36, i64 0}
!38 = !{!"p1 omnipotent char", !17, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !20, i64 8, !10, i64 16}
!41 = !{!"_ZTSN4core6stringIcEE", !40, i64 0}
!42 = !{!"_ZTSN3gui14EGUI_ALIGNMENTE", !10, i64 0}
!43 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !17, i64 0}
!44 = !{!"_ZTSN3gui17EGUI_ELEMENT_TYPEE", !10, i64 0}
!45 = !{!"_ZTSN3gui11IGUIElementE", !16, i64 0, !24, i64 8, !25, i64 32, !26, i64 40, !28, i64 48, !28, i64 64, !28, i64 80, !28, i64 96, !28, i64 112, !31, i64 128, !32, i64 144, !32, i64 152, !33, i64 160, !33, i64 161, !33, i64 162, !33, i64 163, !37, i64 168, !37, i64 200, !41, i64 232, !11, i64 264, !33, i64 268, !11, i64 272, !33, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !43, i64 296, !44, i64 304}
!46 = !{!"p1 _ZTSN5scene13ISceneManagerE", !17, i64 0}
!47 = !{!"p1 _ZTSN5video12IVideoDriverE", !17, i64 0}
!48 = !{!"p1 _ZTSN5scene16ICameraSceneNodeE", !17, i64 0}
!49 = !{!"p1 _ZTSN5scene10ISceneNodeE", !17, i64 0}
!50 = !{!"p1 _ZTSN5scene21AnimatedMeshSceneNodeE", !17, i64 0}
!51 = !{!"_ZTSN4core8vector3dIfEE", !29, i64 0, !29, i64 4, !29, i64 8}
!52 = !{!"_ZTSN5video6SColorE", !11, i64 0}
!53 = !{!"_ZTS8GUIScene", !45, i64 0, !46, i64 312, !47, i64 320, !48, i64 328, !49, i64 336, !50, i64 344, !29, i64 352, !20, i64 360, !51, i64 368, !51, i64 380, !51, i64 392, !30, i64 404, !30, i64 412, !30, i64 420, !33, i64 428, !33, i64 429, !33, i64 430, !33, i64 431, !52, i64 432}
!54 = !{!53, !29, i64 352}
!55 = !{!33, !33, i64 0}
!56 = !{!52, !11, i64 0}
!57 = !{!53, !47, i64 320}
!58 = !{!53, !46, i64 312}
!59 = !{!29, !29, i64 0}
!60 = !{!51, !29, i64 8}
!61 = !{!53, !48, i64 328}
!62 = !{!19, !18, i64 8}
!63 = !{!19, !18, i64 0}
!64 = !{!11, !11, i64 0}
!65 = !{i64 0, i64 4, !64, i64 4, i64 4, !64, i64 8, i64 4, !64, i64 12, i64 4, !64}
!66 = !{!35, !34, i64 0}
!67 = !{!36, !20, i64 8}
!68 = !{!"wchar_t", !10, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!39, !38, i64 0}
!71 = !{!40, !20, i64 8}
!72 = !{!10, !10, i64 0}
!73 = !{!45, !11, i64 264}
!74 = !{!45, !43, i64 296}
!75 = !{!45, !44, i64 304}
!76 = !{!"_ZTS17IReferenceCounted", !11, i64 8}
!77 = !{!76, !11, i64 8}
!78 = !{!45, !25, i64 32}
!79 = !{!25, !25, i64 0}
!80 = !{!23, !20, i64 16}
!81 = !{!18, !18, i64 0}
!82 = !{!40, !38, i64 0}
!83 = !{!36, !34, i64 0}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!53, !50, i64 344}
!86 = !{ptr @_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE}
!87 = !{ptr @_ZN8GUISceneD1Ev, ptr @_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE}
!88 = !{ptr @_ZN8GUISceneD1Ev}
!89 = !{!53, !49, i64 336}
!90 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 4, !59}
!91 = !{!53, !33, i64 429}
!92 = !{!51, !29, i64 0}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = !{ptr @_ZN8GUIScene15updateTargetPosEv}
!96 = !{!51, !29, i64 4}
!97 = !{!45, !33, i64 163}
!98 = !{i64 0, i64 25, !72}
!99 = !{!20, !20, i64 0}
!100 = !{!"_ZTSSt5arrayIbLm25EE", !10, i64 0}
!101 = !{!"_ZTSSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EE", !10, i64 0}
!102 = !{!"_ZTSN9StyleSpec5StateE", !10, i64 0}
!103 = !{!"_ZTS9StyleSpec", !100, i64 0, !101, i64 32, !102, i64 832}
!104 = !{!103, !102, i64 832}
!105 = !{ptr @_ZN3gui11IGUIElementD1Ev}
!106 = !{!28, !11, i64 0}
!107 = !{!28, !11, i64 4}
!108 = !{!28, !11, i64 12}
!109 = !{!26, !18, i64 0}
!110 = !{!45, !42, i64 280}
!111 = !{!45, !29, i64 128}
!112 = !{!45, !42, i64 284}
!113 = !{!45, !29, i64 136}
!114 = !{!45, !42, i64 288}
!115 = !{!45, !29, i64 132}
!116 = !{!45, !42, i64 292}
!117 = !{!45, !29, i64 140}
!118 = !{!45, !33, i64 160}
!119 = !{!45, !33, i64 162}
!120 = !{!45, !33, i64 161}
!121 = !{!"llvm.loop.unroll.disable"}
!122 = !{!32, !11, i64 0}
!123 = !{!32, !11, i64 4}
!124 = !{!45, !33, i64 268}
!125 = !{!45, !11, i64 272}
!126 = !{!45, !33, i64 276}
!127 = distinct !{ptr @_ZN8GUISceneD2Ev, null}
!128 = distinct !{ptr @_ZN8GUISceneD0Ev, ptr @_ZN8GUISceneD1Ev, ptr @_ZN8GUISceneD2Ev, null}
!129 = !{ptr @_ZN8GUISceneD0Ev, ptr @_ZN8GUISceneD1Ev, ptr @_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE}
!130 = !{ptr @_ZN8GUISceneD0Ev, ptr @_ZN8GUISceneD1Ev}
!131 = !{ptr @_ZN8GUISceneD0Ev}
!132 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !10, i64 0}
!133 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !10, i64 0}
!134 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !10, i64 0}
!135 = !{!"_ZTSN5video13E_COLOR_PLANEE", !10, i64 0}
!136 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !10, i64 0}
!137 = !{!"_ZTSN5video8E_ZWRITEE", !10, i64 0}
!138 = !{!"_ZTSN5video9SMaterialE", !10, i64 0, !132, i64 96, !52, i64 100, !29, i64 104, !29, i64 108, !29, i64 112, !29, i64 116, !29, i64 120, !133, i64 124, !134, i64 124, !135, i64 125, !136, i64 125, !33, i64 126, !33, i64 126, !137, i64 126, !33, i64 126, !33, i64 126, !33, i64 126, !33, i64 126}
!139 = !{!138, !132, i64 96}
!140 = !{!138, !29, i64 104}
!141 = !{!"p1 _ZTSN5video8ITextureE", !17, i64 0}
!142 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !10, i64 0}
end_hunk_1
