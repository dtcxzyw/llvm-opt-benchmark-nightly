inline.NumInlined: 344
inline.NumDeleted: 125
begin_hunk_0_@_ZNK4llvh9StringRef16find_last_not_ofES0_m:bb.a
.lr.ph21:                                         ; preds = %._crit_edge, %bb.b
  %.012.in20 = phi i64 [ %.012, %bb.b ], [ %.sroa.speculated, %._crit_edge ]
  %.012 = add i64 %.012.in20, -1                  ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %.012
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !12
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not16 = icmp eq i64 %i.ap, 0
  br i1 %.not16, label %._crit_edge22, label %bb.b, !llvm.loop !49

._crit_edge22:                                    ; preds = %.lr.ph21
  br label %._crit_edge23, !llvm.loop !49

._crit_edge23:                                    ; preds = %bb.b, %._crit_edge22, %._crit_edge
  %.012.lcssa = phi i64 [ %.012, %._crit_edge22 ], [ -1, %._crit_edge ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.012.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr readonly captures(none) %2, i64 %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"class.llvh::StringRef", align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !50
  %.not54 = icmp eq i32 %4, 0
  br i1 %.not54, label %..thread_crit_edge, label %.lr.ph

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %4, -1                       ; 2 uses
  %.promoted = load ptr, ptr %6, align 8          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted56 = load i64, ptr %i.b, align 8      ; 2 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us
  %i.f = phi i64 [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.promoted56, %.lr.ph ] ; 4 uses
  %i.g = phi i32 [ %i.x, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.h = phi ptr [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3, i64 noundef 0) ; 3 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i)
  %i.l = load i32, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !54
  %.not.i.us = icmp ult i32 %i.l, %i.m
  br i1 %.not.i.us, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, label %bb.c, !prof !55

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i.us = load i32, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us: ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %.pre.i.us, %bb.c ], [ %i.l, %bb.b ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !56
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  store ptr %i.h, ptr %i.q, align 1
  %.sroa.4.0..sroa_idx27.us = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx27.us, align 1
  %i.r = load i32, ptr %i.c, align 8, !tbaa !52
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8, !tbaa !52
  %i.t = add i64 %i.i, %3
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u ; 2 uses
  %i.w = sub i64 %i.f, %i.u                       ; 3 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !51
  store i64 %i.w, ptr %i.b, align 8, !tbaa !12
  %i.x = add nsw i32 %i.g, -1
  %.not.us = icmp eq i32 %i.g, 0
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %i.y = phi i64 [ %i.ao, %bb.f ], [ %.promoted56, %.lr.ph ] ; 4 uses
  %i.z = phi i32 [ %i.ap, %bb.f ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.aa = phi ptr [ %i.an, %bb.f ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.ab = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3, i64 noundef 0) ; 3 uses
  switch i64 %i.ab, label %bb.d [
    i64 -1, label %.thread
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph.split
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ab)
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !54
  %.not.i = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.e, !prof !55

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %bb.d, %bb.e
  %i.af = phi i32 [ %.pre.i, %bb.e ], [ %i.ad, %bb.d ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !56
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  store ptr %i.aa, ptr %i.ai, align 1
  %.sroa.4.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx27, align 1
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !52
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.c, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit
  %i.al = add i64 %i.ab, %3
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.al) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.am ; 2 uses
  %i.ao = sub i64 %i.y, %i.am                     ; 3 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !51
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !12
  %i.ap = add nsw i32 %i.z, -1
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %bb.f, %.lr.ph.split, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, %.lr.ph.split.us, %..thread_crit_edge
  %i.aq = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.f, %.lr.ph.split.us ], [ %i.ao, %bb.f ], [ %i.y, %.lr.ph.split ]
  %i.ar = icmp ne i64 %i.aq, 0
  %or.cond45.not = select i1 %5, i1 true, i1 %i.ar
  br i1 %or.cond45.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !52 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !54
  %.not.i24 = icmp ult i32 %i.at, %i.av
  br i1 %.not.i24, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26, label %bb.h, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aw, i64 noundef 0, i64 noundef 16) #18
  %.pre.i25 = load i32, ptr %i.as, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26: ; preds = %bb.g, %bb.h
  %i.ax = phi i32 [ %.pre.i25, %bb.h ], [ %i.at, %bb.g ]
  %i.ay = load ptr, ptr %1, align 8, !tbaa !56
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.bb = load i32, ptr %i.as, align 8, !tbaa !52
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %.thread, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef signext %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.030.0.copyload = load ptr, ptr %0, align 8, !tbaa !51 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !12 ; 3 uses
  %.not109 = icmp eq i32 %3, 0
  br i1 %.not109, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %3, -1                       ; 2 uses
  %i.b = sext i8 %2 to i32                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us
  %i.f = phi i32 [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %.sroa.8.0111.us = phi i64 [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.sroa.8.0.copyload, %.lr.ph ] ; 6 uses
  %.sroa.030.0110.us = phi ptr [ %i.u, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.sroa.030.0.copyload, %.lr.ph ] ; 7 uses
  %.not101.us = icmp eq i64 %.sroa.8.0111.us, 0
  br i1 %.not101.us, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = tail call noundef ptr @memchr(ptr noundef %.sroa.030.0110.us, i32 noundef %i.b, i64 noundef %.sroa.8.0111.us) #17 ; 3 uses
  %.not.i.us = icmp eq ptr %i.g, null
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %.sroa.030.0110.us to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %5 = icmp eq i64 %i.j, -1
  %or.cond98.us = select i1 %.not.i.us, i1 true, i1 %5
  br i1 %or.cond98.us, label %.thread.thread137, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not102.us = icmp eq ptr %i.g, %.sroa.030.0110.us
  %i.k = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0111.us, i64 %i.j)
  %.sroa.speculated44.us = select i1 %.not102.us, i64 0, i64 %i.k
  %i.l = load i32, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !54
  %.not.i22.us = icmp ult i32 %i.l, %i.m
  br i1 %.not.i22.us, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i.us = load i32, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us: ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre.i.us, %bb.d ], [ %i.l, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !56
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  store ptr %.sroa.030.0110.us, ptr %i.q, align 1
  %.sroa.4.0..sroa_idx29.us = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.speculated44.us, ptr %.sroa.4.0..sroa_idx29.us, align 1
  %i.r = load i32, ptr %i.c, align 8, !tbaa !52
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8, !tbaa !52
  %i.t = add nuw i64 %i.j, 1
  %.sroa.speculated53.us = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0111.us, i64 %i.t) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.030.0110.us, i64 %.sroa.speculated53.us ; 2 uses
  %i.v = sub i64 %.sroa.8.0111.us, %.sroa.speculated53.us ; 2 uses
  %i.w = add nsw i32 %i.f, -1
  %.not.us = icmp eq i32 %i.f, 0
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %i.x = phi i32 [ %i.ao, %bb.i ], [ %i.a, %.lr.ph ] ; 2 uses
  %.sroa.8.0111 = phi i64 [ %i.an, %bb.i ], [ %.sroa.8.0.copyload, %.lr.ph ] ; 6 uses
  %.sroa.030.0110 = phi ptr [ %i.am, %bb.i ], [ %.sroa.030.0.copyload, %.lr.ph ] ; 7 uses
  %.not101 = icmp eq i64 %.sroa.8.0111, 0
  br i1 %.not101, label %.thread.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.y = tail call noundef ptr @memchr(ptr noundef %.sroa.030.0110, i32 noundef %i.b, i64 noundef %.sroa.8.0111) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %.sroa.030.0110 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %6 = icmp eq i64 %i.ab, -1
  %or.cond98 = select i1 %.not.i, i1 true, i1 %6
  br i1 %or.cond98, label %.thread.thread137, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not121 = icmp eq ptr %i.y, %.sroa.030.0110
  br i1 %.not121, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0111, i64 %i.ab)
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !54
  %.not.i22 = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i22, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.h, !prof !55

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %bb.g, %bb.h
  %i.af = phi i32 [ %.pre.i, %bb.h ], [ %i.ad, %bb.g ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !56
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  store ptr %.sroa.030.0110, ptr %i.ai, align 1
  %.sroa.4.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx29, align 1
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !52
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.c, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, %bb.f
  %i.al = add nuw i64 %i.ab, 1
  %.sroa.speculated53 = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0111, i64 %i.al) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.030.0110, i64 %.sroa.speculated53 ; 2 uses
  %i.an = sub i64 %.sroa.8.0111, %.sroa.speculated53 ; 2 uses
  %i.ao = add nsw i32 %i.x, -1
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %bb.i, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, %bb.a
  %.sroa.030.0.lcssa = phi ptr [ %.sroa.030.0.copyload, %bb.a ], [ %i.u, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.am, %bb.i ]
  %.sroa.8.0.lcssa = phi i64 [ %.sroa.8.0.copyload, %bb.a ], [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.an, %bb.i ] ; 2 uses
  %i.ap = icmp ne i64 %.sroa.8.0.lcssa, 0
  %or.cond100.not = select i1 %4, i1 true, i1 %i.ap
  br i1 %or.cond100.not, label %.thread.thread137, label %.thread97

.thread.thread:                                   ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.sroa.030.0110.us, %.lr.ph.split.us ], [ %.sroa.030.0110, %.lr.ph.split ]
  br i1 %4, label %.thread.thread137, label %.thread97

.thread.thread137:                                ; preds = %bb.e, %bb.b, %.thread.thread, %.thread
  %.sroa.030.0108 = phi ptr [ %.us-phi, %.thread.thread ], [ %.sroa.030.0.lcssa, %.thread ], [ %.sroa.030.0110.us, %bb.b ], [ %.sroa.030.0110, %bb.e ]
  %.sroa.8.0106 = phi i64 [ 0, %.thread.thread ], [ %.sroa.8.0.lcssa, %.thread ], [ %.sroa.8.0111.us, %bb.b ], [ %.sroa.8.0111, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !52 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !54
  %.not.i26 = icmp ult i32 %i.ar, %i.at
  br i1 %.not.i26, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28, label %bb.j, !prof !55

bb.j:                                             ; preds = %.thread.thread137
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.au, i64 noundef 0, i64 noundef 16) #18
  %.pre.i27 = load i32, ptr %i.aq, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28: ; preds = %.thread.thread137, %bb.j
  %i.av = phi i32 [ %.pre.i27, %bb.j ], [ %i.ar, %.thread.thread137 ]
  %i.aw = load ptr, ptr %1, align 8, !tbaa !56
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  store ptr %.sroa.030.0108, ptr %i.ay, align 1
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.8.0106, ptr %.sroa.8.0..sroa_idx34, align 1
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !52
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.aq, align 8, !tbaa !52
  br label %.thread97

.thread97:                                        ; preds = %.thread, %.thread.thread, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef5countES0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.fr34 = freeze i64 %2                          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %i.c = icmp ugt i64 %.fr34, %i.b
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = sub nuw i64 %i.b, %.fr34           ; 3 uses
  %.not30 = icmp eq i64 %reass.sub, -1
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !7
  %i.e = icmp eq i64 %.fr34, 0
  br i1 %i.e, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.f = add i64 %i.b, 1                          ; 2 uses
  %i.g = sub nuw nsw i64 %i.f, %.fr34             ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.mod.vf = and i64 %i.f, 3                     ; 2 uses
  %n.vec = sub nuw i64 %i.g, %n.mod.vf            ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = add <2 x i64> %reduced.phi, splat (i64 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %i.i = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.split.us.preheader40

.lr.ph.split.us.preheader40:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %.01032.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.i, %middle.block ]
  %.01131.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader40, %.lr.ph.split.us
  %.01032.us = phi i64 [ %spec.select33, %.lr.ph.split.us ], [ %.01032.us.ph, %.lr.ph.split.us.preheader40 ]
  %.01131.us = phi i64 [ %i.j, %.lr.ph.split.us ], [ %.01131.us.ph, %.lr.ph.split.us.preheader40 ] ; 2 uses
  %spec.select33 = add i64 %.01032.us, 1          ; 2 uses
  %i.j = add nuw i64 %.01131.us, 1
  %.not.us = icmp eq i64 %.01131.us, %reass.sub
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !58

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  %.01032 = phi i64 [ %i.o, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %.01131 = phi i64 [ %i.p, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %.01131) ; 2 uses
  %i.k = sub i64 %i.b, %.sroa.speculated20
  %.not29 = icmp ugt i64 %.fr34, %i.k
  br i1 %.not29, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %.lr.ph.split
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated20
  %bcmp = tail call i32 @bcmp(ptr %i.l, ptr %1, i64 %.fr34)
  %bcmp.fr = freeze i32 %bcmp
  %i.m = icmp eq i32 %bcmp.fr, 0
  %i.n = zext i1 %i.m to i64
  %spec.select = add i64 %.01032, %i.n
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %.lr.ph.split
  %i.o = phi i64 [ %.01032, %.lr.ph.split ], [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit ] ; 2 uses
  %i.p = add nuw i64 %.01131, 1
  %.not = icmp eq i64 %.01131, %reass.sub
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !59

.loopexit:                                        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %.lr.ph.split.us, %middle.block, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select33, %.lr.ph.split.us ], [ %i.i, %middle.block ], [ %i.o, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i32 @_ZL17GetAutoSenseRadixRN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.018 = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.thread59, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !51
  store i64 0, ptr %2, align 8, !tbaa !60
  %i.f = zext i32 %.018 to i64                    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.l
  %.sroa.0.066 = phi ptr [ %.sroa.0.0.copyload, %bb.d ], [ %i.u, %bb.l ] ; 6 uses
  %.sroa.15.065 = phi i64 [ %i.d, %bb.d ], [ %i.v, %bb.l ] ; 5 uses
  %i.g = phi i64 [ 0, %bb.d ], [ %i.r, %bb.l ]    ; 2 uses
  %i.h = load i8, ptr %.sroa.0.066, align 1, !tbaa !15 ; 6 uses
  %i.i = icmp sgt i8 %i.h, 47
  br i1 %i.i, label %bb.f, label %.thread55

bb.f:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i8 %i.h, 58
end_hunk_0
