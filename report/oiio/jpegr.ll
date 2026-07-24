inline.NumInlined: 1678
inline.NumDeleted: 808
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN8ultrahdr16jpeg_info_structD2Ev:bb.a
_ZNSt6vectorIhSaIhEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIhSaIhEED2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !107
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit6

_ZNSt6vectorIhSaIhEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4, %bb.e
  %i.ac = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !107
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit6, %bb.f
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !467
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !467
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_0clEvEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #20 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 20 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !468 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !470
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %i.g = tail call noundef zeroext i1 @_ZN8ultrahdr16isPixelFormatRgbE12uhdr_img_fmt(i32 noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !471
  %i.j = load i32, ptr %i.i, align 8, !tbaa !73
  %i.k = tail call noundef zeroext i1 @_ZN8ultrahdr16isPixelFormatRgbE12uhdr_img_fmt(i32 noundef %i.j)
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !470
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !119
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.q = load float, ptr %i.p, align 8, !tbaa !472
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi contract float [ %i.q, %bb.b ], [ 2.030000e+02, %bb.a ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 136 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !473, !nonnull !26, !align !474
  %i.u = call noundef zeroext i1 @_ZN8ultrahdr8JobQueue10dequeueJobERjS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.u, label %.lr.ph185.i.i.i, label %"_ZSt10__invoke_rIvRZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS3_PNS0_25uhdr_gainmap_metadata_extERSt10unique_ptrINS0_18uhdr_raw_image_extESt14default_deleteIS7_EEbbENK3$_0clEvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

.lr.ph185.i.i.i:                                  ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 132
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 124 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 4 uses
  br label %bb.d

.loopexit.i.i.i:                                  ; preds = %._crit_edge.i.i.i, %bb.d
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !473, !nonnull !26, !align !474
  %i.an = call noundef zeroext i1 @_ZN8ultrahdr8JobQueue10dequeueJobERjS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.an, label %bb.d, label %"_ZSt10__invoke_rIvRZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS3_PNS0_25uhdr_gainmap_metadata_extERSt10unique_ptrINS0_18uhdr_raw_image_extESt14default_deleteIS7_EEbbENK3$_0clEvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit", !llvm.loop !475

bb.d:                                             ; preds = %.loopexit.i.i.i, %.lr.ph185.i.i.i
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp ult i32 %i.ao, %i.ap
  br i1 %i.ar, label %.preheader.preheader.i.i.i, label %.loopexit.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.d
  %i.as = zext i32 %i.ao to i64
  %.pre.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !476
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %i.at = phi ptr [ %i.aw, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %.preheader.preheader.i.i.i ] ; 2 uses
  %.0183.i.i.i = phi i64 [ %i.ax, %._crit_edge.i.i.i ], [ %i.as, %.preheader.preheader.i.i.i ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !171
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n, %.preheader.i.i.i
  %i.aw = phi ptr [ %i.at, %.preheader.i.i.i ], [ %i.es, %bb.n ]
  %i.ax = add nuw nsw i64 %.0183.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ax, %i.aq
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %.preheader.i.i.i, !llvm.loop !477

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.n
  %.0155182.i.i.i = phi i64 [ %i.er, %bb.n ], [ 0, %.preheader.i.i.i ] ; 5 uses
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !478
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !471
  %i.ba = load i32, ptr %i.x, align 8, !tbaa !65
  %i.bb = sext i32 %i.ba to i64
  %i.bc = tail call { <2 x float>, float } %i.ay(ptr noundef %i.az, i64 noundef %i.bb, i64 noundef %.0155182.i.i.i, i64 noundef %.0183.i.i.i), !inline_history !479 ; 3 uses
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %.fca.0.extract119.i.i.i = extractvalue { <2 x float>, float } %i.bc, 0
  %.fca.1.extract120.i.i.i = extractvalue { <2 x float>, float } %i.bc, 1
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !480
  %i.be = tail call { <2 x float>, float } %i.bd(<2 x float> %.fca.0.extract119.i.i.i, float %.fca.1.extract120.i.i.i), !inline_history !479
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.pn.i.i.i = phi { <2 x float>, float } [ %i.be, %bb.e ], [ %i.bc, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.5132.0.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i, 1
  %.sroa.0131.0.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i, 0
  %i.bf = tail call { <2 x float>, float } @_ZN8ultrahdr14srgbInvOetfLUTENS_5ColorE(<2 x float> %.sroa.0131.0.i.i.i, float %.sroa.5132.0.i.i.i) ; 2 uses
  %.fca.0.extract101.i.i.i = extractvalue { <2 x float>, float } %i.bf, 0
  %.fca.1.extract102.i.i.i = extractvalue { <2 x float>, float } %i.bf, 1
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !481
  %i.bh = tail call { <2 x float>, float } %i.bg(<2 x float> %.fca.0.extract101.i.i.i, float %.fca.1.extract102.i.i.i), !inline_history !479 ; 2 uses
  %.fca.0.extract91.i.i.i = extractvalue { <2 x float>, float } %i.bh, 0 ; 2 uses
  %.fca.1.extract92.i.i.i = extractvalue { <2 x float>, float } %i.bh, 1 ; 2 uses
  %.sroa.03.0.vec.extract.i.i.i.i = extractelement <2 x float> %.fca.0.extract91.i.i.i, i64 0 ; 2 uses
  %1 = fcmp contract olt float %.sroa.03.0.vec.extract.i.i.i.i, 0.000000e+00
  %2 = select contract i1 %1, float 0.000000e+00, float %.sroa.03.0.vec.extract.i.i.i.i ; 3 uses
  %.sroa.04.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %2, i64 0
  %.sroa.03.4.vec.extract.i.i.i.i = extractelement <2 x float> %.fca.0.extract91.i.i.i, i64 1 ; 2 uses
  %3 = fcmp contract olt float %.sroa.03.4.vec.extract.i.i.i.i, 0.000000e+00
  %4 = select contract i1 %3, float 0.000000e+00, float %.sroa.03.4.vec.extract.i.i.i.i ; 3 uses
  %.sroa.04.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.04.0.vec.insert.i.i.i.i, float %4, i64 1
  %i.bi = fcmp contract olt float %.fca.1.extract92.i.i.i, 0.000000e+00
  %i.bj = select contract i1 %i.bi, float 0.000000e+00, float %.fca.1.extract92.i.i.i ; 3 uses
  %i.bk = load ptr, ptr %i.aa, align 8, !tbaa !482
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !470
  %i.bm = load i32, ptr %i.x, align 8, !tbaa !65
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call { <2 x float>, float } %i.bk(ptr noundef %i.bl, i64 noundef %i.bn, i64 noundef %.0155182.i.i.i, i64 noundef %.0183.i.i.i), !inline_history !479 ; 3 uses
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.fca.0.extract67.i.i.i = extractvalue { <2 x float>, float } %i.bo, 0
  %.fca.1.extract68.i.i.i = extractvalue { <2 x float>, float } %i.bo, 1
  %i.bp = load ptr, ptr %i.ab, align 8, !tbaa !483
  %i.bq = tail call { <2 x float>, float } %i.bp(<2 x float> %.fca.0.extract67.i.i.i, float %.fca.1.extract68.i.i.i), !inline_history !479
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn159.i.i.i = phi { <2 x float>, float } [ %i.bq, %bb.g ], [ %i.bo, %bb.f ] ; 2 uses
  %.sroa.580.0.i.i.i = extractvalue { <2 x float>, float } %.pn159.i.i.i, 1
  %.sroa.079.0.i.i.i = extractvalue { <2 x float>, float } %.pn159.i.i.i, 0
  %i.br = load ptr, ptr %i.ac, align 8, !tbaa !484
  %i.bs = tail call { <2 x float>, float } %i.br(<2 x float> %.sroa.079.0.i.i.i, float %.sroa.580.0.i.i.i), !inline_history !479 ; 2 uses
  %.fca.0.extract49.i.i.i = extractvalue { <2 x float>, float } %i.bs, 0
  %.fca.1.extract50.i.i.i = extractvalue { <2 x float>, float } %i.bs, 1
  %i.bt = load ptr, ptr %i.ad, align 8, !tbaa !485
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !486
  %i.bv = tail call { <2 x float>, float } %i.bt(<2 x float> %.fca.0.extract49.i.i.i, float %.fca.1.extract50.i.i.i, ptr noundef %i.bu), !inline_history !479 ; 2 uses
  %.fca.0.extract39.i.i.i = extractvalue { <2 x float>, float } %i.bv, 0
  %.fca.1.extract40.i.i.i = extractvalue { <2 x float>, float } %i.bv, 1
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !487
  %i.bx = tail call { <2 x float>, float } %i.bw(<2 x float> %.fca.0.extract39.i.i.i, float %.fca.1.extract40.i.i.i), !inline_history !479 ; 2 uses
  %.fca.0.extract29.i.i.i = extractvalue { <2 x float>, float } %i.bx, 0 ; 2 uses
  %.fca.1.extract30.i.i.i = extractvalue { <2 x float>, float } %i.bx, 1 ; 2 uses
  %i.by = fcmp contract olt <2 x float> %.fca.0.extract29.i.i.i, zeroinitializer
  %i.bz = select <2 x i1> %i.by, <2 x float> zeroinitializer, <2 x float> %.fca.0.extract29.i.i.i ; 5 uses
  %i.ca = fcmp contract olt float %.fca.1.extract30.i.i.i, 0.000000e+00
  %i.cb = select contract i1 %i.ca, float 0.000000e+00, float %.fca.1.extract30.i.i.i ; 3 uses
  %i.cc = load i8, ptr %i.ag, align 8, !tbaa !67, !range !25, !noundef !26
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = fmul contract float %2, 2.030000e+02
  %i.cf = fmul contract float %4, 2.030000e+02
  %i.cg = fmul contract float %i.bj, 2.030000e+02
  %i.ch = extractelement <2 x float> %i.bz, i64 0
  %i.ci = fmul contract float %i.r, %i.ch
  %i.cj = extractelement <2 x float> %i.bz, i64 1
  %i.ck = fmul contract float %i.r, %i.cj
  %i.cl = fmul contract float %i.r, %i.cb
  %i.cm = load ptr, ptr %i.v, align 8, !tbaa !476
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = mul nuw i64 %.0183.i.i.i, %i.cp
  %i.cr = add nuw i64 %i.cq, %.0155182.i.i.i
  %i.cs = mul i64 %i.cr, 3                        ; 3 uses
  %i.ct = load ptr, ptr %i.aj, align 8, !tbaa !488
  %i.cu = load float, ptr %i.ak, align 4, !tbaa !489
  %i.cv = load float, ptr %i.al, align 8, !tbaa !490
  %i.cw = tail call noundef zeroext i8 @_ZN8ultrahdr10encodeGainEffPNS_25uhdr_gainmap_metadata_extEffi(float noundef %i.ce, float noundef %i.ci, ptr noundef %i.ct, float noundef %i.cu, float noundef %i.cv, i32 noundef 0)
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !476
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !58
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cs
  store i8 %i.cw, ptr %i.da, align 1, !tbaa !93
  %i.db = load ptr, ptr %i.aj, align 8, !tbaa !488
  %i.dc = load float, ptr %i.ak, align 4, !tbaa !489
  %i.dd = load float, ptr %i.al, align 8, !tbaa !490
  %i.de = tail call noundef zeroext i8 @_ZN8ultrahdr10encodeGainEffPNS_25uhdr_gainmap_metadata_extEffi(float noundef %i.cf, float noundef %i.ck, ptr noundef %i.db, float noundef %i.dc, float noundef %i.dd, i32 noundef 1)
  %i.df = load ptr, ptr %i.v, align 8, !tbaa !476
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !58
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.cs
  %i.dj = getelementptr i8, ptr %i.di, i64 1
  store i8 %i.de, ptr %i.dj, align 1, !tbaa !93
  %i.dk = load ptr, ptr %i.aj, align 8, !tbaa !488
  %i.dl = load float, ptr %i.ak, align 4, !tbaa !489
  %i.dm = load float, ptr %i.al, align 8, !tbaa !490
  %i.dn = tail call noundef zeroext i8 @_ZN8ultrahdr10encodeGainEffPNS_25uhdr_gainmap_metadata_extEffi(float noundef %i.cg, float noundef %i.cl, ptr noundef %i.dk, float noundef %i.dl, float noundef %i.dm, i32 noundef 2)
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.do = load i8, ptr %i.ah, align 4, !tbaa !491, !range !25, !noundef !26
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dq = load ptr, ptr %i.ai, align 8, !tbaa !492
  %i.dr = tail call contract noundef float %i.dq(<2 x float> %.sroa.04.4.vec.insert.i.i.i.i, float %i.bj), !inline_history !479
  %i.ds = load ptr, ptr %i.ai, align 8, !tbaa !492
  %i.dt = tail call contract noundef float %i.ds(<2 x float> %i.bz, float %i.cb), !inline_history !479
  %i.du = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dr, i64 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %5 = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = insertelement <2 x float> %5, float %4, i64 1
  %i.dw = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.bj, i64 1
  %i.dy = tail call nsz contract <2 x float> @llvm.maxnum.v2f32(<2 x float> %6, <2 x float> %i.dx)
  %7 = insertelement <2 x float> %i.bz, float %2, i64 1
  %i.dz = tail call nsz contract <2 x float> @llvm.maxnum.v2f32(<2 x float> %7, <2 x float> %i.dy)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ea = phi <2 x float> [ %i.dv, %bb.k ], [ %i.dz, %bb.l ] ; 2 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 1
  %.0156.i.i.i = fmul contract float %i.eb, 2.030000e+02
  %i.ec = extractelement <2 x float> %i.ea, i64 0
  %.0157.i.i.i = fmul contract float %i.r, %i.ec
  %i.ed = load ptr, ptr %i.v, align 8, !tbaa !476
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !3
  %i.eg = zext i32 %i.ef to i64
  %i.eh = mul nuw i64 %.0183.i.i.i, %i.eg
  %i.ei = load ptr, ptr %i.aj, align 8, !tbaa !488
  %i.ej = load float, ptr %i.ak, align 4, !tbaa !489
  %i.ek = load float, ptr %i.al, align 8, !tbaa !490
  %i.el = tail call noundef zeroext i8 @_ZN8ultrahdr10encodeGainEffPNS_25uhdr_gainmap_metadata_extEffi(float noundef %.0156.i.i.i, float noundef %.0157.i.i.i, ptr noundef %i.ei, float noundef %i.ej, float noundef %i.ek, i32 noundef 0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %.0155182.sink.i.i.i = phi i64 [ %.0155182.i.i.i, %bb.m ], [ %i.cs, %bb.i ]
  %.sink190.i.i.i = phi i64 [ %i.eh, %bb.m ], [ 2, %bb.i ]
  %.sink.i.i.i = phi i8 [ %i.el, %bb.m ], [ %i.dn, %bb.i ]
  %i.em = load ptr, ptr %i.v, align 8, !tbaa !476
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !58
  %i.ep = getelementptr i8, ptr %i.eo, i64 %.0155182.sink.i.i.i
  %i.eq = getelementptr i8, ptr %i.ep, i64 %.sink190.i.i.i
  store i8 %.sink.i.i.i, ptr %i.eq, align 1, !tbaa !93
  %i.er = add nuw nsw i64 %.0155182.i.i.i, 1      ; 2 uses
  %i.es = load ptr, ptr %i.v, align 8, !tbaa !476 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !171
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp samesign ult i64 %i.er, %i.ev
  br i1 %i.ew, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !493

"_ZSt10__invoke_rIvRZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS3_PNS0_25uhdr_gainmap_metadata_extERSt10unique_ptrINS0_18uhdr_raw_image_extESt14default_deleteIS7_EEbbENK3$_0clEvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %.loopexit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_0clEvEUlvE_", ptr %0, align 8, !tbaa !494
  br label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %.val, ptr %0, align 8, !tbaa !58
  br label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #31 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(144) %.val6, i64 144, i1 false), !tbaa.struct !496
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  br label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 144) #30
  br label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_0clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

declare { <2 x float>, float } @_ZN8ultrahdr14srgbInvOetfLUTENS_5ColorE(<2 x float>, float) local_unnamed_addr #7

declare noundef zeroext i8 @_ZN8ultrahdr10encodeGainEffPNS_25uhdr_gainmap_metadata_extEffi(float noundef, float noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare void @_ZN8ultrahdr17uhdr_memory_blockC1Em(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 21 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !497 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !499
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %i.g = tail call noundef zeroext i1 @_ZN8ultrahdr16isPixelFormatRgbE12uhdr_img_fmt(i32 noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !500
  %i.j = load i32, ptr %i.i, align 8, !tbaa !73
  %i.k = tail call noundef zeroext i1 @_ZN8ultrahdr16isPixelFormatRgbE12uhdr_img_fmt(i32 noundef %i.j)
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !499
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !119
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.q = load float, ptr %i.p, align 8, !tbaa !501
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi contract float [ %i.q, %bb.b ], [ 2.030000e+02, %bb.a ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !502, !nonnull !26, !align !474
  %i.u = call noundef zeroext i1 @_ZN8ultrahdr8JobQueue10dequeueJobERjS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.u, label %.lr.ph221.i.i.i, label %._crit_edge222.i.i.i

.lr.ph221.i.i.i:                                  ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  br label %bb.d

.loopexit216.i.i.i:                               ; preds = %._crit_edge.i.i.i, %bb.d
  %.lcssa241265.lcssa281.i.i.i = phi float [ %.lcssa241265.lcssa282.i.i.i, %bb.d ], [ %.lcssa241265.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.lcssa240262.lcssa278.i.i.i = phi float [ %.lcssa240262.lcssa279.i.i.i, %bb.d ], [ %.lcssa240262.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ak = phi float [ %i.aq, %bb.d ], [ %i.be, %._crit_edge.i.i.i ]
  %i.al = phi float [ %i.ar, %bb.d ], [ %i.bf, %._crit_edge.i.i.i ]
  %i.am = phi <4 x float> [ %i.as, %bb.d ], [ %i.bh, %._crit_edge.i.i.i ] ; 2 uses
  %i.an = phi <4 x float> [ %i.at, %bb.d ], [ %i.bi, %._crit_edge.i.i.i ]
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !502, !nonnull !26, !align !474
  %i.ap = call noundef zeroext i1 @_ZN8ultrahdr8JobQueue10dequeueJobERjS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.ap, label %bb.d, label %._crit_edge222.i.i.i, !llvm.loop !503

bb.d:                                             ; preds = %.loopexit216.i.i.i, %.lr.ph221.i.i.i
  %.lcssa241265.lcssa282.i.i.i = phi float [ -1.280000e+02, %.lr.ph221.i.i.i ], [ %.lcssa241265.lcssa281.i.i.i, %.loopexit216.i.i.i ] ; 2 uses
  %.lcssa240262.lcssa279.i.i.i = phi float [ 1.270000e+02, %.lr.ph221.i.i.i ], [ %.lcssa240262.lcssa278.i.i.i, %.loopexit216.i.i.i ] ; 2 uses
  %i.aq = phi float [ -1.280000e+02, %.lr.ph221.i.i.i ], [ %i.ak, %.loopexit216.i.i.i ] ; 2 uses
  %i.ar = phi float [ 1.270000e+02, %.lr.ph221.i.i.i ], [ %i.al, %.loopexit216.i.i.i ] ; 2 uses
  %i.as = phi <4 x float> [ <float 1.270000e+02, float 1.270000e+02, float -1.280000e+02, float -1.280000e+02>, %.lr.ph221.i.i.i ], [ %i.am, %.loopexit216.i.i.i ] ; 2 uses
  %i.at = phi <4 x float> [ <float 1.270000e+02, float 1.270000e+02, float -1.280000e+02, float -1.280000e+02>, %.lr.ph221.i.i.i ], [ %i.an, %.loopexit216.i.i.i ] ; 2 uses
  %i.au = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.av = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp ult i32 %i.au, %i.av
  br i1 %i.ax, label %.preheader.preheader.i.i.i, label %.loopexit216.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.d
  %i.ay = zext i32 %i.au to i64
  %.pre.i.i.i = load i32, ptr %i.v, align 8, !tbaa !504
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa241264.i.i.i = phi float [ %.lcssa241265.i.i.i, %._crit_edge.i.i.i ], [ %.lcssa241265.lcssa282.i.i.i, %.preheader.preheader.i.i.i ]
  %.lcssa240261.i.i.i = phi float [ %.lcssa240262.i.i.i, %._crit_edge.i.i.i ], [ %.lcssa240262.lcssa279.i.i.i, %.preheader.preheader.i.i.i ]
  %i.az = phi float [ %i.be, %._crit_edge.i.i.i ], [ %i.aq, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.ba = phi float [ %i.bf, %._crit_edge.i.i.i ], [ %i.ar, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.bb = phi i32 [ %i.bg, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %.preheader.preheader.i.i.i ]
  %.0175219.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i ], [ %i.ay, %.preheader.preheader.i.i.i ] ; 5 uses
  %i.bc = phi <4 x float> [ %i.bh, %._crit_edge.i.i.i ], [ %i.as, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.bd = phi <4 x float> [ %i.bi, %._crit_edge.i.i.i ], [ %i.at, %.preheader.preheader.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.loopexit.i.i.i, %.preheader.i.i.i
  %.lcssa241265.i.i.i = phi float [ %.lcssa241264.i.i.i, %.preheader.i.i.i ], [ %i.ff, %.loopexit.i.i.i ] ; 2 uses
  %.lcssa240262.i.i.i = phi float [ %.lcssa240261.i.i.i, %.preheader.i.i.i ], [ %i.fg, %.loopexit.i.i.i ] ; 2 uses
  %i.be = phi float [ %i.az, %.preheader.i.i.i ], [ %i.ff, %.loopexit.i.i.i ] ; 2 uses
  %i.bf = phi float [ %i.ba, %.preheader.i.i.i ], [ %i.fg, %.loopexit.i.i.i ] ; 2 uses
  %i.bg = phi i32 [ 0, %.preheader.i.i.i ], [ %i.fk, %.loopexit.i.i.i ]
  %i.bh = phi <4 x float> [ %i.bc, %.preheader.i.i.i ], [ %i.fh, %.loopexit.i.i.i ] ; 2 uses
  %i.bi = phi <4 x float> [ %i.bd, %.preheader.i.i.i ], [ %i.fi, %.loopexit.i.i.i ] ; 2 uses
  %i.bj = add nuw nsw i64 %.0175219.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bj, %i.aw
  br i1 %exitcond.not.i.i.i, label %.loopexit216.i.i.i, label %.preheader.i.i.i, !llvm.loop !505

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.bk = phi float [ %i.ff, %.loopexit.i.i.i ], [ %i.az, %.preheader.i.i.i ] ; 4 uses
  %i.bl = phi float [ %i.fg, %.loopexit.i.i.i ], [ %i.ba, %.preheader.i.i.i ] ; 4 uses
  %.0176218.i.i.i = phi i64 [ %i.fj, %.loopexit.i.i.i ], [ 0, %.preheader.i.i.i ] ; 5 uses
  %i.bm = phi <4 x float> [ %i.fi, %.loopexit.i.i.i ], [ %i.bd, %.preheader.i.i.i ] ; 4 uses
  %i.bn = phi <4 x float> [ %i.fh, %.loopexit.i.i.i ], [ %i.bc, %.preheader.i.i.i ]
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !506
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !500
  %i.bq = load i32, ptr %i.x, align 8, !tbaa !65
  %i.br = sext i32 %i.bq to i64
  %i.bs = tail call { <2 x float>, float } %i.bo(ptr noundef %i.bp, i64 noundef %i.br, i64 noundef %.0176218.i.i.i, i64 noundef %.0175219.i.i.i), !inline_history !507 ; 3 uses
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %.fca.0.extract139.i.i.i = extractvalue { <2 x float>, float } %i.bs, 0
  %.fca.1.extract140.i.i.i = extractvalue { <2 x float>, float } %i.bs, 1
  %i.bt = load ptr, ptr %i.y, align 8, !tbaa !508
  %i.bu = tail call { <2 x float>, float } %i.bt(<2 x float> %.fca.0.extract139.i.i.i, float %.fca.1.extract140.i.i.i), !inline_history !507
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.pn.i.i.i = phi { <2 x float>, float } [ %i.bu, %bb.e ], [ %i.bs, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.5152.0.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i, 1
  %.sroa.0151.0.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i, 0
  %i.bv = tail call { <2 x float>, float } @_ZN8ultrahdr14srgbInvOetfLUTENS_5ColorE(<2 x float> %.sroa.0151.0.i.i.i, float %.sroa.5152.0.i.i.i) ; 2 uses
  %.fca.0.extract121.i.i.i = extractvalue { <2 x float>, float } %i.bv, 0
  %.fca.1.extract122.i.i.i = extractvalue { <2 x float>, float } %i.bv, 1
  %i.bw = load ptr, ptr %i.z, align 8, !tbaa !509
  %i.bx = tail call { <2 x float>, float } %i.bw(<2 x float> %.fca.0.extract121.i.i.i, float %.fca.1.extract122.i.i.i), !inline_history !507 ; 2 uses
  %.fca.0.extract111.i.i.i = extractvalue { <2 x float>, float } %i.bx, 0 ; 2 uses
  %.fca.1.extract112.i.i.i = extractvalue { <2 x float>, float } %i.bx, 1 ; 2 uses
  %.sroa.03.0.vec.extract.i.i.i.i = extractelement <2 x float> %.fca.0.extract111.i.i.i, i64 0 ; 2 uses
  %1 = fcmp contract olt float %.sroa.03.0.vec.extract.i.i.i.i, 0.000000e+00
  %2 = select contract i1 %1, float 0.000000e+00, float %.sroa.03.0.vec.extract.i.i.i.i ; 3 uses
  %.sroa.04.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %2, i64 0
  %.sroa.03.4.vec.extract.i.i.i.i = extractelement <2 x float> %.fca.0.extract111.i.i.i, i64 1 ; 2 uses
  %3 = fcmp contract olt float %.sroa.03.4.vec.extract.i.i.i.i, 0.000000e+00
  %4 = select contract i1 %3, float 0.000000e+00, float %.sroa.03.4.vec.extract.i.i.i.i ; 3 uses
  %.sroa.04.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.04.0.vec.insert.i.i.i.i, float %4, i64 1
  %i.by = fcmp contract olt float %.fca.1.extract112.i.i.i, 0.000000e+00
  %i.bz = select contract i1 %i.by, float 0.000000e+00, float %.fca.1.extract112.i.i.i ; 3 uses
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !510
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !499
  %i.cc = load i32, ptr %i.x, align 8, !tbaa !65
  %i.cd = sext i32 %i.cc to i64
  %i.ce = tail call { <2 x float>, float } %i.ca(ptr noundef %i.cb, i64 noundef %i.cd, i64 noundef %.0176218.i.i.i, i64 noundef %.0175219.i.i.i), !inline_history !507 ; 3 uses
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.fca.0.extract87.i.i.i = extractvalue { <2 x float>, float } %i.ce, 0
  %.fca.1.extract88.i.i.i = extractvalue { <2 x float>, float } %i.ce, 1
  %i.cf = load ptr, ptr %i.ab, align 8, !tbaa !511
  %i.cg = tail call { <2 x float>, float } %i.cf(<2 x float> %.fca.0.extract87.i.i.i, float %.fca.1.extract88.i.i.i), !inline_history !507
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn181.i.i.i = phi { <2 x float>, float } [ %i.cg, %bb.g ], [ %i.ce, %bb.f ] ; 2 uses
  %.sroa.5100.0.i.i.i = extractvalue { <2 x float>, float } %.pn181.i.i.i, 1
  %.sroa.099.0.i.i.i = extractvalue { <2 x float>, float } %.pn181.i.i.i, 0
  %i.ch = load ptr, ptr %i.ac, align 8, !tbaa !512
  %i.ci = tail call { <2 x float>, float } %i.ch(<2 x float> %.sroa.099.0.i.i.i, float %.sroa.5100.0.i.i.i), !inline_history !507 ; 2 uses
  %.fca.0.extract69.i.i.i = extractvalue { <2 x float>, float } %i.ci, 0
  %.fca.1.extract70.i.i.i = extractvalue { <2 x float>, float } %i.ci, 1
  %i.cj = load ptr, ptr %i.ad, align 8, !tbaa !513
  %i.ck = load ptr, ptr %i.ae, align 8, !tbaa !514
  %i.cl = tail call { <2 x float>, float } %i.cj(<2 x float> %.fca.0.extract69.i.i.i, float %.fca.1.extract70.i.i.i, ptr noundef %i.ck), !inline_history !507 ; 2 uses
  %.fca.0.extract59.i.i.i = extractvalue { <2 x float>, float } %i.cl, 0
  %.fca.1.extract60.i.i.i = extractvalue { <2 x float>, float } %i.cl, 1
  %i.cm = load ptr, ptr %i.af, align 8, !tbaa !515
  %i.cn = tail call { <2 x float>, float } %i.cm(<2 x float> %.fca.0.extract59.i.i.i, float %.fca.1.extract60.i.i.i), !inline_history !507 ; 2 uses
  %.fca.0.extract49.i.i.i = extractvalue { <2 x float>, float } %i.cn, 0 ; 2 uses
  %.fca.1.extract50.i.i.i = extractvalue { <2 x float>, float } %i.cn, 1 ; 2 uses
  %i.co = fcmp contract olt <2 x float> %.fca.0.extract49.i.i.i, zeroinitializer
  %i.cp = select <2 x i1> %i.co, <2 x float> zeroinitializer, <2 x float> %.fca.0.extract49.i.i.i ; 5 uses
  %i.cq = fcmp contract olt float %.fca.1.extract50.i.i.i, 0.000000e+00
  %i.cr = select contract i1 %i.cq, float 0.000000e+00, float %.fca.1.extract50.i.i.i ; 3 uses
  %i.cs = load i8, ptr %i.ag, align 8, !tbaa !67, !range !25, !noundef !26
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.loopexit.loopexit.i.i.i, label %bb.i

.loopexit.loopexit.i.i.i:                         ; preds = %bb.h
  %i.cu = fmul contract float %2, 2.030000e+02
  %i.cv = fmul contract float %4, 2.030000e+02
  %i.cw = fmul contract float %i.bz, 2.030000e+02
  %i.cx = extractelement <2 x float> %i.cp, i64 0
  %i.cy = fmul contract float %i.r, %i.cx
  %i.cz = extractelement <2 x float> %i.cp, i64 1
  %i.da = fmul contract float %i.r, %i.cz
  %i.db = fmul contract float %i.r, %i.cr
  %i.dc = load i32, ptr %i.v, align 8, !tbaa !504
  %i.dd = zext i32 %i.dc to i64
  %i.de = mul nuw i64 %.0175219.i.i.i, %i.dd
  %i.df = add nuw i64 %i.de, %.0176218.i.i.i
  %i.dg = mul i64 %i.df, 3                        ; 3 uses
  %i.dh = tail call contract noundef float @_ZN8ultrahdr11computeGainEff(float noundef %i.cu, float noundef %i.cy)
  %i.di = load ptr, ptr %i.aj, align 8, !tbaa !516
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dg
  store float %i.dh, ptr %i.dj, align 4, !tbaa !236
  %i.dk = tail call contract noundef float @_ZN8ultrahdr11computeGainEff(float noundef %i.cv, float noundef %i.da)
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !516
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %i.dg
  %i.dn = getelementptr i8, ptr %i.dm, i64 4
  store float %i.dk, ptr %i.dn, align 4, !tbaa !236
  %i.do = tail call contract noundef float @_ZN8ultrahdr11computeGainEff(float noundef %i.cw, float noundef %i.db) ; 2 uses
  %i.dp = load ptr, ptr %i.aj, align 8, !tbaa !516
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %i.dg ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  store float %i.do, ptr %i.dr, align 4, !tbaa !236
  %i.ds = load float, ptr %i.dq, align 4, !tbaa !236 ; 4 uses
  %i.dt = fcmp contract olt float %i.bl, %i.ds
  %i.du = select i1 %i.dt, float %i.bl, float %i.ds
  %i.dv = fcmp contract olt float %i.ds, %i.bk
  %i.dw = select i1 %i.dv, float %i.bk, float %i.ds
  %i.dx = getelementptr i8, ptr %i.dq, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !236
  %i.dz = insertelement <4 x float> %i.bm, float %i.do, i64 2
  %i.ea = insertelement <4 x float> %i.dz, float %i.dy, i64 3 ; 3 uses
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> %i.bm, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ec = fcmp contract olt <4 x float> %i.ea, %i.eb
  %i.ed = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ee = select <4 x i1> %i.ec, <4 x float> %i.bm, <4 x float> %i.ed ; 2 uses
  br label %.loopexit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ef = load i8, ptr %i.ah, align 4, !tbaa !517, !range !25, !noundef !26
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eh = load ptr, ptr %i.ai, align 8, !tbaa !518
  %i.ei = tail call contract noundef float %i.eh(<2 x float> %.sroa.04.4.vec.insert.i.i.i.i, float %i.bz), !inline_history !507
  %i.ej = load ptr, ptr %i.ai, align 8, !tbaa !518
  %i.ek = tail call contract noundef float %i.ej(<2 x float> %i.cp, float %i.cr), !inline_history !507
  %i.el = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ei, i64 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %5 = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = insertelement <2 x float> %5, float %4, i64 1
  %i.en = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.bz, i64 1
  %i.ep = tail call nsz contract <2 x float> @llvm.maxnum.v2f32(<2 x float> %6, <2 x float> %i.eo)
  %7 = insertelement <2 x float> %i.cp, float %2, i64 1
  %i.eq = tail call nsz contract <2 x float> @llvm.maxnum.v2f32(<2 x float> %7, <2 x float> %i.ep)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.er = phi <2 x float> [ %i.em, %bb.j ], [ %i.eq, %bb.k ] ; 2 uses
  %i.es = extractelement <2 x float> %i.er, i64 1
  %.0178.i.i.i = fmul contract float %i.es, 2.030000e+02
  %i.et = extractelement <2 x float> %i.er, i64 0
  %.0179.i.i.i = fmul contract float %i.r, %i.et
  %i.eu = load i32, ptr %i.v, align 8, !tbaa !504
  %i.ev = zext i32 %i.eu to i64
  %i.ew = mul nuw i64 %.0175219.i.i.i, %i.ev
  %i.ex = tail call contract noundef float @_ZN8ultrahdr11computeGainEff(float noundef %.0178.i.i.i, float noundef %.0179.i.i.i) ; 5 uses
  %i.ey = load ptr, ptr %i.aj, align 8, !tbaa !516
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.0176218.i.i.i
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ew
  store float %i.ex, ptr %i.fa, align 4, !tbaa !236
  %i.fb = fcmp contract olt float %i.bl, %i.ex
  %i.fc = select i1 %i.fb, float %i.bl, float %i.ex
  %i.fd = fcmp contract olt float %i.ex, %i.bk
  %i.fe = select i1 %i.fd, float %i.bk, float %i.ex
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.l, %.loopexit.loopexit.i.i.i
  %i.ff = phi float [ %i.dw, %.loopexit.loopexit.i.i.i ], [ %i.fe, %bb.l ] ; 3 uses
  %i.fg = phi float [ %i.du, %.loopexit.loopexit.i.i.i ], [ %i.fc, %bb.l ] ; 3 uses
  %i.fh = phi <4 x float> [ %i.ee, %.loopexit.loopexit.i.i.i ], [ %i.bn, %bb.l ] ; 2 uses
  %i.fi = phi <4 x float> [ %i.ee, %.loopexit.loopexit.i.i.i ], [ %i.bm, %bb.l ] ; 2 uses
  %i.fj = add nuw nsw i64 %.0176218.i.i.i, 1      ; 2 uses
  %i.fk = load i32, ptr %i.v, align 8, !tbaa !504 ; 2 uses
  %i.fl = zext i32 %i.fk to i64
  %i.fm = icmp samesign ult i64 %i.fj, %i.fl
  br i1 %i.fm, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !519

._crit_edge222.i.i.i:                             ; preds = %.loopexit216.i.i.i, %bb.c
  %.sroa.034.0.i.i = phi float [ 1.270000e+02, %bb.c ], [ %.lcssa240262.lcssa278.i.i.i, %.loopexit216.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi float [ -1.280000e+02, %bb.c ], [ %.lcssa241265.lcssa281.i.i.i, %.loopexit216.i.i.i ] ; 2 uses
  %i.fn = phi <4 x float> [ <float 1.270000e+02, float 1.270000e+02, float -1.280000e+02, float -1.280000e+02>, %bb.c ], [ %i.am, %.loopexit216.i.i.i ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !520, !nonnull !26, !align !474 ; 2 uses
  %i.fq = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.fp) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader.i.i.i, label %bb.m

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader.i.i.i: ; preds = %._crit_edge222.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !67, !range !25, !noundef !26
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !521, !nonnull !26, !align !522 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !523, !nonnull !26, !align !522 ; 4 uses
  %i.fy = load float, ptr %i.fv, align 4, !tbaa !236 ; 2 uses
  %i.fz = fcmp contract olt float %.sroa.034.0.i.i, %i.fy
  %i.ga = select i1 %i.fz, float %.sroa.034.0.i.i, float %i.fy
  store float %i.ga, ptr %i.fv, align 4, !tbaa !236
  %i.gb = load float, ptr %i.fx, align 4, !tbaa !236 ; 2 uses
  %i.gc = fcmp contract olt float %i.gb, %.sroa.0.0.i.i
  %i.gd = select i1 %i.gc, float %.sroa.0.0.i.i, float %i.gb
  store float %i.gd, ptr %i.fx, align 4, !tbaa !236
  br i1 %i.ft, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.preheader.i.i, label %"_ZSt10__invoke_rIvRZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS3_PNS0_25uhdr_gainmap_metadata_extERSt10unique_ptrINS0_18uhdr_raw_image_extESt14default_deleteIS7_EEbbENK3$_1clEvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.preheader.i.i: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !236 ; 2 uses
  %i.gg = extractelement <4 x float> %i.fn, i64 1 ; 2 uses
  %i.gh = fcmp contract olt float %i.gg, %i.gf
  %i.gi = select i1 %i.gh, float %i.gg, float %i.gf
  store float %i.gi, ptr %i.ge, align 4, !tbaa !236
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !236 ; 2 uses
  %i.gl = extractelement <4 x float> %i.fn, i64 3 ; 2 uses
  %i.gm = fcmp contract olt float %i.gk, %i.gl
  %i.gn = select i1 %i.gm, float %i.gl, float %i.gk
  store float %i.gn, ptr %i.gj, align 4, !tbaa !236
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !236 ; 2 uses
  %i.gq = extractelement <4 x float> %i.fn, i64 0 ; 2 uses
  %i.gr = fcmp contract olt float %i.gq, %i.gp
  %i.gs = select i1 %i.gr, float %i.gq, float %i.gp
  store float %i.gs, ptr %i.go, align 4, !tbaa !236
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !236 ; 2 uses
  %i.gv = extractelement <4 x float> %i.fn, i64 2 ; 2 uses
  %i.gw = fcmp contract olt float %i.gu, %i.gv
  %i.gx = select i1 %i.gw, float %i.gv, float %i.gu
  store float %i.gx, ptr %i.gt, align 4, !tbaa !236
  br label %"_ZSt10__invoke_rIvRZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS3_PNS0_25uhdr_gainmap_metadata_extERSt10unique_ptrINS0_18uhdr_raw_image_extESt14default_deleteIS7_EEbbENK3$_1clEvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

bb.m:                                             ; preds = %._crit_edge222.i.i.i
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.fq) #29
  unreachable

"_ZSt10__invoke_rIvRZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS3_PNS0_25uhdr_gainmap_metadata_extERSt10unique_ptrINS0_18uhdr_raw_image_extESt14default_deleteIS7_EEbbENK3$_1clEvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader.i.i.i, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.preheader.i.i
  %i.gy = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fp) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEvEUlvE_", ptr %0, align 8, !tbaa !494
  br label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %.val, ptr %0, align 8, !tbaa !58
  br label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(160) %.val6, i64 160, i1 false), !tbaa.struct !524
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  br label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 160) #30
  br label %"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef float @_ZN8ultrahdr11computeGainEff(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE0_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 7 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !525 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !527, !nonnull !26, !align !474
  %i.f = call noundef zeroext i1 @_ZN8ultrahdr8JobQueue10dequeueJobERjS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.f, label %.lr.ph38.i.i.i, label %"_ZSt10__invoke_rIvRZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS3_PNS0_25uhdr_gainmap_metadata_extERSt10unique_ptrINS0_18uhdr_raw_image_extESt14default_deleteIS7_EEbbENK3$_1clEvEUlvE0_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

.lr.ph38.i.i.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 44 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i.i, %.lr.ph38.i.i.i
  %i.n = load i8, ptr %i.g, align 8, !tbaa !67, !range !25, !noundef !26
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp ult i32 %i.p, %i.q                  ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.s, label %.lr.ph36.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph36.preheader.i.i.i:                         ; preds = %bb.c
  %i.t = zext i32 %i.p to i64
  %.pre43.i.i.i = load i32, ptr %i.i, align 8, !tbaa !528 ; 2 uses
  br label %.lr.ph36.i.i.i

.lr.ph36.i.i.i:                                   ; preds = %._crit_edge33.i.i.i, %.lr.ph36.preheader.i.i.i
  %i.u = phi i32 [ %i.ad, %._crit_edge33.i.i.i ], [ %.pre43.i.i.i, %.lr.ph36.preheader.i.i.i ] ; 2 uses
  %i.v = phi i32 [ %i.ae, %._crit_edge33.i.i.i ], [ %.pre43.i.i.i, %.lr.ph36.preheader.i.i.i ]
  %.02234.i.i.i = phi i64 [ %i.af, %._crit_edge33.i.i.i ], [ %i.t, %.lr.ph36.preheader.i.i.i ] ; 3 uses
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !529
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3
  %i.z = zext i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %.02234.i.i.i, 3
  %i.ab = mul i64 %i.aa, %i.z
  %.not40.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not40.i.i.i, label %._crit_edge33.i.i.i, label %.lr.ph32.i.i.i

.lr.ph32.i.i.i:                                   ; preds = %.lr.ph36.i.i.i
  %i.ac = zext i32 %i.u to i64
  %factor.op.mul.i.i.i = mul nuw nsw i64 %i.ac, 12
  %.reass.i.i.i = mul i64 %factor.op.mul.i.i.i, %.02234.i.i.i
  br label %bb.d

end_hunk_0
