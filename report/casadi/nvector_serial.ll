Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/nvector_serial?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%19.16g\0A\00", align 1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define noundef ptr @N_VNewEmpty_Serial(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #18 ; 28 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #19
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  store ptr @N_VClone_Serial, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @N_VCloneEmpty_Serial, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @N_VDestroy_Serial, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @N_VSpace_Serial, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @N_VGetArrayPointer_Serial, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @N_VSetArrayPointer_Serial, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @N_VLinearSum_Serial, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @N_VConst_Serial, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr @N_VProd_Serial, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr @N_VDiv_Serial, ptr %i.m, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @N_VScale_Serial, ptr %i.n, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr @N_VAbs_Serial, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr @N_VInv_Serial, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr @N_VAddConst_Serial, ptr %i.q, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr @N_VDotProd_Serial, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store ptr @N_VMaxNorm_Serial, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr @N_VWrmsNormMask_Serial, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr @N_VWrmsNorm_Serial, ptr %i.u, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr @N_VMin_Serial, ptr %i.v, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store ptr @N_VWL2Norm_Serial, ptr %i.w, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store ptr @N_VL1Norm_Serial, ptr %i.x, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store ptr @N_VCompare_Serial, ptr %i.y, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr @N_VInvTest_Serial, ptr %i.z, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store ptr @N_VConstrMask_Serial, ptr %i.aa, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store ptr @N_VMinQuotient_Serial, ptr %i.ab, align 8, !tbaa !11
  %i.ac = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #19
  tail call void @free(ptr noundef nonnull %i.a) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %0, ptr %i.ac, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 0, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr null, ptr %i.af, align 8, !tbaa !17
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.ag, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ %i.a, %bb.f ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @N_VClone_Serial(ptr nofree noundef readonly captures(address_is_null) %0) #3 {
bb.a:
  %i.a = tail call ptr @N_VCloneEmpty_Serial(ptr noundef %0) ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = shl i64 %i.d, 3
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #18 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.j, align 8, !tbaa !16
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %N_VDestroy_Serial.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.n) #19
  %1 = load ptr, ptr %i.a, align 8, !tbaa !20     ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %2, align 8, !tbaa !17
  br label %N_VDestroy_Serial.exit

N_VDestroy_Serial.exit:                           ; preds = %bb.d, %bb.e
  %3 = phi ptr [ %1, %bb.e ], [ %i.i, %bb.d ]
  tail call void @free(ptr noundef nonnull %3) #19
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.p) #19
  tail call void @free(ptr noundef nonnull %i.a) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i32 1, ptr %i.j, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.g, ptr %i.q, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.a, %N_VDestroy_Serial.exit
  %.0 = phi ptr [ null, %bb.a ], [ null, %N_VDestroy_Serial.exit ], [ %i.a, %bb.f ], [ %i.a, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: read, target_mem: none) uwtable
define noundef ptr @N_VCloneEmpty_Serial(ptr nofree noundef readonly captures(address_is_null) %0) #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #18 ; 16 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #19
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 13 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !54
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !54
  store <2 x ptr> %i.k, ptr %i.j, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !54
  store <2 x ptr> %i.n, ptr %i.m, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.q = load <2 x ptr>, ptr %i.o, align 8, !tbaa !54
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !54
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !tbaa !54
  store <2 x ptr> %i.w, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !54
  store <2 x ptr> %i.z, ptr %i.y, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.ac = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !54
  store <2 x ptr> %i.ac, ptr %i.ab, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.af = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !54
  store <2 x ptr> %i.af, ptr %i.ae, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.ai = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !54
  store <2 x ptr> %i.ai, ptr %i.ah, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !54
  store <2 x ptr> %i.al, ptr %i.ak, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !54
  store <2 x ptr> %i.ao, ptr %i.an, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !11
  %i.as = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.d) #19
  tail call void @free(ptr noundef nonnull %i.b) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %0, align 8, !tbaa !20
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15
  store i64 %i.av, ptr %i.as, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 0, ptr %i.aw, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr null, ptr %i.ax, align 8, !tbaa !17
  store ptr %i.as, ptr %i.b, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.ay, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g, %bb.f, %bb.d
  %.0 = phi ptr [ %i.b, %bb.g ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @N_VDestroy_Serial(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.f) #19
  %i.g = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.i) #19
  store ptr null, ptr %0, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.k) #19
  tail call void @free(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @N_VSpace_Serial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.b, ptr %1, align 8, !tbaa !55
  store i64 1, ptr %2, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @N_VGetArrayPointer_Serial(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @N_VSetArrayPointer_Serial(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.d, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @N_VLinearSum_Serial(double noundef %0, ptr nofree noundef readonly captures(address) %1, double noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readonly captures(address) %4) #8 {
bb.a:
  %i.a = fcmp oeq double %2, 1.000000e+00         ; 5 uses
  %i.b = icmp eq ptr %4, %3
  %or.cond97 = and i1 %i.a, %i.b
  br i1 %or.cond97, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val100 = load ptr, ptr %1, align 8, !tbaa !20 ; 2 uses
  %.val101 = load ptr, ptr %3, align 8, !tbaa !20
  %.val100.val = load i64, ptr %.val100, align 8, !tbaa !15 ; 23 uses
  %i.c = getelementptr i8, ptr %.val100, i64 16
  %.val100.val102 = load ptr, ptr %i.c, align 8, !tbaa !17 ; 22 uses
  %i.d = getelementptr i8, ptr %.val101, i64 16
  %.val101.val = load ptr, ptr %i.d, align 8, !tbaa !17 ; 22 uses
  %i.e = fcmp oeq double %0, 1.000000e+00
  br i1 %i.e, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.f = icmp sgt i64 %.val100.val, 0
  br i1 %i.f, label %.lr.ph9.i.preheader, label %Vaxpy_Serial.exit

.lr.ph9.i.preheader:                              ; preds = %.preheader.i
  %min.iters.check459 = icmp ult i64 %.val100.val, 6
  br i1 %min.iters.check459, label %.lr.ph9.i.preheader472, label %vector.memcheck452

vector.memcheck452:                               ; preds = %.lr.ph9.i.preheader
  %i.g = shl i64 %.val100.val, 3                  ; 2 uses
  %scevgep453 = getelementptr i8, ptr %.val101.val, i64 %i.g
  %scevgep454 = getelementptr i8, ptr %.val100.val102, i64 %i.g
  %bound0455 = icmp ult ptr %.val101.val, %scevgep454
  %bound1456 = icmp ult ptr %.val100.val102, %scevgep453
  %found.conflict457 = and i1 %bound0455, %bound1456
  br i1 %found.conflict457, label %.lr.ph9.i.preheader472, label %vector.ph460

vector.ph460:                                     ; preds = %vector.memcheck452
end_hunk_0
begin_hunk_1_@N_VInvTest_Serial:bb.a
  %i.u = add nuw nsw i64 %.01214, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !156

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.015.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01214.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.01214.epil.init
  %i.w = load double, ptr %i.v, align 8, !tbaa !23 ; 2 uses
  %i.x = fcmp oeq double %i.w, 0.000000e+00
  br i1 %i.x, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.y = fdiv double 1.000000e+00, %i.w
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01214.epil.init
  store double %i.y, ptr %i.z, align 8, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.015.epil.init, %bb.e ], [ 0, %.lr.ph.epil.preheader ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @N_VConstrMask_Serial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = load ptr, ptr %2, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = icmp sgt i64 %i.b, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.035 = phi i32 [ %.1, %bb.f ], [ 1, %bb.a ]    ; 4 uses
  %.03134 = phi i64 [ %i.y, %bb.f ], [ 0, %bb.a ] ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.03134 ; 2 uses
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03134
  %i.n = load double, ptr %i.m, align 8, !tbaa !23 ; 4 uses
  %i.o = fcmp oeq double %i.n, 0.000000e+00
  br i1 %i.o, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = tail call double @llvm.fabs.f64(double %i.n) ; 2 uses
  %or.cond = fcmp ogt double %i.p, 1.500000e+00
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03134
  %i.r = load double, ptr %i.q, align 8, !tbaa !23
  %i.s = fmul double %i.n, %i.r
  %i.t = fcmp ugt double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.f, label %.sink.split

bb.d:                                             ; preds = %bb.b
  %or.cond33 = fcmp ogt double %i.p, 5.000000e-01
  br i1 %or.cond33, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03134
  %i.v = load double, ptr %i.u, align 8, !tbaa !23
  %i.w = fmul double %i.n, %i.v
  %i.x = fcmp olt double %i.w, 0.000000e+00
  br i1 %i.x, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.c
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.e, %bb.c, %.lr.ph
  %.1 = phi i32 [ %.035, %.lr.ph ], [ %.035, %bb.e ], [ %.035, %bb.c ], [ %.035, %bb.d ], [ 0, %.sink.split ] ; 2 uses
  %i.y = add nuw nsw i64 %.03134, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !157

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.1, %bb.f ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define double @N_VMinQuotient_Serial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 1
  %i.i = icmp eq i64 %i.b, 1
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %.030 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader.new ], [ %.1.1, %bb.f ] ; 3 uses
  %.02329 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.y, %bb.f ] ; 4 uses
  %.02428 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %.125.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.02329
  %i.k = load double, ptr %i.j, align 8, !tbaa !23 ; 2 uses
  %i.l = fcmp oeq double %i.k, 0.000000e+00
  br i1 %i.l, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %.02428, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02329
  %i.n = load double, ptr %i.m, align 8, !tbaa !23
  %i.o = fdiv double %i.n, %i.k                   ; 3 uses
  br i1 %.not, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp olt double %.030, %i.o
  %.0. = select i1 %i.p, double %.030, double %i.o
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b, %bb.c, %.lr.ph
  %.125 = phi i32 [ %.02428, %.lr.ph ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.1 = phi double [ %.030, %.lr.ph ], [ %.0., %bb.c ], [ %i.o, %bb.b ] ; 3 uses
  %i.q = or disjoint i64 %.02329, 1               ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !23 ; 2 uses
  %i.t = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %.not.1 = icmp eq i32 %.125, 0
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.q
  %i.v = load double, ptr %i.u, align 8, !tbaa !23
  %i.w = fdiv double %i.v, %i.s                   ; 3 uses
  br i1 %.not.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = fcmp olt double %.1, %i.w
  %.0..1 = select i1 %i.x, double %.1, double %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.1
  %.125.1 = phi i32 [ %.125, %.lr.ph.1 ], [ 0, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.1.1 = phi double [ %.1, %.lr.ph.1 ], [ %.0..1, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.y = add nuw nsw i64 %.02329, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !158

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.030.epil.init = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.02329.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02428.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %.125.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.02329.epil.init
  %i.aa = load double, ptr %i.z, align 8, !tbaa !23 ; 2 uses
  %i.ab = fcmp oeq double %i.aa, 0.000000e+00
  br i1 %i.ab, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  %.not.epil = icmp eq i32 %.02428.epil.init, 0
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02329.epil.init
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !23
  %i.ae = fdiv double %i.ad, %i.aa                ; 3 uses
  br i1 %.not.epil, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.af = fcmp olt double %.030.epil.init, %i.ae
  %.0..epil = select i1 %i.af, double %.030.epil.init, double %i.ae
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %bb.g, %.lr.ph.epil.preheader, %bb.a
  %.0.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.030.epil.init, %.lr.ph.epil.preheader ], [ %.0..epil, %bb.h ], [ %i.ae, %bb.g ]
  ret double %.0.lcssa
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @N_VNew_Serial(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @N_VNewEmpty_Serial(i64 noundef %0) ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %0, 0
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = shl i64 %0, 3
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #18 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.h, align 8, !tbaa !16
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %N_VDestroy_Serial.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.l) #19
  %1 = load ptr, ptr %i.a, align 8, !tbaa !20     ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %2, align 8, !tbaa !17
  br label %N_VDestroy_Serial.exit

N_VDestroy_Serial.exit:                           ; preds = %bb.d, %bb.e
  %3 = phi ptr [ %1, %bb.e ], [ %i.g, %bb.d ]
  tail call void @free(ptr noundef nonnull %3) #19
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.n) #19
  tail call void @free(ptr noundef nonnull %i.a) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i32 1, ptr %i.h, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.o, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.a, %N_VDestroy_Serial.exit
  %.0 = phi ptr [ null, %bb.a ], [ null, %N_VDestroy_Serial.exit ], [ %i.a, %bb.f ], [ %i.a, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @N_VMake_Serial(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @N_VNewEmpty_Serial(i64 noundef %0) ; 3 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %1, ptr %i.f, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @N_VCloneVectorArray_Serial(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #18 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.g = tail call ptr @N_VClone_Serial(ptr noundef %1) ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !29
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.i, label %.lr.ph.preheader.i, label %N_VDestroyVectorArray_Serial.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.j = add nuw i64 %indvars.iv, 4294967295
  %wide.trip.count.i = and i64 %i.j, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %N_VDestroy_Serial.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %N_VDestroy_Serial.exit.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !16
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %N_VDestroy_Serial.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.r) #19
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !17
  br label %N_VDestroy_Serial.exit.i

N_VDestroy_Serial.exit.i:                         ; preds = %bb.d, %.lr.ph.i
  %i.u = phi ptr [ %i.s, %bb.d ], [ %i.m, %.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.u) #19
  store ptr null, ptr %i.l, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.w) #19
  tail call void @free(ptr noundef nonnull %i.l) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %N_VDestroyVectorArray_Serial.exit, label %.lr.ph.i, !llvm.loop !0

N_VDestroyVectorArray_Serial.exit:                ; preds = %N_VDestroy_Serial.exit.i, %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #19
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !159

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a, %N_VDestroyVectorArray_Serial.exit
  %.016 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %N_VDestroyVectorArray_Serial.exit ], [ %i.d, %bb.e ]
  ret ptr %.016
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @N_VDestroyVectorArray_Serial(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %N_VDestroy_Serial.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %N_VDestroy_Serial.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %N_VDestroy_Serial.exit

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.i) #19
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !17
  br label %N_VDestroy_Serial.exit

N_VDestroy_Serial.exit:                           ; preds = %.lr.ph, %bb.b
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.d, %.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.l) #19
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.n) #19
  tail call void @free(ptr noundef nonnull %i.c) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %N_VDestroy_Serial.exit, %bb.a
  tail call void @free(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @N_VCloneVectorArrayEmpty_Serial(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #18 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.g = tail call ptr @N_VCloneEmpty_Serial(ptr noundef %1) ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !29
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.i, label %.lr.ph.preheader.i, label %N_VDestroyVectorArray_Serial.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.j = add nuw i64 %indvars.iv, 4294967295
  %wide.trip.count.i = and i64 %i.j, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %N_VDestroy_Serial.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %N_VDestroy_Serial.exit.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !16
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %N_VDestroy_Serial.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.r) #19
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !17
  br label %N_VDestroy_Serial.exit.i

N_VDestroy_Serial.exit.i:                         ; preds = %bb.d, %.lr.ph.i
  %i.u = phi ptr [ %i.s, %bb.d ], [ %i.m, %.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.u) #19
  store ptr null, ptr %i.l, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.w) #19
  tail call void @free(ptr noundef nonnull %i.l) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %N_VDestroyVectorArray_Serial.exit, label %.lr.ph.i, !llvm.loop !0

N_VDestroyVectorArray_Serial.exit:                ; preds = %N_VDestroy_Serial.exit.i, %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #19
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !160

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a, %N_VDestroyVectorArray_Serial.exit
  %.016 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %N_VDestroyVectorArray_Serial.exit ], [ %i.d, %bb.e ]
  ret ptr %.016
}

; Function Attrs: nofree nounwind uwtable
define void @N_VPrint_Serial(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = icmp sgt i64 %i.b, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06
  %i.g = load double, ptr %i.f, align 8, !tbaa !23
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.g) ; 0 uses
  %i.i = add nuw nsw i64 %.06, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !161

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

declare double @SUNRabs(double noundef) local_unnamed_addr #15

declare double @SUNRsqrt(double noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !24}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_generic_N_Vector_Ops", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192}
!11 = !{!10, !9, i64 192}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 double", !9, i64 0}
!14 = !{!"_N_VectorContent_Serial", !12, i64 0, !6, i64 8, !13, i64 16}
!15 = !{!14, !12, i64 0}
!16 = !{!14, !6, i64 8}
!17 = !{!14, !13, i64 16}
!18 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!19 = !{!"_generic_N_Vector", !9, i64 0, !18, i64 8}
!20 = !{!19, !9, i64 0}
!21 = !{!19, !18, i64 8}
!22 = !{!"double", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!"p1 _ZTS17_generic_N_Vector", !9, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!10, !9, i64 0}
!31 = !{!10, !9, i64 8}
!32 = !{!10, !9, i64 16}
!33 = !{!10, !9, i64 24}
!34 = !{!10, !9, i64 32}
!35 = !{!10, !9, i64 40}
!36 = !{!10, !9, i64 48}
!37 = !{!10, !9, i64 56}
!38 = !{!10, !9, i64 64}
!39 = !{!10, !9, i64 72}
!40 = !{!10, !9, i64 80}
!41 = !{!10, !9, i64 88}
!42 = !{!10, !9, i64 96}
!43 = !{!10, !9, i64 104}
!44 = !{!10, !9, i64 112}
!45 = !{!10, !9, i64 120}
!46 = !{!10, !9, i64 136}
!47 = !{!10, !9, i64 128}
!48 = !{!10, !9, i64 144}
!49 = !{!10, !9, i64 152}
!50 = !{!10, !9, i64 160}
!51 = !{!10, !9, i64 168}
!52 = !{!10, !9, i64 176}
!53 = !{!10, !9, i64 184}
!54 = !{!9, !9, i64 0}
!55 = !{!12, !12, i64 0}
end_hunk_1
