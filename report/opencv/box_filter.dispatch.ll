Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/box_filter.dispatch?download=true
inline.NumInlined: 2169
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsiEclEPKhPhii:bb.a
  %i.ie = add nuw nsw i32 %.0216293, 1            ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0220291, i64 2
  %i.ig = getelementptr inbounds nuw i8, ptr %.0219292, i64 4
  %exitcond341.not = icmp eq i32 %i.ie, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader, !llvm.loop !593

.loopexit.loopexit426.unr-lcssa:                  ; preds = %.lr.ph280
  %lcmp.mod451.not = icmp eq i64 %xtraiter449, 0
  br i1 %lcmp.mod451.not, label %.loopexit, label %.lr.ph280.epil.preheader

.lr.ph280.epil.preheader:                         ; preds = %.loopexit.loopexit426.unr-lcssa, %.lr.ph280.preheader
  %indvars.iv330.epil.init = phi i64 [ 0, %.lr.ph280.preheader ], [ %indvars.iv.next331.1, %.loopexit.loopexit426.unr-lcssa ] ; 3 uses
  %.1215278.epil.init = phi i32 [ %.0214.lcssa, %.lr.ph280.preheader ], [ %i.dv, %.loopexit.loopexit426.unr-lcssa ]
  %lcmp.mod452 = trunc i32 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod452)
  %gep377.epil = getelementptr [2 x i8], ptr %invariant.gep376, i64 %indvars.iv330.epil.init
  %i.ih = load i16, ptr %gep377.epil, align 2, !tbaa !129
  %i.ii = sext i16 %i.ih to i32
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv330.epil.init
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !129
  %i.il = sext i16 %i.ik to i32
  %i.im = sub nsw i32 %i.ii, %i.il
  %i.in = add nsw i32 %i.im, %.1215278.epil.init
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv330.epil.init
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store i32 %i.in, ptr %i.ip, align 4, !tbaa !13
  br label %.loopexit

.loopexit.loopexit435.unr-lcssa:                  ; preds = %.lr.ph256
  %i.iq = and i64 %i.gu, 4
  %lcmp.mod445.not.not = icmp eq i64 %i.iq, 0
  br i1 %lcmp.mod445.not.not, label %.lr.ph256.epil.preheader, label %.loopexit

.lr.ph256.epil.preheader:                         ; preds = %.loopexit.loopexit435.unr-lcssa, %.lr.ph256.preheader
  %indvars.iv316.epil.init = phi i64 [ 0, %.lr.ph256.preheader ], [ %indvars.iv.next317.1, %.loopexit.loopexit435.unr-lcssa ] ; 3 uses
  %.epil.init444 = phi <4 x i32> [ %i.gq, %.lr.ph256.preheader ], [ %i.ho, %.loopexit.loopexit435.unr-lcssa ]
  %lcmp.mod446 = trunc i64 %i.gw to i1
  call void @llvm.assume(i1 %lcmp.mod446)
  %gep373.epil = getelementptr [2 x i8], ptr %invariant.gep372, i64 %indvars.iv316.epil.init
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv316.epil.init
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv316.epil.init
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load <4 x i16>, ptr %gep373.epil, align 2, !tbaa !129
  %i.iv = sext <4 x i16> %i.iu to <4 x i32>
  %i.iw = load <4 x i16>, ptr %i.ir, align 2, !tbaa !129
  %i.ix = sext <4 x i16> %i.iw to <4 x i32>
  %i.iy = sub nsw <4 x i32> %i.iv, %i.ix
  %i.iz = add nsw <4 x i32> %i.iy, %.epil.init444
  store <4 x i32> %i.iz, ptr %i.it, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph397, %.lr.ph256.epil.preheader, %.loopexit.loopexit435.unr-lcssa, %.lr.ph271, %.lr.ph280.epil.preheader, %.loopexit.loopexit426.unr-lcssa, %._crit_edge290, %middle.block, %middle.block410, %.preheader236, %.preheader234, %._crit_edge, %._crit_edge262, %._crit_edge275, %.preheader227
  %i.ja = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !38
  %.not.i = icmp eq i32 %i.jb, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_16RowSumIsiE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !23
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !3
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !3
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #23, !inline_history !594
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN2cv13BaseRowFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEclEPKhPhii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 5 uses
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEclEPKhPhiiE24__cv_trace_location_fn82)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = mul i32 %i.d, %4                         ; 14 uses
  %i.f = add i32 %3, -1
  %i.g = mul i32 %i.f, %4                         ; 10 uses
  switch i32 %i.d, label %bb.b [
    i32 3, label %.preheader234
    i32 5, label %.preheader236
  ]

.preheader236:                                    ; preds = %bb.a
  %i.h = mul i32 %4, %3                           ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader236
  %i.j = shl nsw i32 %4, 1
  %i.k = mul nsw i32 %4, 3
  %i.l = shl nsw i32 %4, 2
  %i.m = sext i32 %4 to i64                       ; 2 uses
  %i.n = sext i32 %i.j to i64                     ; 2 uses
  %i.o = sext i32 %i.k to i64                     ; 2 uses
  %i.p = sext i32 %i.l to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.m ; 4 uses
  %invariant.gep362 = getelementptr [4 x i8], ptr %1, i64 %i.n ; 4 uses
  %invariant.gep364 = getelementptr [4 x i8], ptr %1, i64 %i.o ; 4 uses
  %invariant.gep366 = getelementptr [4 x i8], ptr %1, i64 %i.p ; 4 uses
  %min.iters.check = icmp ult i32 %i.h, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %6 = sub i64 %i.b, %i.a                         ; 2 uses
  %7 = shl nsw i64 %i.p, 2
  %i.q = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.q, -32
  %i.r = shl nsw i64 %i.o, 2
  %i.s = sub i64 %i.r, %6
  %diff.check393 = icmp ugt i64 %i.s, -32
  %conflict.rdx = or i1 %diff.check, %diff.check393
  %8 = sub i64 %i.b, %i.a                         ; 2 uses
  %i.t = shl nsw i64 %i.n, 2
  %i.u = sub i64 %i.t, %8
  %diff.check394 = icmp ugt i64 %i.u, -32
  %conflict.rdx395 = or i1 %conflict.rdx, %diff.check394
  %i.v = shl nsw i64 %i.m, 2
  %i.w = sub i64 %i.v, %8
  %diff.check396 = icmp ugt i64 %i.w, -32
  %conflict.rdx397 = or i1 %conflict.rdx395, %diff.check396
  %9 = sub i64 %i.a, %i.b
  %diff.check398 = icmp ugt i64 %9, -32
  %conflict.rdx399 = or i1 %conflict.rdx397, %diff.check398
  br i1 %conflict.rdx399, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !13
  %wide.load400 = load <4 x i32>, ptr %i.y, align 4, !tbaa !13
  %i.z = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.z, align 4, !tbaa !13
  %wide.load402 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !13
  %i.ab = add nsw <4 x i32> %wide.load401, %wide.load
  %i.ac = add nsw <4 x i32> %wide.load402, %wide.load400
  %i.ad = getelementptr [4 x i8], ptr %invariant.gep362, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %wide.load403 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !13
  %wide.load404 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !13
  %i.af = add nsw <4 x i32> %i.ab, %wide.load403
  %i.ag = add nsw <4 x i32> %i.ac, %wide.load404
  %i.ah = getelementptr [4 x i8], ptr %invariant.gep364, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %wide.load405 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !13
  %wide.load406 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !13
  %i.aj = add nsw <4 x i32> %i.af, %wide.load405
  %i.ak = add nsw <4 x i32> %i.ag, %wide.load406
  %i.al = getelementptr [4 x i8], ptr %invariant.gep366, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %wide.load407 = load <4 x i32>, ptr %i.al, align 4, !tbaa !13
  %wide.load408 = load <4 x i32>, ptr %i.am, align 4, !tbaa !13
  %i.an = add nsw <4 x i32> %i.aj, %wide.load407
  %i.ao = add nsw <4 x i32> %i.ak, %wide.load408
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %i.an, ptr %i.ap, align 4, !tbaa !13
  store <4 x i32> %i.ao, ptr %i.aq, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !595

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.at = load i32, ptr %i.as, align 4, !tbaa !13
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.au = load i32, ptr %gep.prol, align 4, !tbaa !13
  %i.av = add nsw i32 %i.au, %i.at
  %gep363.prol = getelementptr [4 x i8], ptr %invariant.gep362, i64 %indvars.iv.ph
  %i.aw = load i32, ptr %gep363.prol, align 4, !tbaa !13
  %i.ax = add nsw i32 %i.av, %i.aw
  %gep365.prol = getelementptr [4 x i8], ptr %invariant.gep364, i64 %indvars.iv.ph
  %i.ay = load i32, ptr %gep365.prol, align 4, !tbaa !13
  %i.az = add nsw i32 %i.ax, %i.ay
  %gep367.prol = getelementptr [4 x i8], ptr %invariant.gep366, i64 %indvars.iv.ph
  %i.ba = load i32, ptr %gep367.prol, align 4, !tbaa !13
  %i.bb = add nsw i32 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !13
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bd = add nsw i64 %wide.trip.count, -1
  %i.be = icmp eq i64 %indvars.iv.ph, %i.bd
  br i1 %i.be, label %.loopexit, label %scalar.ph

.preheader234:                                    ; preds = %bb.a
  %i.bf = mul i32 %4, %3                          ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %.preheader234
  %i.bh = shl nsw i32 %4, 1
  %i.bi = sext i32 %4 to i64                      ; 2 uses
  %i.bj = sext i32 %i.bh to i64                   ; 2 uses
  %wide.trip.count311 = zext nneg i32 %i.bf to i64 ; 5 uses
  %invariant.gep368 = getelementptr [4 x i8], ptr %1, i64 %i.bi ; 4 uses
  %invariant.gep370 = getelementptr [4 x i8], ptr %1, i64 %i.bj ; 4 uses
  %min.iters.check416 = icmp ult i32 %i.bf, 20
  br i1 %min.iters.check416, label %scalar.ph415.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph240
  %10 = sub i64 %i.b, %i.a                        ; 2 uses
  %11 = shl nsw i64 %i.bj, 2
  %i.bk = sub i64 %11, %10
  %diff.check410 = icmp ugt i64 %i.bk, -32
  %i.bl = shl nsw i64 %i.bi, 2
  %i.bm = sub i64 %i.bl, %10
  %diff.check411 = icmp ugt i64 %i.bm, -32
  %conflict.rdx412 = or i1 %diff.check410, %diff.check411
  %12 = sub i64 %i.a, %i.b
  %diff.check413 = icmp ugt i64 %12, -32
  %conflict.rdx414 = or i1 %conflict.rdx412, %diff.check413
  br i1 %conflict.rdx414, label %scalar.ph415.preheader, label %vector.ph417

vector.ph417:                                     ; preds = %vector.memcheck409
  %n.vec418 = and i64 %wide.trip.count311, 2147483640 ; 3 uses
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph417
  %index420 = phi i64 [ 0, %vector.ph417 ], [ %index.next427, %vector.body419 ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index420 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load421 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !13
  %wide.load422 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !13
  %i.bp = getelementptr [4 x i8], ptr %invariant.gep368, i64 %index420 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %wide.load423 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !13
  %wide.load424 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !13
  %i.br = add nsw <4 x i32> %wide.load423, %wide.load421
  %i.bs = add nsw <4 x i32> %wide.load424, %wide.load422
  %i.bt = getelementptr [4 x i8], ptr %invariant.gep370, i64 %index420 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %wide.load425 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !13
  %wide.load426 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !13
  %i.bv = add nsw <4 x i32> %i.br, %wide.load425
  %i.bw = add nsw <4 x i32> %i.bs, %wide.load426
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index420 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <4 x i32> %i.bv, ptr %i.bx, align 4, !tbaa !13
  store <4 x i32> %i.bw, ptr %i.by, align 4, !tbaa !13
  %index.next427 = add nuw i64 %index420, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next427, %n.vec418
  br i1 %i.bz, label %middle.block428, label %vector.body419, !llvm.loop !596

middle.block428:                                  ; preds = %vector.body419
  %cmp.n429 = icmp eq i64 %n.vec418, %wide.trip.count311
  br i1 %cmp.n429, label %.loopexit, label %scalar.ph415.preheader

scalar.ph415.preheader:                           ; preds = %vector.memcheck409, %.lr.ph240, %middle.block428
  %indvars.iv308.ph = phi i64 [ 0, %vector.memcheck409 ], [ 0, %.lr.ph240 ], [ %n.vec418, %middle.block428 ] ; 7 uses
  %xtraiter456 = and i64 %wide.trip.count311, 1
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %scalar.ph415.prol.loopexit, label %scalar.ph415.prol

scalar.ph415.prol:                                ; preds = %scalar.ph415.preheader
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv308.ph
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !13
  %gep369.prol = getelementptr [4 x i8], ptr %invariant.gep368, i64 %indvars.iv308.ph
  %i.cc = load i32, ptr %gep369.prol, align 4, !tbaa !13
  %i.cd = add nsw i32 %i.cc, %i.cb
  %gep371.prol = getelementptr [4 x i8], ptr %invariant.gep370, i64 %indvars.iv308.ph
  %i.ce = load i32, ptr %gep371.prol, align 4, !tbaa !13
  %i.cf = add nsw i32 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv308.ph
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !13
  %indvars.iv.next309.prol = or disjoint i64 %indvars.iv308.ph, 1
  br label %scalar.ph415.prol.loopexit

scalar.ph415.prol.loopexit:                       ; preds = %scalar.ph415.prol, %scalar.ph415.preheader
  %indvars.iv308.unr = phi i64 [ %indvars.iv308.ph, %scalar.ph415.preheader ], [ %indvars.iv.next309.prol, %scalar.ph415.prol ]
  %i.ch = add nsw i64 %wide.trip.count311, -1
  %i.ci = icmp eq i64 %indvars.iv308.ph, %i.ch
  br i1 %i.ci, label %.loopexit, label %scalar.ph415

scalar.ph415:                                     ; preds = %scalar.ph415.prol.loopexit, %scalar.ph415
  %indvars.iv308 = phi i64 [ %indvars.iv.next309.1, %scalar.ph415 ], [ %indvars.iv308.unr, %scalar.ph415.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv308
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !13
  %gep369 = getelementptr [4 x i8], ptr %invariant.gep368, i64 %indvars.iv308
  %i.cl = load i32, ptr %gep369, align 4, !tbaa !13
  %i.cm = add nsw i32 %i.cl, %i.ck
  %gep371 = getelementptr [4 x i8], ptr %invariant.gep370, i64 %indvars.iv308
  %i.cn = load i32, ptr %gep371, align 4, !tbaa !13
  %i.co = add nsw i32 %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv308
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !13
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next309
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !13
  %gep369.1 = getelementptr [4 x i8], ptr %invariant.gep368, i64 %indvars.iv.next309
  %i.cs = load i32, ptr %gep369.1, align 4, !tbaa !13
  %i.ct = add nsw i32 %i.cs, %i.cr
  %gep371.1 = getelementptr [4 x i8], ptr %invariant.gep370, i64 %indvars.iv.next309
  %i.cu = load i32, ptr %gep371.1, align 4, !tbaa !13
  %i.cv = add nsw i32 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next309
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !13
  %indvars.iv.next309.1 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %exitcond312.not.1 = icmp eq i64 %indvars.iv.next309.1, %wide.trip.count311
  br i1 %exitcond312.not.1, label %.loopexit, label %scalar.ph415, !llvm.loop !597

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !13
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cz = load i32, ptr %gep, align 4, !tbaa !13
  %i.da = add nsw i32 %i.cz, %i.cy
  %gep363 = getelementptr [4 x i8], ptr %invariant.gep362, i64 %indvars.iv
  %i.db = load i32, ptr %gep363, align 4, !tbaa !13
  %i.dc = add nsw i32 %i.da, %i.db
  %gep365 = getelementptr [4 x i8], ptr %invariant.gep364, i64 %indvars.iv
  %i.dd = load i32, ptr %gep365, align 4, !tbaa !13
  %i.de = add nsw i32 %i.dc, %i.dd
  %gep367 = getelementptr [4 x i8], ptr %invariant.gep366, i64 %indvars.iv
  %i.df = load i32, ptr %gep367, align 4, !tbaa !13
  %i.dg = add nsw i32 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !13
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dk = load i32, ptr %gep.1, align 4, !tbaa !13
  %i.dl = add nsw i32 %i.dk, %i.dj
  %gep363.1 = getelementptr [4 x i8], ptr %invariant.gep362, i64 %indvars.iv.next
  %i.dm = load i32, ptr %gep363.1, align 4, !tbaa !13
  %i.dn = add nsw i32 %i.dl, %i.dm
  %gep365.1 = getelementptr [4 x i8], ptr %invariant.gep364, i64 %indvars.iv.next
  %i.do = load i32, ptr %gep365.1, align 4, !tbaa !13
  %i.dp = add nsw i32 %i.dn, %i.do
  %gep367.1 = getelementptr [4 x i8], ptr %invariant.gep366, i64 %indvars.iv.next
  %i.dq = load i32, ptr %gep367.1, align 4, !tbaa !13
  %i.dr = add nsw i32 %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !598

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.dt = icmp sgt i32 %i.e, 0
  br i1 %i.dt, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.du = zext nneg i32 %i.e to i64
  %i.dv = add nsw i64 %i.du, -1
  %i.dw = lshr i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %xtraiter458 = and i64 %i.dx, 7                 ; 3 uses
  %i.dy = icmp ult i32 %i.e, 29
  br i1 %i.dy, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.dx, 9223372036854775800
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.dz = icmp sgt i32 %i.e, 0
  br i1 %i.dz, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.ea = zext nneg i32 %i.e to i64
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.eb = icmp sgt i32 %i.e, 0
  br i1 %i.eb, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.e to i64 ; 3 uses
  %min.iters.check432 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check432, label %.lr.ph274.preheader445, label %vector.ph433

vector.ph433:                                     ; preds = %.lr.ph274.preheader
  %n.vec434 = and i64 %wide.trip.count328, 2147483640 ; 3 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next440, %vector.body435 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph433 ], [ %i.ee, %vector.body435 ]
  %vec.phi437 = phi <4 x i32> [ zeroinitializer, %vector.ph433 ], [ %i.ef, %vector.body435 ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index436 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load438 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !13
  %wide.load439 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !13
  %i.ee = add <4 x i32> %wide.load438, %vec.phi   ; 2 uses
  %i.ef = add <4 x i32> %wide.load439, %vec.phi437 ; 2 uses
  %index.next440 = add nuw i64 %index436, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next440, %n.vec434
  br i1 %i.eg, label %middle.block441, label %vector.body435, !llvm.loop !599

middle.block441:                                  ; preds = %vector.body435
  %bin.rdx = add <4 x i32> %i.ef, %i.ee
  %i.eh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n442 = icmp eq i64 %n.vec434, %wide.trip.count328
  br i1 %cmp.n442, label %._crit_edge275, label %.lr.ph274.preheader445

.lr.ph274.preheader445:                           ; preds = %.lr.ph274.preheader, %middle.block441
  %indvars.iv325.ph = phi i64 [ 0, %.lr.ph274.preheader ], [ %n.vec434, %middle.block441 ]
  %.0214273.ph = phi i32 [ 0, %.lr.ph274.preheader ], [ %i.eh, %middle.block441 ]
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.ei = icmp sgt i32 %4, 0
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIfdEclEPKhPhii:bb.a

.lr.ph289.preheader:                              ; preds = %._crit_edge284
  %invariant.gep378 = getelementptr [4 x i8], ptr %.0220291, i64 %i.cr
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %.lr.ph289
  %indvars.iv338 = phi i64 [ 0, %.lr.ph289.preheader ], [ %indvars.iv.next339, %.lr.ph289 ] ; 3 uses
  %.1287 = phi double [ %.0.lcssa, %.lr.ph289.preheader ], [ %i.ih, %.lr.ph289 ]
  %gep379 = getelementptr [4 x i8], ptr %invariant.gep378, i64 %indvars.iv338
  %i.ib = load float, ptr %gep379, align 4, !tbaa !120
  %i.ic = fpext float %i.ib to double
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.0220291, i64 %indvars.iv338
  %i.ie = load float, ptr %i.id, align 4, !tbaa !120
  %i.if = fpext float %i.ie to double
  %i.ig = fsub double %i.ic, %i.if
  %i.ih = fadd double %.1287, %i.ig               ; 2 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, %i.cq ; 3 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.0219292, i64 %indvars.iv.next339
  store double %i.ih, ptr %i.ii, align 8, !tbaa !41
  %i.ij = icmp samesign ult i64 %indvars.iv.next339, %i.cs
  br i1 %i.ij, label %.lr.ph289, label %._crit_edge290, !llvm.loop !638

._crit_edge290:                                   ; preds = %.lr.ph289, %._crit_edge284
  %i.ik = add nuw nsw i32 %.0216293, 1            ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0220291, i64 4
  %i.im = getelementptr inbounds nuw i8, ptr %.0219292, i64 8
  %exitcond341.not = icmp eq i32 %i.ik, %4
  br i1 %exitcond341.not, label %.loopexit, label %.preheader, !llvm.loop !639

.loopexit.loopexit413.unr-lcssa:                  ; preds = %.lr.ph280
  %lcmp.mod436.not = icmp eq i64 %xtraiter434, 0
  br i1 %lcmp.mod436.not, label %.loopexit, label %.lr.ph280.epil.preheader

.lr.ph280.epil.preheader:                         ; preds = %.loopexit.loopexit413.unr-lcssa, %.lr.ph280.preheader
  %indvars.iv330.epil.init = phi i64 [ 0, %.lr.ph280.preheader ], [ %indvars.iv.next331.1, %.loopexit.loopexit413.unr-lcssa ] ; 3 uses
  %.1215278.epil.init = phi double [ %.0214.lcssa, %.lr.ph280.preheader ], [ %i.eh, %.loopexit.loopexit413.unr-lcssa ]
  %lcmp.mod437 = trunc i32 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod437)
  %gep377.epil = getelementptr [4 x i8], ptr %invariant.gep376, i64 %indvars.iv330.epil.init
  %i.in = load float, ptr %gep377.epil, align 4, !tbaa !120
  %i.io = fpext float %i.in to double
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv330.epil.init
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !120
  %i.ir = fpext float %i.iq to double
  %i.is = fsub double %i.io, %i.ir
  %i.it = fadd double %.1215278.epil.init, %i.is
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv330.epil.init
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store double %i.it, ptr %i.iv, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph397, %.lr.ph256, %.lr.ph271, %.lr.ph280.epil.preheader, %.loopexit.loopexit413.unr-lcssa, %._crit_edge290, %middle.block, %middle.block410, %.preheader236, %.preheader234, %._crit_edge, %._crit_edge262, %._crit_edge275, %.preheader227
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !38
  %.not.i = icmp eq i32 %i.ix, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_16RowSumIfdE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !23
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !3
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !3
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #23, !inline_history !640
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN2cv13BaseRowFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEclEPKhPhii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 5 uses
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEclEPKhPhiiE24__cv_trace_location_fn82)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = mul i32 %i.d, %4                         ; 14 uses
  %i.f = add i32 %3, -1
  %i.g = mul i32 %i.f, %4                         ; 10 uses
  switch i32 %i.d, label %bb.b [
    i32 3, label %.preheader234
    i32 5, label %.preheader236
  ]

.preheader236:                                    ; preds = %bb.a
  %i.h = mul i32 %4, %3                           ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader236
  %i.j = shl nsw i32 %4, 1
  %i.k = mul nsw i32 %4, 3
  %i.l = shl nsw i32 %4, 2
  %i.m = sext i32 %4 to i64                       ; 2 uses
  %i.n = sext i32 %i.j to i64                     ; 2 uses
  %i.o = sext i32 %i.k to i64                     ; 2 uses
  %i.p = sext i32 %i.l to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.m ; 4 uses
  %invariant.gep362 = getelementptr [8 x i8], ptr %1, i64 %i.n ; 4 uses
  %invariant.gep364 = getelementptr [8 x i8], ptr %1, i64 %i.o ; 4 uses
  %invariant.gep366 = getelementptr [8 x i8], ptr %1, i64 %i.p ; 4 uses
  %min.iters.check = icmp ult i32 %i.h, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %6 = sub i64 %i.b, %i.a                         ; 2 uses
  %7 = shl nsw i64 %i.p, 3
  %i.q = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.q, -32
  %i.r = shl nsw i64 %i.o, 3
  %i.s = sub i64 %i.r, %6
  %diff.check393 = icmp ugt i64 %i.s, -32
  %conflict.rdx = or i1 %diff.check, %diff.check393
  %8 = sub i64 %i.b, %i.a                         ; 2 uses
  %i.t = shl nsw i64 %i.n, 3
  %i.u = sub i64 %i.t, %8
  %diff.check394 = icmp ugt i64 %i.u, -32
  %conflict.rdx395 = or i1 %conflict.rdx, %diff.check394
  %i.v = shl nsw i64 %i.m, 3
  %i.w = sub i64 %i.v, %8
  %diff.check396 = icmp ugt i64 %i.w, -32
  %conflict.rdx397 = or i1 %conflict.rdx395, %diff.check396
  %9 = sub i64 %i.a, %i.b
  %diff.check398 = icmp ugt i64 %9, -32
  %conflict.rdx399 = or i1 %conflict.rdx397, %diff.check398
  br i1 %conflict.rdx399, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x double>, ptr %i.x, align 8, !tbaa !41
  %wide.load400 = load <2 x double>, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %wide.load401 = load <2 x double>, ptr %i.z, align 8, !tbaa !41
  %wide.load402 = load <2 x double>, ptr %i.aa, align 8, !tbaa !41
  %i.ab = fadd <2 x double> %wide.load, %wide.load401
  %i.ac = fadd <2 x double> %wide.load400, %wide.load402
  %i.ad = getelementptr [8 x i8], ptr %invariant.gep362, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %wide.load403 = load <2 x double>, ptr %i.ad, align 8, !tbaa !41
  %wide.load404 = load <2 x double>, ptr %i.ae, align 8, !tbaa !41
  %i.af = fadd <2 x double> %i.ab, %wide.load403
  %i.ag = fadd <2 x double> %i.ac, %wide.load404
  %i.ah = getelementptr [8 x i8], ptr %invariant.gep364, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %wide.load405 = load <2 x double>, ptr %i.ah, align 8, !tbaa !41
  %wide.load406 = load <2 x double>, ptr %i.ai, align 8, !tbaa !41
  %i.aj = fadd <2 x double> %i.af, %wide.load405
  %i.ak = fadd <2 x double> %i.ag, %wide.load406
  %i.al = getelementptr [8 x i8], ptr %invariant.gep366, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %wide.load407 = load <2 x double>, ptr %i.al, align 8, !tbaa !41
  %wide.load408 = load <2 x double>, ptr %i.am, align 8, !tbaa !41
  %i.an = fadd <2 x double> %i.aj, %wide.load407
  %i.ao = fadd <2 x double> %i.ak, %wide.load408
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %i.an, ptr %i.ap, align 8, !tbaa !41
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !641

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.ph
  %i.at = load double, ptr %i.as, align 8, !tbaa !41
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.au = load double, ptr %gep.prol, align 8, !tbaa !41
  %i.av = fadd double %i.at, %i.au
  %gep363.prol = getelementptr [8 x i8], ptr %invariant.gep362, i64 %indvars.iv.ph
  %i.aw = load double, ptr %gep363.prol, align 8, !tbaa !41
  %i.ax = fadd double %i.av, %i.aw
  %gep365.prol = getelementptr [8 x i8], ptr %invariant.gep364, i64 %indvars.iv.ph
  %i.ay = load double, ptr %gep365.prol, align 8, !tbaa !41
  %i.az = fadd double %i.ax, %i.ay
  %gep367.prol = getelementptr [8 x i8], ptr %invariant.gep366, i64 %indvars.iv.ph
  %i.ba = load double, ptr %gep367.prol, align 8, !tbaa !41
  %i.bb = fadd double %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph
  store double %i.bb, ptr %i.bc, align 8, !tbaa !41
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bd = add nsw i64 %wide.trip.count, -1
  %i.be = icmp eq i64 %indvars.iv.ph, %i.bd
  br i1 %i.be, label %.loopexit, label %scalar.ph

.preheader234:                                    ; preds = %bb.a
  %i.bf = mul i32 %4, %3                          ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %.preheader234
  %i.bh = shl nsw i32 %4, 1
  %i.bi = sext i32 %4 to i64                      ; 2 uses
  %i.bj = sext i32 %i.bh to i64                   ; 2 uses
  %wide.trip.count311 = zext nneg i32 %i.bf to i64 ; 5 uses
  %invariant.gep368 = getelementptr [8 x i8], ptr %1, i64 %i.bi ; 4 uses
  %invariant.gep370 = getelementptr [8 x i8], ptr %1, i64 %i.bj ; 4 uses
  %min.iters.check416 = icmp ult i32 %i.bf, 14
  br i1 %min.iters.check416, label %scalar.ph415.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph240
  %10 = sub i64 %i.b, %i.a                        ; 2 uses
  %11 = shl nsw i64 %i.bj, 3
  %i.bk = sub i64 %11, %10
  %diff.check410 = icmp ugt i64 %i.bk, -32
  %i.bl = shl nsw i64 %i.bi, 3
  %i.bm = sub i64 %i.bl, %10
  %diff.check411 = icmp ugt i64 %i.bm, -32
  %conflict.rdx412 = or i1 %diff.check410, %diff.check411
  %12 = sub i64 %i.a, %i.b
  %diff.check413 = icmp ugt i64 %12, -32
  %conflict.rdx414 = or i1 %conflict.rdx412, %diff.check413
  br i1 %conflict.rdx414, label %scalar.ph415.preheader, label %vector.ph417

vector.ph417:                                     ; preds = %vector.memcheck409
  %n.vec418 = and i64 %wide.trip.count311, 2147483644 ; 3 uses
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph417
  %index420 = phi i64 [ 0, %vector.ph417 ], [ %index.next427, %vector.body419 ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index420 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load421 = load <2 x double>, ptr %i.bn, align 8, !tbaa !41
  %wide.load422 = load <2 x double>, ptr %i.bo, align 8, !tbaa !41
  %i.bp = getelementptr [8 x i8], ptr %invariant.gep368, i64 %index420 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %wide.load423 = load <2 x double>, ptr %i.bp, align 8, !tbaa !41
  %wide.load424 = load <2 x double>, ptr %i.bq, align 8, !tbaa !41
  %i.br = fadd <2 x double> %wide.load421, %wide.load423
  %i.bs = fadd <2 x double> %wide.load422, %wide.load424
  %i.bt = getelementptr [8 x i8], ptr %invariant.gep370, i64 %index420 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %wide.load425 = load <2 x double>, ptr %i.bt, align 8, !tbaa !41
  %wide.load426 = load <2 x double>, ptr %i.bu, align 8, !tbaa !41
  %i.bv = fadd <2 x double> %i.br, %wide.load425
  %i.bw = fadd <2 x double> %i.bs, %wide.load426
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index420 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x double> %i.bv, ptr %i.bx, align 8, !tbaa !41
  store <2 x double> %i.bw, ptr %i.by, align 8, !tbaa !41
  %index.next427 = add nuw i64 %index420, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next427, %n.vec418
  br i1 %i.bz, label %middle.block428, label %vector.body419, !llvm.loop !642

middle.block428:                                  ; preds = %vector.body419
  %cmp.n429 = icmp eq i64 %n.vec418, %wide.trip.count311
  br i1 %cmp.n429, label %.loopexit, label %scalar.ph415.preheader

scalar.ph415.preheader:                           ; preds = %vector.memcheck409, %.lr.ph240, %middle.block428
  %indvars.iv308.ph = phi i64 [ 0, %vector.memcheck409 ], [ 0, %.lr.ph240 ], [ %n.vec418, %middle.block428 ] ; 7 uses
  %xtraiter441 = and i64 %wide.trip.count311, 1
  %lcmp.mod442.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod442.not, label %scalar.ph415.prol.loopexit, label %scalar.ph415.prol

scalar.ph415.prol:                                ; preds = %scalar.ph415.preheader
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv308.ph
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !41
  %gep369.prol = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv308.ph
  %i.cc = load double, ptr %gep369.prol, align 8, !tbaa !41
  %i.cd = fadd double %i.cb, %i.cc
  %gep371.prol = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv308.ph
  %i.ce = load double, ptr %gep371.prol, align 8, !tbaa !41
  %i.cf = fadd double %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv308.ph
  store double %i.cf, ptr %i.cg, align 8, !tbaa !41
  %indvars.iv.next309.prol = or disjoint i64 %indvars.iv308.ph, 1
  br label %scalar.ph415.prol.loopexit

scalar.ph415.prol.loopexit:                       ; preds = %scalar.ph415.prol, %scalar.ph415.preheader
  %indvars.iv308.unr = phi i64 [ %indvars.iv308.ph, %scalar.ph415.preheader ], [ %indvars.iv.next309.prol, %scalar.ph415.prol ]
  %i.ch = add nsw i64 %wide.trip.count311, -1
  %i.ci = icmp eq i64 %indvars.iv308.ph, %i.ch
  br i1 %i.ci, label %.loopexit, label %scalar.ph415

scalar.ph415:                                     ; preds = %scalar.ph415.prol.loopexit, %scalar.ph415
  %indvars.iv308 = phi i64 [ %indvars.iv.next309.1, %scalar.ph415 ], [ %indvars.iv308.unr, %scalar.ph415.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv308
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !41
  %gep369 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv308
  %i.cl = load double, ptr %gep369, align 8, !tbaa !41
  %i.cm = fadd double %i.ck, %i.cl
  %gep371 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv308
  %i.cn = load double, ptr %gep371, align 8, !tbaa !41
  %i.co = fadd double %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv308
  store double %i.co, ptr %i.cp, align 8, !tbaa !41
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next309
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !41
  %gep369.1 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv.next309
  %i.cs = load double, ptr %gep369.1, align 8, !tbaa !41
  %i.ct = fadd double %i.cr, %i.cs
  %gep371.1 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv.next309
  %i.cu = load double, ptr %gep371.1, align 8, !tbaa !41
  %i.cv = fadd double %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next309
  store double %i.cv, ptr %i.cw, align 8, !tbaa !41
  %indvars.iv.next309.1 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %exitcond312.not.1 = icmp eq i64 %indvars.iv.next309.1, %wide.trip.count311
  br i1 %exitcond312.not.1, label %.loopexit, label %scalar.ph415, !llvm.loop !643

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !41
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cz = load double, ptr %gep, align 8, !tbaa !41
  %i.da = fadd double %i.cy, %i.cz
  %gep363 = getelementptr [8 x i8], ptr %invariant.gep362, i64 %indvars.iv
  %i.db = load double, ptr %gep363, align 8, !tbaa !41
  %i.dc = fadd double %i.da, %i.db
  %gep365 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %indvars.iv
  %i.dd = load double, ptr %gep365, align 8, !tbaa !41
  %i.de = fadd double %i.dc, %i.dd
  %gep367 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %indvars.iv
  %i.df = load double, ptr %gep367, align 8, !tbaa !41
  %i.dg = fadd double %i.de, %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.dg, ptr %i.dh, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.dj = load double, ptr %i.di, align 8, !tbaa !41
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dk = load double, ptr %gep.1, align 8, !tbaa !41
  %i.dl = fadd double %i.dj, %i.dk
  %gep363.1 = getelementptr [8 x i8], ptr %invariant.gep362, i64 %indvars.iv.next
  %i.dm = load double, ptr %gep363.1, align 8, !tbaa !41
  %i.dn = fadd double %i.dl, %i.dm
  %gep365.1 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %indvars.iv.next
  %i.do = load double, ptr %gep365.1, align 8, !tbaa !41
  %i.dp = fadd double %i.dn, %i.do
  %gep367.1 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %indvars.iv.next
  %i.dq = load double, ptr %gep367.1, align 8, !tbaa !41
  %i.dr = fadd double %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store double %i.dr, ptr %i.ds, align 8, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !644

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.dt = icmp sgt i32 %i.e, 0
  br i1 %i.dt, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.du = zext nneg i32 %i.e to i64
  %i.dv = add nsw i64 %i.du, -1
  %i.dw = lshr i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %xtraiter443 = and i64 %i.dx, 3                 ; 3 uses
  %i.dy = icmp ult i32 %i.e, 13
  br i1 %i.dy, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.dx, 9223372036854775804
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.dz = icmp sgt i32 %i.e, 0
  br i1 %i.dz, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.ea = zext nneg i32 %i.e to i64
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.eb = icmp sgt i32 %i.e, 0
  br i1 %i.eb, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.e to i64 ; 2 uses
  %xtraiter460 = and i64 %wide.trip.count328, 7   ; 3 uses
  %i.ec = icmp ult i32 %i.e, 8
  br i1 %i.ec, label %.lr.ph274.epil.preheader, label %.lr.ph274.preheader.new

.lr.ph274.preheader.new:                          ; preds = %.lr.ph274.preheader
  %unroll_iter465 = and i64 %wide.trip.count328, 2147483640
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.ed = icmp sgt i32 %4, 0
  br i1 %i.ed, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.ee = icmp sgt i32 %i.e, 0
  %i.ef = icmp sgt i32 %i.g, 0
  %i.eg = zext nneg i32 %4 to i64
  %i.eh = zext nneg i32 %4 to i64
  %i.ei = sext i32 %i.e to i64
  %i.ej = zext nneg i32 %i.g to i64
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274, %.lr.ph274.preheader.new
  %indvars.iv325 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %indvars.iv.next326.7, %.lr.ph274 ] ; 9 uses
  %.0214273 = phi double [ 0.000000e+00, %.lr.ph274.preheader.new ], [ %i.fo, %.lr.ph274 ]
  %niter466 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %niter466.next.7, %.lr.ph274 ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.el = load double, ptr %i.ek, align 8, !tbaa !41
  %i.em = fadd double %.0214273, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !41
  %i.eq = fadd double %i.em, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
end_hunk_1
