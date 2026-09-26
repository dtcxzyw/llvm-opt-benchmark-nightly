Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_nvector_senswrapper?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @N_VNewEmpty_SensWrapper(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @N_VNewEmpty(ptr noundef %1) #7 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @N_VClone_SensWrapper, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @N_VCloneEmpty_SensWrapper, ptr %i.g, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @N_VDestroy_SensWrapper, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr @N_VLinearSum_SensWrapper, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr @N_VConst_SensWrapper, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr @N_VProd_SensWrapper, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr @N_VDiv_SensWrapper, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr @N_VScale_SensWrapper, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr @N_VAbs_SensWrapper, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store ptr @N_VInv_SensWrapper, ptr %i.o, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store ptr @N_VAddConst_SensWrapper, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store ptr @N_VDotProd_SensWrapper, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store ptr @N_VMaxNorm_SensWrapper, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store ptr @N_VWrmsNormMask_SensWrapper, ptr %i.s, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  store ptr @N_VWrmsNorm_SensWrapper, ptr %i.t, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store ptr @N_VMin_SensWrapper, ptr %i.u, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store ptr @N_VWL2Norm_SensWrapper, ptr %i.v, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store ptr @N_VL1Norm_SensWrapper, ptr %i.w, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr @N_VCompare_SensWrapper, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  store ptr @N_VInvTest_SensWrapper, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store ptr @N_VConstrMask_SensWrapper, ptr %i.z, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  store ptr @N_VMinQuotient_SensWrapper, ptr %i.aa, align 8, !tbaa !44
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 6 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @N_VFreeEmpty(ptr noundef nonnull %i.b) #7
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %0, ptr %i.ad, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !18
  %i.af = zext nneg i32 %0 to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.ag) ; 2 uses
  store ptr %calloc, ptr %i.ab, align 8, !tbaa !19
  %i.ah = icmp eq ptr %calloc, null
  br i1 %i.ah, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.ab) #7
  tail call void @N_VFreeEmpty(ptr noundef nonnull %i.b) #7
  br label %bb.g

._crit_edge:                                      ; preds = %bb.e
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %._crit_edge, %bb.f, %bb.d
  %.044 = phi ptr [ %i.b, %._crit_edge ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ]
  ret ptr %.044
}

declare ptr @N_VNewEmpty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef ptr @N_VClone_SensWrapper(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %i.a = tail call ptr @N_VCloneEmpty_SensWrapper(ptr noundef %0) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !17
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !20
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call ptr @N_VClone(ptr noundef %i.n) #7 ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store ptr %i.o, ptr %i.q, align 8, !tbaa !22
  %i.r = icmp eq ptr %i.o, null
  br i1 %i.r, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  tail call void @N_VDestroy(ptr noundef nonnull %i.a) #7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.014 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.a, %bb.b ], [ %i.a, %bb.c ]
  ret ptr %.014
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @N_VCloneEmpty_SensWrapper(ptr nofree noundef readonly captures(address_is_null) %0) #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8 ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(448) ptr @malloc(i64 noundef 448) #8 ; 23 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #7
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 19 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !45
  store <2 x ptr> %i.l, ptr %i.h, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <2 x ptr>, ptr %i.m, align 8, !tbaa !45
  store <2 x ptr> %i.o, ptr %i.n, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.r = load <2 x ptr>, ptr %i.p, align 8, !tbaa !45
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.t, ptr %i.u, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !45
  store <2 x ptr> %i.x, ptr %i.w, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !tbaa !45
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !45
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.ag = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !45
  store <2 x ptr> %i.ag, ptr %i.af, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !45
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !45
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !45
  store <2 x ptr> %i.ap, ptr %i.ao, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !45
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 216
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !45
  store <2 x ptr> %i.av, ptr %i.au, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.ay = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !45
  store <2 x ptr> %i.ay, ptr %i.ax, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !tbaa !45
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  %i.be = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !45
  store <2 x ptr> %i.be, ptr %i.bd, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.bh = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !45
  store <2 x ptr> %i.bh, ptr %i.bg, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %i.bk = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !45
  store <2 x ptr> %i.bk, ptr %i.bj, align 8, !tbaa !45
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 312
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !47
  %i.bo = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 6 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.h) #7
  tail call void @free(ptr noundef nonnull %i.f) #7
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %i.d, ptr %i.bq, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !18
  %i.bs = load i32, ptr %i.c, align 8, !tbaa !17  ; 3 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 3
  %i.bv = tail call noalias ptr @malloc(i64 noundef %i.bu) #8 ; 3 uses
  store ptr %i.bv, ptr %i.bo, align 8, !tbaa !19
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.bx = icmp sgt i32 %i.bs, 0
  br i1 %i.bx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.by = zext nneg i32 %i.bs to i64
  %i.bz = shl nuw nsw i64 %i.by, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bv, i8 0, i64 %i.bz, i1 false), !tbaa !22
  br label %._crit_edge

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.h) #7
  tail call void @free(ptr noundef nonnull %i.f) #7
  tail call void @free(ptr noundef nonnull %i.bo) #7
  br label %bb.j

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  store ptr %i.bo, ptr %i.f, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %i.ca, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge, %bb.i, %bb.g, %bb.e
  %.0100 = phi ptr [ %i.f, %._crit_edge ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.c ]
  ret ptr %.0100
}

; Function Attrs: nounwind uwtable
define void @N_VDestroy_SensWrapper(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.h = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.m, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @N_VDestroy(ptr noundef nonnull %i.k) #7
  %.pre19 = load ptr, ptr %0, align 8, !tbaa !20  ; 2 uses
  %.pre20 = load ptr, ptr %.pre19, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = phi ptr [ %.pre20, %bb.b ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.m = phi ptr [ %.pre19, %bb.b ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr null, ptr %i.n, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.a
  %i.s = phi ptr [ %i.a, %bb.a ], [ %i.a, %.preheader ], [ %i.m, %bb.c ]
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
end_hunk_0
