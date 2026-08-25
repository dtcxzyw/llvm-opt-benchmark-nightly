Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FunctionLayout?download=true
inline.NumInlined: 901
inline.NumDeleted: 431
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16FunctionFragmentELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE18growAndEmplaceBackIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store ptr %i.a, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !15
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !19
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  ret ptr %i.o
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = load i32, ptr %i.a, align 8, !tbaa !15
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !15
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKPN4llvm4bolt16BinaryBasicBlockESt15insert_iteratorINS3_11SmallVectorIS6_Lj0EEEEEET0_T_SE_SD_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i32, ptr %i.f, align 8, !tbaa !15
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit, %bb.a
  %.sroa.3.0.lcssa = phi ptr [ %3, %bb.a ], [ %i.aq, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0.lcssa, 1
  ret { ptr, ptr } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit
  %i.i = phi i32 [ %.pre, %.lr.ph ], [ %i.ap, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit ] ; 4 uses
  %.08 = phi i64 [ %i.d, %.lr.ph ], [ %i.as, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit ] ; 2 uses
  %.057 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit ] ; 2 uses
  %.sroa.3.06 = phi ptr [ %3, %.lr.ph ], [ %i.aq, %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit ] ; 2 uses
  %i.j = load ptr, ptr %.057, align 8, !tbaa !20  ; 3 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !19     ; 3 uses
  %i.l = zext i32 %i.i to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = icmp eq ptr %.sroa.3.06, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 4, !tbaa !22
  %.not.i.i.i.i = icmp ult i32 %i.i, %i.o
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d, !prof !25

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.j)
  %.pre13.i.i.i = load i32, ptr %i.f, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.m, align 1
  %i.p = load i32, ptr %i.f, align 8, !tbaa !15
  %i.q = add i32 %i.p, 1                          ; 2 uses
  store i32 %i.q, ptr %i.f, align 8, !tbaa !15
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.r = phi i32 [ %.pre13.i.i.i, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !19
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  br label %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %.sroa.3.06 to i64
  %i.x = ptrtoint ptr %i.k to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = load i32, ptr %i.g, align 4, !tbaa !22
  %.not.i.i.not.i.i.i = icmp ult i32 %i.i, %i.z
  br i1 %.not.i.i.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE28reserveForParamAndGetAddressERS3_m.exit.i.i.i, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  %i.aa = add nuw nsw i64 %i.l, 1
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.h, i64 noundef %i.aa, i64 noundef 8) #16
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !19
  %.pre11.i.i.i = load i32, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %.pre14.i.i.i = zext i32 %.pre11.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE28reserveForParamAndGetAddressERS3_m.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE28reserveForParamAndGetAddressERS3_m.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.f ], [ %.pre14.i.i.i, %bb.g ]
  %i.ab = phi i32 [ %i.i, %bb.f ], [ %.pre11.i.i.i, %bb.g ] ; 2 uses
  %i.ac = phi ptr [ %i.k, %bb.f ], [ %.pre.i.i.i, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %.pre-phi.i.i.i, 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !20
  %reass.sub.i.i.i = sub i64 %.idx.i.i.i, %i.y
  %gepdiff.i.i.i = add i64 %reass.sub.i.i.i, -8   ; 3 uses
  %i.ah = ashr exact i64 %gepdiff.i.i.i, 3        ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE28reserveForParamAndGetAddressERS3_m.exit.i.i.i
  %i.aj = sub nsw i64 0, %i.ah
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.ad, i64 %gepdiff.i.i.i, i1 false)
  %.pre12.i.i.i = load i32, ptr %i.f, align 8, !tbaa !15
  br label %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE28reserveForParamAndGetAddressERS3_m.exit.i.i.i
  %i.al = icmp eq i64 %gepdiff.i.i.i, 8
  br i1 %i.al, label %bb.j, label %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !20
  store ptr %i.am, ptr %i.af, align 8, !tbaa !20
  br label %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i

_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.an = phi i32 [ %.pre12.i.i.i, %bb.h ], [ %i.ab, %bb.i ], [ %i.ab, %bb.j ]
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.f, align 8, !tbaa !15
  store ptr %i.j, ptr %i.ad, align 8, !tbaa !20
  br label %_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit

_ZNSt15insert_iteratorIN4llvm11SmallVectorIPNS0_4bolt16BinaryBasicBlockELj0EEEEaSERKS4_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i, %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i
  %i.ap = phi i32 [ %i.r, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i ], [ %i.ao, %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i ]
  %.0.i.i.i = phi ptr [ %i.v, %_ZN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EE9push_backES3_.exit.i.i.i ], [ %i.ad, %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.as = add nsw i64 %.08, -1
  %i.at = icmp sgt i64 %.08, 1
  br i1 %i.at, label %bb.b, label %._crit_edge, !llvm.loop !115
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN4llvm25ComputeMappedEditDistanceIPKNS_4bolt16BinaryBasicBlockEZNS_19ComputeEditDistanceIS4_EEjNS_8ArrayRefIT_EES8_bjEUlRKS4_E_EEjS8_S8_T0_bj(ptr %0, i64 %1, ptr %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.51", align 8 ; 8 uses
  %.not = icmp eq i32 %5, 0                       ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, %3
  %i.b = sub nuw i64 %1, %3
  %i.c = sub nuw i64 %3, %1
  %i.d = select i1 %i.a, i64 %i.b, i64 %i.c
  %i.e = zext i32 %5 to i64
  %.not65 = icmp ugt i64 %i.d, %i.e
  %i.f = add i32 %5, 1
  br i1 %.not65, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.g = add i64 %3, 1                            ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 64, ptr %i.j, align 4, !tbaa !22
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %.preheader.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.g, 64
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i: ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %6, ptr noundef nonnull %i.h, i64 noundef %i.g, i64 noundef 4) #16
  %.pre.i.i.i = load i32, ptr %i.i, align 8, !tbaa !15
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.g, %.pre13.i.i.i
  %.pre.pre.pre.pre = load ptr, ptr %6, align 8, !tbaa !19 ; 2 uses
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, %bb.d
  %i.m = phi ptr [ %i.h, %bb.d ], [ %.pre.pre.pre.pre, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.d ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.m, i64 %.pre-phi.i.i3.i
  %i.o = sub i64 %i.g, %.pre-phi.i.i3.i
  %i.p = shl i64 %i.o, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %i.p, i1 false), !tbaa !14
  br label %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit

_ZN4llvm11SmallVectorIjLj64EEC2Em.exit:           ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.pre.pre.pre = phi ptr [ %i.m, %.lr.ph.preheader.i.i.i ], [ %.pre.pre.pre.pre, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 7 uses
  %i.q = trunc i64 %i.g to i32                    ; 2 uses
  store i32 %i.q, ptr %i.i, align 8, !tbaa !15
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit
  %.not6691 = icmp eq i64 %1, 0
  br i1 %.not6691, label %.thread, label %.lr.ph94

.preheader.thread:                                ; preds = %bb.c
  %.not6691154 = icmp eq i64 %1, 0
  br i1 %.not6691154, label %.thread, label %.lr.ph94.thread

.lr.ph94.thread:                                  ; preds = %.preheader.thread
  %i.s = add i32 %5, 1
  br label %.lr.ph94.split

.lr.ph94:                                         ; preds = %.preheader
  %.not6786 = icmp eq i64 %3, 0
  %i.t = add i32 %5, 1                            ; 2 uses
  br i1 %.not6786, label %.lr.ph94.split.us, label %.lr.ph94.split

.lr.ph94.split.us:                                ; preds = %.lr.ph94
  br i1 %.not, label %.lr.ph94.split.us.split.us.preheader, label %.lr.ph94.split.us.split

.lr.ph94.split.us.split.us.preheader:             ; preds = %.lr.ph94.split.us
  %i.u = add i64 %1, 1
  %umax135 = call i64 @llvm.umax.i64(i64 %i.u, i64 2)
  %i.v = trunc i64 %umax135 to i32
  %i.w = add i32 %i.v, -1
  br label %..thread_crit_edge.split.us

.lr.ph94.split.us.split:                          ; preds = %.lr.ph94.split.us, %bb.e
  %.05392.us = phi i64 [ %i.y, %bb.e ], [ 1, %.lr.ph94.split.us ] ; 2 uses
  %i.x = trunc i64 %.05392.us to i32              ; 3 uses
  %.not116 = icmp ult i32 %5, %i.x
  br i1 %.not116, label %.loopexit.split.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph94.split.us.split
  %i.y = add i64 %.05392.us, 1                    ; 2 uses
  %.not66.us = icmp ugt i64 %i.y, %1
  br i1 %.not66.us, label %..thread_crit_edge.split.us, label %.lr.ph94.split.us.split, !llvm.loop !116

..thread_crit_edge.split.us:                      ; preds = %bb.e, %.lr.ph94.split.us.split.us.preheader
  %.us-phi = phi i32 [ %i.w, %.lr.ph94.split.us.split.us.preheader ], [ %i.x, %bb.e ]
  store i32 %.us-phi, ptr %.pre.pre.pre, align 4, !tbaa !14
  br label %.thread

.loopexit.split.us:                               ; preds = %.lr.ph94.split.us.split
  store i32 %i.x, ptr %.pre.pre.pre, align 4, !tbaa !14
  br label %.loopexit

.lr.ph94.split:                                   ; preds = %.lr.ph94.thread, %.lr.ph94
  %i.z = phi i32 [ %i.s, %.lr.ph94.thread ], [ %i.t, %.lr.ph94 ] ; 2 uses
  %.pre.pre152155160 = phi ptr [ %i.h, %.lr.ph94.thread ], [ %.pre.pre.pre, %.lr.ph94 ] ; 22 uses
  %umax131 = call i64 @llvm.umax.i64(i64 %i.g, i64 2) ; 4 uses
  br i1 %4, label %.lr.ph94.split.split.us, label %.lr.ph94.split.split

.lr.ph94.split.split.us:                          ; preds = %.lr.ph94.split
  br i1 %.not, label %.lr.ph90.us.us.preheader, label %.lr.ph90.us

.lr.ph90.us.us.preheader:                         ; preds = %.lr.ph94.split.split.us
  %i.aa = add i64 %1, 1
  %umax133 = call i64 @llvm.umax.i64(i64 %i.aa, i64 2)
  %i.ab = add i64 %umax131, -1                    ; 3 uses
  %xtraiter185 = and i64 %i.ab, 1
  %i.ac = icmp ult i64 %i.g, 3
  %unroll_iter190 = and i64 %i.ab, -2
  %lcmp.mod188.not = icmp eq i64 %xtraiter185, 0
  %lcmp.mod189 = trunc i64 %i.ab to i1
  br label %.lr.ph90.us.us

.lr.ph90.us.us:                                   ; preds = %.lr.ph90.us.us.preheader, %._crit_edge.split.us.us.us
  %.05392.us97.us = phi i64 [ %i.bp, %._crit_edge.split.us.us.us ], [ 1, %.lr.ph90.us.us.preheader ] ; 3 uses
  %i.ad = trunc i64 %.05392.us97.us to i32        ; 3 uses
  %i.ae = add i64 %.05392.us97.us, -1             ; 2 uses
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 3 uses
  br i1 %i.ac, label %.epil.preheader184, label %.lr.ph90.us.us.new

.lr.ph90.us.us.new:                               ; preds = %.lr.ph90.us.us, %.lr.ph90.us.us.new
  %i.ai = phi i32 [ %.sroa.speculated.us.us.us.1, %.lr.ph90.us.us.new ], [ %i.ad, %.lr.ph90.us.us ]
  %.05189.us.us.us = phi i64 [ %i.be, %.lr.ph90.us.us.new ], [ 1, %.lr.ph90.us.us ] ; 4 uses
  %.05288.us.us.us = phi i32 [ %i.av, %.lr.ph90.us.us.new ], [ %i.af, %.lr.ph90.us.us ]
  %niter191 = phi i64 [ %niter191.next.1, %.lr.ph90.us.us.new ], [ 0, %.lr.ph90.us.us ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us.us ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14 ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %2, i64 %.05189.us.us.us
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.ao = icmp ne ptr %i.ah, %i.an
  %i.ap = zext i1 %i.ao to i32
  %i.aq = add i32 %.05288.us.us.us, %i.ap
  %i.ar = call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.ai)
  %i.as = add i32 %i.ar, 1
  %.sroa.speculated.us.us.us = call i32 @llvm.umin.i32(i32 %i.as, i32 %i.aq) ; 2 uses
  store i32 %.sroa.speculated.us.us.us, ptr %i.aj, align 4, !tbaa !14
  %i.at = add nuw i64 %.05189.us.us.us, 1         ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !14 ; 3 uses
  %i.aw = getelementptr [8 x i8], ptr %2, i64 %i.at
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = icmp ne ptr %i.ah, %i.ay
  %i.ba = zext i1 %i.az to i32
  %i.bb = add i32 %i.ak, %i.ba
  %i.bc = call i32 @llvm.umin.i32(i32 %i.av, i32 %.sroa.speculated.us.us.us)
  %i.bd = add i32 %i.bc, 1
  %.sroa.speculated.us.us.us.1 = call i32 @llvm.umin.i32(i32 %i.bd, i32 %i.bb) ; 3 uses
  store i32 %.sroa.speculated.us.us.us.1, ptr %i.au, align 4, !tbaa !14
  %i.be = add nuw i64 %.05189.us.us.us, 2         ; 2 uses
  %niter191.next.1 = add nuw i64 %niter191, 2     ; 2 uses
  %niter191.ncmp.1 = icmp eq i64 %niter191.next.1, %unroll_iter190
  br i1 %niter191.ncmp.1, label %._crit_edge.split.us.us.us.unr-lcssa, label %.lr.ph90.us.us.new, !llvm.loop !117

._crit_edge.split.us.us.us.unr-lcssa:             ; preds = %.lr.ph90.us.us.new
  br i1 %lcmp.mod188.not, label %._crit_edge.split.us.us.us, label %.epil.preheader184

.epil.preheader184:                               ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.lr.ph90.us.us
  %.epil.init187 = phi i32 [ %i.ad, %.lr.ph90.us.us ], [ %.sroa.speculated.us.us.us.1, %._crit_edge.split.us.us.us.unr-lcssa ]
  %.05189.us.us.us.epil.init = phi i64 [ 1, %.lr.ph90.us.us ], [ %i.be, %._crit_edge.split.us.us.us.unr-lcssa ] ; 2 uses
  %.05288.us.us.us.epil.init = phi i32 [ %i.af, %.lr.ph90.us.us ], [ %i.av, %._crit_edge.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod189)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us.us.epil.init ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !14
  %i.bh = getelementptr [8 x i8], ptr %2, i64 %.05189.us.us.us.epil.init
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20
  %i.bk = icmp ne ptr %i.ah, %i.bj
  %i.bl = zext i1 %i.bk to i32
  %i.bm = add i32 %.05288.us.us.us.epil.init, %i.bl
  %i.bn = call i32 @llvm.umin.i32(i32 %i.bg, i32 %.epil.init187)
  %i.bo = add i32 %i.bn, 1
  %.sroa.speculated.us.us.us.epil = call i32 @llvm.umin.i32(i32 %i.bo, i32 %i.bm)
  store i32 %.sroa.speculated.us.us.us.epil, ptr %i.bf, align 4, !tbaa !14
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.epil.preheader184
  %i.bp = add nuw i64 %.05392.us97.us, 1          ; 2 uses
  %exitcond134 = icmp eq i64 %i.bp, %umax133
  br i1 %exitcond134, label %.thread.loopexit, label %.lr.ph90.us.us, !llvm.loop !116

.lr.ph90.us:                                      ; preds = %.lr.ph94.split.split.us, %bb.f
  %.05392.us97 = phi i64 [ %i.bv, %bb.f ], [ 1, %.lr.ph94.split.split.us ] ; 3 uses
  %i.bq = trunc i64 %.05392.us97 to i32           ; 4 uses
  %i.br = add i64 %.05392.us97, -1                ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.split.us.us
  %i.bv = add i64 %.05392.us97, 1                 ; 2 uses
  %.not66.us98 = icmp ugt i64 %i.bv, %1
  br i1 %.not66.us98, label %.thread.loopexit161, label %.lr.ph90.us, !llvm.loop !116

bb.g:                                             ; preds = %bb.g, %.lr.ph90.us
  %i.bw = phi i32 [ %i.bq, %.lr.ph90.us ], [ %.sroa.speculated.us.us, %bb.g ]
  %.05189.us.us = phi i64 [ 1, %.lr.ph90.us ], [ %i.ch, %bb.g ] ; 3 uses
  %.05288.us.us = phi i32 [ %i.bs, %.lr.ph90.us ], [ %i.by, %bb.g ]
  %.08287.us.us = phi i32 [ %i.bq, %.lr.ph90.us ], [ %.sroa.speculated76.us.us, %bb.g ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14 ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %2, i64 %.05189.us.us
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !20
  %i.cc = icmp ne ptr %i.bu, %i.cb
  %i.cd = zext i1 %i.cc to i32
  %i.ce = add i32 %.05288.us.us, %i.cd
  %i.cf = call i32 @llvm.umin.i32(i32 %i.by, i32 %i.bw)
  %i.cg = add i32 %i.cf, 1
  %.sroa.speculated.us.us = call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.ce) ; 3 uses
  store i32 %.sroa.speculated.us.us, ptr %i.bx, align 4, !tbaa !14
  %.sroa.speculated76.us.us = call i32 @llvm.umin.i32(i32 %.sroa.speculated.us.us, i32 %.08287.us.us) ; 2 uses
  %i.ch = add nuw i64 %.05189.us.us, 1            ; 2 uses
  %exitcond130 = icmp eq i64 %i.ch, %umax131
  br i1 %exitcond130, label %._crit_edge.split.us.us, label %bb.g, !llvm.loop !117

._crit_edge.split.us.us:                          ; preds = %bb.g
  %.not113.a = icmp ugt i32 %.sroa.speculated76.us.us, %5
  br i1 %.not113.a, label %.loopexit.loopexit, label %bb.f

.lr.ph94.split.split:                             ; preds = %.lr.ph94.split
  br i1 %.not, label %.lr.ph90.us103.preheader, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %.lr.ph94.split.split
  %7 = add i64 %umax131, -1                       ; 3 uses
  %xtraiter = and i64 %7, 1
  %8 = icmp ult i64 %i.g, 3
  %unroll_iter = and i64 %7, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod187 = trunc i64 %7 to i1
  br label %.lr.ph90

.lr.ph90.us103.preheader:                         ; preds = %.lr.ph94.split.split
  %i.ci = add i64 %1, 1
  %umax127 = call i64 @llvm.umax.i64(i64 %i.ci, i64 2)
  %i.cj = add i64 %umax131, -1                    ; 3 uses
  %xtraiter.a = and i64 %i.cj, 1
  %i.ck = icmp ult i64 %i.g, 3
  %unroll_iter.a = and i64 %i.cj, -2
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  %lcmp.mod183 = trunc i64 %i.cj to i1
  br label %.lr.ph90.us103

.lr.ph90.us103:                                   ; preds = %.lr.ph90.us103.preheader, %._crit_edge.split.us
  %.05392.us105 = phi i64 [ %i.db, %._crit_edge.split.us ], [ 1, %.lr.ph90.us103.preheader ] ; 3 uses
  %i.cl = trunc i64 %.05392.us105 to i32          ; 3 uses
  %i.cm = add i64 %.05392.us105, -1               ; 2 uses
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cm
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !20 ; 3 uses
  br i1 %i.ck, label %.epil.preheader.a, label %.lr.ph90.us103.new

.lr.ph90.us103.new:                               ; preds = %.lr.ph90.us103, %.lr.ph90.us103.new
  %i.cq = phi i32 [ %storemerge114.1, %.lr.ph90.us103.new ], [ %i.cl, %.lr.ph90.us103 ]
  %.05189.us = phi i64 [ %21, %.lr.ph90.us103.new ], [ 1, %.lr.ph90.us103 ] ; 4 uses
  %.05288.us = phi i32 [ %16, %.lr.ph90.us103.new ], [ %i.cn, %.lr.ph90.us103 ]
  %niter.a = phi i64 [ %niter195.next.1, %.lr.ph90.us103.new ], [ 0, %.lr.ph90.us103 ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !14 ; 2 uses
  %9 = getelementptr [8 x i8], ptr %2, i64 %.05189.us
  %10 = getelementptr i8, ptr %9, i64 -8
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = icmp eq ptr %i.cp, %11
  %13 = call i32 @llvm.umin.i32(i32 %i.cs, i32 %i.cq)
  %14 = add i32 %13, 1
  %storemerge114 = select i1 %12, i32 %.05288.us, i32 %14 ; 2 uses
  store i32 %storemerge114, ptr %i.cr, align 4, !tbaa !14
  %i.ct = add nuw i64 %.05189.us, 1               ; 2 uses
  %15 = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %i.ct ; 2 uses
  %16 = load i32, ptr %15, align 4, !tbaa !14     ; 3 uses
  %i.cu = getelementptr [8 x i8], ptr %2, i64 %i.ct
  %17 = getelementptr i8, ptr %i.cu, i64 -8
  %i.cv = load ptr, ptr %17, align 8, !tbaa !20
  %18 = icmp eq ptr %i.cp, %i.cv
  %19 = call i32 @llvm.umin.i32(i32 %16, i32 %storemerge114)
  %20 = add i32 %19, 1
  %storemerge114.1 = select i1 %18, i32 %i.cs, i32 %20 ; 3 uses
  store i32 %storemerge114.1, ptr %15, align 4, !tbaa !14
  %21 = add nuw i64 %.05189.us, 2                 ; 2 uses
  %niter195.next.1 = add nuw i64 %niter.a, 2      ; 2 uses
  %i.cw = icmp eq i64 %niter195.next.1, %unroll_iter.a
  br i1 %i.cw, label %._crit_edge.split.us.unr-lcssa, label %.lr.ph90.us103.new, !llvm.loop !117

._crit_edge.split.us.unr-lcssa:                   ; preds = %.lr.ph90.us103.new
  br i1 %lcmp.mod.not.a, label %._crit_edge.split.us, label %.epil.preheader.a

.epil.preheader.a:                                ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph90.us103
  %.epil.init.a = phi i32 [ %i.cl, %.lr.ph90.us103 ], [ %storemerge114.1, %._crit_edge.split.us.unr-lcssa ]
  %.05189.us.epil.init = phi i64 [ 1, %.lr.ph90.us103 ], [ %21, %._crit_edge.split.us.unr-lcssa ] ; 2 uses
  %.05288.us.epil.init = phi i32 [ %i.cn, %.lr.ph90.us103 ], [ %16, %._crit_edge.split.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.epil.init ; 2 uses
  %22 = load i32, ptr %i.cx, align 4, !tbaa !14
  %i.cy = getelementptr [8 x i8], ptr %2, i64 %.05189.us.epil.init
  %23 = getelementptr i8, ptr %i.cy, i64 -8
  %i.cz = load ptr, ptr %23, align 8, !tbaa !20
  %i.da = icmp eq ptr %i.cp, %i.cz
  %24 = call i32 @llvm.umin.i32(i32 %22, i32 %.epil.init.a)
  %25 = add i32 %24, 1
  %storemerge114.epil = select i1 %i.da, i32 %.05288.us.epil.init, i32 %25
  store i32 %storemerge114.epil, ptr %i.cx, align 4, !tbaa !14
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.unr-lcssa, %.epil.preheader.a
  %i.db = add nuw i64 %.05392.us105, 1            ; 2 uses
  %exitcond128 = icmp eq i64 %i.db, %umax127
  br i1 %exitcond128, label %.thread.loopexit.a, label %.lr.ph90.us103, !llvm.loop !116

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit, %.lr.ph
  %.05485 = phi i32 [ %i.de, %.lr.ph ], [ 1, %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit ] ; 3 uses
  %i.dc = zext i32 %.05485 to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %i.dc
  store i32 %.05485, ptr %i.dd, align 4, !tbaa !14
  %i.de = add nuw i32 %.05485, 1                  ; 2 uses
  %i.df = load i32, ptr %i.i, align 8, !tbaa !15
  %i.dg = icmp ugt i32 %i.df, %i.de
  br i1 %i.dg, label %.lr.ph, label %.preheader, !llvm.loop !118

bb.h:                                             ; preds = %bb.j
  %i.dh = add i64 %.05392, 1                      ; 2 uses
  %.not66 = icmp ugt i64 %i.dh, %1
  br i1 %.not66, label %.thread.loopexit161.a, label %.lr.ph90, !llvm.loop !116

.lr.ph90:                                         ; preds = %.lr.ph93.preheader, %bb.h
  %.05392 = phi i64 [ %i.dh, %bb.h ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.di = trunc i64 %.05392 to i32                ; 6 uses
  %i.dj = add i64 %.05392, -1                     ; 2 uses
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !20 ; 3 uses
  br i1 %8, label %bb.i, label %bb.k

._crit_edge.split.a:                              ; preds = %bb.k
  br i1 %lcmp.mod.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.split.a, %.lr.ph90
  %i.dn = phi i32 [ %i.di, %.lr.ph90 ], [ %storemerge.1, %._crit_edge.split.a ]
  %.05189 = phi i64 [ 1, %.lr.ph90 ], [ %48, %._crit_edge.split.a ] ; 2 uses
  %.05288 = phi i32 [ %i.dk, %.lr.ph90 ], [ %41, %._crit_edge.split.a ]
  %.08287 = phi i32 [ %i.di, %.lr.ph90 ], [ %.sroa.speculated76.a, %._crit_edge.split.a ]
  call void @llvm.assume(i1 %lcmp.mod187)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !14
  %26 = getelementptr [8 x i8], ptr %2, i64 %.05189
  %27 = getelementptr i8, ptr %26, i64 -8
  %i.dq = load ptr, ptr %27, align 8, !tbaa !20
  %i.dr = icmp eq ptr %i.dm, %i.dq
  %28 = call i32 @llvm.umin.i32(i32 %i.dp, i32 %i.dn)
  %29 = add i32 %28, 1
  %storemerge.epil = select i1 %i.dr, i32 %.05288, i32 %29 ; 2 uses
  store i32 %storemerge.epil, ptr %i.do, align 4, !tbaa !14
  %.sroa.speculated76.epil = call i32 @llvm.umin.i32(i32 %storemerge.epil, i32 %.08287)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.split.a, %bb.i
  %.sroa.speculated76.lcssa = phi i32 [ %.sroa.speculated76.a, %._crit_edge.split.a ], [ %.sroa.speculated76.epil, %bb.i ]
  %.not113 = icmp ugt i32 %.sroa.speculated76.lcssa, %5
  br i1 %.not113, label %.loopexit.loopexit.a, label %bb.h

bb.k:                                             ; preds = %.lr.ph90, %bb.k
  %30 = phi i32 [ %storemerge.1, %bb.k ], [ %i.di, %.lr.ph90 ]
  %.05192 = phi i64 [ %48, %bb.k ], [ 1, %.lr.ph90 ] ; 4 uses
  %.05291 = phi i32 [ %41, %bb.k ], [ %i.dk, %.lr.ph90 ]
  %storemerge.a = phi i32 [ %.sroa.speculated76.a, %bb.k ], [ %i.di, %.lr.ph90 ]
  %niter = phi i64 [ %i.ds, %bb.k ], [ 0, %.lr.ph90 ]
  %31 = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05192 ; 2 uses
  %32 = load i32, ptr %31, align 4, !tbaa !14     ; 2 uses
  %33 = getelementptr [8 x i8], ptr %2, i64 %.05192
  %34 = getelementptr i8, ptr %33, i64 -8
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  %36 = icmp eq ptr %i.dm, %35
  %37 = call i32 @llvm.umin.i32(i32 %32, i32 %30)
  %38 = add i32 %37, 1
  %storemerge = select i1 %36, i32 %.05291, i32 %38 ; 3 uses
  store i32 %storemerge, ptr %31, align 4, !tbaa !14
  %.sroa.speculated76 = call i32 @llvm.umin.i32(i32 %storemerge, i32 %storemerge.a)
  %39 = add nuw i64 %.05192, 1                    ; 2 uses
  %40 = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %39 ; 2 uses
  %41 = load i32, ptr %40, align 4, !tbaa !14     ; 3 uses
  %42 = getelementptr [8 x i8], ptr %2, i64 %39
  %43 = getelementptr i8, ptr %42, i64 -8
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  %45 = icmp eq ptr %i.dm, %44
  %46 = call i32 @llvm.umin.i32(i32 %41, i32 %storemerge)
  %47 = add i32 %46, 1
  %storemerge.1 = select i1 %45, i32 %32, i32 %47 ; 4 uses
  store i32 %storemerge.1, ptr %40, align 4, !tbaa !14
  %.sroa.speculated76.a = call i32 @llvm.umin.i32(i32 %storemerge.1, i32 %.sroa.speculated76) ; 3 uses
  %48 = add nuw i64 %.05192, 2                    ; 2 uses
  %i.ds = add nuw i64 %niter, 2                   ; 2 uses
  %exitcond = icmp eq i64 %i.ds, %unroll_iter
  br i1 %exitcond, label %._crit_edge.split.a, label %bb.k, !llvm.loop !117

.thread.loopexit:                                 ; preds = %._crit_edge.split.us.us.us
  store i32 %i.ad, ptr %.pre.pre152155160, align 4, !tbaa !14
  br label %.thread

.thread.loopexit161:                              ; preds = %bb.f
  store i32 %i.bq, ptr %.pre.pre152155160, align 4, !tbaa !14
  br label %.thread

.thread.loopexit.a:                               ; preds = %._crit_edge.split.us
  store i32 %i.cl, ptr %.pre.pre152155160, align 4, !tbaa !14
  br label %.thread

.thread.loopexit161.a:                            ; preds = %bb.h
  store i32 %i.di, ptr %.pre.pre152155160, align 4, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit161.a, %.thread.loopexit.a, %.thread.loopexit161, %.thread.loopexit, %.preheader.thread, %..thread_crit_edge.split.us, %.preheader
  %.pre.pre152156 = phi ptr [ %i.h, %.preheader.thread ], [ %.pre.pre152155160, %.thread.loopexit161 ], [ %.pre.pre152155160, %.thread.loopexit ], [ %.pre.pre152155160, %.thread.loopexit.a ], [ %.pre.pre.pre, %.preheader ], [ %.pre.pre.pre, %..thread_crit_edge.split.us ], [ %.pre.pre152155160, %.thread.loopexit161.a ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152156, i64 %3
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !14
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %._crit_edge.split.us.us
  store i32 %i.bq, ptr %.pre.pre152155160, align 4, !tbaa !14
  br label %.loopexit

.loopexit.loopexit.a:                             ; preds = %bb.j
  store i32 %i.di, ptr %.pre.pre152155160, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.a, %.loopexit.loopexit, %.loopexit.split.us, %.thread
  %.pre.pre152157 = phi ptr [ %.pre.pre152156, %.thread ], [ %.pre.pre.pre, %.loopexit.split.us ], [ %.pre.pre152155160, %.loopexit.loopexit ], [ %.pre.pre152155160, %.loopexit.loopexit.a ] ; 2 uses
  %.5 = phi i32 [ %i.du, %.thread ], [ %i.t, %.loopexit.split.us ], [ %i.z, %.loopexit.loopexit ], [ %i.z, %.loopexit.loopexit.a ]
  %i.dv = icmp eq ptr %.pre.pre152157, %i.h
  br i1 %i.dv, label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  call void @free(ptr noundef %.pre.pre152157) #16
  br label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit

_ZN4llvm11SmallVectorIjLj64EED2Ev.exit:           ; preds = %.loopexit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit
  %.6 = phi i32 [ %.5, %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit ], [ %i.f, %bb.b ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4llvm4bolt16FunctionFragmentE", !10, i64 0, !12, i64 8, !5, i64 12, !5, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!10 = !{!"p1 _ZTSN4llvm4bolt14FunctionLayoutE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTSN4llvm4bolt11FragmentNumE", !5, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !5, i64 8}
!16 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !11, i64 0, !5, i64 8, !5, i64 12}
!17 = !{!9, !5, i64 12}
!18 = !{!9, !5, i64 16}
!19 = !{!16, !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSN4llvm4bolt16BinaryBasicBlockE", !11, i64 0}
!22 = !{!16, !5, i64 12}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN4llvm4bolt16FunctionFragmentE", !11, i64 0}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{i64 0, i64 8, !27, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28}
!27 = !{!10, !10, i64 0}
!28 = !{!13, !13, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = distinct !{!32, !30}
!33 = !{!34, !5, i64 164}
!34 = !{!"_ZTSN4llvm4bolt16BinaryBasicBlockE", !35, i64 0, !40, i64 24, !40, i64 40, !44, i64 56, !40, i64 72, !40, i64 88, !48, i64 104, !49, i64 112, !50, i64 120, !50, i64 128, !51, i64 136, !5, i64 144, !5, i64 148, !13, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !12, i64 176, !58, i64 180, !58, i64 181, !13, i64 184}
!35 = !{!"_ZTSSt6vectorIN4llvm6MCInstESaIS1_EE", !36, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIN4llvm6MCInstESaIS1_EE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN4llvm6MCInstESaIS1_EE12_Vector_implE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN4llvm6MCInstESaIS1_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!39 = !{!"p1 _ZTSN4llvm6MCInstE", !11, i64 0}
!40 = !{!"_ZTSN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEE", !41, i64 0}
!41 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEEE", !42, i64 0}
!42 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EEE", !43, i64 0}
!43 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_4bolt16BinaryBasicBlockEvEE", !16, i64 0}
!44 = !{!"_ZTSN4llvm11SmallVectorINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELj0EEE", !45, i64 0}
!45 = !{!"_ZTSN4llvm15SmallVectorImplINS_4bolt16BinaryBasicBlock16BinaryBranchInfoEEE", !46, i64 0}
!46 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELb1EEE", !47, i64 0}
!47 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4bolt16BinaryBasicBlock16BinaryBranchInfoEvEE", !16, i64 0}
!48 = !{!"p1 _ZTSN4llvm4bolt14BinaryFunctionE", !11, i64 0}
!49 = !{!"p1 _ZTSN4llvm8MCSymbolE", !11, i64 0}
!50 = !{!"_ZTSSt4pairIjjE", !5, i64 0, !5, i64 4}
!51 = !{!"_ZTSSt10unique_ptrISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EE", !52, i64 0}
!52 = !{!"_ZTSSt15__uniq_ptr_dataISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_ELb1ELb1EE", !53, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_implISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EE", !54, i64 0}
!54 = !{!"_ZTSSt5tupleIJPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EEE", !55, i64 0}
!55 = !{!"_ZTSSt11_Tuple_implILm0EJPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EEE", !56, i64 0}
!56 = !{!"_ZTSSt10_Head_baseILm0EPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EELb0EE", !57, i64 0}
!57 = !{!"p1 _ZTSSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS5_EE", !11, i64 0}
!58 = !{!"bool", !6, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !60}
!64 = !{!65, !66, i64 0}
!65 = !{!"_ZTSN4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEE", !66, i64 0, !67, i64 8, !5, i64 16, !5, i64 20}
!66 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPKNS_4bolt16BinaryBasicBlockEEE", !11, i64 0}
!67 = !{!"p1 int", !11, i64 0}
!68 = !{!69, !71}
!69 = distinct !{!69, !70, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!70 = distinct !{!70, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!71 = distinct !{!71, !72, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!72 = distinct !{!72, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!73 = !{!65, !67, i64 8}
!74 = !{!65, !5, i64 20}
!75 = !{!"branch_weights", i32 1, i32 1999}
!76 = !{!"branch_weights", i32 0, i32 1}
!77 = distinct !{!77, !60}
!78 = !{!79, !81}
!79 = distinct !{!79, !80, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!80 = distinct !{!80, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!81 = distinct !{!81, !82, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!82 = distinct !{!82, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!85 = distinct !{!85, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!86 = distinct !{!86, !87, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!87 = distinct !{!87, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv: argument 0"}
!90 = distinct !{!90, !"_ZNK4llvm8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE6getRepEv"}
!91 = distinct !{!91, !92, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv: argument 0"}
!92 = distinct !{!92, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E6getRepEv"}
!93 = distinct !{!93, !60}
!94 = !{!95, !97, !99, !101}
!95 = distinct !{!95, !96, !"_ZSt9__find_ifISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEN9__gnu_cxx5__ops12_Iter_negateIZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISE_vEEEEE3$_1EEET_SK_SK_T0_St26random_access_iterator_tag: argument 0"}
!96 = distinct !{!96, !"_ZSt9__find_ifISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEN9__gnu_cxx5__ops12_Iter_negateIZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISE_vEEEEE3$_1EEET_SK_SK_T0_St26random_access_iterator_tag"}
!97 = distinct !{!97, !98, !"_ZSt13__find_if_notISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEN9__gnu_cxx5__ops10_Iter_predIZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISE_vEEEEE3$_1EEET_SK_SK_T0_: argument 0"}
!98 = distinct !{!98, !"_ZSt13__find_if_notISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEN9__gnu_cxx5__ops10_Iter_predIZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISE_vEEEEE3$_1EEET_SK_SK_T0_"}
!99 = distinct !{!99, !100, !"_ZSt11find_if_notISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISB_vEEEEE3$_1ET_SG_SG_T0_: argument 0"}
!100 = distinct !{!100, !"_ZSt11find_if_notISt16reverse_iteratorIPPN4llvm4bolt16FunctionFragmentEEZNS2_14FunctionLayout16eraseBasicBlocksENS1_8DenseSetIPKNS2_16BinaryBasicBlockENS1_12DenseMapInfoISB_vEEEEE3$_1ET_SG_SG_T0_"}
!101 = distinct !{!101, !102, !"_ZN4llvm11find_if_notINS_14iterator_rangeISt16reverse_iteratorIPPNS_4bolt16FunctionFragmentEEEEZNS3_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS3_16BinaryBasicBlockENS_12DenseMapInfoISD_vEEEEE3$_1EEDaOT_T0_: argument 0"}
!102 = distinct !{!102, !"_ZN4llvm11find_if_notINS_14iterator_rangeISt16reverse_iteratorIPPNS_4bolt16FunctionFragmentEEEEZNS3_14FunctionLayout16eraseBasicBlocksENS_8DenseSetIPKNS3_16BinaryBasicBlockENS_12DenseMapInfoISD_vEEEEE3$_1EEDaOT_T0_"}
!103 = distinct !{!103, !60}
!104 = distinct !{!104, !60}
!105 = distinct !{!105, !30}
!106 = distinct !{!106, !30}
!107 = distinct !{!107, !30}
!108 = distinct !{!108, !60}
!109 = distinct !{!109, !60}
!110 = distinct !{!110, !60}
!111 = distinct !{!111, !60}
!112 = distinct !{!112, !60}
!113 = distinct !{!113, !30}
!114 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!115 = distinct !{!115, !60}
!116 = distinct !{!116, !60}
!117 = distinct !{!117, !60}
!118 = distinct !{!118, !60}
end_hunk_0
