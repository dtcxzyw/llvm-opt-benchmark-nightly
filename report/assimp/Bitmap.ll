Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Bitmap?download=true
inline.NumInlined: 19
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp6Bitmap4SaveEP9aiTexturePNS_8IOStreamE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = alloca [40 x i8], align 16               ; 11 uses
  %i.c = alloca [14 x i8], align 2                ; 8 uses
  %i.d = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = shl i32 %i.e, 2
  %i.i = and i32 %i.h, 65532
  %i.j = mul i32 %i.i, %i.g                       ; 2 uses
  %i.k = add i32 %i.j, 54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i16 19778, ptr %i.c, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i32 %i.k, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i16 0, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 0, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i32 54, ptr %i.o, align 2
  %i.p = load ptr, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 14, i64 noundef 1), !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 40, ptr %i.b, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.e, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.g, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 32, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.j, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 40, i64 noundef 1), !inline_history !7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.ae = load i32, ptr %i.f, align 4             ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN6Assimp6Bitmap9WriteDataEP9aiTexturePNS_8IOStreamE.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.pre.i = load i32, ptr %0, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %i.aj = phi i32 [ %i.ae, %.preheader.lr.ph.i ], [ %i.bk, %._crit_edge.i ]
  %i.ak = phi i32 [ %.pre.i, %.preheader.lr.ph.i ], [ %i.bl, %._crit_edge.i ] ; 2 uses
  %.01923.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.bm, %._crit_edge.i ] ; 2 uses
  %.not25.i = icmp eq i32 %i.ak, 0
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.al = zext i32 %i.ak to i64
  %i.am = xor i64 %.01923.i, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.an = phi i64 [ %i.al, %.lr.ph.i ], [ %i.bi, %bb.c ]
  %.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bg, %bb.c ] ; 2 uses
  %i.ao = load ptr, ptr %i.af, align 8
  %i.ap = load i32, ptr %i.f, align 4
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add nsw i64 %i.aq, %i.am
  %i.as = mul i64 %i.ar, %i.an
  %i.at = getelementptr [4 x i8], ptr %i.ao, i64 %i.as
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %.022.i ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i8, ptr %i.av, align 1
  store i8 %i.aw, ptr %i.a, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ay = load i8, ptr %i.ax, align 1
  store i8 %i.ay, ptr %i.ag, align 1
  %i.az = load i8, ptr %i.au, align 1
  store i8 %i.az, ptr %i.ah, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %i.bb = load i8, ptr %i.ba, align 1
  store i8 %i.bb, ptr %i.ai, align 1
  %i.bc = load ptr, ptr %1, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !inline_history !8 ; 0 uses
  %i.bg = add nuw nsw i64 %.022.i, 1              ; 2 uses
  %i.bh = load i32, ptr %0, align 8               ; 2 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = icmp samesign ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.c, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre26.i = load i32, ptr %i.f, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.bk = phi i32 [ %.pre26.i, %._crit_edge.loopexit.i ], [ %i.aj, %.preheader.i ] ; 2 uses
  %i.bl = phi i32 [ %i.bh, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ]
  %i.bm = add nuw nsw i64 %.01923.i, 1            ; 2 uses
  %i.bn = zext i32 %i.bk to i64
  %i.bo = icmp samesign ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %.preheader.i, label %_ZN6Assimp6Bitmap9WriteDataEP9aiTexturePNS_8IOStreamE.exit, !llvm.loop !1

_ZN6Assimp6Bitmap9WriteDataEP9aiTexturePNS_8IOStreamE.exit: ; preds = %._crit_edge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6Assimp6Bitmap9WriteDataEP9aiTexturePNS_8IOStreamE.exit
  ret i1 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp6Bitmap11WriteHeaderERNS0_6HeaderEPNS_8IOStreamE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [14 x i8], align 2                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = load i16, ptr %0, align 4
  store i16 %i.b, ptr %i.a, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  store i32 %i.e, ptr %i.c, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load <2 x i16>, ptr %i.g, align 4
  store <2 x i16> %i.h, ptr %i.f, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  store i32 %i.k, ptr %i.i, align 2
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 14, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp6Bitmap8WriteDIBERNS0_3DIBEPNS_8IOStreamE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = load <2 x i32>, ptr %0, align 4
  store <2 x i32> %i.b, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4
  store i32 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load <2 x i16>, ptr %i.g, align 4
  store <2 x i16> %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <4 x i32>, ptr %i.j, align 4
  store <4 x i32> %i.k, ptr %i.i, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load <2 x i32>, ptr %i.m, align 4
  store <2 x i32> %i.n, ptr %i.l, align 16
  %i.o = load ptr, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp6Bitmap9WriteDataEP9aiTexturePNS_8IOStreamE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge24, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.pre = load i32, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.h = phi i32 [ %i.c, %.preheader.lr.ph ], [ %i.ai, %._crit_edge ]
  %i.i = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.aj, %._crit_edge ] ; 2 uses
  %.01923 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ak, %._crit_edge ] ; 2 uses
  %.not25 = icmp eq i32 %i.i, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = zext i32 %i.i to i64
  %i.k = xor i64 %.01923, -1
  br label %bb.b

._crit_edge24:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.l = phi i64 [ %i.j, %.lr.ph ], [ %i.ag, %bb.b ]
  %.022 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = load i32, ptr %i.b, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = add nsw i64 %i.o, %i.k
  %i.q = mul i64 %i.p, %i.l
  %i.r = getelementptr [4 x i8], ptr %i.m, i64 %i.q
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %.022 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 1
  store i8 %i.u, ptr %i.a, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1
  store i8 %i.w, ptr %i.e, align 1
  %i.x = load i8, ptr %i.s, align 1
  store i8 %i.x, ptr %i.f, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.z = load i8, ptr %i.y, align 1
  store i8 %i.z, ptr %i.g, align 1
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1) ; 0 uses
  %i.ae = add nuw nsw i64 %.022, 1                ; 2 uses
  %i.af = load i32, ptr %0, align 8               ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = icmp samesign ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !0

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre26 = load i32, ptr %i.b, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ai = phi i32 [ %.pre26, %._crit_edge.loopexit ], [ %i.h, %.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.af, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.ak = add nuw nsw i64 %.01923, 1              ; 2 uses
  %i.al = zext i32 %i.ai to i64
  %i.am = icmp samesign ult i64 %i.ak, %i.al
  br i1 %i.am, label %.preheader, label %._crit_edge24, !llvm.loop !1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = distinct !{!1, !5}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{ptr @_ZN6Assimp6Bitmap11WriteHeaderERNS0_6HeaderEPNS_8IOStreamE}
!7 = !{ptr @_ZN6Assimp6Bitmap8WriteDIBERNS0_3DIBEPNS_8IOStreamE}
!8 = !{ptr @_ZN6Assimp6Bitmap9WriteDataEP9aiTexturePNS_8IOStreamE}
end_hunk_0
