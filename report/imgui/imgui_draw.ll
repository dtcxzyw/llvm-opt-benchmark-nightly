Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig:bb.a
  %i.ac = fmul float %i.ab, 1.015000e+00
  store float %i.ac, ptr %i.aa, align 4, !tbaa !300
  %i.ad = fmul float %i.z, 6.250000e-02
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !433
  %i.ag = call float @llvm.fmuladd.f32(float %i.ad, float 5.000000e-01, float %i.af)
  store float %i.ag, ptr %i.ae, align 4, !tbaa !433
  %i.ah = call noundef ptr @_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull @_ZL42proggy_forever_minimal_ttf_compressed_data, i32 poison, float noundef %i.z, ptr noundef nonnull %3, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.q

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %.not.i5 = icmp eq ptr %1, null
  br i1 %.not.i5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull readonly align 8 dereferenceable(160) %1, i64 160, i1 false), !tbaa.struct !431
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @_ZN12ImFontConfigC1Ev(ptr noundef nonnull align 8 dereferenceable(153) %2)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 54
  store i8 1, ptr %i.ai, align 2, !tbaa !432
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !414 ; 2 uses
  %i.al = fcmp ugt float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store float 1.300000e+01, ptr %i.aj, align 4, !tbaa !414
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !413
  %i.ao = or i32 %i.an, 16
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !413
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = phi float [ 1.300000e+01, %bb.n ], [ %i.ak, %bb.m ]
  %i.aq = load i8, ptr %2, align 8, !tbaa !50
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.p, label %_ZN11ImFontAtlas20AddFontDefaultBitmapEPK12ImFontConfig.exit

bb.p:                                             ; preds = %bb.o
  %i.as = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %2, i64 noundef 40, ptr noundef nonnull @.str.13) ; 0 uses
  %.pre.i6 = load float, ptr %i.aj, align 4, !tbaa !414
  br label %_ZN11ImFontAtlas20AddFontDefaultBitmapEPK12ImFontConfig.exit

_ZN11ImFontAtlas20AddFontDefaultBitmapEPK12ImFontConfig.exit: ; preds = %bb.o, %bb.p
  %i.at = phi float [ %.pre.i6, %bb.p ], [ %i.ap, %bb.o ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 58
  store i16 133, ptr %i.au, align 2, !tbaa !434
  %i.av = fdiv float %i.at, 1.300000e+01
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !433
  %i.ay = fadd float %i.av, %i.ax
  store float %i.ay, ptr %i.aw, align 4, !tbaa !433
  %i.az = call noundef ptr @_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull @_ZL32proggy_clean_ttf_compressed_data, i32 poison, float noundef %i.at, ptr noundef nonnull %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.q

bb.q:                                             ; preds = %_ZN11ImFontAtlas20AddFontDefaultBitmapEPK12ImFontConfig.exit, %_ZN11ImFontAtlas20AddFontDefaultVectorEPK12ImFontConfig.exit
  %.0 = phi ptr [ %i.ah, %_ZN11ImFontAtlas20AddFontDefaultVectorEPK12ImFontConfig.exit ], [ %i.az, %_ZN11ImFontAtlas20AddFontDefaultBitmapEPK12ImFontConfig.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11ImFontAtlas20AddFontDefaultVectorEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = alloca %struct.ImFontConfig, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false), !tbaa.struct !431
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZN12ImFontConfigC1Ev(ptr noundef nonnull align 8 dereferenceable(153) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 54
  store i8 1, ptr %i.a, align 2, !tbaa !432
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !414 ; 2 uses
  %i.d = fcmp ugt float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store float 1.300000e+01, ptr %i.b, align 4, !tbaa !414
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !413
  %i.g = or i32 %i.f, 16
  store i32 %i.g, ptr %i.e, align 8, !tbaa !413
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = phi float [ 1.300000e+01, %bb.e ], [ %i.c, %bb.d ]
  %i.i = load i8, ptr %2, align 8, !tbaa !50
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %2, i64 noundef 40, ptr noundef nonnull @.str.14) ; 0 uses
  %.pre = load float, ptr %i.b, align 4, !tbaa !414
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi float [ %.pre, %bb.g ], [ %i.h, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !300
  %i.o = fmul float %i.n, 1.015000e+00
  store float %i.o, ptr %i.m, align 4, !tbaa !300
  %i.p = fmul float %i.l, 6.250000e-02
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !433
  %i.s = call float @llvm.fmuladd.f32(float %i.p, float 5.000000e-01, float %i.r)
  store float %i.s, ptr %i.q, align 4, !tbaa !433
  %i.t = call noundef ptr @_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull @_ZL42proggy_forever_minimal_ttf_compressed_data, i32 poison, float noundef %i.l, ptr noundef nonnull %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret ptr %i.t
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11ImFontAtlas20AddFontDefaultBitmapEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = alloca %struct.ImFontConfig, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false), !tbaa.struct !431
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZN12ImFontConfigC1Ev(ptr noundef nonnull align 8 dereferenceable(153) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 54
  store i8 1, ptr %i.a, align 2, !tbaa !432
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !414 ; 2 uses
  %i.d = fcmp ugt float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store float 1.300000e+01, ptr %i.b, align 4, !tbaa !414
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !413
  %i.g = or i32 %i.f, 16
  store i32 %i.g, ptr %i.e, align 8, !tbaa !413
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = phi float [ 1.300000e+01, %bb.e ], [ %i.c, %bb.d ]
  %i.i = load i8, ptr %2, align 8, !tbaa !50
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %2, i64 noundef 40, ptr noundef nonnull @.str.13) ; 0 uses
  %.pre = load float, ptr %i.b, align 4, !tbaa !414
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi float [ %.pre, %bb.g ], [ %i.h, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 58
  store i16 133, ptr %i.m, align 2, !tbaa !434
  %i.n = fdiv float %i.l, 1.300000e+01
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !433
  %i.q = fadd float %i.n, %i.p
  store float %i.q, ptr %i.o, align 4, !tbaa !433
  %i.r = call noundef ptr @_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull @_ZL32proggy_clean_ttf_compressed_data, i32 poison, float noundef %i.l, ptr noundef nonnull %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret ptr %i.r
}

declare noundef i32 @_Z14ImFormatStringPcmPKcz(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull ptr @_Z45ImGui_GetDefaultCompressedFontDataProggyCleanPi(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0) local_unnamed_addr #22 {
bb.a:
  store i32 9583, ptr %0, align 4, !tbaa !258
  ret ptr @_ZL32proggy_clean_ttf_compressed_data
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef %1, i32 %2, float noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #10 align 2 {
bb.a:
  %6 = alloca %struct.ImFontConfig, align 8       ; 8 uses
  %7 = alloca %struct.ImFontConfig, align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 1
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %i.b) ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.d) ; 11 uses
  %i.f = load i32, ptr %1, align 1
  %.not.i = icmp eq i32 %i.f, 48215
  br i1 %.not.i, label %bb.b, label %_ZL14stb_decompressPhPKhj.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %8 = load i32, ptr %i.g, align 1
  %i.h = icmp eq i32 %8, 0
  br i1 %i.h, label %bb.c, label %_ZL14stb_decompressPhPKhj.exit

bb.c:                                             ; preds = %bb.b
  %9 = load i32, ptr %i.a, align 1
  %10 = tail call noundef i32 @llvm.bswap.i32(i32 %9)
  store ptr %1, ptr @_ZL17stb__barrier_in_b, align 8, !tbaa !411
  %11 = zext i32 %10 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %11 ; 12 uses
  store ptr %i.i, ptr @_ZL18stb__barrier_out_e, align 8, !tbaa !411
  store ptr %i.e, ptr @_ZL18stb__barrier_out_b, align 8, !tbaa !411
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.e, ptr @_ZL9stb__dout, align 8, !tbaa !411
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 9 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZL20stb_decompress_tokenPKh.exit.thread.i, %bb.c
  %.lcssa.sink.i.i62.i = phi ptr [ %i.e, %bb.c ], [ %.lcssa.sink.i.i63.i, %_ZL20stb_decompress_tokenPKh.exit.thread.i ] ; 102 uses
  %.034.i = phi ptr [ %i.j, %bb.c ], [ %.0.i42.i, %_ZL20stb_decompress_tokenPKh.exit.thread.i ] ; 33 uses
  %i.l = load i8, ptr %.034.i, align 1, !tbaa !50 ; 13 uses
  %i.m = zext i8 %i.l to i32                      ; 6 uses
  %i.n = icmp ugt i8 %i.l, 31
  br i1 %i.n, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i8 %i.l, 0
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.m, -127                   ; 4 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i62.i, i64 %i.q ; 2 uses
  %i.s = icmp ugt ptr %i.r, %i.i
  br i1 %i.s, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.034.i, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !50    ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %.lcssa.sink.i.i62.i, i64 %i.w ; 8 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1 ; 6 uses
  %i.z = icmp ult ptr %i.y, %i.e
  br i1 %i.z, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.aa = zext i8 %i.l to i64
  %i.ab = add nsw i64 %i.aa, -127                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ab, 4
  %diff.check = icmp ult i8 %i.u, 31
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check105 = icmp ult i64 %i.ab, 32
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.ab, 28
  %n.vec = and i64 %i.ab, 224                     ; 8 uses
  %i.ad = trunc nuw nsw i64 %n.vec to i32
  %i.ae = sub nsw i32 %i.p, %i.ad
  %i.af = getelementptr i8, ptr %i.y, i64 %n.vec
  %i.ag = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %n.vec ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 15
  %wide.load = load <16 x i8>, ptr %i.y, align 1, !tbaa !50
  %wide.load107 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !50
  %i.ai = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 16
  store <16 x i8> %wide.load, ptr %.lcssa.sink.i.i62.i, align 1, !tbaa !50
  store <16 x i8> %wide.load107, ptr %i.ai, align 1, !tbaa !50
  %i.aj = icmp eq i64 %n.vec, 32
  br i1 %i.aj, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.x, i64 31
  %next.gep106.1 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 32
  %i.ak = getelementptr i8, ptr %i.x, i64 47
  %wide.load.1 = load <16 x i8>, ptr %next.gep.1, align 1, !tbaa !50
  %wide.load107.1 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !50
  %i.al = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 48
  store <16 x i8> %wide.load.1, ptr %next.gep106.1, align 1, !tbaa !50
  store <16 x i8> %wide.load107.1, ptr %i.al, align 1, !tbaa !50
  %i.am = icmp eq i64 %n.vec, 64
  br i1 %i.am, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %i.x, i64 63
  %next.gep106.2 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 64
  %i.an = getelementptr i8, ptr %i.x, i64 79
  %wide.load.2 = load <16 x i8>, ptr %next.gep.2, align 1, !tbaa !50
  %wide.load107.2 = load <16 x i8>, ptr %i.an, align 1, !tbaa !50
  %i.ao = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 80
  store <16 x i8> %wide.load.2, ptr %next.gep106.2, align 1, !tbaa !50
  store <16 x i8> %wide.load107.2, ptr %i.ao, align 1, !tbaa !50
  %i.ap = icmp eq i64 %n.vec, 96
  br i1 %i.ap, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %i.x, i64 95
  %next.gep106.3 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 96
  %i.aq = getelementptr i8, ptr %i.x, i64 111
  %wide.load.3 = load <16 x i8>, ptr %next.gep.3, align 1, !tbaa !50
  %wide.load107.3 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !50
  %i.ar = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 112
  store <16 x i8> %wide.load.3, ptr %next.gep106.3, align 1, !tbaa !50
  store <16 x i8> %wide.load107.3, ptr %i.ar, align 1, !tbaa !50
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.preheader, label %vec.epilog.ph, !prof !435

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.ab, 252                  ; 5 uses
  %i.as = trunc nuw nsw i64 %n.vec110 to i32
  %i.at = sub nsw i32 %i.p, %i.as
  %i.au = getelementptr i8, ptr %i.y, i64 %n.vec110
  %i.av = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %n.vec110 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 3 uses
  %next.gep112.a = getelementptr i8, ptr %i.y, i64 %index111
  %next.gep113 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %index111
  %wide.load114 = load <4 x i8>, ptr %next.gep112.a, align 1, !tbaa !50
  store <4 x i8> %wide.load114, ptr %next.gep113, align 1, !tbaa !50
  %index.next115 = add nuw i64 %index111, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !675

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %i.ab, %n.vec110
  br i1 %cmp.n116, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi i32 [ %i.p, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ] ; 4 uses
  %.048.i.i.i.ph = phi ptr [ %i.y, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 2 uses
  %.ph = phi ptr [ %.lcssa.sink.i.i62.i, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 2 uses
  %i.ax = add nsw i32 %.09.i.i.i.ph, -1
  %xtraiter334 = and i32 %.09.i.i.i.ph, 7         ; 2 uses
  %lcmp.mod335.not = icmp eq i32 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol

.preheader.i.i.i.prol:                            ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i.prol
  %.09.i.i.i.prol = phi i32 [ %i.az, %.preheader.i.i.i.prol ], [ %.09.i.i.i.ph, %.preheader.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.ba, %.preheader.i.i.i.prol ], [ %.048.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 2 uses
  %i.ay = phi ptr [ %i.bc, %.preheader.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.preheader ] ; 2 uses
  %prol.iter336 = phi i32 [ %prol.iter336.next, %.preheader.i.i.i.prol ], [ 0, %.preheader.i.i.i.preheader ]
  %i.az = add nsw i32 %.09.i.i.i.prol, -1         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 1 ; 2 uses
  %i.bb = load i8, ptr %.048.i.i.i.prol, align 1, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !50
  %prol.iter336.next = add i32 %prol.iter336, 1   ; 2 uses
  %prol.iter336.cmp.not = icmp eq i32 %prol.iter336.next, %xtraiter334
  br i1 %prol.iter336.cmp.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol, !llvm.loop !676

.preheader.i.i.i.prol.loopexit:                   ; preds = %.preheader.i.i.i.prol, %.preheader.i.i.i.preheader
  %.lcssa317.unr = phi ptr [ poison, %.preheader.i.i.i.preheader ], [ %i.bc, %.preheader.i.i.i.prol ]
  %.09.i.i.i.unr = phi i32 [ %.09.i.i.i.ph, %.preheader.i.i.i.preheader ], [ %i.az, %.preheader.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %.048.i.i.i.ph, %.preheader.i.i.i.preheader ], [ %i.ba, %.preheader.i.i.i.prol ]
  %.unr337 = phi ptr [ %.ph, %.preheader.i.i.i.preheader ], [ %i.bc, %.preheader.i.i.i.prol ]
  %i.bd = icmp ult i32 %i.ax, 7
  br i1 %i.bd, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.ca, %.preheader.i.i.i ], [ %.09.i.i.i.unr, %.preheader.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.cb, %.preheader.i.i.i ], [ %.048.i.i.i.unr, %.preheader.i.i.i.prol.loopexit ] ; 9 uses
  %i.be = phi ptr [ %i.cd, %.preheader.i.i.i ], [ %.unr337, %.preheader.i.i.i.prol.loopexit ] ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 1
  %i.bg = load i8, ptr %.048.i.i.i, align 1, !tbaa !50
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 2
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 3
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !50
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 5
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 5
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !50
  %i.bu = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 6
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 7
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 7
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !50
  %i.ca = add nsw i32 %.09.i.i.i, -8              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.cc = load i8, ptr %i.bx, align 1, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !50
  %.not.i.i.i.7 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.7, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i.i.i, !llvm.loop !677
end_hunk_0
begin_hunk_1_@_Z34ImFontAtlasDebugLogTextureRequestsP11ImFontAtlas:bb.a
  %i.p = load i32, ptr %i.o, align 4, !tbaa !311
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !312
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.25, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r)
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr @GImGui, align 8, !tbaa !336 ; 2 uses
  %.not44 = icmp eq ptr %i.s, null
  br i1 %.not44, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 10404
  %i.u = load i32, ptr %i.t, align 4, !tbaa !337
  %i.v = and i32 %i.u, 256
  %.not45 = icmp eq i32 %i.v, 0
  br i1 %.not45, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.g, align 8, !tbaa !493
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !311
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !312
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !397
  %i.ad = tail call noundef i64 @_ZN5ImGui19DebugTextureIDToU64Ey(i64 noundef %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !398
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.26, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.aa, i64 noundef %i.ad, ptr noundef %i.af)
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.ag = load ptr, ptr @GImGui, align 8, !tbaa !336 ; 2 uses
  %.not41 = icmp eq ptr %i.ag, null
  br i1 %.not41, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 10404
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !337
  %i.aj = and i32 %i.ai, 256
  %.not42 = icmp eq i32 %i.aj, 0
  br i1 %.not42, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !493
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.am = load i32, ptr %i.al, align 8, !tbaa !752
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !397
  %i.ap = tail call noundef i64 @_ZN5ImGui19DebugTextureIDToU64Ey(i64 noundef %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !398
  %i.as = ptrtoint ptr %i.ar to i64
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.27, i32 noundef %i.ak, i32 noundef %i.am, i64 noundef %i.ap, i64 noundef %i.as)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.j, %.lr.ph, %bb.e, %bb.f, %bb.g, %bb.b, %bb.c, %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.03649, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef i64 @_ZN5ImGui19DebugTextureIDToU64Ey(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #29

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #29

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL33ImGui_ImplStbTrueType_FontSrcInitP11ImFontAtlasP12ImFontConfig(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #10 {
bb.a:
  %2 = alloca %struct.stbtt__buf, align 8         ; 28 uses
  %3 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 168) ; 31 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !354  ; 37 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.i = load i32, ptr %i.h, align 4, !tbaa !755  ; 3 uses
  %i.j = load i8, ptr %i.g, align 1, !tbaa !50
  switch i8 %i.j, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread [
    i8 49, label %bb.b
    i8 116, label %bb.e
    i8 79, label %bb.h
    i8 0, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !50
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !50
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !50
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.p, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !50
  switch i8 %i.u, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread [
    i8 121, label %bb.f
    i8 114, label %bb.n
    i8 116, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !50
  %i.x = icmp eq i8 %i.w, 112
  br i1 %i.x, label %bb.g, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !50
  %i.aa = icmp eq i8 %i.z, 49
  br i1 %i.aa, label %bb.p, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !50
  %i.ad = icmp eq i8 %i.ac, 84
  br i1 %i.ad, label %bb.i, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !50
  %i.ag = icmp eq i8 %i.af, 84
  br i1 %i.ag, label %bb.j, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !50
  %i.aj = icmp eq i8 %i.ai, 79
  br i1 %i.aj, label %bb.p, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.k:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !50
  %i.am = icmp eq i8 %i.al, 1
  br i1 %i.am, label %bb.l, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !50
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !50
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.p, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.n:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !50
  %i.av = icmp eq i8 %i.au, 117
  br i1 %i.av, label %bb.o, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !50
  %i.ay = icmp eq i8 %i.ax, 101
  br i1 %i.ay, label %bb.p, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.j, %bb.g, %bb.d
  %i.az = icmp ne i32 %i.i, 0
  %i.ba = sext i1 %i.az to i32
  br label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.q:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !50
  %i.bd = icmp eq i8 %i.bc, 99
  br i1 %i.bd, label %bb.r, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !50
  %i.bg = icmp eq i8 %i.bf, 102
  br i1 %i.bg, label %bb.s, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = tail call noundef i32 @llvm.bswap.i32(i32 %i.bi)
  switch i32 %i.bj, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread [
    i32 65536, label %bb.t
    i32 131072, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bl = load i32, ptr %i.bk, align 1
  %i.bm = tail call noundef i32 @llvm.bswap.i32(i32 %i.bl)
  %.not14.i.i = icmp slt i32 %i.i, %i.bm
  br i1 %.not14.i.i, label %bb.u, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.bo = shl nsw i32 %i.i, 2
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %i.br)
  br label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

_ZL27stbtt_GetFontOffsetForIndexPKhi.exit:        ; preds = %bb.p, %bb.u
  %.1.i.i = phi i32 [ %i.ba, %bb.p ], [ %i.bs, %bb.u ] ; 12 uses
  %i.bt = icmp slt i32 %.1.i.i, 0
  br i1 %i.bt, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread, label %bb.w

_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread: ; preds = %bb.o, %bb.n, %bb.g, %bb.f, %bb.a, %bb.c, %bb.d, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.b, %bb.e, %bb.q, %bb.r, %bb.s, %bb.t, %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit, label %bb.v

bb.v:                                             ; preds = %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.e)
  br label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit

_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit: ; preds = %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit.thread, %bb.v
  %i.bu = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.33) ; 0 uses
  br label %bb.ej

bb.w:                                             ; preds = %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.bv, align 8, !tbaa !497
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %.1.i.i, ptr %i.bw, align 8, !tbaa !756
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.by = zext nneg i32 %.1.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  %.val.i.i.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %i.cb = getelementptr i8, ptr %i.bz, i64 5      ; 9 uses
  %.val25.i.i.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.cc = zext i8 %.val.i.i.i to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = zext i8 %.val25.i.i.i to i32
  %i.cf = or disjoint i32 %i.cd, %i.ce            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit147.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w
  %i.cg = add nuw i32 %.1.i.i, 12
  %i.ch = zext i32 %i.cg to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.cf to i64 ; 2 uses
  %invariant.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ch ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ac ] ; 2 uses
  %i.ci = shl nuw nsw i64 %indvars.iv.i.i.i, 4
  %gep.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 %i.ci ; 5 uses
  %i.cj = load i8, ptr %gep.i.i.i, align 1, !tbaa !50
  %i.ck = icmp eq i8 %i.cj, 99
  br i1 %i.ck, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %gep.i.i.i, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !50
  %i.cn = icmp eq i8 %i.cm, 109
  br i1 %i.cn, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %gep.i.i.i, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !50
  %i.cq = icmp eq i8 %i.cp, 97
  br i1 %i.cq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %gep.i.i.i, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !50
  %i.ct = icmp eq i8 %i.cs, 112
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %gep.i.i.i, i64 8
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = tail call noundef i32 @llvm.bswap.i32(i32 %i.cv)
  br label %.lr.ph.i139.i.i

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i139.i.i, label %bb.x, !llvm.loop !753

.lr.ph.i139.i.i:                                  ; preds = %bb.ac, %bb.ab
  %.2.i.i.i = phi i32 [ %i.cw, %bb.ab ], [ 0, %bb.ac ] ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ai, %.lr.ph.i139.i.i
  %indvars.iv.i142.i.i = phi i64 [ 0, %.lr.ph.i139.i.i ], [ %indvars.iv.next.i144.i.i, %bb.ai ] ; 2 uses
  %i.cx = shl nuw nsw i64 %indvars.iv.i142.i.i, 4
  %gep.i143.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 %i.cx ; 5 uses
  %i.cy = load i8, ptr %gep.i143.i.i, align 1, !tbaa !50
  %i.cz = icmp eq i8 %i.cy, 108
  br i1 %i.cz, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %gep.i143.i.i, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !50
  %i.dc = icmp eq i8 %i.db, 111
  br i1 %i.dc, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %gep.i143.i.i, i64 2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !50
  %i.df = icmp eq i8 %i.de, 99
  br i1 %i.df, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %gep.i143.i.i, i64 3
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !50
  %i.di = icmp eq i8 %i.dh, 97
  br i1 %i.di, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %gep.i143.i.i, i64 8
  %i.dk = load i32, ptr %i.dj, align 1
  %i.dl = tail call noundef i32 @llvm.bswap.i32(i32 %i.dk)
  br label %_ZL17stbtt__find_tablePhjPKc.exit147.i.i

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %indvars.iv.next.i144.i.i = add nuw nsw i64 %indvars.iv.i142.i.i, 1 ; 2 uses
  %exitcond.not.i145.i.i = icmp eq i64 %indvars.iv.next.i144.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i145.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit147.i.i, label %bb.ad, !llvm.loop !753

_ZL17stbtt__find_tablePhjPKc.exit147.i.i:         ; preds = %bb.ai, %bb.ah, %bb.w
  %.2.i356.i.i = phi i32 [ %.2.i.i.i, %bb.ah ], [ 0, %bb.w ], [ %.2.i.i.i, %bb.ai ] ; 4 uses
  %.2.i146.i.i = phi i32 [ %i.dl, %bb.ah ], [ 0, %bb.w ], [ 0, %bb.ai ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %.2.i146.i.i, ptr %i.dm, align 8, !tbaa !498
  %.val.i148.i.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %.val25.i149.i.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.dn = zext i8 %.val.i148.i.i to i32
  %i.do = shl nuw nsw i32 %i.dn, 8
  %i.dp = zext i8 %.val25.i149.i.i to i32
  %i.dq = or disjoint i32 %i.do, %i.dp            ; 2 uses
  %.not.i150.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i150.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit159.i.i, label %.lr.ph.i151.i.i

.lr.ph.i151.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit147.i.i
  %i.dr = add nuw i32 %.1.i.i, 12
  %i.ds = zext i32 %i.dr to i64
  %wide.trip.count.i152.i.i = zext nneg i32 %i.dq to i64
  %invariant.gep.i153.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ds
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ao, %.lr.ph.i151.i.i
  %indvars.iv.i154.i.i = phi i64 [ 0, %.lr.ph.i151.i.i ], [ %indvars.iv.next.i156.i.i, %bb.ao ] ; 2 uses
  %i.dt = shl nuw nsw i64 %indvars.iv.i154.i.i, 4
  %gep.i155.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i153.i.i, i64 %i.dt ; 5 uses
  %i.du = load i8, ptr %gep.i155.i.i, align 1, !tbaa !50
  %i.dv = icmp eq i8 %i.du, 104
  br i1 %i.dv, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.dw = getelementptr inbounds nuw i8, ptr %gep.i155.i.i, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !50
  %i.dy = icmp eq i8 %i.dx, 101
  br i1 %i.dy, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %gep.i155.i.i, i64 2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !50
  %i.eb = icmp eq i8 %i.ea, 97
  br i1 %i.eb, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw i8, ptr %gep.i155.i.i, i64 3
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !50
  %i.ee = icmp eq i8 %i.ed, 100
  br i1 %i.ee, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %gep.i155.i.i, i64 8
  %i.eg = load i32, ptr %i.ef, align 1
  %i.eh = tail call noundef i32 @llvm.bswap.i32(i32 %i.eg)
  br label %_ZL17stbtt__find_tablePhjPKc.exit159.i.i

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %indvars.iv.next.i156.i.i = add nuw nsw i64 %indvars.iv.i154.i.i, 1 ; 2 uses
  %exitcond.not.i157.i.i = icmp eq i64 %indvars.iv.next.i156.i.i, %wide.trip.count.i152.i.i
  br i1 %exitcond.not.i157.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit159.i.i, label %bb.aj, !llvm.loop !753

_ZL17stbtt__find_tablePhjPKc.exit159.i.i:         ; preds = %bb.ao, %bb.an, %_ZL17stbtt__find_tablePhjPKc.exit147.i.i
  %i.ei = phi i32 [ %i.eh, %bb.an ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit147.i.i ], [ 0, %bb.ao ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !757
  %.val.i160.i.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %.val25.i161.i.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.ek = zext i8 %.val.i160.i.i to i32
  %i.el = shl nuw nsw i32 %i.ek, 8
  %i.em = zext i8 %.val25.i161.i.i to i32
  %i.en = or disjoint i32 %i.el, %i.em            ; 2 uses
  %.not.i162.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i162.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit171.i.i, label %.lr.ph.i163.i.i

.lr.ph.i163.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit159.i.i
  %i.eo = add nuw i32 %.1.i.i, 12
  %i.ep = zext i32 %i.eo to i64
  %wide.trip.count.i164.i.i = zext nneg i32 %i.en to i64
  %invariant.gep.i165.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ep
  br label %bb.ap

bb.ap:                                            ; preds = %bb.au, %.lr.ph.i163.i.i
  %indvars.iv.i166.i.i = phi i64 [ 0, %.lr.ph.i163.i.i ], [ %indvars.iv.next.i168.i.i, %bb.au ] ; 2 uses
  %i.eq = shl nuw nsw i64 %indvars.iv.i166.i.i, 4
  %gep.i167.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i165.i.i, i64 %i.eq ; 5 uses
  %i.er = load i8, ptr %gep.i167.i.i, align 1, !tbaa !50
  %i.es = icmp eq i8 %i.er, 103
  br i1 %i.es, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.et = getelementptr inbounds nuw i8, ptr %gep.i167.i.i, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !50
  %i.ev = icmp eq i8 %i.eu, 108
  br i1 %i.ev, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ew = getelementptr inbounds nuw i8, ptr %gep.i167.i.i, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !50
  %i.ey = icmp eq i8 %i.ex, 121
  br i1 %i.ey, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ez = getelementptr inbounds nuw i8, ptr %gep.i167.i.i, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !50
  %i.fb = icmp eq i8 %i.fa, 102
  br i1 %i.fb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %gep.i167.i.i, i64 8
  %i.fd = load i32, ptr %i.fc, align 1
  %i.fe = tail call noundef i32 @llvm.bswap.i32(i32 %i.fd)
  br label %_ZL17stbtt__find_tablePhjPKc.exit171.i.i

bb.au:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %indvars.iv.next.i168.i.i = add nuw nsw i64 %indvars.iv.i166.i.i, 1 ; 2 uses
  %exitcond.not.i169.i.i = icmp eq i64 %indvars.iv.next.i168.i.i, %wide.trip.count.i164.i.i
  br i1 %exitcond.not.i169.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit171.i.i, label %bb.ap, !llvm.loop !753

_ZL17stbtt__find_tablePhjPKc.exit171.i.i:         ; preds = %bb.au, %bb.at, %_ZL17stbtt__find_tablePhjPKc.exit159.i.i
  %.2.i170.i.i = phi i32 [ %i.fe, %bb.at ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit159.i.i ], [ 0, %bb.au ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.2.i170.i.i, ptr %i.ff, align 8, !tbaa !499
  %.val.i172.i.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %.val25.i173.i.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.fg = zext i8 %.val.i172.i.i to i32
  %i.fh = shl nuw nsw i32 %i.fg, 8
  %i.fi = zext i8 %.val25.i173.i.i to i32
  %i.fj = or disjoint i32 %i.fh, %i.fi            ; 2 uses
  %.not.i174.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i174.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit183.i.i, label %.lr.ph.i175.i.i

.lr.ph.i175.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit171.i.i
  %i.fk = add nuw i32 %.1.i.i, 12
  %i.fl = zext i32 %i.fk to i64
  %wide.trip.count.i176.i.i = zext nneg i32 %i.fj to i64
  %invariant.gep.i177.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fl
  br label %bb.av

bb.av:                                            ; preds = %bb.ba, %.lr.ph.i175.i.i
  %indvars.iv.i178.i.i = phi i64 [ 0, %.lr.ph.i175.i.i ], [ %indvars.iv.next.i180.i.i, %bb.ba ] ; 2 uses
  %i.fm = shl nuw nsw i64 %indvars.iv.i178.i.i, 4
  %gep.i179.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i177.i.i, i64 %i.fm ; 5 uses
  %i.fn = load i8, ptr %gep.i179.i.i, align 1, !tbaa !50
  %i.fo = icmp eq i8 %i.fn, 104
  br i1 %i.fo, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.fp = getelementptr inbounds nuw i8, ptr %gep.i179.i.i, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !50
  %i.fr = icmp eq i8 %i.fq, 104
  br i1 %i.fr, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.fs = getelementptr inbounds nuw i8, ptr %gep.i179.i.i, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !50
  %i.fu = icmp eq i8 %i.ft, 101
  br i1 %i.fu, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr inbounds nuw i8, ptr %gep.i179.i.i, i64 3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !50
  %i.fx = icmp eq i8 %i.fw, 97
  br i1 %i.fx, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fy = getelementptr inbounds nuw i8, ptr %gep.i179.i.i, i64 8
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = tail call noundef i32 @llvm.bswap.i32(i32 %i.fz)
  br label %_ZL17stbtt__find_tablePhjPKc.exit183.i.i

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %indvars.iv.next.i180.i.i = add nuw nsw i64 %indvars.iv.i178.i.i, 1 ; 2 uses
  %exitcond.not.i181.i.i = icmp eq i64 %indvars.iv.next.i180.i.i, %wide.trip.count.i176.i.i
  br i1 %exitcond.not.i181.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit183.i.i, label %bb.av, !llvm.loop !753

_ZL17stbtt__find_tablePhjPKc.exit183.i.i:         ; preds = %bb.ba, %bb.az, %_ZL17stbtt__find_tablePhjPKc.exit171.i.i
  %.val29 = phi i32 [ %i.ga, %bb.az ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit171.i.i ], [ 0, %bb.ba ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %.val29, ptr %i.gb, align 4, !tbaa !500
  %.val.i184.i.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %.val25.i185.i.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.gc = zext i8 %.val.i184.i.i to i32
  %i.gd = shl nuw nsw i32 %i.gc, 8
  %i.ge = zext i8 %.val25.i185.i.i to i32
  %i.gf = or disjoint i32 %i.gd, %i.ge            ; 2 uses
  %.not.i186.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not.i186.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit195.i.i, label %.lr.ph.i187.i.i

.lr.ph.i187.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit183.i.i
  %i.gg = add nuw i32 %.1.i.i, 12
  %i.gh = zext i32 %i.gg to i64
  %wide.trip.count.i188.i.i = zext nneg i32 %i.gf to i64
  %invariant.gep.i189.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.gh
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bg, %.lr.ph.i187.i.i
  %indvars.iv.i190.i.i = phi i64 [ 0, %.lr.ph.i187.i.i ], [ %indvars.iv.next.i192.i.i, %bb.bg ] ; 2 uses
  %i.gi = shl nuw nsw i64 %indvars.iv.i190.i.i, 4
  %gep.i191.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i189.i.i, i64 %i.gi ; 5 uses
  %i.gj = load i8, ptr %gep.i191.i.i, align 1, !tbaa !50
  %i.gk = icmp eq i8 %i.gj, 104
  br i1 %i.gk, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.gl = getelementptr inbounds nuw i8, ptr %gep.i191.i.i, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !50
  %i.gn = icmp eq i8 %i.gm, 109
  br i1 %i.gn, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.go = getelementptr inbounds nuw i8, ptr %gep.i191.i.i, i64 2
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !50
  %i.gq = icmp eq i8 %i.gp, 116
  br i1 %i.gq, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.gr = getelementptr inbounds nuw i8, ptr %gep.i191.i.i, i64 3
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !50
  %i.gt = icmp eq i8 %i.gs, 120
  br i1 %i.gt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gu = getelementptr inbounds nuw i8, ptr %gep.i191.i.i, i64 8
  %i.gv = load i32, ptr %i.gu, align 1
  %i.gw = tail call noundef i32 @llvm.bswap.i32(i32 %i.gv)
  br label %_ZL17stbtt__find_tablePhjPKc.exit195.i.i

bb.bg:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %indvars.iv.next.i192.i.i = add nuw nsw i64 %indvars.iv.i190.i.i, 1 ; 2 uses
  %exitcond.not.i193.i.i = icmp eq i64 %indvars.iv.next.i192.i.i, %wide.trip.count.i188.i.i
  br i1 %exitcond.not.i193.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit195.i.i, label %bb.bb, !llvm.loop !753

_ZL17stbtt__find_tablePhjPKc.exit195.i.i:         ; preds = %bb.bg, %bb.bf, %_ZL17stbtt__find_tablePhjPKc.exit183.i.i
  %.2.i194.i.i = phi i32 [ %i.gw, %bb.bf ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit183.i.i ], [ 0, %bb.bg ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 %.2.i194.i.i, ptr %i.gx, align 8, !tbaa !501
  %.val.i196.i.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %.val25.i197.i.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.gy = zext i8 %.val.i196.i.i to i32
  %i.gz = shl nuw nsw i32 %i.gy, 8
  %i.ha = zext i8 %.val25.i197.i.i to i32
  %i.hb = or disjoint i32 %i.gz, %i.ha            ; 2 uses
  %.not.i198.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i198.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit207.i.i, label %.lr.ph.i199.i.i

.lr.ph.i199.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit195.i.i
  %i.hc = add nuw i32 %.1.i.i, 12
  %i.hd = zext i32 %i.hc to i64
  %wide.trip.count.i200.i.i = zext nneg i32 %i.hb to i64
  %invariant.gep.i201.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hd
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bm, %.lr.ph.i199.i.i
  %indvars.iv.i202.i.i = phi i64 [ 0, %.lr.ph.i199.i.i ], [ %indvars.iv.next.i204.i.i, %bb.bm ] ; 2 uses
  %i.he = shl nuw nsw i64 %indvars.iv.i202.i.i, 4
  %gep.i203.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i201.i.i, i64 %i.he ; 5 uses
  %i.hf = load i8, ptr %gep.i203.i.i, align 1, !tbaa !50
  %i.hg = icmp eq i8 %i.hf, 107
  br i1 %i.hg, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.hh = getelementptr inbounds nuw i8, ptr %gep.i203.i.i, i64 1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !50
  %i.hj = icmp eq i8 %i.hi, 101
  br i1 %i.hj, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.hk = getelementptr inbounds nuw i8, ptr %gep.i203.i.i, i64 2
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !50
  %i.hm = icmp eq i8 %i.hl, 114
  br i1 %i.hm, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.hn = getelementptr inbounds nuw i8, ptr %gep.i203.i.i, i64 3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !50
  %i.hp = icmp eq i8 %i.ho, 110
  br i1 %i.hp, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hq = getelementptr inbounds nuw i8, ptr %gep.i203.i.i, i64 8
  %i.hr = load i32, ptr %i.hq, align 1
  %i.hs = tail call noundef i32 @llvm.bswap.i32(i32 %i.hr)
  br label %_ZL17stbtt__find_tablePhjPKc.exit207.i.i

bb.bm:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %indvars.iv.next.i204.i.i = add nuw nsw i64 %indvars.iv.i202.i.i, 1 ; 2 uses
  %exitcond.not.i205.i.i = icmp eq i64 %indvars.iv.next.i204.i.i, %wide.trip.count.i200.i.i
  br i1 %exitcond.not.i205.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit207.i.i, label %bb.bh, !llvm.loop !753

_ZL17stbtt__find_tablePhjPKc.exit207.i.i:         ; preds = %bb.bm, %bb.bl, %_ZL17stbtt__find_tablePhjPKc.exit195.i.i
  %.2.i206.i.i = phi i32 [ %i.hs, %bb.bl ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit195.i.i ], [ 0, %bb.bm ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 %.2.i206.i.i, ptr %i.ht, align 4, !tbaa !758
  %.val.i208.i.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %.val25.i209.i.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.hu = zext i8 %.val.i208.i.i to i32
  %i.hv = shl nuw nsw i32 %i.hu, 8
  %i.hw = zext i8 %.val25.i209.i.i to i32
  %i.hx = or disjoint i32 %i.hv, %i.hw            ; 2 uses
  %.not.i210.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not.i210.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit219.i.i, label %.lr.ph.i211.i.i

.lr.ph.i211.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit207.i.i
  %i.hy = add nuw i32 %.1.i.i, 12
  %i.hz = zext i32 %i.hy to i64
  %wide.trip.count.i212.i.i = zext nneg i32 %i.hx to i64
  %invariant.gep.i213.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hz
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bs, %.lr.ph.i211.i.i
  %indvars.iv.i214.i.i = phi i64 [ 0, %.lr.ph.i211.i.i ], [ %indvars.iv.next.i216.i.i, %bb.bs ] ; 2 uses
  %i.ia = shl nuw nsw i64 %indvars.iv.i214.i.i, 4
  %gep.i215.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i213.i.i, i64 %i.ia ; 5 uses
  %i.ib = load i8, ptr %gep.i215.i.i, align 1, !tbaa !50
  %i.ic = icmp eq i8 %i.ib, 71
  br i1 %i.ic, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.id = getelementptr inbounds nuw i8, ptr %gep.i215.i.i, i64 1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !50
  %i.if = icmp eq i8 %i.ie, 80
  br i1 %i.if, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.ig = getelementptr inbounds nuw i8, ptr %gep.i215.i.i, i64 2
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !50
  %i.ii = icmp eq i8 %i.ih, 79
  br i1 %i.ii, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ij = getelementptr inbounds nuw i8, ptr %gep.i215.i.i, i64 3
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !50
  %i.il = icmp eq i8 %i.ik, 83
  br i1 %i.il, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.im = getelementptr inbounds nuw i8, ptr %gep.i215.i.i, i64 8
  %i.in = load i32, ptr %i.im, align 1
  %i.io = tail call noundef i32 @llvm.bswap.i32(i32 %i.in)
  br label %_ZL17stbtt__find_tablePhjPKc.exit219.i.i

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %indvars.iv.next.i216.i.i = add nuw nsw i64 %indvars.iv.i214.i.i, 1 ; 2 uses
  %exitcond.not.i217.i.i = icmp eq i64 %indvars.iv.next.i216.i.i, %wide.trip.count.i212.i.i
  br i1 %exitcond.not.i217.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit219.i.i, label %bb.bn, !llvm.loop !753

_ZL17stbtt__find_tablePhjPKc.exit219.i.i:         ; preds = %bb.bs, %bb.br, %_ZL17stbtt__find_tablePhjPKc.exit207.i.i
  %.2.i218.i.i = phi i32 [ %i.io, %bb.br ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit207.i.i ], [ 0, %bb.bs ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 %.2.i218.i.i, ptr %i.ip, align 8, !tbaa !759
  %.not.i.i = icmp eq i32 %.2.i356.i.i, 0
  %.not116.i.i = icmp eq i32 %i.ei, 0
  %or.cond385.i.i = or i1 %.not.i.i, %.not116.i.i
  %.not117.i.i = icmp eq i32 %.val29, 0
  %or.cond386.i.i = or i1 %or.cond385.i.i, %.not117.i.i
  %.not118.i.i = icmp eq i32 %.2.i194.i.i, 0
  %or.cond387.i.i = or i1 %or.cond386.i.i, %.not118.i.i
  br i1 %or.cond387.i.i, label %.thread, label %bb.bt

bb.bt:                                            ; preds = %_ZL17stbtt__find_tablePhjPKc.exit219.i.i
  %.not119.i.i = icmp eq i32 %.2.i170.i.i, 0
  br i1 %.not119.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not124.i.i = icmp eq i32 %.2.i146.i.i, 0
  br i1 %.not124.i.i, label %.thread, label %bb.dr

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i32 2, ptr %i.a, align 4, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i32 0, ptr %i.b, align 4, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  store i32 0, ptr %i.c, align 4, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  store i32 0, ptr %i.d, align 4, !tbaa !258
  %.val.i220.i.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %.val25.i221.i.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.iq = zext i8 %.val.i220.i.i to i32
  %i.ir = shl nuw nsw i32 %i.iq, 8
  %i.is = zext i8 %.val25.i221.i.i to i32
  %i.it = or disjoint i32 %i.ir, %i.is            ; 2 uses
  %.not.i222.i.i = icmp eq i32 %i.it, 0
  br i1 %.not.i222.i.i, label %.critedge.i.i, label %.lr.ph.i223.i.i

.lr.ph.i223.i.i:                                  ; preds = %bb.bv
  %i.iu = add nuw i32 %.1.i.i, 12
  %i.iv = zext i32 %i.iu to i64
  %wide.trip.count.i224.i.i = zext nneg i32 %i.it to i64
  %invariant.gep.i225.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.iv
  br label %bb.bw

bb.bw:                                            ; preds = %bb.ca, %.lr.ph.i223.i.i
  %indvars.iv.i226.i.i = phi i64 [ 0, %.lr.ph.i223.i.i ], [ %indvars.iv.next.i228.i.i, %bb.ca ] ; 2 uses
  %i.iw = shl nuw nsw i64 %indvars.iv.i226.i.i, 4
  %gep.i227.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i225.i.i, i64 %i.iw ; 5 uses
  %i.ix = load i8, ptr %gep.i227.i.i, align 1, !tbaa !50
  %i.iy = icmp eq i8 %i.ix, 67
  br i1 %i.iy, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.iz = getelementptr inbounds nuw i8, ptr %gep.i227.i.i, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !50
  %i.jb = icmp eq i8 %i.ja, 70
  br i1 %i.jb, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.jc = getelementptr inbounds nuw i8, ptr %gep.i227.i.i, i64 2
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !50
  %i.je = icmp eq i8 %i.jd, 70
  br i1 %i.je, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jf = getelementptr inbounds nuw i8, ptr %gep.i227.i.i, i64 3
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !50
  %i.jh = icmp eq i8 %i.jg, 32
  br i1 %i.jh, label %_ZL17stbtt__find_tablePhjPKc.exit231.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw
  %indvars.iv.next.i228.i.i = add nuw nsw i64 %indvars.iv.i226.i.i, 1 ; 2 uses
  %exitcond.not.i229.i.i = icmp eq i64 %indvars.iv.next.i228.i.i, %wide.trip.count.i224.i.i
  br i1 %exitcond.not.i229.i.i, label %.critedge.i.i, label %bb.bw, !llvm.loop !753

_ZL17stbtt__find_tablePhjPKc.exit231.i.i:         ; preds = %bb.bz
  %i.ji = getelementptr inbounds nuw i8, ptr %gep.i227.i.i, i64 8
  %i.jj = load i32, ptr %i.ji, align 1            ; 2 uses
  %.not120.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not120.i.i, label %.critedge.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZL17stbtt__find_tablePhjPKc.exit231.i.i
  %i.jk = tail call noundef i32 @llvm.bswap.i32(i32 %i.jj)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.jm = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.jn = zext i32 %i.jk to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.jn
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jl, i8 0, i64 32, i1 false)
  store ptr %i.jo, ptr %i.bx, align 8, !tbaa !411
  store i64 2305843009213693952, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !tbaa !258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !502
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 17 uses
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !503 ; 2 uses
  %i.jr = add nsw i32 %i.jq, 2
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !504 ; 48 uses
  %i.ju = icmp slt i32 %i.jq, -2
  %i.jv = tail call i32 @llvm.smin.i32(i32 %i.jr, i32 %i.jt)
  %..i.i.i.i = select i1 %i.ju, i32 %i.jt, i32 %i.jv ; 2 uses
  %.not.i232.i.i = icmp slt i32 %..i.i.i.i, %i.jt
  br i1 %.not.i232.i.i, label %bb.cc, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.jw = load ptr, ptr %2, align 8, !tbaa !505
  %i.jx = sext i32 %..i.i.i.i to i64
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !50
  %i.ka = zext i8 %i.jz to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i:       ; preds = %bb.cc, %bb.cb
  %.0.i.i.i = phi i32 [ %i.ka, %bb.cc ], [ 0, %bb.cb ] ; 2 uses
  %i.kb = tail call i32 @llvm.smin.i32(i32 %.0.i.i.i, i32 %i.jt) ; 4 uses
  store i32 %i.kb, ptr %i.jp, align 8, !tbaa !503
  %.not.i.i.i.i.i = icmp slt i32 %.0.i.i.i, %i.jt
  br i1 %.not.i.i.i.i.i, label %bb.cd, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i

bb.cd:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %i.kc = load ptr, ptr %2, align 8, !tbaa !505
  %i.kd = add nsw i32 %i.kb, 1                    ; 2 uses
  store i32 %i.kd, ptr %i.jp, align 8, !tbaa !503
  %i.ke = sext i32 %i.kb to i64
  %i.kf = getelementptr inbounds i8, ptr %i.kc, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !50
  %i.kh = zext i8 %i.kg to i32
  %i.ki = shl nuw nsw i32 %i.kh, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i:   ; preds = %bb.cd, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %i.kj = phi i32 [ %i.kd, %bb.cd ], [ %i.kb, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 4 uses
  %.0.i.i.i.i.i = phi i32 [ %i.ki, %bb.cd ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 2 uses
  %.not.i.i.1.i.i.i = icmp slt i32 %i.kj, %i.jt
  br i1 %.not.i.i.1.i.i.i, label %bb.ce, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i

bb.ce:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i
  %i.kk = load ptr, ptr %2, align 8, !tbaa !505
  %i.kl = add nsw i32 %i.kj, 1                    ; 2 uses
  store i32 %i.kl, ptr %i.jp, align 8, !tbaa !503
  %i.km = sext i32 %i.kj to i64
  %i.kn = getelementptr inbounds i8, ptr %i.kk, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !50
  %i.kp = zext i8 %i.ko to i32
  %i.kq = or disjoint i32 %.0.i.i.i.i.i, %i.kp
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i: ; preds = %bb.ce, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i
  %i.kr = phi i32 [ %i.kl, %bb.ce ], [ %i.kj, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i ] ; 5 uses
  %.0.i.i.1.i.i.i = phi i32 [ %i.kq, %bb.ce ], [ %.0.i.i.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i ] ; 2 uses
  %.not.i233.i.i = icmp eq i32 %.0.i.i.1.i.i.i, 0
  br i1 %.not.i233.i.i, label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i
  %.not.i.i.i.i = icmp slt i32 %i.kr, %i.jt
  br i1 %.not.i.i.i.i, label %bb.cg, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.ks = load ptr, ptr %2, align 8, !tbaa !505
  %i.kt = add nsw i32 %i.kr, 1
  %i.ku = sext i32 %i.kr to i64
  %i.kv = getelementptr inbounds i8, ptr %i.ks, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !50
  %i.kx = zext i8 %i.kw to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i:     ; preds = %bb.cg, %bb.cf
  %.promoted.i.i = phi i32 [ %i.kt, %bb.cg ], [ %i.kr, %bb.cf ]
  %.0.i.i.i.i = phi i32 [ %i.kx, %bb.cg ], [ 0, %bb.cf ] ; 6 uses
  %i.ky = mul nuw nsw i32 %.0.i.i.i.i, %.0.i.i.1.i.i.i
  %i.kz = add nsw i32 %i.ky, %.promoted.i.i       ; 2 uses
  %i.la = icmp slt i32 %i.kz, 0
  %i.lb = tail call i32 @llvm.smin.i32(i32 %i.kz, i32 %i.jt)
  %..i.i.i.i.i = select i1 %i.la, i32 %i.jt, i32 %i.lb ; 3 uses
  %.not.i13.i.i.i = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %.not.i13.i.i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %i.lc = load ptr, ptr %2, align 8               ; 3 uses
  %xtraiter = and i32 %.0.i.i.i.i, 1
  %i.ld = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ld, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.i.new

.lr.ph.i.i.preheader.i.i.new:                     ; preds = %.lr.ph.i.i.preheader.i.i
  %unroll_iter = and i32 %.0.i.i.i.i, 254
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1, %.lr.ph.i.i.preheader.i.i.new
  %i.le = phi i32 [ %..i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.new ], [ %i.lu, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1 ] ; 4 uses
  %.056.i16.i.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i.new ], [ %.0.i.i19.i.i.i.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i.new ], [ %niter.next.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1 ]
  %i.lf = shl i32 %.056.i16.i.i.i, 8              ; 2 uses
  %.not.i.i17.i.i.i = icmp slt i32 %i.le, %i.jt
  br i1 %.not.i.i17.i.i.i, label %bb.ch, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i
  %i.lg = add nsw i32 %i.le, 1
  %i.lh = sext i32 %i.le to i64
  %i.li = getelementptr inbounds i8, ptr %i.lc, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !50
  %i.lk = zext i8 %i.lj to i32
  %i.ll = or disjoint i32 %i.lf, %i.lk
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i: ; preds = %bb.ch, %.lr.ph.i.i.i.i
  %i.lm = phi i32 [ %i.lg, %bb.ch ], [ %i.le, %.lr.ph.i.i.i.i ] ; 4 uses
  %.0.i.i19.i.i.i = phi i32 [ %i.ll, %bb.ch ], [ %i.lf, %.lr.ph.i.i.i.i ]
  %i.ln = shl i32 %.0.i.i19.i.i.i, 8              ; 2 uses
  %.not.i.i17.i.i.i.1 = icmp slt i32 %i.lm, %i.jt
  br i1 %.not.i.i17.i.i.i.1, label %bb.ci, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1

bb.ci:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i
  %i.lo = add nsw i32 %i.lm, 1
  %i.lp = sext i32 %i.lm to i64
  %i.lq = getelementptr inbounds i8, ptr %i.lc, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !50
  %i.ls = zext i8 %i.lr to i32
  %i.lt = or disjoint i32 %i.ln, %i.ls
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1: ; preds = %bb.ci, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i
  %i.lu = phi i32 [ %i.lo, %bb.ci ], [ %i.lm, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i ] ; 3 uses
  %.0.i.i19.i.i.i.1 = phi i32 [ %i.lt, %bb.ci ], [ %i.ln, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.preheader.i.i
  %.epil.init = phi i32 [ %..i.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.lu, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i ], [ %.0.i.i19.i.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod172 = trunc i32 %.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.lv = shl i32 %.056.i16.i.i.i.epil.init, 8    ; 2 uses
  %.not.i.i17.i.i.i.epil = icmp slt i32 %.epil.init, %i.jt
  br i1 %.not.i.i17.i.i.i.epil, label %bb.cj, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.epil.preheader
  %i.lw = add nsw i32 %.epil.init, 1
  %i.lx = sext i32 %.epil.init to i64
  %i.ly = getelementptr inbounds i8, ptr %i.lc, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !50
  %i.ma = zext i8 %i.lz to i32
  %i.mb = or disjoint i32 %i.lv, %i.ma
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %bb.cj, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa
  %.lcssa160 = phi i32 [ %i.lu, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa ], [ %i.lw, %bb.cj ], [ %.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %.0.i.i19.i.i.i.lcssa = phi i32 [ %.0.i.i19.i.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa ], [ %i.mb, %bb.cj ], [ %i.lv, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.mc = add i32 %.0.i.i19.i.i.i.lcssa, -1
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i.i.i:   ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %i.md = phi i32 [ %..i.i.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ], [ %.lcssa160, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i ]
  %.05.lcssa.i.i.i.i = phi i32 [ -1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ], [ %i.mc, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i ]
  %i.me = add nsw i32 %.05.lcssa.i.i.i.i, %i.md   ; 2 uses
  %i.mf = icmp slt i32 %i.me, 0
  %i.mg = tail call i32 @llvm.smin.i32(i32 %i.me, i32 %i.jt)
  %..i.i22.i.i.i = select i1 %i.mf, i32 %i.jt, i32 %i.mg ; 2 uses
  store i32 %..i.i22.i.i.i, ptr %i.jp, align 8, !tbaa !503
  br label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i

_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i:  ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i
  %i.mh = phi i32 [ %..i.i22.i.i.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i.i.i ], [ %i.kr, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i ] ; 7 uses
  %.not.i.i.i234.i.i = icmp slt i32 %i.mh, %i.jt
  br i1 %.not.i.i.i234.i.i, label %bb.ck, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i235.i.i

bb.ck:                                            ; preds = %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i
  %i.mi = load ptr, ptr %2, align 8, !tbaa !505
  %i.mj = add nsw i32 %i.mh, 1                    ; 2 uses
  store i32 %i.mj, ptr %i.jp, align 8, !tbaa !503
  %i.mk = sext i32 %i.mh to i64
  %i.ml = getelementptr inbounds i8, ptr %i.mi, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !50
  %i.mn = zext i8 %i.mm to i32
  %i.mo = shl nuw nsw i32 %i.mn, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i235.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i235.i.i: ; preds = %bb.ck, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i
  %i.mp = phi i32 [ %i.mj, %bb.ck ], [ %i.mh, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZL33ImGui_ImplStbTrueType_FontSrcInitP11ImFontAtlasP12ImFontConfig:bb.a

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i325.i.i.1: ; preds = %bb.dm, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i325.i.i
  %i.vn = phi i32 [ %i.vh, %bb.dm ], [ %i.vf, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i325.i.i ] ; 3 uses
  %.0.i.i19.i326.i.i.1 = phi i32 [ %i.vm, %bb.dm ], [ %i.vg, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i325.i.i ] ; 3 uses
  %niter216.next.1 = add nuw nsw i32 %niter216, 2 ; 2 uses
  %niter216.ncmp.1 = icmp eq i32 %niter216.next.1, %unroll_iter215
  br i1 %niter216.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i.unr-lcssa, label %.lr.ph.i.i321.i.i, !llvm.loop !19

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i325.i.i.1
  %lcmp.mod211.not = icmp eq i32 %xtraiter208, 0
  br i1 %lcmp.mod211.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i, label %.lr.ph.i.i321.i.i.epil.preheader

.lr.ph.i.i321.i.i.epil.preheader:                 ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i.unr-lcssa, %.lr.ph.i.i321.preheader.i.i
  %.epil.init210 = phi i32 [ %..i.i.i319.i.i, %.lr.ph.i.i321.preheader.i.i ], [ %i.vn, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i323.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i321.preheader.i.i ], [ %.0.i.i19.i326.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i.unr-lcssa ]
  %lcmp.mod214 = trunc i32 %.0.i.i318.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.vo = shl i32 %.056.i16.i323.i.i.epil.init, 8 ; 2 uses
  %.not.i.i17.i324.i.i.epil = icmp slt i32 %.epil.init210, %i.jt
  br i1 %.not.i.i17.i324.i.i.epil, label %bb.dn, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i

bb.dn:                                            ; preds = %.lr.ph.i.i321.i.i.epil.preheader
  %i.vp = add nsw i32 %.epil.init210, 1
  %i.vq = sext i32 %.epil.init210 to i64
  %i.vr = getelementptr inbounds i8, ptr %i.uv, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !50
  %i.vt = zext i8 %i.vs to i32
  %i.vu = or disjoint i32 %i.vo, %i.vt
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i: ; preds = %.lr.ph.i.i321.i.i.epil.preheader, %bb.dn, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i.unr-lcssa
  %.lcssa157 = phi i32 [ %i.vn, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i.unr-lcssa ], [ %i.vp, %bb.dn ], [ %.epil.init210, %.lr.ph.i.i321.i.i.epil.preheader ]
  %.0.i.i19.i326.i.i.lcssa = phi i32 [ %.0.i.i19.i326.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i.unr-lcssa ], [ %i.vu, %bb.dn ], [ %i.vo, %.lr.ph.i.i321.i.i.epil.preheader ]
  %i.vv = add i32 %.0.i.i19.i326.i.i.lcssa, -1
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i329.i.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i329.i.i: ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i317.i.i
  %i.vw = phi i32 [ %..i.i.i319.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i317.i.i ], [ %.lcssa157, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i ]
  %.05.lcssa.i.i330.i.i = phi i32 [ -1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i317.i.i ], [ %i.vv, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i328.i.i ]
  %i.vx = add nsw i32 %.05.lcssa.i.i330.i.i, %i.vw ; 2 uses
  %i.vy = icmp slt i32 %i.vx, 0
  %i.vz = tail call i32 @llvm.smin.i32(i32 %i.vx, i32 %i.jt)
  %..i.i22.i331.i.i = select i1 %i.vy, i32 %i.jt, i32 %i.vz ; 2 uses
  store i32 %..i.i22.i331.i.i, ptr %i.jp, align 8, !tbaa !503
  br label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit338.i.i

_ZL20stbtt__cff_get_indexP10stbtt__buf.exit338.i.i: ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i329.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i313.i.i
  %i.wa = phi i32 [ %..i.i22.i331.i.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i329.i.i ], [ %i.uk, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i313.i.i ] ; 2 uses
  %i.wb = sub nsw i32 %i.wa, %i.tu                ; 2 uses
  %i.wc = or i32 %i.wb, %i.tu
  %or.cond.not.i.i332.i.i = icmp slt i32 %i.wc, 0
  %i.wd = icmp sgt i32 %i.wa, %i.jt
  %or.cond.i333.i.i = or i1 %i.wd, %or.cond.not.i.i332.i.i ; 2 uses
  %i.we = load ptr, ptr %2, align 8               ; 2 uses
  %i.wf = zext nneg i32 %i.tu to i64
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wf
  %i.wh = zext nneg i32 %i.wb to i64
  %i.wi = shl nuw nsw i64 %i.wh, 32
  %.sroa.0.0.i.i334.i.i = select i1 %or.cond.i333.i.i, ptr null, ptr %i.wg
  %.sroa.5.0.i.i335.i.i = select i1 %or.cond.i333.i.i, i64 0, i64 %i.wi
  %i.wj = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %.sroa.0.0.i.i334.i.i, ptr %i.wj, align 8, !tbaa !411
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %.sroa.5.0.i.i335.i.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !tbaa !258
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %3, i32 noundef 17, i32 noundef 1, ptr noundef %i.b)
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %3, i32 noundef 262, i32 noundef 1, ptr noundef %i.a)
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %3, i32 noundef 292, i32 noundef 1, ptr noundef %i.c)
  call fastcc void @_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj(ptr noundef %3, i32 noundef 293, i32 noundef 1, ptr noundef %i.d)
  %.sroa.210.0.copyload.i.i = load i64, ptr %i.jp, align 8 ; 2 uses
  %.sroa.08.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !411
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !tbaa !258
  %i.wk = tail call fastcc { ptr, i64 } @_ZL16stbtt__get_subrs10stbtt__bufS_(ptr %i.we, i64 %.sroa.210.0.copyload.i.i, ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) ; 2 uses
  %i.wl = extractvalue { ptr, i64 } %i.wk, 0
  %i.wm = extractvalue { ptr, i64 } %i.wk, 1
  %i.wn = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.wl, ptr %i.wn, align 8, !tbaa !411
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 %i.wm, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !tbaa !258
  %i.wo = load i32, ptr %i.a, align 4, !tbaa !258
  %.not121.i.i = icmp ne i32 %i.wo, 2
  %i.wp = load i32, ptr %i.b, align 4             ; 3 uses
  %i.wq = icmp eq i32 %i.wp, 0
  %or.cond.i.i = select i1 %.not121.i.i, i1 true, i1 %i.wq
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.do

bb.do:                                            ; preds = %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit338.i.i
  %i.wr = lshr i64 %.sroa.210.0.copyload.i.i, 32
  %i.ws = trunc nuw i64 %i.wr to i32
  %i.wt = load i32, ptr %i.c, align 4, !tbaa !258 ; 3 uses
  %.not122.i.i = icmp eq i32 %i.wt, 0
  br i1 %.not122.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.wu = load i32, ptr %i.d, align 4, !tbaa !258 ; 5 uses
  %.not123.i.i = icmp eq i32 %i.wu, 0
  br i1 %.not123.i.i, label %.critedge.i.i, label %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i

_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i:   ; preds = %bb.dp
  %i.wv = icmp slt i32 %i.wt, 0
  %i.ww = tail call i32 @llvm.smin.i32(i32 %i.wt, i32 %i.jt)
  %..i.i.i = select i1 %i.wv, i32 %i.jt, i32 %i.ww
  store i32 %..i.i.i, ptr %i.jp, align 8, !tbaa !503
  %i.wx = call fastcc { ptr, i64 } @_ZL20stbtt__cff_get_indexP10stbtt__buf(ptr noundef %2) ; 2 uses
  %i.wy = extractvalue { ptr, i64 } %i.wx, 0
  %i.wz = extractvalue { ptr, i64 } %i.wx, 1
  store ptr %i.wy, ptr %i.jl, align 8, !tbaa !411
  store i64 %i.wz, ptr %.sroa.429.0..sroa_idx.i.i, align 8, !tbaa !258
  %i.xa = load i32, ptr %i.js, align 4, !tbaa !504 ; 3 uses
  %i.xb = sub i32 %i.xa, %i.wu                    ; 2 uses
  %i.xc = or i32 %i.xb, %i.wu
  %or.cond.not.i.i.i = icmp slt i32 %i.xc, 0
  %i.xd = icmp sgt i32 %i.wu, %i.xa
  %or.cond388.i.i = or i1 %i.xd, %or.cond.not.i.i.i ; 2 uses
  %i.xe = load ptr, ptr %2, align 8
  %i.xf = zext nneg i32 %i.wu to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xf
  %i.xh = zext nneg i32 %i.xb to i64
  %i.xi = shl nuw nsw i64 %i.xh, 32
  %.sroa.0.0.i.i.i = select i1 %or.cond388.i.i, ptr null, ptr %i.xg
  %.sroa.5.0.i.i.i = select i1 %or.cond388.i.i, i64 0, i64 %i.xi
  store ptr %.sroa.0.0.i.i.i, ptr %i.jm, align 8, !tbaa !411
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !tbaa !258
  br label %bb.dq

bb.dq:                                            ; preds = %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i, %bb.do
  %i.xj = phi i32 [ %i.xa, %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i ], [ %i.ws, %bb.do ] ; 2 uses
  %i.xk = icmp slt i32 %i.wp, 0
  %i.xl = tail call i32 @llvm.smin.i32(i32 %i.wp, i32 %i.xj)
  %..i342.i.i = select i1 %i.xk, i32 %i.xj, i32 %i.xl
  store i32 %..i342.i.i, ptr %i.jp, align 8, !tbaa !503
  %i.xm = call fastcc { ptr, i64 } @_ZL20stbtt__cff_get_indexP10stbtt__buf(ptr noundef %2) ; 2 uses
  %i.xn = extractvalue { ptr, i64 } %i.xm, 0
  %i.xo = extractvalue { ptr, i64 } %i.xm, 1
  %i.xp = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %i.xn, ptr %i.xp, align 8, !tbaa !411
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 %i.xo, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.bu
  %.val.i343.i.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %.val25.i344.i.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.xq = zext i8 %.val.i343.i.i to i32
  %i.xr = shl nuw nsw i32 %i.xq, 8
  %i.xs = zext i8 %.val25.i344.i.i to i32
  %i.xt = or disjoint i32 %i.xr, %i.xs            ; 2 uses
  %.not.i345.i.i = icmp eq i32 %i.xt, 0
  br i1 %.not.i345.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i, label %.lr.ph.i346.i.i

.lr.ph.i346.i.i:                                  ; preds = %bb.dr
  %i.xu = add nuw i32 %.1.i.i, 12
  %i.xv = zext i32 %i.xu to i64
  %wide.trip.count.i347.i.i = zext nneg i32 %i.xt to i64
  %invariant.gep.i348.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.xv
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dw, %.lr.ph.i346.i.i
  %indvars.iv.i349.i.i = phi i64 [ 0, %.lr.ph.i346.i.i ], [ %indvars.iv.next.i351.i.i, %bb.dw ] ; 2 uses
  %i.xw = shl nuw nsw i64 %indvars.iv.i349.i.i, 4
  %gep.i350.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i348.i.i, i64 %i.xw ; 5 uses
  %i.xx = load i8, ptr %gep.i350.i.i, align 1, !tbaa !50
  %i.xy = icmp eq i8 %i.xx, 109
  br i1 %i.xy, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.xz = getelementptr inbounds nuw i8, ptr %gep.i350.i.i, i64 1
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !50
  %i.yb = icmp eq i8 %i.ya, 97
  br i1 %i.yb, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.yc = getelementptr inbounds nuw i8, ptr %gep.i350.i.i, i64 2
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !50
  %i.ye = icmp eq i8 %i.yd, 120
  br i1 %i.ye, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.yf = getelementptr inbounds nuw i8, ptr %gep.i350.i.i, i64 3
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !50
  %i.yh = icmp eq i8 %i.yg, 112
  br i1 %i.yh, label %_ZL17stbtt__find_tablePhjPKc.exit354.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds
  %indvars.iv.next.i351.i.i = add nuw nsw i64 %indvars.iv.i349.i.i, 1 ; 2 uses
  %exitcond.not.i352.i.i = icmp eq i64 %indvars.iv.next.i351.i.i, %wide.trip.count.i347.i.i
  br i1 %exitcond.not.i352.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i, label %bb.ds, !llvm.loop !753

_ZL17stbtt__find_tablePhjPKc.exit354.i.i:         ; preds = %bb.dv
  %i.yi = getelementptr inbounds nuw i8, ptr %gep.i350.i.i, i64 8
  %i.yj = load i32, ptr %i.yi, align 1            ; 2 uses
  %.not125.i.i = icmp eq i32 %i.yj, 0
  br i1 %.not125.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZL17stbtt__find_tablePhjPKc.exit354.i.i
  %i.yk = tail call noundef i32 @llvm.bswap.i32(i32 %i.yj)
  %i.yl = zext i32 %i.yk to i64
  %i.ym = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.yl ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 4
  %.val134.i.i = load i8, ptr %i.yn, align 1, !tbaa !50
  %i.yo = getelementptr i8, ptr %i.ym, i64 5
  %.val135.i.i = load i8, ptr %i.yo, align 1, !tbaa !50
  %i.yp = zext i8 %.val134.i.i to i32
  %i.yq = shl nuw nsw i32 %i.yp, 8
  %i.yr = zext i8 %.val135.i.i to i32
  %i.ys = or disjoint i32 %i.yq, %i.yr
  br label %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i

_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i:  ; preds = %bb.dw, %bb.dx, %_ZL17stbtt__find_tablePhjPKc.exit354.i.i, %bb.dr
  %.sink.i.i = phi i32 [ %i.ys, %bb.dx ], [ 65535, %_ZL17stbtt__find_tablePhjPKc.exit354.i.i ], [ 65535, %bb.dr ], [ 65535, %bb.dw ]
  %i.yt = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sink.i.i, ptr %i.yt, align 4, !tbaa !506
  %i.yu = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 -1, ptr %i.yu, align 4, !tbaa !760
  %i.yv = zext i32 %.2.i356.i.i to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.yv ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 2
  %.val132.i.i = load i8, ptr %i.yx, align 1, !tbaa !50
  %i.yy = getelementptr i8, ptr %i.yw, i64 3
  %.val133.i.i = load i8, ptr %i.yy, align 1, !tbaa !50
  %i.yz = zext i8 %.val132.i.i to i32
  %i.za = shl nuw nsw i32 %i.yz, 8
  %i.zb = zext i8 %.val133.i.i to i32
  %i.zc = or disjoint i32 %i.za, %i.zb            ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  store i32 0, ptr %i.zd, align 8, !tbaa !507
  %.not410.i.i = icmp eq i32 %i.zc, 0
  br i1 %.not410.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i
  %i.ze = add i32 %.2.i356.i.i, 4
  %wide.trip.count.i.i = zext nneg i32 %i.zc to i64
  br label %bb.dy

bb.dy:                                            ; preds = %bb.ea, %.lr.ph.i.i
  %i.zf = phi i32 [ 0, %.lr.ph.i.i ], [ %i.zz, %bb.ea ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ea ] ; 2 uses
  %indvars.iv.tr.i.i = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.zg = shl nuw nsw i32 %indvars.iv.tr.i.i, 3
  %i.zh = add i32 %i.ze, %i.zg
  %i.zi = zext i32 %i.zh to i64
  %i.zj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.zi ; 5 uses
  %.val130.i.i = load i8, ptr %i.zj, align 1, !tbaa !50
  %i.zk = getelementptr i8, ptr %i.zj, i64 1
  %.val131.i.i = load i8, ptr %i.zk, align 1, !tbaa !50
  %i.zl = zext i8 %.val130.i.i to i16
  %i.zm = shl nuw i16 %i.zl, 8
  %i.zn = zext i8 %.val131.i.i to i16
  %i.zo = or disjoint i16 %i.zm, %i.zn
  switch i16 %i.zo, label %bb.ea [
    i16 3, label %bb.dz
    i16 0, label %.sink.split.i.i
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zj, i64 2
  %.val128.i.i = load i8, ptr %i.zp, align 1, !tbaa !50
  %i.zq = getelementptr i8, ptr %i.zj, i64 3
  %.val129.i.i = load i8, ptr %i.zq, align 1, !tbaa !50
  %i.zr = zext i8 %.val128.i.i to i16
  %i.zs = shl nuw i16 %i.zr, 8
  %i.zt = zext i8 %.val129.i.i to i16
  %i.zu = or disjoint i16 %i.zs, %i.zt
  switch i16 %i.zu, label %bb.ea [
    i16 1, label %.sink.split.i.i
    i16 10, label %.sink.split.i.i
  ]

.sink.split.i.i:                                  ; preds = %bb.dz, %bb.dz, %bb.dy
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zj, i64 4
  %i.zw = load i32, ptr %i.zv, align 1
  %i.zx = tail call noundef i32 @llvm.bswap.i32(i32 %i.zw)
  %i.zy = add i32 %i.zx, %.2.i356.i.i             ; 2 uses
  store i32 %i.zy, ptr %i.zd, align 8, !tbaa !507
  br label %bb.ea

bb.ea:                                            ; preds = %.sink.split.i.i, %bb.dz, %bb.dy
  %i.zz = phi i32 [ %i.zf, %bb.dz ], [ %i.zf, %bb.dy ], [ %i.zy, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.dy, !llvm.loop !754

._crit_edge.i.i:                                  ; preds = %bb.ea
  %i.aaa = icmp eq i32 %i.zz, 0
  br i1 %i.aaa, label %bb.eb, label %bb.ec

.critedge.i.i:                                    ; preds = %bb.ca, %bb.dp, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit338.i.i, %_ZL17stbtt__find_tablePhjPKc.exit231.i.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.eb

bb.eb:                                            ; preds = %.critedge.i.i, %._crit_edge.i.i
  %.not.i31 = icmp eq ptr %i.e, null
  br i1 %.not.i31, label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32, label %.thread

.thread:                                          ; preds = %_ZL17stbtt__find_tablePhjPKc.exit354.thread.i.i, %_ZL17stbtt__find_tablePhjPKc.exit219.i.i, %bb.bu, %bb.eb
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.e)
  br label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32

_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32: ; preds = %bb.eb, %.thread
  %i.aab = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.34) ; 0 uses
  br label %bb.ej

bb.ec:                                            ; preds = %._crit_edge.i.i
  %i.aac = sext i32 %i.ei to i64
  %i.aad = getelementptr inbounds i8, ptr %i.g, i64 %i.aac ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 50
  %.val.i.i = load i8, ptr %i.aae, align 1, !tbaa !50
  %i.aaf = getelementptr i8, ptr %i.aad, i64 51
  %.val127.i.i = load i8, ptr %i.aaf, align 1, !tbaa !50
  %i.aag = zext i8 %.val.i.i to i32
  %i.aah = shl nuw nsw i32 %i.aag, 8
  %i.aai = zext i8 %.val127.i.i to i32
  %i.aaj = or disjoint i32 %i.aah, %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %i.aaj, ptr %i.aak, align 4, !tbaa !508
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.e, ptr %i.aal, align 8, !tbaa !509
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !417
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 40
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !359
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !381
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 60
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !414 ; 3 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !390, !range !351, !noundef !352
  %i.aav = trunc nuw i8 %i.aau to i1              ; 2 uses
  br i1 %i.aav, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !414
  %i.aay = fcmp oeq float %i.aax, 0.000000e+00
  br i1 %i.aay, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store float %i.aas, ptr %i.aaw, align 4, !tbaa !414
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.aaz = sext i32 %.val29 to i64
  %i.aba = getelementptr inbounds i8, ptr %i.g, i64 %i.aaz ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %.val6.i = load i8, ptr %i.abb, align 1, !tbaa !50
  %i.abc = getelementptr i8, ptr %i.aba, i64 5
  %.val7.i = load i8, ptr %i.abc, align 1, !tbaa !50
  %i.abd = zext i8 %.val6.i to i16
  %i.abe = shl nuw i16 %i.abd, 8
  %i.abf = zext i8 %.val7.i to i16
  %i.abg = or disjoint i16 %i.abe, %i.abf
  %i.abh = sext i16 %i.abg to i32
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aba, i64 6
  %.val.i = load i8, ptr %i.abi, align 1, !tbaa !50
  %i.abj = getelementptr i8, ptr %i.aba, i64 7
  %.val5.i = load i8, ptr %i.abj, align 1, !tbaa !50
  %i.abk = zext i8 %.val.i to i16
  %i.abl = shl nuw i16 %i.abk, 8
  %i.abm = zext i8 %.val5.i to i16
  %i.abn = or disjoint i16 %i.abl, %i.abm
  %i.abo = sext i16 %i.abn to i32
  %i.abp = sub nsw i32 %i.abh, %i.abo
  %i.abq = sitofp i32 %i.abp to float
  %i.abr = fdiv float 1.000000e+00, %i.abq        ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  br i1 %i.aav, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !414 ; 2 uses
  %i.abv = fcmp une float %i.abu, 0.000000e+00
  %i.abw = fcmp une float %i.aas, 0.000000e+00
  %or.cond = select i1 %i.abv, i1 %i.abw, i1 false
  br i1 %or.cond, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.abx = fdiv float %i.abu, %i.aas
  %i.aby = fmul float %i.abr, %i.abx
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %bb.ef
  %i.abz = phi float [ %i.aby, %bb.eh ], [ %i.abr, %bb.eg ], [ %i.abr, %bb.ef ]
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !300
  %i.acc = fmul float %i.acb, %i.abz
  store float %i.acc, ptr %i.abs, align 8, !tbaa !511
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit
  %.0 = phi i1 [ false, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit ], [ true, %bb.ei ], [ false, %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit32 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL36ImGui_ImplStbTrueType_FontSrcDestroyP11ImFontAtlasP12ImFontConfig(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !509  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
  br label %_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit

_Z9IM_DELETEI33ImGui_ImplStbTrueType_FontSrcDataEvPT_.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !509
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZL42ImGui_ImplStbTrueType_FontSrcContainsGlyphP11ImFontAtlasP12ImFontConfigt(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !509  ; 2 uses
  %i.c = zext i16 %2 to i32
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !497
  %i.e = getelementptr i8, ptr %i.b, i64 56
  %.val3 = load i32, ptr %i.e, align 8, !tbaa !507
  %i.f = tail call fastcc noundef i32 @_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi(ptr %.val, i32 %.val3, i32 noundef %i.c)
  %i.g = icmp ne i32 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZL35ImGui_ImplStbTrueType_FontBakedInitP11ImFontAtlasP12ImFontConfigP11ImFontBakedPv(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree readnone captures(none) %3) #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.b = load i8, ptr %i.a, align 1, !tbaa !390, !range !351, !noundef !352
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !509  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load float, ptr %i.f, align 8, !tbaa !511
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !256
  %i.j = fmul float %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.l = load float, ptr %i.k, align 4, !tbaa !300
  %i.m = fdiv float %i.j, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !497
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !500
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.val17.i = load i8, ptr %i.t, align 1, !tbaa !50
  %i.u = getelementptr i8, ptr %i.s, i64 5
  %.val18.i = load i8, ptr %i.u, align 1, !tbaa !50
  %i.v = zext i8 %.val17.i to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = zext i8 %.val18.i to i16
  %i.y = or disjoint i16 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.val15.i = load i8, ptr %i.z, align 1, !tbaa !50
  %i.aa = getelementptr i8, ptr %i.s, i64 7
  %.val16.i = load i8, ptr %i.aa, align 1, !tbaa !50
  %i.ab = zext i8 %.val15.i to i16
  %i.ac = shl nuw i16 %i.ab, 8
  %i.ad = zext i8 %.val16.i to i16
  %i.ae = or disjoint i16 %i.ac, %i.ad
  %i.af = sitofp i16 %i.y to float
  %i.ag = fmul float %i.m, %i.af
end_hunk_2
begin_hunk_3_@_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi:bb.a
  %i.bo = zext i16 %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo ; 2 uses
  %.val155 = load i8, ptr %i.bp, align 1, !tbaa !50
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  %.val156 = load i8, ptr %i.bq, align 1, !tbaa !50
  %i.br = zext i8 %.val155 to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = zext i8 %.val156 to i32
  %i.bu = or disjoint i32 %i.bs, %i.bt
  %.not = icmp samesign ult i32 %0, %i.bu
  %i.bv = zext i16 %i.bl to i32
  %i.bw = select i1 %.not, i32 0, i32 %i.bv
  %.0123 = add i32 %.56.val, 12
  %i.bx = add i32 %.0123, %i.bw                   ; 4 uses
  %.not1427 = icmp eq i16 %i.be, 0
  br i1 %.not1427, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val161 = load i8, ptr %i.by, align 1, !tbaa !50
  %i.bz = zext i8 %.val161 to i16
  %i.ca = shl nuw i16 %i.bz, 8
  %i.cb = getelementptr i8, ptr %i.b, i64 9
  %.val162 = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.cc = zext i8 %.val162 to i16
  %i.cd = or disjoint i16 %i.ca, %i.cc            ; 2 uses
  %i.ce = or disjoint i16 %i.bc, %i.bd
  %xtraiter = and i16 %i.bd, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0127.prol = lshr i16 %i.cd, 1                 ; 2 uses
  %i.cf = zext i32 %i.bx to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cf
  %i.ch = and i16 %.0127.prol, 32766              ; 2 uses
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci ; 2 uses
  %.val153.prol = load i8, ptr %i.cj, align 1, !tbaa !50
  %i.ck = getelementptr i8, ptr %i.cj, i64 1
  %.val154.prol = load i8, ptr %i.ck, align 1, !tbaa !50
  %i.cl = zext i8 %.val153.prol to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = zext i8 %.val154.prol to i32
  %i.co = or disjoint i32 %i.cm, %i.cn
  %i.cp = icmp samesign ugt i32 %0, %i.co
  %i.cq = zext nneg i16 %i.ch to i32
  %i.cr = select i1 %i.cp, i32 %i.cq, i32 0
  %.2125.prol = add i32 %i.cr, %i.bx              ; 2 uses
  %i.cs = add nsw i16 %i.be, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2125.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.112410.unr = phi i32 [ %i.bx, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.01269.unr = phi i16 [ %i.be, %.lr.ph.preheader ], [ %i.cs, %.lr.ph.prol ]
  %.0127.in8.unr = phi i16 [ %i.cd, %.lr.ph.preheader ], [ %.0127.prol, %.lr.ph.prol ]
  %i.ct = icmp eq i16 %i.ce, 1
  br i1 %i.ct, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.112410 = phi i32 [ %.2125.1, %.lr.ph ], [ %.112410.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01269 = phi i16 [ %i.du, %.lr.ph ], [ %.01269.unr, %.lr.ph.prol.loopexit ]
  %.0127.in8 = phi i16 [ %.0127.1, %.lr.ph ], [ %.0127.in8.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0127 = lshr i16 %.0127.in8, 1
  %i.cu = zext i32 %.112410 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cu
  %i.cw = and i16 %.0127, 32766                   ; 2 uses
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx ; 2 uses
  %.val153 = load i8, ptr %i.cy, align 1, !tbaa !50
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %.val154 = load i8, ptr %i.cz, align 1, !tbaa !50
  %i.da = zext i8 %.val153 to i32
  %i.db = shl nuw nsw i32 %i.da, 8
  %i.dc = zext i8 %.val154 to i32
  %i.dd = or disjoint i32 %i.db, %i.dc
  %i.de = icmp samesign ugt i32 %0, %i.dd
  %i.df = zext nneg i16 %i.cw to i32
  %i.dg = select i1 %i.de, i32 %i.df, i32 0
  %.2125 = add i32 %i.dg, %.112410                ; 2 uses
  %.0127.1 = lshr i16 %.0127.in8, 2               ; 2 uses
  %i.dh = zext i32 %.2125 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.dh
  %i.dj = and i16 %.0127.1, 16382                 ; 2 uses
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk ; 2 uses
  %.val153.1 = load i8, ptr %i.dl, align 1, !tbaa !50
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  %.val154.1 = load i8, ptr %i.dm, align 1, !tbaa !50
  %i.dn = zext i8 %.val153.1 to i32
  %i.do = shl nuw nsw i32 %i.dn, 8
  %i.dp = zext i8 %.val154.1 to i32
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = icmp samesign ugt i32 %0, %i.dq
  %i.ds = zext nneg i16 %i.dj to i32
  %i.dt = select i1 %i.dr, i32 %i.ds, i32 0
  %.2125.1 = add i32 %i.dt, %.2125                ; 2 uses
  %i.du = add i16 %.01269, -2                     ; 2 uses
  %.not142.1 = icmp eq i16 %i.du, 0
  br i1 %.not142.1, label %._crit_edge, label %.lr.ph, !llvm.loop !861

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.g
  %.1124.lcssa = phi i32 [ %i.bx, %bb.g ], [ %.2125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2125.1, %.lr.ph ]
  %reass.sub = sub i32 %.1124.lcssa, %.56.val
  %i.dv = add i32 %reass.sub, 131060
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.dx = and i32 %i.ax, 65534
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.eb = and i32 %i.dv, 131070
  %i.ec = zext nneg i32 %i.eb to i64              ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec ; 2 uses
  %.val151 = load i8, ptr %i.ed, align 1, !tbaa !50
  %i.ee = getelementptr i8, ptr %i.ed, i64 1
  %.val152 = load i8, ptr %i.ee, align 1, !tbaa !50
  %i.ef = zext i8 %.val151 to i32
  %i.eg = shl nuw nsw i32 %i.ef, 8
  %i.eh = zext i8 %.val152 to i32
  %i.ei = or disjoint i32 %i.eg, %i.eh            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ec ; 2 uses
  %.val149 = load i8, ptr %i.ej, align 1, !tbaa !50
  %i.ek = getelementptr i8, ptr %i.ej, i64 1
  %.val150 = load i8, ptr %i.ek, align 1, !tbaa !50
  %i.el = zext i8 %.val149 to i32
  %i.em = shl nuw nsw i32 %i.el, 8
  %i.en = zext i8 %.val150 to i32
  %i.eo = or disjoint i32 %i.em, %i.en
  %i.ep = icmp samesign ult i32 %0, %i.ei
  %i.eq = icmp samesign ugt i32 %0, %i.eo
  %or.cond145 = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond145, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.er = mul nuw nsw i32 %i.ay, 6
  %i.es = zext nneg i32 %i.er to i64              ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ec ; 2 uses
  %.val147 = load i8, ptr %i.ev, align 1, !tbaa !50
  %i.ew = getelementptr i8, ptr %i.ev, i64 1
  %.val148 = load i8, ptr %i.ew, align 1, !tbaa !50
  %i.ex = zext i8 %.val147 to i16
  %i.ey = shl nuw i16 %i.ex, 8
  %i.ez = zext i8 %.val148 to i16
  %i.fa = or disjoint i16 %i.ey, %i.ez            ; 2 uses
  %i.fb = icmp eq i16 %i.fa, 0
  br i1 %i.fb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fc = shl nuw nsw i32 %i.ay, 2
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ec ; 2 uses
  %.val175 = load i8, ptr %i.fg, align 1, !tbaa !50
  %i.fh = getelementptr i8, ptr %i.fg, i64 1
  %.val176 = load i8, ptr %i.fh, align 1, !tbaa !50
  %i.fi = zext i8 %.val175 to i32
  %i.fj = shl nuw nsw i32 %i.fi, 8
  %i.fk = zext i8 %.val176 to i32
  %i.fl = or disjoint i32 %i.fj, %i.fk
  %i.fm = add nuw nsw i32 %i.fl, %0
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.fn = zext i16 %i.fa to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.fn
  %i.fp = sub nuw nsw i32 %0, %i.ei
  %i.fq = shl nuw nsw i32 %i.fp, 1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.es
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ec ; 2 uses
  %.val = load i8, ptr %i.fw, align 1, !tbaa !50
  %i.fx = getelementptr i8, ptr %i.fw, i64 1
  %.val146 = load i8, ptr %i.fx, align 1, !tbaa !50
  %i.fy = zext i8 %.val to i32
  %i.fz = shl nuw nsw i32 %i.fy, 8
  %i.ga = zext i8 %.val146 to i32
  %i.gb = or disjoint i32 %i.fz, %i.ga
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %._crit_edge
  %.2132.shrunk = phi i32 [ %i.gb, %bb.j ], [ %i.fm, %bb.i ], [ 0, %._crit_edge ]
  %.2132 = and i32 %.2132.shrunk, 65535
  br label %.loopexit

bb.l:                                             ; preds = %bb.a
  %i.gc = icmp eq i16 %i.g, 12
  %i.gd = and i16 %i.g, -2
  %or.cond = icmp eq i16 %i.gd, 12
  br i1 %or.cond, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.gf = load i32, ptr %i.ge, align 1
  %i.gg = tail call noundef i32 @llvm.bswap.i32(i32 %i.gf) ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %bb.m
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph14, %bb.q
  %.012 = phi i32 [ %i.gg, %.lr.ph14 ], [ %.2, %bb.q ] ; 2 uses
  %.012011 = phi i32 [ 0, %.lr.ph14 ], [ %.2122, %bb.q ] ; 3 uses
  %i.gj = sub nsw i32 %.012, %.012011
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = add nuw nsw i32 %i.gk, %.012011         ; 3 uses
  %i.gm = mul nsw i32 %i.gl, 12
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gn ; 3 uses
  %i.gp = load i32, ptr %i.go, align 1
  %i.gq = tail call noundef i32 @llvm.bswap.i32(i32 %i.gp) ; 2 uses
  %i.gr = icmp ult i32 %0, %i.gq
  br i1 %i.gr, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = tail call noundef i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = icmp ugt i32 %0, %i.gu
  br i1 %i.gv, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.gw = add nuw nsw i32 %i.gl, 1
  br label %bb.q

.thread:                                          ; preds = %bb.o
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gy = load i32, ptr %i.gx, align 1
  %i.gz = tail call noundef i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = sub nsw i32 %0, %i.gq
  %i.hb = select i1 %i.gc, i32 %i.ha, i32 0
  %.5 = add i32 %i.gz, %i.hb
  br label %.loopexit

bb.q:                                             ; preds = %bb.p, %bb.n
  %.2122 = phi i32 [ %.012011, %bb.n ], [ %i.gw, %bb.p ] ; 2 uses
  %.2 = phi i32 [ %i.gl, %bb.n ], [ %.012, %bb.p ] ; 2 uses
  %i.hc = icmp slt i32 %.2122, %.2
  br i1 %i.hc, label %bb.n, label %.loopexit, !llvm.loop !862

.loopexit:                                        ; preds = %bb.q, %bb.m, %.thread, %bb.l, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.k
  %.8 = phi i32 [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.d ], [ %.2132, %bb.k ], [ 0, %bb.a ], [ %i.t, %bb.c ], [ %i.ar, %bb.f ], [ 0, %bb.e ], [ %.5, %.thread ], [ 0, %bb.m ], [ 0, %bb.q ]
  ret i32 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL31stbtt_GetGlyphBitmapBoxSubpixelPK14stbtt_fontinfoiffffPiS2_S2_S2_(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 0) %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #21 {
bb.a:
  %8 = alloca %struct.stbtt__csctx, align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !536
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  store i32 1, ptr %8, align 8
  %i.c = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef range(i32 1, 0) %1, ptr noundef %8)
  %.not.i.i = icmp eq i32 %i.c, 0                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i, i32 0, i32 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, i32 0, i32 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %.not.i.i, i32 0, i32 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %.not.i.i, i32 0, i32 %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !506
  %.not.i40.i = icmp slt i32 %1, %i.q
  br i1 %.not.i40.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !508  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.s, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !499
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !497  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !498
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nsw i32 %1, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 4 uses
  %.val28.i.i = load i8, ptr %i.af, align 1, !tbaa !50
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  %.val29.i.i = load i8, ptr %i.ag, align 1, !tbaa !50
  %i.ah = zext i8 %.val28.i.i to i32
  %i.ai = zext i8 %.val29.i.i to i32
  %i.aj = shl nuw nsw i32 %i.ah, 9
  %i.ak = shl nuw nsw i32 %i.ai, 1
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %.val.i.i = load i8, ptr %i.am, align 1, !tbaa !50
  %i.an = getelementptr i8, ptr %i.af, i64 3
  %.val27.i.i = load i8, ptr %i.an, align 1, !tbaa !50
  %i.ao = zext i8 %.val.i.i to i32
  %i.ap = zext i8 %.val27.i.i to i32
  %i.aq = shl nuw nsw i32 %i.ao, 9
  %i.ar = shl nuw nsw i32 %i.ap, 1
  %i.as = or disjoint i32 %i.ar, %i.aq
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.at = shl nsw i32 %1, 2
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = tail call noundef i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ %i.ba, %bb.g ], [ %i.as, %bb.f ]
  %.pn.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %.023.i.i = add i32 %.pn.i.i, %i.w              ; 2 uses
  %i.bb = icmp eq i32 %.pn.i.i, %.sink.i.i
  %i.bc = icmp slt i32 %.023.i.i, 0
  %or.cond.i = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = zext nneg i32 %.023.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %.val38.i = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bg = getelementptr i8, ptr %i.be, i64 3
  %.val39.i = load i8, ptr %i.bg, align 1, !tbaa !50
  %i.bh = zext i8 %.val38.i to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = zext i8 %.val39.i to i16
  %i.bk = or disjoint i16 %i.bi, %i.bj
  %i.bl = sext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.val36.i = load i8, ptr %i.bm, align 1, !tbaa !50
  %i.bn = getelementptr i8, ptr %i.be, i64 5
  %.val37.i = load i8, ptr %i.bn, align 1, !tbaa !50
  %i.bo = zext i8 %.val36.i to i16
  %i.bp = shl nuw i16 %i.bo, 8
  %i.bq = zext i8 %.val37.i to i16
  %i.br = or disjoint i16 %i.bp, %i.bq
  %i.bs = sext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %.val34.i = load i8, ptr %i.bt, align 1, !tbaa !50
  %i.bu = getelementptr i8, ptr %i.be, i64 7
  %.val35.i = load i8, ptr %i.bu, align 1, !tbaa !50
  %i.bv = zext i8 %.val34.i to i16
  %i.bw = shl nuw i16 %i.bv, 8
  %i.bx = zext i8 %.val35.i to i16
  %i.by = or disjoint i16 %i.bw, %i.bx
  %i.bz = sext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.val.i = load i8, ptr %i.ca, align 1, !tbaa !50
  %i.cb = getelementptr i8, ptr %i.be, i64 9
  %.val33.i = load i8, ptr %i.cb, align 1, !tbaa !50
  %i.cc = zext i8 %.val.i to i16
  %i.cd = shl nuw i16 %i.cc, 8
  %i.ce = zext i8 %.val33.i to i16
  %i.cf = or disjoint i16 %i.cd, %i.ce
  %i.cg = sext i16 %i.cf to i32
  br label %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit

bb.j:                                             ; preds = %bb.h, %bb.c, %bb.d
  store i32 0, ptr %4, align 4, !tbaa !258
  store i32 0, ptr %5, align 4, !tbaa !258
  %.not31 = icmp eq ptr %6, null
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %6, align 4, !tbaa !258
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not32 = icmp eq ptr %7, null
  br i1 %.not32, label %bb.p, label %.sink.split

_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit: ; preds = %bb.i, %bb.b
  %.041 = phi i32 [ %i.bl, %bb.i ], [ %i.f, %bb.b ]
  %.040 = phi i32 [ %i.bs, %bb.i ], [ %i.i, %bb.b ]
  %.039 = phi i32 [ %i.bz, %bb.i ], [ %i.l, %bb.b ]
  %.0 = phi i32 [ %i.cg, %bb.i ], [ %i.o, %bb.b ]
  %i.ch = sub nsw i32 0, %.0
  %i.ci = insertelement <2 x i32> poison, i32 %i.ch, i64 0
  %i.cj = insertelement <2 x i32> %i.ci, i32 %.041, i64 1
  %i.ck = sitofp <2 x i32> %i.cj to <2 x float>
  %i.cl = insertelement <2 x float> poison, float %3, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %2, i64 1
  %i.cn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> zeroinitializer) ; 3 uses
  %i.co = fptosi <2 x float> %i.cn to <2 x i32>   ; 2 uses
  %i.cp = sitofp <2 x i32> %i.co to <2 x float>
  %i.cq = fcmp une <2 x float> %i.cn, %i.cp
  %i.cr = fcmp ult <2 x float> %i.cn, zeroinitializer
  %i.cs = and <2 x i1> %i.cr, %i.cq
  %i.ct = sext <2 x i1> %i.cs to <2 x i32>
  %i.cu = add nsw <2 x i32> %i.ct, %i.co
  %i.cv = sitofp <2 x i32> %i.cu to <2 x float>
  %i.cw = fptosi <2 x float> %i.cv to <2 x i32>   ; 2 uses
  %i.cx = extractelement <2 x i32> %i.cw, i64 1
  store i32 %i.cx, ptr %4, align 4, !tbaa !258
  %i.cy = extractelement <2 x i32> %i.cw, i64 0
  store i32 %i.cy, ptr %5, align 4, !tbaa !258
  %.not33 = icmp eq ptr %6, null
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit
  %i.cz = sitofp i32 %.039 to float
  %i.da = call float @llvm.fmuladd.f32(float %i.cz, float %2, float 0.000000e+00)
  %i.db = call float @llvm.ceil.f32(float %i.da)
  %i.dc = fptosi float %i.db to i32
  store i32 %i.dc, ptr %6, align 4, !tbaa !258
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit
  %.not34 = icmp eq ptr %7, null
  br i1 %.not34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = sub nsw i32 0, %.040
  %i.de = sitofp i32 %i.dd to float
  %i.df = call float @llvm.fmuladd.f32(float %i.de, float %3, float 0.000000e+00)
  %i.dg = call float @llvm.ceil.f32(float %i.df)
  %i.dh = fptosi float %i.dg to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.o
  %.sink = phi i32 [ %i.dh, %bb.o ], [ 0, %bb.l ]
  store i32 %.sink, ptr %7, align 4, !tbaa !258
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull %2) unnamed_addr #21 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 47 uses
  %3 = alloca [10 x %struct.stbtt__buf], align 16 ; 4 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.073.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !411
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.065.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !411
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.266.0.copyload = load i64, ptr %.sroa.266.0..sroa_idx, align 8, !tbaa !258
  %i.d = tail call fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr %.sroa.065.0.copyload, i64 %.sroa.266.0.copyload, i32 noundef %1) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !411
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.f, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !258
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  %i.i = lshr i64 %i.f, 32
  %i.j = trunc nuw i64 %i.i to i32                ; 2 uses
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph, label %.critedge

_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph:     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.gep72 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 30 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 12 uses
  %.phi.trans.insert.i311 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 18 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %.sroa.gep.sroa.gep440 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.gep443.sroa.gep446 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep443.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit

_ZL15stbtt__buf_get8P10stbtt__buf.exit:           ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph, %.thread
  %i.aj = phi i32 [ %i.j, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.vy, %.thread ] ; 9 uses
  %i.ak = phi i32 [ %i.h, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.vx, %.thread ] ; 6 uses
  %.0236380 = phi i32 [ 1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.1237353, %.thread ] ; 22 uses
  %.0238379 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.2240352, %.thread ] ; 26 uses
  %.0241378 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.1242351, %.thread ] ; 28 uses
  %.0244375 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.vw, %.thread ] ; 45 uses
  %.sroa.5.0374 = phi i64 [ %.sroa.5.0.copyload, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.sroa.5.3350, %.thread ] ; 27 uses
  %.sroa.073.0373 = phi ptr [ %.sroa.073.0.copyload, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.sroa.073.3349, %.thread ] ; 27 uses
  %.0255372 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.2257348, %.thread ] ; 26 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !505   ; 6 uses
  %i.am = add nsw i32 %i.ak, 1                    ; 7 uses
end_hunk_3
begin_hunk_4_@_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff:bb.a
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !542 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, %i.w
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !540
  %.not21.i.i = icmp eq i32 %i.am, 0
  br i1 %.not21.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 %i.w, ptr %i.ai, align 8, !tbaa !542
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = phi i32 [ %i.w, %bb.j ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !543 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %i.ad
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !540
  %.not22.i.i = icmp eq i32 %i.as, 0
  br i1 %.not22.i.i, label %bb.m, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.ad, ptr %i.ao, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i: ; preds = %bb.m, %bb.l
  %i.at = phi i32 [ %i.ap, %bb.l ], [ %i.ad, %bb.m ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 1, ptr %i.au, align 4, !tbaa !540
  %i.av = extractelement <4 x i32> %i.q, i64 2    ; 6 uses
  %i.aw = icmp slt i32 %i.aa, %i.av
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i
  store i32 %i.av, ptr %i.u, align 4, !tbaa !539
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i
  %i.ax = phi i32 [ %i.aa, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i ], [ %i.av, %bb.n ]
  %i.ay = extractelement <4 x i32> %i.q, i64 3    ; 6 uses
  %i.az = icmp slt i32 %i.ah, %i.ay
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.ay, ptr %i.ab, align 4, !tbaa !541
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ba = phi i32 [ %i.ah, %bb.o ], [ %i.ay, %bb.p ]
  %i.bb = icmp sgt i32 %i.an, %i.av
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.av, ptr %i.ai, align 8, !tbaa !542
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = phi i32 [ %i.an, %bb.q ], [ %i.av, %bb.r ]
  %i.bd = icmp sgt i32 %i.at, %i.ay
  br i1 %i.bd, label %bb.t, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i

bb.t:                                             ; preds = %bb.s
  store i32 %i.ay, ptr %i.ao, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i: ; preds = %bb.t, %bb.s
  %i.be = phi i32 [ %i.at, %bb.s ], [ %i.ay, %bb.t ]
  %i.bf = icmp slt i32 %i.ax, %i.r
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i
  store i32 %i.r, ptr %i.u, align 4, !tbaa !539
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i
  %i.bg = icmp slt i32 %i.ba, %i.s
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.s, ptr %i.ab, align 4, !tbaa !541
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bh = icmp sgt i32 %i.bc, %i.r
  br i1 %i.bh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %i.r, ptr %i.ai, align 8, !tbaa !542
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bi = icmp sgt i32 %i.be, %i.s
  br i1 %i.bi, label %bb.aa, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i

bb.aa:                                            ; preds = %bb.z
  store i32 %i.s, ptr %i.ao, align 8, !tbaa !543
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i: ; preds = %bb.aa, %bb.z
  store i32 1, ptr %i.au, align 4, !tbaa !540
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !544
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

bb.ab:                                            ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !545
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !544 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [14 x i8], ptr %i.bk, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i8 4, ptr %i.bp, align 2, !tbaa !514
  %i.bq = trunc <4 x i32> %i.q to <4 x i16>
  store <4 x i16> %i.bq, ptr %i.bo, align 2, !tbaa !243
  %i.br = trunc i32 %i.r to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !517
  %i.bt = trunc i32 %i.s to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !518
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit:   ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i, %bb.ab
  %i.bv = phi i32 [ %.pre, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i ], [ %i.bm, %bb.ab ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = add nsw i32 %i.bv, 1
  store i32 %i.bx, ptr %i.bw, align 8, !tbaa !544
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #10 {
bb.a:
  %3 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %4 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !536
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.cb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !497  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !506
  %.not.i17 = icmp slt i32 %1, %i.g
  br i1 %.not.i17, label %bb.c, label %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !508  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !499
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !498
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %1, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 4 uses
  %.val28.i = load i8, ptr %i.t, align 1, !tbaa !50
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val29.i = load i8, ptr %i.u, align 1, !tbaa !50
  %i.v = zext i8 %.val28.i to i32
  %i.w = zext i8 %.val29.i to i32
  %i.x = shl nuw nsw i32 %i.v, 9
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.val.i19 = load i8, ptr %i.aa, align 1, !tbaa !50
  %i.ab = getelementptr i8, ptr %i.t, i64 3
  %.val27.i = load i8, ptr %i.ab, align 1, !tbaa !50
  %i.ac = zext i8 %.val.i19 to i32
  %i.ad = zext i8 %.val27.i to i32
  %i.ae = shl nuw nsw i32 %i.ac, 9
  %i.af = shl nuw nsw i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = shl nsw i32 %1, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call noundef i32 @llvm.bswap.i32(i32 %i.an)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i18 = phi i32 [ %i.ao, %bb.f ], [ %i.ag, %bb.e ]
  %.pn.i = phi i32 [ %i.al, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %.023.i = add i32 %.pn.i, %i.m                  ; 2 uses
  %i.ap = icmp eq i32 %.pn.i, %.sink.i18
  br i1 %i.ap, label %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread, label %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit

_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread: ; preds = %bb.b, %bb.c, %bb.g
  store ptr null, ptr %2, align 8, !tbaa !427
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit: ; preds = %bb.g
  store ptr null, ptr %2, align 8, !tbaa !427
  %i.aq = icmp slt i32 %.023.i, 0
  br i1 %i.aq, label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit, label %bb.h

bb.h:                                             ; preds = %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit
  %i.ar = zext nneg i32 %.023.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ar ; 4 uses
  %.val393.i = load i8, ptr %i.as, align 1, !tbaa !50
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %.val394.i = load i8, ptr %i.at, align 1, !tbaa !50
  %i.au = zext i8 %.val393.i to i16
  %i.av = shl nuw i16 %i.au, 8                    ; 2 uses
  %i.aw = zext i8 %.val394.i to i16
  %i.ax = or disjoint i16 %i.av, %i.aw            ; 2 uses
  %i.ay = icmp sgt i16 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.bf

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 10 ; 2 uses
  %i.ba = shl nuw i16 %i.ax, 1                    ; 3 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = zext i16 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 5 uses
  %.val371.i = load i8, ptr %i.bd, align 1, !tbaa !50
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  %.val372.i = load i8, ptr %i.be, align 1, !tbaa !50
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -2
  %.val369.i = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bg = getelementptr i8, ptr %i.bd, i64 -1
  %.val370.i = load i8, ptr %i.bg, align 1, !tbaa !50
  %i.bh = zext i8 %.val369.i to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8                ; 3 uses
  %i.bj = zext i8 %.val370.i to i32               ; 3 uses
  %i.bk = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.bl = or disjoint i32 %i.bb, 1
  %i.bm = add nuw nsw i32 %i.bl, %i.bk
  %narrow.i = mul nuw nsw i32 %i.bm, 14
  %i.bn = zext nneg i32 %narrow.i to i64
  %i.bo = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bn), !inline_history !876 ; 17 uses
  %.not367.i = icmp eq ptr %i.bo, null
  br i1 %.not367.i, label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = zext i8 %.val371.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = zext i8 %.val372.i to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br ; 2 uses
  %i.bv = zext i16 %i.ba to i64                   ; 3 uses
  %i.bw = or disjoint i32 %i.bi, %i.bj
  %i.bx = add nuw nsw i32 %i.bw, 1
  %wide.trip.count71 = zext nneg i32 %i.bx to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv ; 3 uses
  %i.by = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.bz = add nuw nsw i32 %i.by, 1                ; 2 uses
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %xtraiter = and i64 %i.ca, 1
  %i.cb = icmp eq i32 %i.by, 0
  br i1 %i.cb, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %i.ca, 131070
  br label %bb.k

bb.k:                                             ; preds = %bb.s, %.new
  %indvars.iv69 = phi i64 [ 0, %.new ], [ %indvars.iv.next70.1, %bb.s ] ; 3 uses
  %.0283.i42 = phi ptr [ %i.bu, %.new ], [ %.1284.i.1, %bb.s ] ; 4 uses
  %.0322.i40 = phi i8 [ 0, %.new ], [ %.1323.i.1, %bb.s ] ; 2 uses
  %.0324.i39 = phi i8 [ 0, %.new ], [ %.1325.i.1, %bb.s ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.cc = icmp eq i8 %.0322.i40, 0
  br i1 %i.cc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.0283.i42, i64 1 ; 2 uses
  %i.ce = load i8, ptr %.0283.i42, align 1, !tbaa !50 ; 3 uses
  %i.cf = and i8 %i.ce, 8
  %.not366.i = icmp eq i8 %i.cf, 0
  br i1 %.not366.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.0283.i42, i64 2
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !50
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ci = add i8 %.0322.i40, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.1325.i = phi i8 [ %i.ce, %bb.m ], [ %i.ce, %bb.l ], [ %.0324.i39, %bb.n ] ; 2 uses
  %.1323.i = phi i8 [ %i.ch, %bb.m ], [ 0, %bb.l ], [ %i.ci, %bb.n ] ; 2 uses
  %.1284.i = phi ptr [ %i.cg, %bb.m ], [ %i.cd, %bb.l ], [ %.0283.i42, %bb.n ] ; 4 uses
  %gep = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69
  %i.cj = getelementptr inbounds nuw i8, ptr %gep, i64 12
  store i8 %.1325.i, ptr %i.cj, align 2, !tbaa !514
  %i.ck = icmp eq i8 %.1323.i, 0
  br i1 %i.ck, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = add i8 %.1323.i, -1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %.1284.i, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.1284.i, align 1, !tbaa !50 ; 3 uses
  %i.co = and i8 %i.cn, 8
  %.not366.i.1 = icmp eq i8 %i.co, 0
  br i1 %.not366.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %.1284.i, i64 2
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !50
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1325.i.1 = phi i8 [ %i.cn, %bb.r ], [ %i.cn, %bb.q ], [ %.1325.i, %bb.p ] ; 3 uses
  %.1323.i.1 = phi i8 [ %i.cq, %bb.r ], [ 0, %bb.q ], [ %i.cl, %bb.p ] ; 2 uses
  %.1284.i.1 = phi ptr [ %i.cp, %bb.r ], [ %i.cm, %bb.q ], [ %.1284.i, %bb.p ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 26
  store i8 %.1325.i.1, ptr %i.cs, align 2, !tbaa !514
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader31.preheader.unr-lcssa, label %bb.k, !llvm.loop !877

.preheader31.preheader.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader31.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader31.preheader.unr-lcssa, %bb.j
  %indvars.iv69.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next70.1, %.preheader31.preheader.unr-lcssa ]
  %.0283.i42.epil.init = phi ptr [ %i.bu, %bb.j ], [ %.1284.i.1, %.preheader31.preheader.unr-lcssa ] ; 4 uses
  %.0322.i40.epil.init = phi i8 [ 0, %bb.j ], [ %.1323.i.1, %.preheader31.preheader.unr-lcssa ]
  %.0324.i39.epil.init = phi i8 [ 0, %bb.j ], [ %.1325.i.1, %.preheader31.preheader.unr-lcssa ]
  %lcmp.mod111 = trunc i32 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.ct = icmp eq i8 %.0322.i40.epil.init, 0
  br i1 %i.ct, label %bb.t, label %.preheader31.preheader.epilog-lcssa

bb.t:                                             ; preds = %.epil.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %.0283.i42.epil.init, i64 1
  %i.cv = load i8, ptr %.0283.i42.epil.init, align 1, !tbaa !50 ; 2 uses
  %i.cw = and i8 %i.cv, 8
  %.not366.i.epil = icmp eq i8 %i.cw, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %.0283.i42.epil.init, i64 2
  %spec.select = select i1 %.not366.i.epil, ptr %i.cu, ptr %i.cx
  br label %.preheader31.preheader.epilog-lcssa

.preheader31.preheader.epilog-lcssa:              ; preds = %bb.t, %.epil.preheader
  %.1325.i.epil = phi i8 [ %.0324.i39.epil.init, %.epil.preheader ], [ %i.cv, %bb.t ]
  %.1284.i.epil = phi ptr [ %.0283.i42.epil.init, %.epil.preheader ], [ %spec.select, %bb.t ]
  %gep.epil = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69.epil.init
  %i.cy = getelementptr inbounds nuw i8, ptr %gep.epil, i64 12
  store i8 %.1325.i.epil, ptr %i.cy, align 2, !tbaa !514
  br label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %.preheader31.preheader.unr-lcssa, %.preheader31.preheader.epilog-lcssa
  %.1284.i.lcssa = phi ptr [ %.1284.i.1, %.preheader31.preheader.unr-lcssa ], [ %.1284.i.epil, %.preheader31.preheader.epilog-lcssa ]
  %invariant.gep89 = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv
  br label %.preheader31

.preheader31:                                     ; preds = %.preheader31.preheader, %bb.x
  %indvars.iv73 = phi i64 [ 0, %.preheader31.preheader ], [ %indvars.iv.next74, %bb.x ] ; 2 uses
  %.2285.i45 = phi ptr [ %.1284.i.lcssa, %.preheader31.preheader ], [ %.3286.i, %bb.x ] ; 6 uses
  %.0306.i44 = phi i16 [ 0, %.preheader31.preheader ], [ %.1307.i, %bb.x ] ; 3 uses
  %gep90 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep89, i64 %indvars.iv73 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %gep90, i64 12
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !514
  %i.db = zext i8 %i.da to i32                    ; 3 uses
  %i.dc = and i32 %i.db, 2
  %.not363.i = icmp eq i32 %i.dc, 0
  br i1 %.not363.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader31
  %i.dd = getelementptr inbounds nuw i8, ptr %.2285.i45, i64 1
  %i.de = load i8, ptr %.2285.i45, align 1, !tbaa !50
  %i.df = and i32 %i.db, 16
  %.not365.i = icmp eq i32 %i.df, 0
  %i.dg = zext i8 %i.de to i16                    ; 2 uses
  %i.dh = sub nsw i16 0, %i.dg
  %i.di = select i1 %.not365.i, i16 %i.dh, i16 %i.dg
  %i.dj = add i16 %i.di, %.0306.i44
  br label %bb.x
end_hunk_4
begin_hunk_5_@_ZL38ImFontAtlasBuildSetupFontBakedFallbackP11ImFontBaked:bb.a
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float 4.000000e-01, float 5.000000e-01)
  %i.ay = fptosi float %i.ax to i32
  %i.az = sitofp i32 %i.ay to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = phi float [ %i.au, %bb.i ], [ %i.az, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ba, ptr %i.bb, align 4, !tbaa !264
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !364
  %i.be = call noundef ptr @_Z28ImFontAtlasBakedAddFontGlyphP11ImFontAtlasP11ImFontBakedP12ImFontConfigPK11ImFontGlyph(ptr noundef %i.bd, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit
  %.1 = phi ptr [ %i.be, %bb.k ], [ %.0, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !475
  %i.bh = ptrtoint ptr %.1 to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 44
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !262
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !264
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bo, ptr %i.bp, align 8, !tbaa !466
  ret void
}

declare noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN18ImFontAtlasBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !526  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12ImGuiStorageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN12ImGuiStorageD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #39
  unreachable

_ZN12ImGuiStorageD2Ev.exit:                       ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !376  ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !487  ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx.i = shl nsw i64 %i.i, 3
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !376
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN12ImGuiStorageD2Ev.exit
  %i.k = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.g, %_ZN12ImGuiStorageD2Ev.exit ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.k)
          to label %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39
  unreachable

.lr.ph.i:                                         ; preds = %_ZN12ImGuiStorageD2Ev.exit, %bb.f
  %.09.i = phi ptr [ %i.o, %bb.f ], [ %i.g, %_ZN12ImGuiStorageD2Ev.exit ] ; 2 uses
  %i.n = load ptr, ptr %.09.i, align 8, !tbaa !377
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.n)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #39
  unreachable

_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit: ; preds = %._crit_edge.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78   ; 2 uses
  %.not.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i2, label %_ZN8ImVectorIhED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.s)
          to label %_ZN8ImVectorIhED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #39
  unreachable

_ZN8ImVectorIhED2Ev.exit:                         ; preds = %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !439  ; 2 uses
  %.not.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i3, label %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN8ImVectorIhED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.w)
          to label %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #39
  unreachable

_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit:    ; preds = %_ZN8ImVectorIhED2Ev.exit, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !331 ; 2 uses
  %.not.i4 = icmp eq ptr %i.aa, null
  br i1 %.not.i4, label %_ZN8ImVectorI13ImTextureRectED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.aa)
          to label %_ZN8ImVectorI13ImTextureRectED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #39
  unreachable

_ZN8ImVectorI13ImTextureRectED2Ev.exit:           ; preds = %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !494 ; 2 uses
  %.not.i5 = icmp eq ptr %i.ae, null
  br i1 %.not.i5, label %_ZN8ImVectorI10stbrp_nodeED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN8ImVectorI13ImTextureRectED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ae)
          to label %_ZN8ImVectorI10stbrp_nodeED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #39
  unreachable

_ZN8ImVectorI10stbrp_nodeED2Ev.exit:              ; preds = %_ZN8ImVectorI13ImTextureRectED2Ev.exit, %bb.n
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #34 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nounwind }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = distinct !{!2, !46}
!3 = distinct !{!3, !46}
!4 = distinct !{!4, !46}
!5 = distinct !{!5, !46}
!6 = distinct !{!6, !46}
!7 = distinct !{!7, !46}
!8 = distinct !{!8, !46}
!9 = distinct !{!9, !46}
!10 = distinct !{!10, !46}
!11 = distinct !{!11, !46}
!12 = distinct !{!12, !46}
!13 = distinct !{!13, !46, !410}
!14 = distinct !{!14, !46, !410}
!15 = distinct !{!15, !46}
!16 = distinct !{null}
!17 = distinct !{!17, !46}
!18 = distinct !{!18, !46}
!19 = distinct !{!19, !46}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"float", !24, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29}
!31 = !{!"_ZTS6ImVec4", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!32 = !{!31, !28, i64 8}
!33 = !{!"_ZTS6ImVec2", !28, i64 0, !28, i64 4}
!34 = !{!"any pointer", !24, i64 0}
!35 = !{!"p1 _ZTS6ImVec4", !34, i64 0}
!36 = !{!"p1 _ZTS11ImFontAtlas", !34, i64 0}
!37 = !{!"p1 _ZTS6ImFont", !34, i64 0}
!38 = !{!"p1 _ZTS6ImVec2", !34, i64 0}
!39 = !{!"_ZTS8ImVectorI6ImVec2E", !25, i64 0, !25, i64 4, !38, i64 8}
!40 = !{!"any p2 pointer", !34, i64 0}
!41 = !{!"p2 _ZTS10ImDrawList", !40, i64 0}
!42 = !{!"_ZTS8ImVectorIP10ImDrawListE", !25, i64 0, !25, i64 4, !41, i64 8}
!43 = !{!"p1 _ZTS12ImGuiContext", !34, i64 0}
!44 = !{!"_ZTS20ImDrawListSharedData", !33, i64 0, !35, i64 8, !36, i64 16, !37, i64 24, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !28, i64 48, !25, i64 52, !31, i64 56, !39, i64 72, !42, i64 88, !43, i64 104, !24, i64 112, !28, i64 496, !24, i64 500}
!45 = !{!44, !28, i64 48}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!39, !38, i64 8}
!48 = !{!42, !41, i64 8}
!49 = !{!44, !28, i64 44}
!50 = !{!24, !24, i64 0}
!51 = !{!44, !28, i64 496}
!52 = !{!"llvm.loop.peeled.count", i32 1}
!53 = !{!"p1 _ZTS9ImDrawCmd", !34, i64 0}
!54 = !{!"_ZTS8ImVectorI9ImDrawCmdE", !25, i64 0, !25, i64 4, !53, i64 8}
!55 = !{!"p1 short", !34, i64 0}
!56 = !{!"_ZTS8ImVectorItE", !25, i64 0, !25, i64 4, !55, i64 8}
!57 = !{!"p1 _ZTS10ImDrawVert", !34, i64 0}
!58 = !{!"_ZTS8ImVectorI10ImDrawVertE", !25, i64 0, !25, i64 4, !57, i64 8}
!59 = !{!"p1 _ZTS20ImDrawListSharedData", !34, i64 0}
!60 = !{!"p1 _ZTS13ImTextureData", !34, i64 0}
!61 = !{!"long long", !24, i64 0}
!62 = !{!"_ZTS12ImTextureRef", !60, i64 0, !61, i64 8}
!63 = !{!"_ZTS15ImDrawCmdHeader", !31, i64 0, !62, i64 16, !25, i64 32}
!64 = !{!"p1 _ZTS13ImDrawChannel", !34, i64 0}
!65 = !{!"_ZTS8ImVectorI13ImDrawChannelE", !25, i64 0, !25, i64 4, !64, i64 8}
!66 = !{!"_ZTS18ImDrawListSplitter", !25, i64 0, !25, i64 4, !65, i64 8}
!67 = !{!"_ZTS8ImVectorI6ImVec4E", !25, i64 0, !25, i64 4, !35, i64 8}
!68 = !{!"p1 _ZTS12ImTextureRef", !34, i64 0}
!69 = !{!"_ZTS8ImVectorI12ImTextureRefE", !25, i64 0, !25, i64 4, !68, i64 8}
!70 = !{!"p1 omnipotent char", !34, i64 0}
!71 = !{!"_ZTS8ImVectorIhE", !25, i64 0, !25, i64 4, !70, i64 8}
!72 = !{!"_ZTS10ImDrawList", !54, i64 0, !56, i64 16, !58, i64 32, !25, i64 48, !25, i64 52, !59, i64 56, !57, i64 64, !55, i64 72, !39, i64 80, !63, i64 96, !66, i64 136, !67, i64 160, !69, i64 176, !71, i64 192, !28, i64 208, !70, i64 216}
!73 = !{!72, !59, i64 56}
!74 = !{!42, !25, i64 0}
!75 = !{!"p1 _ZTS10ImDrawList", !34, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!42, !25, i64 4}
!78 = !{!71, !70, i64 8}
!79 = !{!69, !68, i64 8}
!80 = !{!67, !35, i64 8}
!81 = !{!65, !64, i64 8}
!82 = !{!58, !57, i64 8}
!83 = !{!56, !55, i64 8}
!84 = !{!54, !53, i64 8}
!85 = !{!54, !25, i64 4}
!86 = !{!54, !25, i64 0}
!87 = !{!56, !25, i64 4}
!88 = !{!56, !25, i64 0}
!89 = !{!58, !25, i64 4}
!90 = !{!58, !25, i64 0}
!91 = !{!72, !25, i64 48}
!92 = !{!72, !25, i64 52}
!93 = !{!67, !25, i64 4}
!94 = !{!67, !25, i64 0}
!95 = !{!69, !25, i64 4}
!96 = !{!69, !25, i64 0}
!97 = !{!71, !25, i64 4}
!98 = !{!71, !25, i64 0}
!99 = !{!39, !25, i64 4}
!100 = !{!39, !25, i64 0}
!101 = !{!66, !25, i64 0}
!102 = !{!66, !25, i64 4}
!103 = !{!72, !28, i64 208}
!104 = !{!72, !25, i64 0}
!105 = !{!72, !53, i64 8}
!106 = !{!"_ZTS9ImDrawCmd", !31, i64 0, !62, i64 16, !25, i64 32, !25, i64 36, !25, i64 40, !34, i64 48, !34, i64 56, !25, i64 64, !25, i64 68}
!107 = !{!106, !25, i64 40}
!108 = !{!106, !34, i64 48}
!109 = !{!106, !25, i64 36}
!110 = !{!72, !25, i64 16}
!111 = !{!72, !55, i64 24}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = !{!72, !55, i64 72}
!114 = !{!60, !60, i64 0}
!115 = !{!61, !61, i64 0}
!116 = !{i64 0, i64 8, !114, i64 8, i64 8, !115}
!117 = !{!72, !25, i64 128}
!118 = !{!66, !25, i64 8}
!119 = !{!65, !25, i64 4}
!120 = !{!65, !25, i64 0}
!121 = !{!44, !43, i64 104}
!122 = !{!"bool", !24, i64 0}
!123 = !{!"double", !24, i64 0}
!124 = !{!"_ZTS16ImGuiMouseSource", !24, i64 0}
!125 = !{!"short", !24, i64 0}
!126 = !{!"_ZTS7ImGuiIO", !25, i64 0, !25, i64 4, !33, i64 8, !33, i64 16, !28, i64 24, !28, i64 28, !70, i64 32, !70, i64 40, !34, i64 48, !36, i64 56, !37, i64 64, !122, i64 72, !122, i64 73, !122, i64 74, !122, i64 75, !122, i64 76, !122, i64 77, !122, i64 78, !122, i64 79, !122, i64 80, !122, i64 81, !122, i64 82, !122, i64 83, !25, i64 84, !122, i64 88, !122, i64 89, !122, i64 90, !122, i64 91, !122, i64 92, !122, i64 93, !25, i64 96, !122, i64 100, !122, i64 101, !28, i64 104, !28, i64 108, !28, i64 112, !28, i64 116, !28, i64 120, !28, i64 124, !28, i64 128, !122, i64 132, !122, i64 133, !122, i64 134, !122, i64 135, !122, i64 136, !122, i64 137, !122, i64 138, !122, i64 139, !122, i64 140, !122, i64 141, !70, i64 144, !70, i64 152, !34, i64 160, !34, i64 168, !34, i64 176, !122, i64 184, !122, i64 185, !122, i64 186, !122, i64 187, !122, i64 188, !122, i64 189, !122, i64 190, !28, i64 192, !25, i64 196, !25, i64 200, !25, i64 204, !25, i64 208, !33, i64 212, !43, i64 224, !33, i64 232, !24, i64 240, !28, i64 248, !28, i64 252, !124, i64 256, !122, i64 260, !122, i64 261, !122, i64 262, !122, i64 263, !25, i64 264, !24, i64 268, !122, i64 2748, !33, i64 2752, !24, i64 2760, !24, i64 2800, !24, i64 2840, !24, i64 2845, !24, i64 2850, !24, i64 2860, !24, i64 2870, !24, i64 2880, !24, i64 2920, !24, i64 2925, !122, i64 2930, !122, i64 2931, !24, i64 2932, !24, i64 2952, !24, i64 2972, !28, i64 2992, !122, i64 2996, !122, i64 2997, !125, i64 2998, !56, i64 3000, !28, i64 3016, !34, i64 3024, !34, i64 3032, !34, i64 3040}
!127 = !{!"p2 _ZTS13ImTextureData", !40, i64 0}
!128 = !{!"_ZTS8ImVectorIP13ImTextureDataE", !25, i64 0, !25, i64 4, !127, i64 8}
!129 = !{!"_ZTS15ImGuiPlatformIO", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !125, i64 56, !25, i64 60, !25, i64 64, !25, i64 68, !34, i64 72, !34, i64 80, !34, i64 88, !34, i64 96, !128, i64 104}
!130 = !{!"_ZTS8ImGuiDir", !24, i64 0}
!131 = !{!"_ZTS10ImGuiStyle", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !33, i64 20, !28, i64 28, !28, i64 32, !28, i64 36, !33, i64 40, !33, i64 48, !130, i64 56, !28, i64 60, !28, i64 64, !28, i64 68, !28, i64 72, !33, i64 76, !28, i64 84, !28, i64 88, !33, i64 92, !33, i64 100, !33, i64 108, !33, i64 116, !28, i64 124, !28, i64 128, !28, i64 132, !28, i64 136, !28, i64 140, !28, i64 144, !28, i64 148, !28, i64 152, !28, i64 156, !28, i64 160, !28, i64 164, !28, i64 168, !28, i64 172, !28, i64 176, !28, i64 180, !28, i64 184, !28, i64 188, !28, i64 192, !28, i64 196, !33, i64 200, !25, i64 208, !28, i64 212, !28, i64 216, !28, i64 220, !28, i64 224, !28, i64 228, !28, i64 232, !28, i64 236, !28, i64 240, !130, i64 244, !33, i64 248, !33, i64 256, !28, i64 264, !28, i64 268, !28, i64 272, !33, i64 276, !33, i64 284, !33, i64 292, !33, i64 300, !28, i64 308, !122, i64 312, !122, i64 313, !122, i64 314, !28, i64 316, !28, i64 320, !24, i64 324, !28, i64 1300, !28, i64 1304, !28, i64 1308, !25, i64 1312, !25, i64 1316, !28, i64 1320, !28, i64 1324}
!132 = !{!"p2 _ZTS11ImFontAtlas", !40, i64 0}
!133 = !{!"_ZTS8ImVectorIP11ImFontAtlasE", !25, i64 0, !25, i64 4, !132, i64 8}
!134 = !{!"p1 _ZTS11ImFontBaked", !34, i64 0}
!135 = !{!"p1 _ZTS15ImGuiInputEvent", !34, i64 0}
!136 = !{!"_ZTS8ImVectorI15ImGuiInputEventE", !25, i64 0, !25, i64 4, !135, i64 8}
!137 = !{!"p2 _ZTS11ImGuiWindow", !40, i64 0}
!138 = !{!"_ZTS8ImVectorIP11ImGuiWindowE", !25, i64 0, !25, i64 4, !137, i64 8}
!139 = !{!"p1 _ZTS20ImGuiWindowStackData", !34, i64 0}
!140 = !{!"_ZTS8ImVectorI20ImGuiWindowStackDataE", !25, i64 0, !25, i64 4, !139, i64 8}
!141 = !{!"p1 _ZTS16ImGuiStoragePair", !34, i64 0}
!142 = !{!"_ZTS8ImVectorI16ImGuiStoragePairE", !25, i64 0, !25, i64 4, !141, i64 8}
end_hunk_5
