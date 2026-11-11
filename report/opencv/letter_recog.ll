Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/letter_recog?download=true
inline.NumInlined: 716
inline.NumDeleted: 257
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt12__shared_ptrIN2cv2ml9TrainDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !61
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL24test_and_save_classifierRKN2cv3PtrINS_2ml9StatModelEEERKNS_3MatES8_iiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, i32 noundef %3, i32 noundef range(i32 0, 66) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Range", align 4         ; 5 uses
  %7 = alloca %"class.cv::Range", align 8         ; 4 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = uitofp nneg i32 %4 to float
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.n = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK2cv3Mat2atIiEERKT_i.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2cv3Mat2atIiEERKT_i.exit ] ; 6 uses
  %.03040 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %_ZNK2cv3Mat2atIiEERKT_i.exit ] ; 2 uses
  %.03139 = phi double [ 0.000000e+00, %.lr.ph ], [ %.132, %_ZNK2cv3Mat2atIiEERKT_i.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !192
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  store i32 %i.o, ptr %6, align 4, !tbaa !90, !noalias !192
  %i.p = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.p, ptr %i.d, align 4, !tbaa !91, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !192
  store i64 9223372034707292160, ptr %7, align 8, !noalias !192
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !192
  %i.q = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i32 0, ptr %i.e, align 8, !tbaa !67
  store i32 0, ptr %i.f, align 4, !tbaa !68
  store i32 16842752, ptr %9, align 8, !tbaa !70
  store ptr %8, ptr %i.g, align 8, !tbaa !71
  %i.r = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef float %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i32 noundef 0)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.w = fadd float %i.v, %i.h
  %i.x = load i32, ptr %i.i, align 4, !tbaa !74
  %i.y = icmp slt i32 %i.x, 2
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %2, align 8, !tbaa !76
  %i.ac = and i32 %i.ab, 16384
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = load i32, ptr %i.j, align 8
  %i.af = icmp eq i32 %i.ae, 1
  %or.cond.i = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !77  ; 4 uses
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.al = load i64, ptr %i.m, align 8, !tbaa !19
  %i.am = mul i64 %i.al, %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

bb.j:                                             ; preds = %bb.h
  %i.ao = sdiv i32 %i.o, %i.ai                    ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %i.ai                ; 0 uses
  %.recomposed = srem i32 %i.o, %i.ai
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.ar = load i64, ptr %i.m, align 8, !tbaa !19
  %i.as = sext i32 %i.ao to i64
  %i.at = mul i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = sext i32 %.recomposed to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

_ZNK2cv3Mat2atIiEERKT_i.exit:                     ; preds = %bb.e, %bb.g, %bb.i, %bb.j
  %.0.i = phi ptr [ %i.aa, %bb.e ], [ %i.ah, %bb.g ], [ %i.an, %bb.i ], [ %i.aw, %bb.j ]
  %i.ax = load i32, ptr %.0.i, align 4, !tbaa !58
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fsub float %i.w, %i.ay
  %i.ba = call noundef float @llvm.fabs.f32(float %i.az)
  %i.bb = fcmp ole float %i.ba, f0x34000000
  %i.bc = select i1 %i.bb, float 1.000000e+00, float 0.000000e+00
  %i.bd = icmp slt i64 %indvars.iv, %i.n          ; 2 uses
  %i.be = fpext float %i.bc to double             ; 2 uses
  %i.bf = fadd double %.03139, %i.be
  %i.bg = fadd double %.03040, %i.be
  %.132 = select i1 %i.bd, double %i.bf, double %.03139 ; 2 uses
  %.1 = select i1 %i.bd, double %.03040, double %i.bg ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !191

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  resume { ptr, i32 } %i.bh

._crit_edge.loopexit:                             ; preds = %_ZNK2cv3Mat2atIiEERKT_i.exit
  %i.bi = insertelement <2 x double> poison, double %.1, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %.132, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bk = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.bj, %._crit_edge.loopexit ]
  %i.bl = sub nsw i32 %i.b, %3
  %i.bm = icmp sgt i32 %3, 0
  %10 = sitofp i32 %i.bl to double
  %11 = uitofp nneg i32 %3 to double
  %12 = insertelement <2 x double> poison, double %10, i64 0
  %13 = insertelement <2 x double> %12, double %11, i64 1
  %i.bn = fdiv <2 x double> %i.bk, %13
  %i.bo = fmul <2 x double> %i.bn, splat (double 1.000000e+02) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 1
  %i.bq = select i1 %i.bm, double %i.bp, double 1.000000e+02
  %i.br = extractelement <2 x double> %i.bo, i64 0
  %i.bs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, double noundef %i.bq, double noundef %i.br) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !17
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bw = load ptr, ptr %0, align 8, !tbaa !65    ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv2ml9StatModelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !61
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::Scalar_") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4loadINS_2ml6RTreesEEENS_3PtrIT_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_(ptr dead_on_unwind noalias writable sret(%"struct.cv::Ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::FileStorage", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::FileNode", align 8      ; 7 uses
  %8 = alloca %"struct.cv::Ptr", align 16         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17
  store i8 0, ptr %i.a, align 8, !tbaa !18
  invoke void @_ZN2cv11FileStorageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.g = invoke noundef zeroext i1 @_ZNK2cv11FileStorage8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.g, label %bb.k, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.am

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.27, i32 noundef 3217) #20
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
end_hunk_0
