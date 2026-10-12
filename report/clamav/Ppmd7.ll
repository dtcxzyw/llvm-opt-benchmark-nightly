Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/Ppmd7?download=true
inline.NumInlined: 31
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CPpmd_State = type { i8, i8, i16, i16 }

@PPMD7_kExpEscape = local_unnamed_addr constant [16 x i8] c"\19\0E\09\07\05\05\04\04\04\03\03\03\02\02\02\02", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @Ppmd7_Construct(ptr nofree noundef writeonly captures(none) initializes((64, 72)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %iter.check

iter.check:                                       ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.03138 = phi i32 [ 0, %bb.a ], [ %.lcssa, %.loopexit ] ; 6 uses
  %i.d = icmp samesign ugt i64 %indvars.iv, 11
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = lshr i32 %i.e, 2
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = select i1 %i.d, i32 4, i32 %i.g          ; 11 uses
  %i.i = trunc i64 %indvars.iv to i8              ; 7 uses
  %min.iters.check = icmp samesign ult i32 %i.h, 4
  %i.j = sub nsw i32 0, %i.h
  %i.k = icmp ugt i32 %.03138, %i.j
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.k
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check53 = icmp samesign ult i32 %i.h, 32
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i32 %i.h, 28
  %n.vec = and i32 %i.h, 1073741792               ; 4 uses
  %i.m = add i32 %.03138, %n.vec                  ; 2 uses
  %i.n = and i32 %i.h, 31
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = add i32 %.03138, %index
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.q, align 1, !tbaa !15
  store <16 x i8> %broadcast.splat, ptr %i.r, align 1, !tbaa !15
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.s = icmp eq i32 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i32 %i.h, 1073741820             ; 3 uses
  %i.t = add i32 %.03138, %n.vec55                ; 2 uses
  %i.u = and i32 %i.h, 3
  %broadcast.splatinsert56 = insertelement <4 x i8> poison, i8 %i.i, i64 0
  %broadcast.splat57 = shufflevector <4 x i8> %broadcast.splatinsert56, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %i.v = add i32 %.03138, %index58
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.w
  store <4 x i8> %broadcast.splat57, ptr %i.x, align 1, !tbaa !15
  %index.next59 = add nuw i32 %index58, 4         ; 2 uses
  %i.y = icmp eq i32 %index.next59, %n.vec55
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i32 %i.h, %n.vec55
  br i1 %cmp.n60, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.132.ph = phi i32 [ %.03138, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %i.h, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 4 uses
  %i.z = add nsw i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.132.prol = phi i32 [ %i.aa, %vec.epilog.scalar.ph.prol ], [ %.132.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %i.ad, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aa = add i32 %.132.prol, 1                   ; 3 uses
  %i.ab = zext i32 %.132.prol to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ab
  store i8 %i.i, ptr %i.ac, align 1, !tbaa !15
  %i.ad = add i32 %.0.prol, -1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !51

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa64.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %.132.unr = phi i32 [ %.132.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi i32 [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ad, %vec.epilog.scalar.ph.prol ]
  %i.ae = icmp ult i32 %i.z, 3
  br i1 %i.ae, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.132 = phi i32 [ %i.ao, %vec.epilog.scalar.ph ], [ %.132.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.0 = phi i32 [ %i.ar, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.af = add i32 %.132, 1
  %i.ag = zext i32 %.132 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ag
  store i8 %i.i, ptr %i.ah, align 1, !tbaa !15
  %i.ai = add i32 %.132, 2
  %i.aj = zext i32 %i.af to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  store i8 %i.i, ptr %i.ak, align 1, !tbaa !15
  %i.al = add i32 %.132, 3
  %i.am = zext i32 %i.ai to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.am
  store i8 %i.i, ptr %i.an, align 1, !tbaa !15
  %i.ao = add i32 %.132, 4                        ; 2 uses
  %i.ap = zext i32 %i.al to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap
  store i8 %i.i, ptr %i.aq, align 1, !tbaa !15
  %i.ar = add i32 %.0, -4                         ; 2 uses
  %.not.3 = icmp eq i32 %i.ar, 0
  br i1 %.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !52

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i32 [ %i.t, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %.lcssa64.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ao, %vec.epilog.scalar.ph ] ; 2 uses
  %i.as = trunc i32 %.lcssa to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.as, ptr %i.at, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %.lr.ph, label %iter.check

.lr.ph:                                           ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i8 0, ptr %i.au, align 4, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 685
  store i8 2, ptr %i.av, align 1, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 686
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %i.aw, i8 4, i64 9, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 695
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(245) %i.ax, i8 6, i64 245, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 3 uses
  store i8 0, ptr %i.ay, align 4, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 429
  store i8 1, ptr %i.az, align 1, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 430
  store i8 2, ptr %i.ba, align 2, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph
  %indvars.iv49 = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next50.1, %bb.c ] ; 3 uses
  %.03042 = phi i32 [ 3, %.lr.ph ], [ %.1.1, %bb.c ] ; 3 uses
  %.241 = phi i32 [ 1, %.lr.ph ], [ %.3.1, %bb.c ]
  %i.bb = trunc i32 %.03042 to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv49
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !15
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, 256
  br i1 %exitcond52.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = add i32 %.241, -1                       ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  %i.bf = zext i1 %i.be to i32
  %.1 = add i32 %.03042, %i.bf                    ; 3 uses
  %i.bg = add i32 %.03042, -1
  %.3 = select i1 %i.be, i32 %i.bg, i32 %i.bd
  %i.bh = trunc i32 %.1 to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv.next50
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !15
  %i.bj = add i32 %.3, -1                         ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0                    ; 2 uses
  %i.bl = add i32 %.1, -1
  %.3.1 = select i1 %i.bk, i32 %i.bl, i32 %i.bj
  %i.bm = zext i1 %i.bk to i32
  %.1.1 = add i32 %.1, %i.bm
  %indvars.iv.next50.1 = add nuw nsw i64 %indvars.iv49, 2
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 940
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bn, i8 0, i64 64, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1004
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.bo, i8 8, i64 192, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define void @Ppmd7_Free(ptr nofree noundef captures(none) initializes((52, 56)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.e, align 4, !tbaa !19
  store ptr null, ptr %i.c, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ppmd7_Alloc(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %.not = icmp eq i32 %i.e, %1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  tail call void %i.g(ptr noundef %2, ptr noundef %i.b) #8, !inline_history !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !19
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %i.i = and i32 %1, 3
  %i.j = sub nuw nsw i32 4, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = load ptr, ptr %2, align 8, !tbaa !57
  %i.m = and i32 %1, -4
  %i.n = add i32 %i.m, 16
  %i.o = zext i32 %i.n to i64
  %i.p = tail call ptr %i.l(ptr noundef nonnull %2, i64 noundef %i.o) #8 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !14
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.h, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ppmd7_Init(ptr nofree noundef captures(none) initializes((0, 28), (32, 40), (44, 52), (56, 60), (72, 104), (276, 428)) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.a, align 4, !tbaa !21
  tail call fastcc void @RestartModel(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1198
  store i8 7, ptr %i.c, align 2, !tbaa !58
  store i16 0, ptr %i.b, align 4, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1199
  store i8 64, ptr %i.d, align 1, !tbaa !60
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @RestartModel(ptr nofree noundef captures(none) initializes((0, 28), (32, 36), (44, 52), (56, 60), (72, 104), (276, 428)) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(152) %i.a, i8 0, i64 152, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_0
