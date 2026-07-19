inline.NumInlined: 1527
inline.NumDeleted: 687
begin_hunk_0_@_ZNSt3mapI14uhdr_img_labelSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS3_EESt4lessIS0_ESaISt4pairIKS0_S6_EEE16insert_or_assignIS6_EES9_ISt17_Rb_tree_iteratorISB_EbEOS0_OT_:bb.a
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #27
  br label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 16) #27
  br label %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 72) #27
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i, %bb.d, %.critedge
  %.sroa.014.0 = phi ptr [ %i.l, %.critedge ], [ %.19.i.i.i, %bb.d ], [ %.19.i.i.i, %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %bb.d ], [ 0, %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.014.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZN8ultrahdr16is_resize_effectEPKNS_16uhdr_effect_descE(ptr nofree noundef readonly %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_resize_effectE, i64 0) #28
  %i.c = icmp ne ptr %i.b, null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.uhdr_error_info) align 4 captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.34", align 8 ; 11 uses
  %3 = alloca %"class.std::unique_ptr.34", align 8 ; 11 uses
  %4 = alloca %"class.std::unique_ptr.34", align 8 ; 5 uses
  %5 = alloca %"class.std::unique_ptr.34", align 8 ; 5 uses
  %6 = alloca %"class.std::unique_ptr.34", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.34", align 8 ; 5 uses
  %8 = alloca %"class.std::unique_ptr.34", align 8 ; 5 uses
  %9 = alloca %"class.std::unique_ptr.34", align 8 ; 5 uses
  %10 = alloca %"class.std::unique_ptr.34", align 8 ; 5 uses
  %11 = alloca %"class.std::unique_ptr.34", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52, !noalias !105 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52, !noalias !108 ; 2 uses
  %.not442 = icmp eq ptr %i.b, %i.d
  br i1 %.not442, label %.critedge201, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64, !noalias !105
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !noalias !105
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 7 uses
  %i.k = load i32, ptr @_ZN8ultrahdr9kMaxWidthE, align 4 ; 3 uses
  %i.l = load i32, ptr @_ZN8ultrahdr10kMaxHeightE, align 4 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPN8ultrahdr16uhdr_effect_descERS2_PS2_EppEv.exit
  %.sroa.15.0445 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.15.1, %_ZNSt15_Deque_iteratorIPN8ultrahdr16uhdr_effect_descERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.12.0444 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.12.1, %_ZNSt15_Deque_iteratorIPN8ultrahdr16uhdr_effect_descERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.0362.0443 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.0362.1, %_ZNSt15_Deque_iteratorIPN8ultrahdr16uhdr_effect_descERS2_PS2_EppEv.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr null, ptr %2, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr null, ptr %3, align 8, !tbaa !66
  %i.m = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !69, !nonnull !111, !noundef !111 ; 8 uses
  %i.n = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_rotate_effectE, i64 0) #28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.p = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_rotate_effectE, i64 0) #28
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !81
  invoke void @_ZN8ultrahdr12apply_rotateEPNS_18uhdr_rotate_effectEP14uhdr_raw_imagePvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %4, ptr noundef %i.p, ptr noundef %i.q, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit unwind label %bb.e

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c
  %i.r = load ptr, ptr %4, align 8, !tbaa !81     ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.s = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !69 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit
  %i.u = call ptr @__dynamic_cast(ptr nonnull %i.s, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_rotate_effectE, i64 0) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.an

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit, %bb.d
  %i.w = phi ptr [ %i.u, %bb.d ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit ]
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !81
  invoke void @_ZN8ultrahdr12apply_rotateEPNS_18uhdr_rotate_effectEP14uhdr_raw_imagePvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %5, ptr noundef %i.w, ptr noundef %i.x, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit217 unwind label %bb.g

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit217: ; preds = %bb.f
  %i.y = load ptr, ptr %5, align 8, !tbaa !81     ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge194

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.an

.critedge:                                        ; preds = %bb.b
  %i.aa = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_mirror_effectE, i64 0) #28
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge188, label %bb.h

bb.h:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ac = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_mirror_effectE, i64 0) #28
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !81
  invoke void @_ZN8ultrahdr12apply_mirrorEPNS_18uhdr_mirror_effectEP14uhdr_raw_imagePvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %6, ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit231 unwind label %bb.j

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit231: ; preds = %bb.h
  %i.ae = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.af = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !69 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit231
  %i.ah = call ptr @__dynamic_cast(ptr nonnull %i.af, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_mirror_effectE, i64 0) #28
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.an

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit231, %bb.i
  %i.aj = phi ptr [ %i.ah, %bb.i ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit231 ]
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !81
  invoke void @_ZN8ultrahdr12apply_mirrorEPNS_18uhdr_mirror_effectEP14uhdr_raw_imagePvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %7, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit245 unwind label %bb.l

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit245: ; preds = %bb.k
  %i.al = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge194

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.an

.critedge188:                                     ; preds = %.critedge
  %i.an = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr16uhdr_crop_effectE, i64 0) #28 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.critedge190, label %bb.m

bb.m:                                             ; preds = %.critedge188
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !81  ; 3 uses
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !81  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %.sroa.speculated359 = call i32 @llvm.smax.i32(i32 %i.as, i32 0) ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %.sroa.speculated355 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.au) ; 4 uses
  %.not179 = icmp sgt i32 %.sroa.speculated355, %.sroa.speculated359
  br i1 %.not179, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 3, ptr %0, align 4, !tbaa !82
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ax, align 4, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = sub nsw i32 %.sroa.speculated355, %.sroa.speculated359
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ay, i64 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %i.az) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.o:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %.sroa.speculated351 = call i32 @llvm.smax.i32(i32 %i.bc, i32 0) ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !36 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.be) ; 4 uses
  %.not180 = icmp sgt i32 %.sroa.speculated, %.sroa.speculated351
  br i1 %.not180, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 3, ptr %0, align 4, !tbaa !82
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bh, align 4, !tbaa !85
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = sub nsw i32 %.sroa.speculated, %.sroa.speculated351
  %i.bk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bi, i64 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %i.bj) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.q:                                             ; preds = %bb.o
  %i.bl = uitofp i32 %i.au to float
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !35
  %i.bo = uitofp i32 %i.bn to float
  %i.bp = fdiv contract float %i.bl, %i.bo
  %i.bq = uitofp nneg i32 %.sroa.speculated359 to float
  %i.br = uitofp nneg i32 %.sroa.speculated355 to float
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bq, i64 1
  %i.bu = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv contract <2 x float> %i.bt, %i.bv
  %i.bx = fptosi <2 x float> %i.bw to <2 x i32>   ; 2 uses
  %i.by = extractelement <2 x i32> %i.bx, i64 0   ; 3 uses
  %i.bz = extractelement <2 x i32> %i.bx, i64 1   ; 4 uses
  %.not181 = icmp sgt i32 %i.by, %i.bz
  br i1 %.not181, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 3, ptr %0, align 4, !tbaa !82
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ca, align 4, !tbaa !85
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = sub nsw i32 %i.by, %i.bz
  %i.cd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cb, i64 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %i.cc) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.s:                                             ; preds = %bb.q
  %i.ce = uitofp i32 %i.be to float
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !36
  %i.ch = uitofp i32 %i.cg to float
  %i.ci = fdiv contract float %i.ce, %i.ch
  %i.cj = uitofp nneg i32 %.sroa.speculated351 to float
  %i.ck = uitofp nneg i32 %.sroa.speculated to float
  %i.cl = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.cj, i64 1
  %i.cn = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fdiv contract <2 x float> %i.cm, %i.co
  %i.cq = fptosi <2 x float> %i.cp to <2 x i32>   ; 2 uses
  %i.cr = extractelement <2 x i32> %i.cq, i64 0   ; 3 uses
  %i.cs = extractelement <2 x i32> %i.cq, i64 1   ; 4 uses
  %.not182 = icmp sgt i32 %i.cr, %i.cs
  br i1 %.not182, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ct = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr16uhdr_crop_effectE, i64 0) #28
  %i.cu = sub nsw i32 %.sroa.speculated355, %.sroa.speculated359
  %i.cv = sub nsw i32 %.sroa.speculated, %.sroa.speculated351
  invoke void @_ZN8ultrahdr10apply_cropEPNS_16uhdr_crop_effectEP14uhdr_raw_imageiiiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %8, ptr noundef %i.ct, ptr noundef nonnull %i.ap, i32 noundef %.sroa.speculated359, i32 noundef %.sroa.speculated351, i32 noundef %i.cu, i32 noundef %i.cv, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262 unwind label %bb.v

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262: ; preds = %bb.t
  %i.cw = load ptr, ptr %8, align 8, !tbaa !81    ; 2 uses
  store ptr %i.cw, ptr %2, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.cx = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !69 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262
  %i.cz = call ptr @__dynamic_cast(ptr nonnull %i.cx, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr16uhdr_crop_effectE, i64 0) #28
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.an

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262, %bb.u
  %i.db = phi ptr [ %i.cz, %bb.u ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262 ]
  %i.dc = sub nsw i32 %i.by, %i.bz
  %i.dd = sub nsw i32 %i.cr, %i.cs
  invoke void @_ZN8ultrahdr10apply_cropEPNS_16uhdr_crop_effectEP14uhdr_raw_imageiiiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %9, ptr noundef %i.db, ptr noundef nonnull %i.aq, i32 noundef %i.bz, i32 noundef %i.cs, i32 noundef %i.dc, i32 noundef %i.dd, ptr noundef null, ptr noundef null)
          to label %.thread unwind label %bb.y

.thread:                                          ; preds = %bb.w
  %i.de = load ptr, ptr %9, align 8, !tbaa !81    ; 2 uses
  store ptr %i.de, ptr %3, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge194

bb.x:                                             ; preds = %bb.s
  store i32 3, ptr %0, align 4, !tbaa !82
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.df, align 4, !tbaa !85
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = sub nsw i32 %i.cr, %i.cs
  %i.di = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dg, i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %i.dh) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.y:                                             ; preds = %bb.w
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.an

.critedge190:                                     ; preds = %.critedge188
  %i.dk = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_resize_effectE, i64 0) #28 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.critedge194..critedge194.thread_crit_edge, label %bb.z

bb.z:                                             ; preds = %.critedge190
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.i, align 8, !tbaa !81  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load <2 x i32>, ptr %i.dm, align 8, !tbaa !3 ; 5 uses
  %i.ds = load <2 x i32>, ptr %i.do, align 8, !tbaa !3
  %i.dt = uitofp <2 x i32> %i.ds to <2 x float>
  %i.du = load <2 x i32>, ptr %i.dq, align 8, !tbaa !3
  %i.dv = uitofp <2 x i32> %i.du to <2 x float>
  %i.dw = fdiv contract <2 x float> %i.dt, %i.dv
  %i.dx = sitofp <2 x i32> %i.dr to <2 x float>
  %i.dy = fdiv contract <2 x float> %i.dx, %i.dw
  %i.dz = fptosi <2 x float> %i.dy to <2 x i32>   ; 5 uses
  %i.ea = shufflevector <2 x i32> %i.dr, <2 x i32> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i32> %i.ea
  %i.eb = icmp slt <4 x i32> %.fr, splat (i32 1)
  %i.ec = extractelement <2 x i32> %i.dr, i64 0   ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, %i.k
  %i.ee = bitcast <4 x i1> %i.eb to i4
  %i.ef = icmp ne i4 %i.ee, 0
  %op.rdx = select i1 %i.ef, i1 true, i1 %i.ed
  br i1 %op.rdx, label %.critedge198, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eg = extractelement <2 x i32> %i.dr, i64 1   ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, %i.l
  %i.ei = extractelement <2 x i32> %i.dz, i64 0   ; 2 uses
  %i.ej = icmp samesign ult i32 %i.k, %i.ei
  %or.cond195 = select i1 %i.eh, i1 true, i1 %i.ej
  %i.ek = extractelement <2 x i32> %i.dz, i64 1   ; 2 uses
  %i.el = icmp slt i32 %i.l, %i.ek
  %or.cond196 = select i1 %or.cond195, i1 true, i1 %i.el
  br i1 %or.cond196, label %.critedge198, label %bb.ab

.critedge198:                                     ; preds = %bb.aa, %bb.z
  store i32 3, ptr %0, align 4, !tbaa !82
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = extractelement <2 x i32> %i.dz, i64 0
  %i.eo = extractelement <2 x i32> %i.dz, i64 1
  %i.ep = extractelement <2 x i32> %i.dr, i64 1
  %i.eq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.em, i64 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.ec, i32 noundef %i.ep, i32 noundef %i.en, i32 noundef %i.eo) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.er = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_resize_effectE, i64 0) #28
  invoke void @_ZN8ultrahdr12apply_resizeEPNS_18uhdr_resize_effectEP14uhdr_raw_imageiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %10, ptr noundef %i.er, ptr noundef nonnull %i.dn, i32 noundef %i.ec, i32 noundef %i.eg, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290 unwind label %bb.ad

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290: ; preds = %bb.ab
  %i.es = load ptr, ptr %10, align 8, !tbaa !81   ; 2 uses
  store ptr %i.es, ptr %2, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.et = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !69 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290
  %i.ev = call ptr @__dynamic_cast(ptr nonnull %i.et, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_resize_effectE, i64 0) #28
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.an

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290, %bb.ac
  %i.ex = phi ptr [ %i.ev, %bb.ac ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290 ]
  %i.ey = load ptr, ptr %i.j, align 8, !tbaa !81
  invoke void @_ZN8ultrahdr12apply_resizeEPNS_18uhdr_resize_effectEP14uhdr_raw_imageiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %11, ptr noundef %i.ex, ptr noundef %i.ey, i32 noundef %i.ei, i32 noundef %i.ek, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304 unwind label %bb.af

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304: ; preds = %bb.ae
  %i.ez = load ptr, ptr %11, align 8, !tbaa !81   ; 2 uses
  store ptr %i.ez, ptr %3, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
end_hunk_0
