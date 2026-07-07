inline.NumInlined: 1527
inline.NumDeleted: 687
begin_hunk_0_@_ZN8ultrahdr16is_resize_effectEPKNS_16uhdr_effect_descE:bb.a
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
  %13 = uitofp nneg i32 %.sroa.speculated355 to float
  %14 = insertelement <2 x float> poison, float %13, i64 0
  %15 = insertelement <2 x float> %14, float %i.bq, i64 1
  %16 = insertelement <2 x float> poison, float %i.bp, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fdiv contract <2 x float> %15, %17
  %19 = fptosi <2 x float> %18 to <2 x i32>       ; 2 uses
  %20 = extractelement <2 x i32> %19, i64 0       ; 3 uses
  %21 = extractelement <2 x i32> %19, i64 1       ; 4 uses
  %.not181 = icmp sgt i32 %20, %21
  br i1 %.not181, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 3, ptr %0, align 4, !tbaa !82
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = sub nsw i32 %20, %21
  %i.bu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bs, i64 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %i.bt) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.s:                                             ; preds = %bb.q
  %i.bv = uitofp i32 %i.be to float
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !36
  %i.by = uitofp i32 %i.bx to float
  %i.bz = fdiv contract float %i.bv, %i.by
  %i.ca = uitofp nneg i32 %.sroa.speculated351 to float
  %22 = uitofp nneg i32 %.sroa.speculated to float
  %23 = insertelement <2 x float> poison, float %22, i64 0
  %24 = insertelement <2 x float> %23, float %i.ca, i64 1
  %25 = insertelement <2 x float> poison, float %i.bz, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = fdiv contract <2 x float> %24, %26
  %28 = fptosi <2 x float> %27 to <2 x i32>       ; 2 uses
  %29 = extractelement <2 x i32> %28, i64 0       ; 3 uses
  %30 = extractelement <2 x i32> %28, i64 1       ; 4 uses
  %.not182 = icmp sgt i32 %29, %30
  br i1 %.not182, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cb = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr16uhdr_crop_effectE, i64 0) #28
  %i.cc = sub nsw i32 %.sroa.speculated355, %.sroa.speculated359
  %i.cd = sub nsw i32 %.sroa.speculated, %.sroa.speculated351
  invoke void @_ZN8ultrahdr10apply_cropEPNS_16uhdr_crop_effectEP14uhdr_raw_imageiiiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %8, ptr noundef %i.cb, ptr noundef nonnull %i.ap, i32 noundef %.sroa.speculated359, i32 noundef %.sroa.speculated351, i32 noundef %i.cc, i32 noundef %i.cd, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262 unwind label %bb.v

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262: ; preds = %bb.t
  %i.ce = load ptr, ptr %8, align 8, !tbaa !81    ; 2 uses
  store ptr %i.ce, ptr %2, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.cf = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !69 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262
  %i.ch = call ptr @__dynamic_cast(ptr nonnull %i.cf, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr16uhdr_crop_effectE, i64 0) #28
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.an

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262, %bb.u
  %i.cj = phi ptr [ %i.ch, %bb.u ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262 ]
  %i.ck = sub nsw i32 %20, %21
  %i.cl = sub nsw i32 %29, %30
  invoke void @_ZN8ultrahdr10apply_cropEPNS_16uhdr_crop_effectEP14uhdr_raw_imageiiiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %9, ptr noundef %i.cj, ptr noundef nonnull %i.aq, i32 noundef %21, i32 noundef %30, i32 noundef %i.ck, i32 noundef %i.cl, ptr noundef null, ptr noundef null)
          to label %.thread unwind label %bb.y

.thread:                                          ; preds = %bb.w
  %i.cm = load ptr, ptr %9, align 8, !tbaa !81    ; 2 uses
  store ptr %i.cm, ptr %3, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge194

bb.x:                                             ; preds = %bb.s
  store i32 3, ptr %0, align 4, !tbaa !82
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !85
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = sub nsw i32 %29, %30
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.co, i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %i.cp) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.y:                                             ; preds = %bb.w
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.an

.critedge190:                                     ; preds = %.critedge188
  %i.cs = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_resize_effectE, i64 0) #28 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.critedge194..critedge194.thread_crit_edge, label %bb.z

bb.z:                                             ; preds = %.critedge190
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !81  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load <2 x i32>, ptr %i.cu, align 8, !tbaa !3 ; 5 uses
  %i.da = load <2 x i32>, ptr %i.cw, align 8, !tbaa !3
  %i.db = uitofp <2 x i32> %i.da to <2 x float>
  %i.dc = load <2 x i32>, ptr %i.cy, align 8, !tbaa !3
  %i.dd = uitofp <2 x i32> %i.dc to <2 x float>
  %i.de = fdiv contract <2 x float> %i.db, %i.dd
  %i.df = sitofp <2 x i32> %i.cz to <2 x float>
  %i.dg = fdiv contract <2 x float> %i.df, %i.de
  %i.dh = fptosi <2 x float> %i.dg to <2 x i32>   ; 5 uses
  %i.di = shufflevector <2 x i32> %i.cz, <2 x i32> %i.dh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i32> %i.di
  %i.dj = icmp slt <4 x i32> %.fr, splat (i32 1)
  %i.dk = extractelement <2 x i32> %i.cz, i64 0   ; 3 uses
  %i.dl = icmp sgt i32 %i.dk, %i.k
  %i.dm = bitcast <4 x i1> %i.dj to i4
  %i.dn = icmp ne i4 %i.dm, 0
  %op.rdx = select i1 %i.dn, i1 true, i1 %i.dl
  br i1 %op.rdx, label %.critedge198, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = extractelement <2 x i32> %i.cz, i64 1   ; 2 uses
  %i.dp = icmp sgt i32 %i.do, %i.l
  %i.dq = extractelement <2 x i32> %i.dh, i64 0   ; 2 uses
  %i.dr = icmp samesign ult i32 %i.k, %i.dq
  %or.cond195 = select i1 %i.dp, i1 true, i1 %i.dr
  %i.ds = extractelement <2 x i32> %i.dh, i64 1   ; 2 uses
  %i.dt = icmp slt i32 %i.l, %i.ds
  %or.cond196 = select i1 %or.cond195, i1 true, i1 %i.dt
  br i1 %or.cond196, label %.critedge198, label %bb.ab

.critedge198:                                     ; preds = %bb.aa, %bb.z
  store i32 3, ptr %0, align 4, !tbaa !82
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dv = extractelement <2 x i32> %i.dh, i64 0
  %i.dw = extractelement <2 x i32> %i.dh, i64 1
  %i.dx = extractelement <2 x i32> %i.cz, i64 1
  %i.dy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.du, i64 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.dk, i32 noundef %i.dx, i32 noundef %i.dv, i32 noundef %i.dw) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.dz = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_resize_effectE, i64 0) #28
  invoke void @_ZN8ultrahdr12apply_resizeEPNS_18uhdr_resize_effectEP14uhdr_raw_imageiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %10, ptr noundef %i.dz, ptr noundef nonnull %i.cv, i32 noundef %i.dk, i32 noundef %i.do, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290 unwind label %bb.ad

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290: ; preds = %bb.ab
  %i.ea = load ptr, ptr %10, align 8, !tbaa !81   ; 2 uses
  store ptr %i.ea, ptr %2, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.eb = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !69 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290
  %i.ed = call ptr @__dynamic_cast(ptr nonnull %i.eb, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_resize_effectE, i64 0) #28
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.an

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290, %bb.ac
  %i.ef = phi ptr [ %i.ed, %bb.ac ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290 ]
  %i.eg = load ptr, ptr %i.j, align 8, !tbaa !81
  invoke void @_ZN8ultrahdr12apply_resizeEPNS_18uhdr_resize_effectEP14uhdr_raw_imageiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %11, ptr noundef %i.ef, ptr noundef %i.eg, i32 noundef %i.dq, i32 noundef %i.ds, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304 unwind label %bb.af

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304: ; preds = %bb.ae
  %i.eh = load ptr, ptr %11, align 8, !tbaa !81   ; 2 uses
  store ptr %i.eh, ptr %3, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.critedge194

bb.af:                                            ; preds = %bb.ae
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.an

.critedge194:                                     ; preds = %.thread, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit245, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit217
  %i.ej = phi ptr [ %i.cm, %.thread ], [ %i.eh, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304 ], [ %i.al, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit245 ], [ %i.y, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit217 ] ; 3 uses
  %.pr382 = phi ptr [ %i.ce, %.thread ], [ %i.ea, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304 ], [ %i.ae, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit245 ], [ %i.r, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit217 ] ; 3 uses
  %.not.i305 = icmp eq ptr %.pr382, null
  %.not.i306 = icmp eq ptr %i.ej, null
  %or.cond384 = select i1 %.not.i305, i1 true, i1 %.not.i306
  br i1 %or.cond384, label %.critedge194..critedge194.thread_crit_edge, label %.critedge192

.critedge194..critedge194.thread_crit_edge:       ; preds = %.critedge190, %.critedge194
  %.pr382585 = phi ptr [ %.pr382, %.critedge194 ], [ null, %.critedge190 ]
  %i.ek = phi ptr [ %i.ej, %.critedge194 ], [ null, %.critedge190 ] ; 3 uses
  %.pre = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !69 ; 2 uses
  store i32 2, ptr %0, align 4, !tbaa !82
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.el, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.em = load ptr, ptr %.pre, align 8, !tbaa !90
  %i.en = load ptr, ptr %i.em, align 8
  invoke void %i.en(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %.pre)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.critedge194..critedge194.thread_crit_edge
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = load ptr, ptr %12, align 8, !tbaa !92
  %i.eq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.eo, i64 noundef 256, ptr noundef nonnull @.str.9, ptr noundef %i.ep) #28 ; 0 uses
  %i.er = load ptr, ptr %12, align 8, !tbaa !92   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %.critedge199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !95
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #27
  br label %.critedge199

bb.ah:                                            ; preds = %.critedge194..critedge194.thread_crit_edge
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.an

.critedge192:                                     ; preds = %.critedge194
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !81  ; 3 uses
  store ptr %.pr382, ptr %i.i, align 8, !tbaa !81
  %.not.i.i.i.i307 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i307, label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit313, label %bb.ai

bb.ai:                                            ; preds = %.critedge192
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i.i.i.i308 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i.i.i308, label %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i312, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i309 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i309, label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i311, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i310

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i310: ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.fa) #27
  br label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i311

_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i311: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i310, %bb.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef 16) #27
  br label %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i312

_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i312: ; preds = %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i311, %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 72) #27
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit313

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit313: ; preds = %.critedge192, %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i312
  %i.fb = load ptr, ptr %i.j, align 8, !tbaa !81  ; 3 uses
  store ptr %i.ej, ptr %i.j, align 8, !tbaa !81
  %.not.i.i.i.i314 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i314, label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit334, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit313
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i.i.i.i315 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i.i315, label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit320, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i316 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i316, label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i318, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i317

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i317: ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.fe) #27
  br label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i318

_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i318: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i317, %bb.al
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 16) #27
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit320

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit320: ; preds = %bb.ak, %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i318
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 72) #27
end_hunk_0
