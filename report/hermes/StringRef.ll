inline.NumInlined: 344
inline.NumDeleted: 125
begin_hunk_0_@_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib:bb.a
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
define hidden void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef signext %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 {
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
  %i.f = phi i32 [ %i.x, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %.sroa.8.0111.us = phi i64 [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.sroa.8.0.copyload, %.lr.ph ] ; 6 uses
  %.sroa.030.0110.us = phi ptr [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.sroa.030.0.copyload, %.lr.ph ] ; 7 uses
  %.not101.us = icmp eq i64 %.sroa.8.0111.us, 0
  br i1 %.not101.us, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = tail call noundef ptr @memchr(ptr noundef %.sroa.030.0110.us, i32 noundef %i.b, i64 noundef %.sroa.8.0111.us) #17 ; 3 uses
  %.not.i.us = icmp eq ptr %i.g, null
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %.sroa.030.0110.us to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  %or.cond98.us = select i1 %.not.i.us, i1 true, i1 %i.k
  br i1 %or.cond98.us, label %.thread.thread137, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not102.us = icmp eq ptr %i.g, %.sroa.030.0110.us
  %i.l = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0111.us, i64 %i.j)
  %.sroa.speculated44.us = select i1 %.not102.us, i64 0, i64 %i.l
  %i.m = load i32, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !54
  %.not.i22.us = icmp ult i32 %i.m, %i.n
  br i1 %.not.i22.us, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i.us = load i32, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us: ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %.pre.i.us, %bb.d ], [ %i.m, %bb.c ]
  %i.p = load ptr, ptr %1, align 8, !tbaa !56
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  store ptr %.sroa.030.0110.us, ptr %i.r, align 1
  %.sroa.4.0..sroa_idx29.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.speculated44.us, ptr %.sroa.4.0..sroa_idx29.us, align 1
  %i.s = load i32, ptr %i.c, align 8, !tbaa !52
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.c, align 8, !tbaa !52
  %i.u = add nuw i64 %i.j, 1
  %.sroa.speculated53.us = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0111.us, i64 %i.u) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.030.0110.us, i64 %.sroa.speculated53.us ; 2 uses
  %i.w = sub i64 %.sroa.8.0111.us, %.sroa.speculated53.us ; 2 uses
  %i.x = add nsw i32 %i.f, -1
  %.not.us = icmp eq i32 %i.f, 0
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %i.y = phi i32 [ %i.aq, %bb.i ], [ %i.a, %.lr.ph ] ; 2 uses
  %.sroa.8.0111 = phi i64 [ %i.ap, %bb.i ], [ %.sroa.8.0.copyload, %.lr.ph ] ; 6 uses
  %.sroa.030.0110 = phi ptr [ %i.ao, %bb.i ], [ %.sroa.030.0.copyload, %.lr.ph ] ; 7 uses
  %.not101 = icmp eq i64 %.sroa.8.0111, 0
  br i1 %.not101, label %.thread.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.z = tail call noundef ptr @memchr(ptr noundef %.sroa.030.0110, i32 noundef %i.b, i64 noundef %.sroa.8.0111) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %.sroa.030.0110 to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, -1
  %or.cond98 = select i1 %.not.i, i1 true, i1 %i.ad
  br i1 %or.cond98, label %.thread.thread137, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not121 = icmp eq ptr %i.z, %.sroa.030.0110
  br i1 %.not121, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0111, i64 %i.ac)
  %i.af = load i32, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !54
  %.not.i22 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i22, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.h, !prof !55

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %bb.g, %bb.h
  %i.ah = phi i32 [ %.pre.i, %bb.h ], [ %i.af, %bb.g ]
  %i.ai = load ptr, ptr %1, align 8, !tbaa !56
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  store ptr %.sroa.030.0110, ptr %i.ak, align 1
  %.sroa.4.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx29, align 1
  %i.al = load i32, ptr %i.c, align 8, !tbaa !52
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.c, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, %bb.f
  %i.an = add nuw i64 %i.ac, 1
  %.sroa.speculated53 = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0111, i64 %i.an) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.030.0110, i64 %.sroa.speculated53 ; 2 uses
  %i.ap = sub i64 %.sroa.8.0111, %.sroa.speculated53 ; 2 uses
  %i.aq = add nsw i32 %i.y, -1
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %bb.i, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, %bb.a
  %.sroa.030.0.lcssa = phi ptr [ %.sroa.030.0.copyload, %bb.a ], [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.ao, %bb.i ]
  %.sroa.8.0.lcssa = phi i64 [ %.sroa.8.0.copyload, %bb.a ], [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.ap, %bb.i ] ; 2 uses
  %i.ar = icmp ne i64 %.sroa.8.0.lcssa, 0
  %or.cond100.not = select i1 %4, i1 true, i1 %i.ar
  br i1 %or.cond100.not, label %.thread.thread137, label %.thread97

.thread.thread:                                   ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.sroa.030.0110.us, %.lr.ph.split.us ], [ %.sroa.030.0110, %.lr.ph.split ]
  br i1 %4, label %.thread.thread137, label %.thread97

.thread.thread137:                                ; preds = %bb.e, %bb.b, %.thread.thread, %.thread
  %.sroa.030.0108 = phi ptr [ %.us-phi, %.thread.thread ], [ %.sroa.030.0.lcssa, %.thread ], [ %.sroa.030.0110.us, %bb.b ], [ %.sroa.030.0110, %bb.e ]
  %.sroa.8.0106 = phi i64 [ 0, %.thread.thread ], [ %.sroa.8.0.lcssa, %.thread ], [ %.sroa.8.0111.us, %bb.b ], [ %.sroa.8.0111, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !52 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !54
  %.not.i26 = icmp ult i32 %i.at, %i.av
  br i1 %.not.i26, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28, label %bb.j, !prof !55

bb.j:                                             ; preds = %.thread.thread137
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aw, i64 noundef 0, i64 noundef 16) #18
  %.pre.i27 = load i32, ptr %i.as, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28: ; preds = %.thread.thread137, %bb.j
  %i.ax = phi i32 [ %.pre.i27, %bb.j ], [ %i.at, %.thread.thread137 ]
  %i.ay = load ptr, ptr %1, align 8, !tbaa !56
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  store ptr %.sroa.030.0108, ptr %i.ba, align 1
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.sroa.8.0106, ptr %.sroa.8.0..sroa_idx34, align 1
  %i.bb = load i32, ptr %i.as, align 8, !tbaa !52
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !52
  br label %.thread97

.thread97:                                        ; preds = %.thread, %.thread.thread, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef5countES0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
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
  %3 = sub nuw nsw i64 %i.b, %.fr34
  %4 = add i64 %3, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.mod.vf = and i64 %4, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = add <2 x i64> %reduced.phi, splat (i64 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.mod.vf
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %i.g = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.mod.vf
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.split.us.preheader40

.lr.ph.split.us.preheader40:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %.01032.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.g, %middle.block ]
  %.01131.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.mod.vf, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader40, %.lr.ph.split.us
  %.01032.us = phi i64 [ %spec.select33, %.lr.ph.split.us ], [ %.01032.us.ph, %.lr.ph.split.us.preheader40 ]
  %.01131.us = phi i64 [ %i.h, %.lr.ph.split.us ], [ %.01131.us.ph, %.lr.ph.split.us.preheader40 ] ; 2 uses
  %spec.select33 = add i64 %.01032.us, 1          ; 2 uses
  %i.h = add nuw i64 %.01131.us, 1
  %.not.us = icmp eq i64 %.01131.us, %reass.sub
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !58

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  %.01032 = phi i64 [ %i.m, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %.01131 = phi i64 [ %i.n, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %.01131) ; 2 uses
  %i.i = sub i64 %i.b, %.sroa.speculated20
  %.not29 = icmp ugt i64 %.fr34, %i.i
  br i1 %.not29, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %.lr.ph.split
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated20
  %bcmp = tail call i32 @bcmp(ptr %i.j, ptr %1, i64 %.fr34)
  %bcmp.fr = freeze i32 %bcmp
  %i.k = icmp eq i32 %bcmp.fr, 0
  %i.l = zext i1 %i.k to i64
  %spec.select = add i64 %.01032, %i.l
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %.lr.ph.split
  %i.m = phi i64 [ %.01032, %.lr.ph.split ], [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit ] ; 2 uses
  %i.n = add nuw i64 %.01131, 1
  %.not = icmp eq i64 %.01131, %reass.sub
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !59

.loopexit:                                        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %.lr.ph.split.us, %middle.block, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select33, %.lr.ph.split.us ], [ %i.g, %middle.block ], [ %i.m, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 {
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
  br i1 %i.j, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp samesign ugt i8 %i.h, 96
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = icmp samesign ult i8 %i.h, 123
  br i1 %i.l, label %bb.j, label %.thread55

bb.i:                                             ; preds = %bb.g
  %i.m = add nsw i8 %i.h, -65
  %or.cond = icmp ult i8 %i.m, 26
  br i1 %or.cond, label %bb.j, label %.thread55

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.sink70 = phi i32 [ -48, %bb.f ], [ -87, %bb.h ], [ -55, %bb.i ]
  %i.n = zext nneg i8 %i.h to i32
  %i.o = add nsw i32 %.sink70, %i.n               ; 2 uses
  %.not = icmp ult i32 %i.o, %.018
  br i1 %.not, label %bb.k, label %.thread55

bb.k:                                             ; preds = %bb.j
  %i.p = mul i64 %i.g, %i.f
  %i.q = zext nneg i32 %i.o to i64
  %i.r = add i64 %i.p, %i.q                       ; 3 uses
  store i64 %i.r, ptr %2, align 8, !tbaa !60
  %i.s = udiv i64 %i.r, %i.f
  %i.t = icmp ult i64 %i.s, %i.g
  br i1 %i.t, label %.thread59, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 1 ; 2 uses
  %i.v = add i64 %.sroa.15.065, -1                ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.thread55, label %bb.e

.thread55:                                        ; preds = %bb.h, %bb.e, %bb.j, %bb.i, %bb.l
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.15.065, %bb.h ], [ %.sroa.15.065, %bb.e ], [ %.sroa.15.065, %bb.j ], [ %.sroa.15.065, %bb.i ], [ 0, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.066, %bb.h ], [ %.sroa.0.066, %bb.e ], [ %.sroa.0.066, %bb.j ], [ %.sroa.0.066, %bb.i ], [ %i.u, %bb.l ]
  %i.x = icmp eq i64 %i.d, %.sroa.15.0.lcssa
  br i1 %i.x, label %.thread59, label %bb.m

bb.m:                                             ; preds = %.thread55
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8, !tbaa !51
  store i64 %.sroa.15.0.lcssa, ptr %i.c, align 8, !tbaa !12
  br label %.thread59

.thread59:                                        ; preds = %bb.k, %bb.m, %.thread55, %bb.c
  %.4 = phi i1 [ true, %bb.c ], [ true, %.thread55 ], [ false, %bb.m ], [ true, %bb.k ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 2, 17) i32 @_ZL17GetAutoSenseRadixRN4llvh9StringRefE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %switch = icmp ult i64 %i.b, 2
  br i1 %switch, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit53

_ZNK4llvh9StringRef10startswithES0_.exit53:       ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 10 uses
  %i.d = load i16, ptr %i.c, align 1
  %i.e = icmp ne i16 %i.d, 30768
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112, label %_ZNK4llvh9StringRef10startswithES0_.exit49

_ZNK4llvh9StringRef10startswithES0_.exit49:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit53
  %i.h = load i16, ptr %i.c, align 1
  %i.i = icmp ne i16 %i.h, 22576
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112, label %_ZNK4llvh9StringRef10startswithES0_.exit45

_ZNK4llvh9StringRef10startswithES0_.exit53.thread112: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit49, %_ZNK4llvh9StringRef10startswithES0_.exit53
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split

_ZNK4llvh9StringRef10startswithES0_.exit45:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit49
  %i.m = load i16, ptr %i.c, align 1
  %i.n = icmp ne i16 %i.m, 25136
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116, label %_ZNK4llvh9StringRef10startswithES0_.exit41

_ZNK4llvh9StringRef10startswithES0_.exit41:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit45
  %i.q = load i16, ptr %i.c, align 1
  %i.r = icmp ne i16 %i.q, 16944
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit45.thread116: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit41, %_ZNK4llvh9StringRef10startswithES0_.exit45
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit41
  %i.v = load i16, ptr %i.c, align 1
  %i.w = icmp ne i16 %i.v, 28464
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread120, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread120: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.aa = load i8, ptr %i.c, align 1, !tbaa !15
  %i.ab = icmp eq i8 %i.aa, 48
  br i1 %i.ab, label %bb.b, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split: ; preds = %bb.b, %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112, %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116, %_ZNK4llvh9StringRef10startswithES0_.exit.thread120
  %.sink131 = phi i64 [ -2, %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112 ], [ -2, %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116 ], [ -2, %_ZNK4llvh9StringRef10startswithES0_.exit.thread120 ], [ -1, %bb.b ]
  %.sink130 = phi ptr [ %i.l, %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112 ], [ %i.u, %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116 ], [ %i.z, %_ZNK4llvh9StringRef10startswithES0_.exit.thread120 ], [ %i.ac, %bb.b ]
  %.0.ph = phi i32 [ 16, %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112 ], [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116 ], [ 8, %_ZNK4llvh9StringRef10startswithES0_.exit.thread120 ], [ 8, %bb.b ]
  %i.ag = add i64 %i.b, %.sink131
  store ptr %.sink130, ptr %0, align 8, !tbaa !51
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !12
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread
end_hunk_0
