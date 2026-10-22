Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DebugDraw?download=true
inline.NumInlined: 45
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir = internal unnamed_addr global [32 x float] zeroinitializer, align 16
@_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE4init = internal unnamed_addr global i1 false, align 1
@_ZZ16duAppendCylinderP11duDebugDrawffffffjE3dir = internal unnamed_addr global [32 x float] zeroinitializer, align 16
@_ZZ16duAppendCylinderP11duDebugDrawffffffjE4init = internal unnamed_addr global i1 false, align 1
@_ZZ14duAppendCircleP11duDebugDrawffffjE3dir = internal unnamed_addr global [80 x float] zeroinitializer, align 16
@_ZZ14duAppendCircleP11duDebugDrawffffjE4init = internal unnamed_addr global i1 false, align 1
@_ZTV13duDisplayList = unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN13duDisplayListD1Ev, ptr @_ZN13duDisplayListD0Ev, ptr @_ZN13duDisplayList9depthMaskEb, ptr @__cxa_pure_virtual, ptr @_ZN13duDisplayList5beginE21duDebugDrawPrimitivesf, ptr @_ZN13duDisplayList6vertexEPKfj, ptr @_ZN13duDisplayList6vertexEfffj, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN13duDisplayList3endEv, ptr @_ZN11duDebugDraw9areaToColEj] }, align 8
@_ZTV11duDebugDraw = unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11duDebugDraw9areaToColEj] }, align 8

@_ZN11duDebugDrawD1Ev = unnamed_addr alias void (ptr), ptr @_ZN11duDebugDrawD2Ev
@_ZN13duDisplayListD1Ev = unnamed_addr alias void (ptr), ptr @_ZN13duDisplayListD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN11duDebugDrawD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN11duDebugDrawD0Ev(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #11
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -16777153, 0) i32 @_ZN11duDebugDraw9areaToColEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = and i32 %i.b, 1
  %i.d = lshr i32 %1, 2                           ; 2 uses
  %i.e = and i32 %i.d, 2
  %i.f = or disjoint i32 %i.c, %i.e
  %i.g = and i32 %i.d, 1
  %i.h = lshr i32 %1, 3
  %i.i = and i32 %i.h, 2
  %i.j = or disjoint i32 %i.g, %i.i
  %i.k = and i32 %1, 1
  %i.l = lshr i32 %1, 4
  %i.m = and i32 %i.l, 2
  %i.n = or disjoint i32 %i.m, %i.k
  %i.o = mul nuw nsw i32 %i.f, 63
  %i.p = mul nuw nsw i32 %i.j, 16128
  %i.q = add nuw nsw i32 %i.p, 16128
  %i.r = mul nuw nsw i32 %i.n, 4128768
  %i.s = add nuw nsw i32 %i.r, 4128768
  %2 = add nuw nsw i32 %i.o, -16777153
  %i.t = or i32 %2, %i.q
  %i.u = or i32 %i.t, %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.u, %bb.b ], [ -16384, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 4128768, 0) i32 @_Z10duIntToColii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 1
  %i.b = and i32 %i.a, 1
  %i.c = lshr i32 %0, 2                           ; 2 uses
  %i.d = and i32 %i.c, 2
  %i.e = or disjoint i32 %i.b, %i.d
  %i.f = and i32 %i.c, 1
  %i.g = lshr i32 %0, 3
  %i.h = and i32 %i.g, 2
  %i.i = or disjoint i32 %i.f, %i.h
  %i.j = and i32 %0, 1
  %i.k = lshr i32 %0, 4
  %i.l = and i32 %i.k, 2
  %i.m = or disjoint i32 %i.l, %i.j
  %i.n = mul nuw nsw i32 %i.e, 63
  %i.o = add nuw nsw i32 %i.n, 63
  %i.p = mul nuw nsw i32 %i.i, 16128
  %i.q = add nuw nsw i32 %i.p, 16128
  %i.r = mul nuw nsw i32 %i.m, 4128768
  %i.s = add nuw nsw i32 %i.r, 4128768
  %i.t = shl i32 %1, 24
  %i.u = or disjoint i32 %i.o, %i.t
  %i.v = or i32 %i.u, %i.q
  %i.w = or i32 %i.v, %i.s
  ret i32 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z10duIntToColiPf(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i32 %0, 2                           ; 2 uses
  %i.b = lshr i32 %0, 1
  %i.c = lshr i32 %0, 3
  %i.d = and i32 %i.a, 1
  %i.e = lshr i32 %0, 4
  %i.f = and i32 %i.e, 2
  %i.g = or disjoint i32 %i.d, %i.f
  %i.h = and i32 %0, 1
  %i.i = and i32 %i.a, 2
  %i.j = or disjoint i32 %i.i, %i.h
  %i.k = and i32 %i.b, 1
  %i.l = and i32 %i.c, 2
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = mul nuw nsw i32 %i.j, 63
  %i.o = add nuw nsw i32 %i.n, 63
  %i.p = uitofp nneg i32 %i.o to float
  %i.q = mul nuw nsw i32 %i.m, 63
  %i.r = add nuw nsw i32 %i.q, 63
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = insertelement <2 x float> poison, float %i.p, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1
  %i.v = fdiv <2 x float> %i.u, splat (float 2.550000e+02)
  %i.w = fsub <2 x float> splat (float 1.000000e+00), %i.v
  store <2 x float> %i.w, ptr %1, align 4, !tbaa !14
  %i.x = mul nuw nsw i32 %i.g, 63
  %i.y = add nuw nsw i32 %i.x, 63
  %i.z = uitofp nneg i32 %i.y to float
  %i.aa = fdiv float %i.z, 2.550000e+02
  %i.ab = fsub float 1.000000e+00, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ab, ptr %i.ac, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z15duCalcBoxColorsPjjj(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %1, 255
  %i.b = lshr i32 %1, 8
  %i.c = and i32 %i.b, 255
  %i.d = lshr i32 %1, 16
  %i.e = and i32 %i.d, 255
  %i.f = and i32 %1, -16777216
  %i.g = mul nuw nsw i32 %i.a, 250
  %i.h = lshr i32 %i.g, 8
  %i.i = mul nuw nsw i32 %i.c, 250
  %i.j = and i32 %i.i, 65280
  %i.k = mul nuw nsw i32 %i.e, 64000
  %i.l = and i32 %i.k, 16711680
  %i.m = or disjoint i32 %i.h, %i.f
  %i.n = or disjoint i32 %i.m, %i.j
  %i.o = or disjoint i32 %i.n, %i.l
  store i32 %i.o, ptr %0, align 4, !tbaa !15
  %i.p = and i32 %2, 255                          ; 3 uses
  %i.q = lshr i32 %2, 8
  %i.r = and i32 %i.q, 255                        ; 3 uses
  %i.s = lshr i32 %2, 16
  %i.t = and i32 %i.s, 255                        ; 3 uses
  %i.u = and i32 %2, -16777216                    ; 3 uses
  %i.v = mul nuw nsw i32 %i.p, 140
  %i.w = lshr i32 %i.v, 8
  %i.x = mul nuw nsw i32 %i.r, 140
  %i.y = and i32 %i.x, 65280
  %i.z = mul nuw nsw i32 %i.t, 35840
  %i.aa = and i32 %i.z, 16711680
  %i.ab = or disjoint i32 %i.w, %i.y
  %i.ac = or disjoint i32 %i.ab, %i.aa
  %i.ad = or disjoint i32 %i.ac, %i.u
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !15
  %i.af = mul nuw nsw i32 %i.p, 165
  %i.ag = lshr i32 %i.af, 8
  %i.ah = mul nuw nsw i32 %i.r, 165
  %i.ai = and i32 %i.ah, 65280
  %i.aj = mul nuw nsw i32 %i.t, 42240
  %i.ak = and i32 %i.aj, 16711680
  %i.al = or disjoint i32 %i.ag, %i.ai
  %i.am = or disjoint i32 %i.al, %i.ak
  %i.an = or disjoint i32 %i.am, %i.u             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !15
  %i.ap = mul nuw nsw i32 %i.p, 217
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = mul nuw nsw i32 %i.r, 217
  %i.as = and i32 %i.ar, 65280
  %i.at = mul nuw nsw i32 %i.t, 55552
  %i.au = and i32 %i.at, 16711680
  %i.av = or disjoint i32 %i.aq, %i.as
  %i.aw = or disjoint i32 %i.av, %i.au
  %i.ax = or disjoint i32 %i.aw, %i.u             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.an, ptr %i.az, align 4, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ax, ptr %i.ba, align 4, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z23duDebugDrawCylinderWireP11duDebugDrawffffffjf(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7, float noundef %8) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef %8) #12, !call_target !23
  tail call void @_Z20duAppendCylinderWireP11duDebugDrawffffffj(ptr noundef nonnull %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7)
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0) #12, !call_target !58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z20duAppendCylinderWireP11duDebugDrawffffffj(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE4init, align 1
  br i1 %.b, label %.loopexit77, label %.loopexit77.loopexit

.loopexit77.loopexit:                             ; preds = %bb.b
  store i1 true, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE4init, align 1
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float f0x3F6C835E, float f0x3EC3EF16>, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, align 16, !tbaa !14
  store <4 x float> <float f0x3F3504F3, float f0x3F3504F3, float f0x3EC3EF15, float f0x3F6C835E>, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 16), align 16, !tbaa !14
  store <4 x float> <float f0xB33BBD2E, float 1.000000e+00, float f0xBEC3EF18, float f0x3F6C835E>, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 32), align 16, !tbaa !14
  store <4 x float> <float f0xBF3504F3, float f0x3F3504F3, float f0xBF6C8360, float f0x3EC3EF10>, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 48), align 16, !tbaa !14
  store <4 x float> <float -1.000000e+00, float f0xB3BBBD2E, float f0xBF6C835E, float f0xBEC3EF15>, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 64), align 16, !tbaa !14
  store <4 x float> <float f0xBF3504F1, float f0xBF3504F5, float f0xBEC3EF0B, float f0xBF6C8361>, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 80), align 16, !tbaa !14
  store <4 x float> <float f0x324CDE2E, float -1.000000e+00, float f0x3EC3EF1B, float f0xBF6C835D>, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 96), align 16, !tbaa !14
  store <4 x float> <float 7.071070e-01, float f0xBF3504EF, float f0x3F6C835F, float f0xBEC3EF15>, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 112), align 16, !tbaa !14
  br label %.loopexit77

.loopexit77:                                      ; preds = %.loopexit77.loopexit, %bb.b
  %i.a = fadd float %1, %4
  %i.b = fmul float %i.a, 5.000000e-01            ; 12 uses
  %i.c = fadd float %3, %6
  %i.d = fmul float %i.c, 5.000000e-01            ; 12 uses
end_hunk_0
