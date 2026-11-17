Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/crcspeed?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@CRC64_DUAL_CUTOFF = internal unnamed_addr global i64 1024, align 8, !guid !17
@CRC64_TRI_CUTOFF = internal unnamed_addr global i64 16384, align 8, !guid !18

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed64little_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 !guid !27 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = trunc i64 %indvars.iv to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !19
  %i.c = call i64 %0(i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 1) #7
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.c, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv30 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = lshr i64 %i.f, 8
  %i.k = xor i64 %i.i, %i.j                       ; 3 uses
  %gep = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  store i64 %i.k, ptr %gep, align 8, !tbaa !21
  %i.l = and i64 %i.k, 255
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = lshr i64 %i.k, 8
  %i.p = xor i64 %i.n, %i.o                       ; 3 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 4096
  store i64 %i.p, ptr %gep.1, align 8, !tbaa !21
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = lshr i64 %i.p, 8
  %i.u = xor i64 %i.s, %i.t                       ; 3 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.e, i64 6144
  store i64 %i.u, ptr %gep.2, align 8, !tbaa !21
  %i.v = and i64 %i.u, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = lshr i64 %i.u, 8
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.e, i64 8192
  store i64 %i.z, ptr %gep.3, align 8, !tbaa !21
  %i.aa = and i64 %i.z, 255
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !21
  %i.ad = lshr i64 %i.z, 8
  %i.ae = xor i64 %i.ac, %i.ad                    ; 3 uses
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.e, i64 10240
  store i64 %i.ae, ptr %gep.4, align 8, !tbaa !21
  %i.af = and i64 %i.ae, 255
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.ai = lshr i64 %i.ae, 8
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.e, i64 12288
  store i64 %i.aj, ptr %gep.5, align 8, !tbaa !21
  %i.ak = and i64 %i.aj, 255
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = lshr i64 %i.aj, 8
  %i.ao = xor i64 %i.am, %i.an
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.e, i64 14336
  store i64 %i.ao, ptr %gep.6, align 8, !tbaa !21
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, 256
  br i1 %exitcond33.not, label %bb.c, label %.preheader, !llvm.loop !1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed16little_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 !guid !28 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !16
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.c
  %i.b = call zeroext i16 %0(i16 noundef zeroext 0, ptr noundef nonnull %i.a, i64 noundef 1) #7
  %i.c = load i32, ptr %i.a, align 4, !tbaa !16   ; 3 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %1, i64 %i.d
  store i16 %i.b, ptr %i.e, align 2, !tbaa !24
  %i.f = add nsw i32 %i.c, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !16
  %i.g = icmp slt i32 %i.c, 255
  br i1 %i.g, label %bb.c, label %bb.b, !llvm.loop !2

bb.d:                                             ; preds = %bb.e
  ret void

bb.e:                                             ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv ; 8 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !24   ; 2 uses
  %i.j = lshr i16 %i.i, 8
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !24   ; 2 uses
  %i.n = shl i16 %i.i, 8
  %i.o = xor i16 %i.m, %i.n                       ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  store i16 %i.o, ptr %gep, align 2, !tbaa !24
  %i.p = lshr i16 %i.o, 8
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !24   ; 2 uses
  %i.t = shl i16 %i.m, 8
  %i.u = xor i16 %i.s, %i.t                       ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 1024
  store i16 %i.u, ptr %gep.1, align 2, !tbaa !24
  %i.v = lshr i16 %i.u, 8
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !24   ; 2 uses
  %i.z = shl i16 %i.s, 8
  %i.aa = xor i16 %i.y, %i.z                      ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 1536
  store i16 %i.aa, ptr %gep.2, align 2, !tbaa !24
  %i.ab = lshr i16 %i.aa, 8
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !24 ; 2 uses
  %i.af = shl i16 %i.y, 8
  %i.ag = xor i16 %i.ae, %i.af                    ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.h, i64 2048
  store i16 %i.ag, ptr %gep.3, align 2, !tbaa !24
  %i.ah = lshr i16 %i.ag, 8
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !24 ; 2 uses
  %i.al = shl i16 %i.ae, 8
  %i.am = xor i16 %i.ak, %i.al                    ; 2 uses
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.h, i64 2560
  store i16 %i.am, ptr %gep.4, align 2, !tbaa !24
  %i.an = lshr i16 %i.am, 8
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !24 ; 2 uses
  %i.ar = shl i16 %i.ak, 8
  %i.as = xor i16 %i.aq, %i.ar                    ; 2 uses
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.h, i64 3072
  store i16 %i.as, ptr %gep.5, align 2, !tbaa !24
  %i.at = lshr i16 %i.as, 8
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !24
  %i.ax = shl i16 %i.aq, 8
  %i.ay = xor i16 %i.aw, %i.ax
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.h, i64 3584
  store i16 %i.ay, ptr %gep.6, align 2, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !3
}

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed64big_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 !guid !37 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = trunc i64 %indvars.iv.i to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !19
  %i.c = call i64 %0(i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 1) #7, !inline_history !25
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  store i64 %i.c, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.b, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.preheader.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv30.i ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = lshr i64 %i.f, 8
  %i.k = xor i64 %i.i, %i.j                       ; 3 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  store i64 %i.k, ptr %gep.i, align 8, !tbaa !21
  %i.l = and i64 %i.k, 255
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = lshr i64 %i.k, 8
  %i.p = xor i64 %i.n, %i.o                       ; 3 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4096
  store i64 %i.p, ptr %gep.1.i, align 8, !tbaa !21
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = lshr i64 %i.p, 8
  %i.u = xor i64 %i.s, %i.t                       ; 3 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 6144
  store i64 %i.u, ptr %gep.2.i, align 8, !tbaa !21
  %i.v = and i64 %i.u, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = lshr i64 %i.u, 8
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8192
  store i64 %i.z, ptr %gep.3.i, align 8, !tbaa !21
  %i.aa = and i64 %i.z, 255
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !21
  %i.ad = lshr i64 %i.z, 8
  %i.ae = xor i64 %i.ac, %i.ad                    ; 3 uses
  %gep.4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10240
  store i64 %i.ae, ptr %gep.4.i, align 8, !tbaa !21
  %i.af = and i64 %i.ae, 255
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.ai = lshr i64 %i.ae, 8
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %gep.5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12288
  store i64 %i.aj, ptr %gep.5.i, align 8, !tbaa !21
  %i.ak = and i64 %i.aj, 255
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = lshr i64 %i.aj, 8
  %i.ao = xor i64 %i.am, %i.an
  %gep.6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 14336
  store i64 %i.ao, ptr %gep.6.i, align 8, !tbaa !21
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, 256
  br i1 %exitcond33.not.i, label %vector.body, label %.preheader.i, !llvm.loop !1

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ap, align 8, !tbaa !21
  %wide.load19 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !21
  %i.ar = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.as = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load19)
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !21
  store <2 x i64> %i.as, ptr %i.aq, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, 256
  br i1 %i.at, label %crcspeed64little_init.exit, label %vector.body, !llvm.loop !29

crcspeed64little_init.exit:                       ; preds = %vector.body
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2048
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %crcspeed64little_init.exit
  %index22 = phi i64 [ 0, %crcspeed64little_init.exit ], [ %index.next25, %vector.body21 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index22 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load23 = load <2 x i64>, ptr %i.av, align 8, !tbaa !21
  %wide.load24 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !21
  %i.ax = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load23)
  %i.ay = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load24)
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !21
  store <2 x i64> %i.ay, ptr %i.aw, align 8, !tbaa !21
  %index.next25 = add nuw i64 %index22, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next25, 256
  br i1 %i.az, label %crcspeed64little_init.exit.1, label %vector.body21, !llvm.loop !30

crcspeed64little_init.exit.1:                     ; preds = %vector.body21
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4096
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %crcspeed64little_init.exit.1
  %index29 = phi i64 [ 0, %crcspeed64little_init.exit.1 ], [ %index.next32, %vector.body28 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index29 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load30 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !21
  %wide.load31 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !21
  %i.bd = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load30)
  %i.be = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load31)
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !21
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !21
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next32, 256
  br i1 %i.bf, label %crcspeed64little_init.exit.2, label %vector.body28, !llvm.loop !31

crcspeed64little_init.exit.2:                     ; preds = %vector.body28
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 6144
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %crcspeed64little_init.exit.2
  %index36 = phi i64 [ 0, %crcspeed64little_init.exit.2 ], [ %index.next39, %vector.body35 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index36 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %wide.load37 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !21
  %wide.load38 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !21
  %i.bj = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load37)
  %i.bk = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load38)
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !21
  store <2 x i64> %i.bk, ptr %i.bi, align 8, !tbaa !21
  %index.next39 = add nuw i64 %index36, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next39, 256
  br i1 %i.bl, label %crcspeed64little_init.exit.3, label %vector.body35, !llvm.loop !32

crcspeed64little_init.exit.3:                     ; preds = %vector.body35
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8192
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %crcspeed64little_init.exit.3
  %index43 = phi i64 [ 0, %crcspeed64little_init.exit.3 ], [ %index.next46, %vector.body42 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index43 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load44 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !21
  %wide.load45 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !21
  %i.bp = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load44)
  %i.bq = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load45)
  store <2 x i64> %i.bp, ptr %i.bn, align 8, !tbaa !21
  store <2 x i64> %i.bq, ptr %i.bo, align 8, !tbaa !21
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next46, 256
  br i1 %i.br, label %crcspeed64little_init.exit.4, label %vector.body42, !llvm.loop !33

crcspeed64little_init.exit.4:                     ; preds = %vector.body42
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 10240
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %crcspeed64little_init.exit.4
  %index50 = phi i64 [ 0, %crcspeed64little_init.exit.4 ], [ %index.next53, %vector.body49 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index50 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load51 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !21
  %wide.load52 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !21
  %i.bv = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load51)
  %i.bw = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load52)
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !tbaa !21
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !21
  %index.next53 = add nuw i64 %index50, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next53, 256
  br i1 %i.bx, label %crcspeed64little_init.exit.5, label %vector.body49, !llvm.loop !34

crcspeed64little_init.exit.5:                     ; preds = %vector.body49
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12288
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %crcspeed64little_init.exit.5
  %index57 = phi i64 [ 0, %crcspeed64little_init.exit.5 ], [ %index.next60, %vector.body56 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index57 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load58 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !21
  %wide.load59 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !21
  %i.cb = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load58)
  %i.cc = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load59)
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !21
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !tbaa !21
  %index.next60 = add nuw i64 %index57, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next60, 256
  br i1 %i.cd, label %crcspeed64little_init.exit.6, label %vector.body56, !llvm.loop !35

crcspeed64little_init.exit.6:                     ; preds = %vector.body56
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 14336
  br label %vector.body63

end_hunk_0
begin_hunk_1_@crcspeed64big:bb.a
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !21
  %i.br = xor i64 %i.bm, %i.bq
  %i.bs = lshr i64 %i.ap, 48
  %i.bt = and i64 %i.bs, 255
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !21
  %i.bw = xor i64 %i.br, %i.bv
  %i.bx = lshr i64 %i.ap, 56
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !21
  %i.ca = xor i64 %i.bw, %i.bz                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.150, i64 8 ; 2 uses
  %i.cc = add i64 %.13749, -8                     ; 3 uses
  %i.cd = icmp ugt i64 %i.cc, 7
  br i1 %i.cd, label %bb.b, label %.preheader, !llvm.loop !52

.lr.ph59:                                         ; preds = %.lr.ph59.prol.loopexit, %.lr.ph59
  %.258 = phi ptr [ %i.co, %.lr.ph59 ], [ %.258.unr, %.lr.ph59.prol.loopexit ] ; 3 uses
  %.23857 = phi i64 [ %i.cw, %.lr.ph59 ], [ %.23857.unr, %.lr.ph59.prol.loopexit ]
  %.24156 = phi i64 [ %i.cv, %.lr.ph59 ], [ %.24156.unr, %.lr.ph59.prol.loopexit ] ; 2 uses
  %i.ce = lshr i64 %.24156, 56
  %i.cf = getelementptr inbounds nuw i8, ptr %.258, i64 1
  %i.cg = load i8, ptr %.258, align 1, !tbaa !19
  %i.ch = zext i8 %i.cg to i64
  %i.ci = xor i64 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !21
  %i.cl = shl i64 %.24156, 8
  %i.cm = xor i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 56
  %i.co = getelementptr inbounds nuw i8, ptr %.258, i64 2
  %i.cp = load i8, ptr %i.cf, align 1, !tbaa !19
  %i.cq = zext i8 %i.cp to i64
  %i.cr = xor i64 %i.cn, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !21
  %i.cu = shl i64 %i.cm, 8
  %i.cv = xor i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = add nsw i64 %.23857, -2                 ; 2 uses
  %.not.1 = icmp eq i64 %i.cw, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph59, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph59.prol.loopexit, %.lr.ph59, %.preheader
  %.241.lcssa = phi i64 [ %.140.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph59.prol.loopexit ], [ %i.cv, %.lr.ph59 ]
  %i.cx = tail call noundef i64 @llvm.bswap.i64(i64 %.241.lcssa)
  ret i64 %i.cx
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i16 @crcspeed16big(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 !guid !59 {
bb.a:
  %i.a = zext i16 %1 to i64
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %i.a) ; 2 uses
  %i.c = icmp ne i64 %3, 0
  %i.d = ptrtoint ptr %2 to i64
  %i.e = and i64 %i.d, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.lr.ph, label %.preheader46

.preheader46:                                     ; preds = %.lr.ph, %bb.a
  %.041.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %.lr.ph ]
  %.038.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ %3, %bb.a ], [ %i.y, %.lr.ph ] ; 3 uses
  %i.h = icmp ugt i64 %.0.lcssa, 7
  br i1 %i.h, label %.lr.ph55, label %.preheader

.lr.ph55:                                         ; preds = %.preheader46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3584
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.049 = phi i64 [ %i.y, %.lr.ph ], [ %3, %bb.a ]
  %.03848 = phi i64 [ %i.x, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.04147 = phi ptr [ %i.q, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.p = lshr i64 %.03848, 48
  %i.q = getelementptr inbounds nuw i8, ptr %.04147, i64 1 ; 3 uses
  %i.r = load i8, ptr %.04147, align 1, !tbaa !19
  %.tr44 = trunc i64 %i.p to i8
  %.narrow45 = xor i8 %i.r, %.tr44
  %i.s = zext i8 %.narrow45 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !24
  %i.v = zext i16 %i.u to i64
  %i.w = lshr i64 %.03848, 8
  %i.x = xor i64 %i.w, %i.v                       ; 2 uses
  %i.y = add i64 %.049, -1                        ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = ptrtoint ptr %i.q to i64
  %i.ab = and i64 %i.aa, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph, label %.preheader46, !llvm.loop !55

.preheader:                                       ; preds = %bb.b, %.preheader46
  %.139.lcssa = phi i64 [ %.038.lcssa, %.preheader46 ], [ %i.bw, %bb.b ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader46 ], [ %i.by, %bb.b ] ; 4 uses
  %.not59 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph63.prol

.lr.ph63.prol:                                    ; preds = %.preheader, %.lr.ph63.prol
  %.262.prol = phi i64 [ %i.af, %.lr.ph63.prol ], [ %.1.lcssa, %.preheader ]
  %.24061.prol = phi i64 [ %i.ae, %.lr.ph63.prol ], [ %.139.lcssa, %.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph63.prol ], [ 0, %.preheader ]
  %i.ae = lshr i64 %.24061.prol, 8                ; 2 uses
  %i.af = add nsw i64 %.262.prol, -1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.1.lcssa
  br i1 %prol.iter.cmp.not, label %.lr.ph63.prol.loopexit, label %.lr.ph63.prol, !llvm.loop !56

.lr.ph63.prol.loopexit:                           ; preds = %.lr.ph63.prol
  %i.ag = icmp ult i64 %.1.lcssa, 8
  br i1 %i.ag, label %._crit_edge, label %.lr.ph63

bb.b:                                             ; preds = %.lr.ph55, %bb.b
  %.154 = phi i64 [ %.0.lcssa, %.lr.ph55 ], [ %i.by, %bb.b ]
  %.13953 = phi i64 [ %.038.lcssa, %.lr.ph55 ], [ %i.bw, %bb.b ] ; 2 uses
  %.14252 = phi ptr [ %.041.lcssa, %.lr.ph55 ], [ %i.bx, %bb.b ] ; 2 uses
  %i.ah = load i64, ptr %.14252, align 8, !tbaa !21 ; 8 uses
  %i.ai = lshr i64 %.13953, 48
  %i.aj = xor i64 %i.ah, %i.ai
  %i.ak = and i64 %i.aj, 255
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !24
  %i.an = lshr i64 %i.ah, 8
  %i.ao = xor i64 %i.an, %.13953
  %i.ap = and i64 %i.ao, 255
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !24
  %i.as = xor i16 %i.ar, %i.am
  %i.at = lshr i64 %i.ah, 16
  %i.au = and i64 %i.at, 255
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !24
  %i.ax = xor i16 %i.as, %i.aw
  %i.ay = lshr i64 %i.ah, 24
  %i.az = and i64 %i.ay, 255
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !24
  %i.bc = xor i16 %i.ax, %i.bb
  %i.bd = lshr i64 %i.ah, 32
  %i.be = and i64 %i.bd, 255
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !24
  %i.bh = xor i16 %i.bc, %i.bg
  %i.bi = lshr i64 %i.ah, 40
  %i.bj = and i64 %i.bi, 255
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !24
  %i.bm = xor i16 %i.bh, %i.bl
  %i.bn = lshr i64 %i.ah, 48
  %i.bo = and i64 %i.bn, 255
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !24
  %i.br = xor i16 %i.bm, %i.bq
  %i.bs = lshr i64 %i.ah, 56
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !24
  %i.bv = xor i16 %i.br, %i.bu
  %i.bw = zext i16 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.14252, i64 8
  %i.by = add i64 %.154, -8                       ; 3 uses
  %i.bz = icmp ugt i64 %i.by, 7
  br i1 %i.bz, label %bb.b, label %.preheader, !llvm.loop !57

.lr.ph63:                                         ; preds = %.lr.ph63.prol.loopexit, %.lr.ph63
  %.262 = phi i64 [ %i.ca, %.lr.ph63 ], [ %i.af, %.lr.ph63.prol.loopexit ]
  %i.ca = add nsw i64 %.262, -8                   ; 2 uses
  %.not.7 = icmp eq i64 %i.ca, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph63, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph63.prol.loopexit, %.lr.ph63, %.preheader
  %.240.lcssa = phi i64 [ %.139.lcssa, %.preheader ], [ %i.ae, %.lr.ph63.prol.loopexit ], [ 0, %.lr.ph63 ]
  %i.cb = tail call noundef i64 @llvm.bswap.i64(i64 %.240.lcssa)
  %i.cc = trunc i64 %i.cb to i16
  ret i16 %i.cc
}

; Function Attrs: nounwind uwtable
define dso_local i64 @crcspeed64native(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !guid !61 {
bb.a:
  %i.a = tail call i64 @crcspeed64little(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i16 @crcspeed16native(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr nofree noundef readonly %2, i64 noundef %3) local_unnamed_addr #4 !guid !62 {
bb.a:
  %i.a = tail call zeroext i16 @crcspeed16little(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i64 noundef %3)
  ret i16 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed64native_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 !guid !63 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = trunc i64 %indvars.iv.i to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !19
  %i.c = call i64 %0(i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 1) #7, !inline_history !25
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  store i64 %i.c, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.b, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.preheader.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv30.i ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = lshr i64 %i.f, 8
  %i.k = xor i64 %i.i, %i.j                       ; 3 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  store i64 %i.k, ptr %gep.i, align 8, !tbaa !21
  %i.l = and i64 %i.k, 255
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = lshr i64 %i.k, 8
  %i.p = xor i64 %i.n, %i.o                       ; 3 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4096
  store i64 %i.p, ptr %gep.1.i, align 8, !tbaa !21
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = lshr i64 %i.p, 8
  %i.u = xor i64 %i.s, %i.t                       ; 3 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 6144
  store i64 %i.u, ptr %gep.2.i, align 8, !tbaa !21
  %i.v = and i64 %i.u, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = lshr i64 %i.u, 8
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8192
  store i64 %i.z, ptr %gep.3.i, align 8, !tbaa !21
  %i.aa = and i64 %i.z, 255
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !21
  %i.ad = lshr i64 %i.z, 8
  %i.ae = xor i64 %i.ac, %i.ad                    ; 3 uses
  %gep.4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10240
  store i64 %i.ae, ptr %gep.4.i, align 8, !tbaa !21
  %i.af = and i64 %i.ae, 255
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.ai = lshr i64 %i.ae, 8
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %gep.5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12288
  store i64 %i.aj, ptr %gep.5.i, align 8, !tbaa !21
  %i.ak = and i64 %i.aj, 255
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = lshr i64 %i.aj, 8
  %i.ao = xor i64 %i.am, %i.an
  %gep.6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 14336
  store i64 %i.ao, ptr %gep.6.i, align 8, !tbaa !21
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, 256
  br i1 %exitcond33.not.i, label %crcspeed64little_init.exit, label %.preheader.i, !llvm.loop !1

crcspeed64little_init.exit:                       ; preds = %.preheader.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed16native_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 !guid !64 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !16
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %bb.a
  %i.b = call zeroext i16 %0(i16 noundef zeroext 0, ptr noundef nonnull %i.a, i64 noundef 1) #7, !inline_history !26
  %i.c = load i32, ptr %i.a, align 4, !tbaa !16   ; 3 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %1, i64 %i.d
  store i16 %i.b, ptr %i.e, align 2, !tbaa !24
  %i.f = add nsw i32 %i.c, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !16
  %i.g = icmp slt i32 %i.c, 255
  br i1 %i.g, label %bb.c, label %bb.b, !llvm.loop !2

bb.d:                                             ; preds = %bb.d, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i ; 8 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !24   ; 2 uses
  %i.j = lshr i16 %i.i, 8
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !24   ; 2 uses
  %i.n = shl i16 %i.i, 8
  %i.o = xor i16 %i.m, %i.n                       ; 2 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  store i16 %i.o, ptr %gep.i, align 2, !tbaa !24
  %i.p = lshr i16 %i.o, 8
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !24   ; 2 uses
  %i.t = shl i16 %i.m, 8
  %i.u = xor i16 %i.s, %i.t                       ; 2 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1024
  store i16 %i.u, ptr %gep.1.i, align 2, !tbaa !24
  %i.v = lshr i16 %i.u, 8
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !24   ; 2 uses
  %i.z = shl i16 %i.s, 8
  %i.aa = xor i16 %i.y, %i.z                      ; 2 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1536
  store i16 %i.aa, ptr %gep.2.i, align 2, !tbaa !24
  %i.ab = lshr i16 %i.aa, 8
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !24 ; 2 uses
  %i.af = shl i16 %i.y, 8
  %i.ag = xor i16 %i.ae, %i.af                    ; 2 uses
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2048
  store i16 %i.ag, ptr %gep.3.i, align 2, !tbaa !24
  %i.ah = lshr i16 %i.ag, 8
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !24 ; 2 uses
  %i.al = shl i16 %i.ae, 8
  %i.am = xor i16 %i.ak, %i.al                    ; 2 uses
  %gep.4.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2560
  store i16 %i.am, ptr %gep.4.i, align 2, !tbaa !24
  %i.an = lshr i16 %i.am, 8
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !24 ; 2 uses
  %i.ar = shl i16 %i.ak, 8
  %i.as = xor i16 %i.aq, %i.ar                    ; 2 uses
  %gep.5.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3072
  store i16 %i.as, ptr %gep.5.i, align 2, !tbaa !24
  %i.at = lshr i16 %i.as, 8
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !24
  %i.ax = shl i16 %i.aq, 8
  %i.ay = xor i16 %i.aw, %i.ax
  %gep.6.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3584
  store i16 %i.ay, ptr %gep.6.i, align 2, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %crcspeed16little_init.exit, label %bb.d, !llvm.loop !3

crcspeed16little_init.exit:                       ; preds = %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
end_hunk_1
