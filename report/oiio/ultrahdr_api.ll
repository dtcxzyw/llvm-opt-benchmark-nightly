Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ultrahdr_api?download=true
inline.NumInlined: 1527
inline.NumDeleted: 687
begin_hunk_0_@_ZN8ultrahdr13apply_effectsEP20uhdr_decoder_private:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151, !noalias !343
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 7 uses
  %i.k = load i32, ptr @_ZN8ultrahdr9kMaxWidthE, align 4 ; 3 uses
  %i.l = load i32, ptr @_ZN8ultrahdr10kMaxHeightE, align 4 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPN8ultrahdr16uhdr_effect_descERS2_PS2_EppEv.exit
  %.sroa.15.0445 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.15.1, %_ZNSt15_Deque_iteratorIPN8ultrahdr16uhdr_effect_descERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.12.0444 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.12.1, %_ZNSt15_Deque_iteratorIPN8ultrahdr16uhdr_effect_descERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.0362.0443 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.0362.1, %_ZNSt15_Deque_iteratorIPN8ultrahdr16uhdr_effect_descERS2_PS2_EppEv.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr null, ptr %2, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr null, ptr %3, align 8, !tbaa !154
  %i.m = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !156 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge194.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_rotate_effectE, i64 0) #28
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.q = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !156 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call ptr @__dynamic_cast(ptr nonnull %i.q, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_rotate_effectE, i64 0) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = phi ptr [ %i.s, %bb.e ], [ null, %bb.d ]
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !166
  invoke void @_ZN8ultrahdr12apply_rotateEPNS_18uhdr_rotate_effectEP14uhdr_raw_imagePvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %4, ptr noundef %i.t, ptr noundef %i.u, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit unwind label %bb.h

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f
  %i.v = load ptr, ptr %4, align 8, !tbaa !166    ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.w = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !156 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit
  %i.y = call ptr @__dynamic_cast(ptr nonnull %i.w, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_rotate_effectE, i64 0) #28
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.aw

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit, %bb.g
  %i.aa = phi ptr [ %i.y, %bb.g ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit ]
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !166
  invoke void @_ZN8ultrahdr12apply_rotateEPNS_18uhdr_rotate_effectEP14uhdr_raw_imagePvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %5, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit217 unwind label %bb.j

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit217: ; preds = %bb.i
  %i.ac = load ptr, ptr %5, align 8, !tbaa !166   ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge194

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.aw

.critedge:                                        ; preds = %bb.c
  %i.ae = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_mirror_effectE, i64 0) #28
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.critedge188, label %bb.k

bb.k:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ag = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !156 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = call ptr @__dynamic_cast(ptr nonnull %i.ag, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_mirror_effectE, i64 0) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aj = phi ptr [ %i.ai, %bb.l ], [ null, %bb.k ]
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !166
  invoke void @_ZN8ultrahdr12apply_mirrorEPNS_18uhdr_mirror_effectEP14uhdr_raw_imagePvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %6, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit231 unwind label %bb.o

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit231: ; preds = %bb.m
  %i.al = load ptr, ptr %6, align 8, !tbaa !166   ; 2 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.am = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !156 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit231
  %i.ao = call ptr @__dynamic_cast(ptr nonnull %i.am, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_mirror_effectE, i64 0) #28
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aw

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit231, %bb.n
  %i.aq = phi ptr [ %i.ao, %bb.n ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit231 ]
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !166
  invoke void @_ZN8ultrahdr12apply_mirrorEPNS_18uhdr_mirror_effectEP14uhdr_raw_imagePvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %7, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit245 unwind label %bb.q

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit245: ; preds = %bb.p
  %i.as = load ptr, ptr %7, align 8, !tbaa !166   ; 2 uses
  store ptr %i.as, ptr %3, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge194

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.aw

.critedge188:                                     ; preds = %.critedge
  %i.au = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr16uhdr_crop_effectE, i64 0) #28 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.critedge190, label %bb.r

bb.r:                                             ; preds = %.critedge188
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !166 ; 3 uses
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !166 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !133 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !11
  %.sroa.speculated359 = call i32 @llvm.smax.i32(i32 %i.az, i32 0) ; 5 uses
  %.sroa.speculated355 = call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.bb) ; 4 uses
  %.not179 = icmp sgt i32 %.sroa.speculated355, %.sroa.speculated359
  br i1 %.not179, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 3, ptr %0, align 4, !tbaa !169
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.be, align 4, !tbaa !170
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = sub nsw i32 %.sroa.speculated355, %.sroa.speculated359
  %i.bh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bf, i64 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %i.bg) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.t:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !134 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !11
  %.sroa.speculated351 = call i32 @llvm.smax.i32(i32 %i.bj, i32 0) ; 5 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.bl) ; 4 uses
  %.not180 = icmp sgt i32 %.sroa.speculated, %.sroa.speculated351
  br i1 %.not180, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 3, ptr %0, align 4, !tbaa !169
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bo, align 4, !tbaa !170
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = sub nsw i32 %.sroa.speculated, %.sroa.speculated351
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bp, i64 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %i.bq) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.v:                                             ; preds = %bb.t
  %i.bs = uitofp i32 %i.bb to float
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !133
  %i.bv = uitofp i32 %i.bu to float
  %i.bw = fdiv contract float %i.bs, %i.bv
  %i.bx = uitofp nneg i32 %.sroa.speculated359 to float
  %i.by = uitofp nneg i32 %.sroa.speculated355 to float
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bx, i64 1
  %i.cb = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fdiv contract <2 x float> %i.ca, %i.cc
  %i.ce = fptosi <2 x float> %i.cd to <2 x i32>   ; 2 uses
  %i.cf = extractelement <2 x i32> %i.ce, i64 0   ; 3 uses
  %i.cg = extractelement <2 x i32> %i.ce, i64 1   ; 4 uses
  %.not181 = icmp samesign ugt i32 %i.cf, %i.cg
  br i1 %.not181, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 3, ptr %0, align 4, !tbaa !169
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ch, align 4, !tbaa !170
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = sub nsw i32 %i.cf, %i.cg
  %i.ck = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ci, i64 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %i.cj) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.x:                                             ; preds = %bb.v
  %i.cl = uitofp i32 %i.bl to float
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !134
  %i.co = uitofp i32 %i.cn to float
  %i.cp = fdiv contract float %i.cl, %i.co
  %i.cq = uitofp nneg i32 %.sroa.speculated351 to float
  %i.cr = uitofp nneg i32 %.sroa.speculated to float
  %i.cs = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cq, i64 1
  %i.cu = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fdiv contract <2 x float> %i.ct, %i.cv
  %i.cx = fptosi <2 x float> %i.cw to <2 x i32>   ; 2 uses
  %i.cy = extractelement <2 x i32> %i.cx, i64 0   ; 3 uses
  %i.cz = extractelement <2 x i32> %i.cx, i64 1   ; 4 uses
  %.not182 = icmp samesign ugt i32 %i.cy, %i.cz
  br i1 %.not182, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.da = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !156 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = call ptr @__dynamic_cast(ptr nonnull %i.da, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr16uhdr_crop_effectE, i64 0) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.dd = phi ptr [ %i.dc, %bb.z ], [ null, %bb.y ]
  %i.de = sub nuw nsw i32 %.sroa.speculated355, %.sroa.speculated359
  %i.df = sub nuw nsw i32 %.sroa.speculated, %.sroa.speculated351
  invoke void @_ZN8ultrahdr10apply_cropEPNS_16uhdr_crop_effectEP14uhdr_raw_imageiiiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %8, ptr noundef %i.dd, ptr noundef nonnull %i.aw, i32 noundef %.sroa.speculated359, i32 noundef %.sroa.speculated351, i32 noundef %i.de, i32 noundef %i.df, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262 unwind label %bb.ac

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262: ; preds = %bb.aa
  %i.dg = load ptr, ptr %8, align 8, !tbaa !166   ; 2 uses
  store ptr %i.dg, ptr %2, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.dh = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !156 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262
  %i.dj = call ptr @__dynamic_cast(ptr nonnull %i.dh, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr16uhdr_crop_effectE, i64 0) #28
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.aw

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262, %bb.ab
  %i.dl = phi ptr [ %i.dj, %bb.ab ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit262 ]
  %i.dm = sub nuw nsw i32 %i.cf, %i.cg
  %i.dn = sub nuw nsw i32 %i.cy, %i.cz
  invoke void @_ZN8ultrahdr10apply_cropEPNS_16uhdr_crop_effectEP14uhdr_raw_imageiiiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %9, ptr noundef %i.dl, ptr noundef nonnull %i.ax, i32 noundef %i.cg, i32 noundef %i.cz, i32 noundef %i.dm, i32 noundef %i.dn, ptr noundef null, ptr noundef null)
          to label %.thread unwind label %bb.af

.thread:                                          ; preds = %bb.ad
  %i.do = load ptr, ptr %9, align 8, !tbaa !166   ; 2 uses
  store ptr %i.do, ptr %3, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge194

bb.ae:                                            ; preds = %bb.x
  store i32 3, ptr %0, align 4, !tbaa !169
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.dp, align 4, !tbaa !170
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = sub nsw i32 %i.cy, %i.cz
  %i.ds = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dq, i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %i.dr) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.af:                                            ; preds = %bb.ad
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.aw

.critedge190:                                     ; preds = %.critedge188
  %i.du = call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_resize_effectE, i64 0) #28 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.critedge194.thread, label %bb.ag

bb.ag:                                            ; preds = %.critedge190
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load ptr, ptr %i.i, align 8, !tbaa !166 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.j, align 8, !tbaa !166
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load <2 x i32>, ptr %i.dw, align 8, !tbaa !11 ; 5 uses
  %i.ec = load <2 x i32>, ptr %i.dy, align 8, !tbaa !11
  %i.ed = uitofp <2 x i32> %i.ec to <2 x float>
  %i.ee = load <2 x i32>, ptr %i.ea, align 8, !tbaa !11
  %i.ef = uitofp <2 x i32> %i.ee to <2 x float>
  %i.eg = fdiv contract <2 x float> %i.ed, %i.ef
  %i.eh = sitofp <2 x i32> %i.eb to <2 x float>
  %i.ei = fdiv contract <2 x float> %i.eh, %i.eg
  %i.ej = fptosi <2 x float> %i.ei to <2 x i32>   ; 5 uses
  %i.ek = shufflevector <2 x i32> %i.eb, <2 x i32> %i.ej, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i32> %i.ek
  %i.el = icmp slt <4 x i32> %.fr, splat (i32 1)
  %i.em = extractelement <2 x i32> %i.eb, i64 0   ; 3 uses
  %i.en = icmp sgt i32 %i.em, %i.k
  %i.eo = bitcast <4 x i1> %i.el to i4
  %i.ep = icmp ne i4 %i.eo, 0
  %op.rdx = select i1 %i.ep, i1 true, i1 %i.en
  br i1 %op.rdx, label %.critedge198, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eq = extractelement <2 x i32> %i.eb, i64 1   ; 2 uses
  %i.er = icmp sgt i32 %i.eq, %i.l
  %i.es = extractelement <2 x i32> %i.ej, i64 0   ; 2 uses
  %i.et = icmp samesign ult i32 %i.k, %i.es
  %or.cond195 = select i1 %i.er, i1 true, i1 %i.et
  %i.eu = extractelement <2 x i32> %i.ej, i64 1   ; 2 uses
  %i.ev = icmp slt i32 %i.l, %i.eu
  %or.cond196 = select i1 %or.cond195, i1 true, i1 %i.ev
  br i1 %or.cond196, label %.critedge198, label %bb.ai

.critedge198:                                     ; preds = %bb.ah, %bb.ag
  store i32 3, ptr %0, align 4, !tbaa !169
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = extractelement <2 x i32> %i.ej, i64 0
  %i.ey = extractelement <2 x i32> %i.ej, i64 1
  %i.ez = extractelement <2 x i32> %i.eb, i64 1
  %i.fa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ew, i64 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.em, i32 noundef %i.ez, i32 noundef %i.ex, i32 noundef %i.ey) #28 ; 0 uses
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit341.thread

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.fb = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !156 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = call ptr @__dynamic_cast(ptr nonnull %i.fb, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_resize_effectE, i64 0) #28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.fe = phi ptr [ %i.fd, %bb.aj ], [ null, %bb.ai ]
  invoke void @_ZN8ultrahdr12apply_resizeEPNS_18uhdr_resize_effectEP14uhdr_raw_imageiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %10, ptr noundef %i.fe, ptr noundef nonnull %i.dx, i32 noundef %i.em, i32 noundef %i.eq, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290 unwind label %bb.am

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290: ; preds = %bb.ak
  %i.ff = load ptr, ptr %10, align 8, !tbaa !166  ; 2 uses
  store ptr %i.ff, ptr %2, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.fg = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !156 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290
  %i.fi = call ptr @__dynamic_cast(ptr nonnull %i.fg, ptr nonnull @_ZTIN8ultrahdr16uhdr_effect_descE, ptr nonnull @_ZTIN8ultrahdr18uhdr_resize_effectE, i64 0) #28
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.aw

bb.an:                                            ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290, %bb.al
  %i.fk = phi ptr [ %i.fi, %bb.al ], [ null, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit290 ]
  %i.fl = load ptr, ptr %i.j, align 8, !tbaa !166
  invoke void @_ZN8ultrahdr12apply_resizeEPNS_18uhdr_resize_effectEP14uhdr_raw_imageiiPvS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.34") align 8 %11, ptr noundef %i.fk, ptr noundef %i.fl, i32 noundef %i.es, i32 noundef %i.eu, ptr noundef null, ptr noundef null)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304 unwind label %bb.ao

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304: ; preds = %bb.an
  %i.fm = load ptr, ptr %11, align 8, !tbaa !166  ; 2 uses
  store ptr %i.fm, ptr %3, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.critedge194

bb.ao:                                            ; preds = %bb.an
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.aw

.critedge194:                                     ; preds = %.thread, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit245, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit217
  %i.fo = phi ptr [ %i.do, %.thread ], [ %i.fm, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304 ], [ %i.as, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit245 ], [ %i.ac, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit217 ] ; 3 uses
  %.pr382 = phi ptr [ %i.dg, %.thread ], [ %i.ff, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit304 ], [ %i.al, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit245 ], [ %i.v, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit217 ] ; 3 uses
  %.not.i305 = icmp eq ptr %.pr382, null
  %.not.i306 = icmp eq ptr %i.fo, null
  %or.cond384 = select i1 %.not.i305, i1 true, i1 %.not.i306
  br i1 %or.cond384, label %.critedge194.thread, label %.critedge192

.critedge194.thread:                              ; preds = %.critedge190, %bb.b, %.critedge194
  %i.fp = phi ptr [ null, %bb.b ], [ %.pr382, %.critedge194 ], [ null, %.critedge190 ]
  %i.fq = phi ptr [ null, %bb.b ], [ %i.fo, %.critedge194 ], [ null, %.critedge190 ] ; 3 uses
  store i32 2, ptr %0, align 4, !tbaa !169
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.fr, align 4, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.fs = load ptr, ptr %.sroa.0362.0443, align 8, !tbaa !156 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !172
  %i.fu = load ptr, ptr %i.ft, align 8
  invoke void %i.fu(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.critedge194.thread
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = load ptr, ptr %12, align 8, !tbaa !175
  %i.fx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.fv, i64 noundef 256, ptr noundef nonnull @.str.9, ptr noundef %i.fw) #28 ; 0 uses
  %i.fy = load ptr, ptr %12, align 8, !tbaa !175  ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %.critedge199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ap
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !176
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #27
  br label %.critedge199

bb.aq:                                            ; preds = %.critedge194.thread
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.aw

.critedge192:                                     ; preds = %.critedge194
  %i.ge = load ptr, ptr %i.i, align 8, !tbaa !166 ; 3 uses
  store ptr %.pr382, ptr %i.i, align 8, !tbaa !166
  %.not.i.i.i.i307 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i307, label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit313, label %bb.ar

bb.ar:                                            ; preds = %.critedge192
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i.i.i.i.i308 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i.i.i.i308, label %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i312, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i309 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i309, label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i311, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i310

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i310: ; preds = %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.gh) #27
  br label %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i311

_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i311: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i.i.i310, %bb.as
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 16) #27
  br label %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i312

_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i312: ; preds = %_ZNKSt14default_deleteIN8ultrahdr17uhdr_memory_blockEEclEPS1_.exit.i.i.i.i.i.i.i311, %bb.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 72) #27
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit313

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_.exit313: ; preds = %.critedge192, %_ZNKSt14default_deleteIN8ultrahdr18uhdr_raw_image_extEEclEPS1_.exit.i.i.i.i312
  %i.gi = load ptr, ptr %i.j, align 8, !tbaa !166 ; 3 uses
  store ptr %i.fo, ptr %i.j, align 8, !tbaa !166
end_hunk_0
