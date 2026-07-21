inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZSt28__throw_bad_array_new_lengthv

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25, !inline_history !93
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !96
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererC2ERSt10shared_ptrIKNS_11Lut3DOpDataEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(48) %i.f), !inline_history !97 ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !98
  %i.k = uitofp i64 %i.j to float
  %i.l = fadd float %i.k, -1.000000e+00
  store float %i.l, ptr %i.c, align 8, !tbaa !99
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !100
  tail call void @_ZN16OpenColorIO_v2_58Platform11AlignedFreeEPv(ptr noundef %i.m)
  store i32 4, ptr %i.d, align 4, !tbaa !101
  %i.n = load ptr, ptr %1, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200 ; 3 uses
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !98 ; 3 uses
  %i.p = mul i64 %.val.i, %.val.i
  %i.q = mul i64 %i.p, %.val.i                    ; 3 uses
  %i.r = shl i64 %i.q, 4
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_58Platform13AlignedMallocEmm(i64 noundef %i.r, i64 noundef 16) ; 2 uses
  %i.t = icmp sgt i64 %i.q, 0
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.noexc, %.lr.ph.i.i
  %.02.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ 0, %.noexc ] ; 2 uses
  %.0171.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.s, %.noexc ] ; 5 uses
  %i.u = mul nuw nsw i64 %.02.i.i, 3              ; 3 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u
  %i.x = load float, ptr %i.w, align 4, !tbaa !102
  %i.y = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.x)
  store float %i.y, ptr %.0171.i.i, align 4, !tbaa !102
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !102
  %i.ad = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0171.i.i, i64 4
  store float %i.ad, ptr %i.ae, align 4, !tbaa !102
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.u
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !102
  %i.aj = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0171.i.i, i64 8
  store float %i.aj, ptr %i.ak, align 4, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %.0171.i.i, i64 12
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !102
  %i.am = getelementptr inbounds nuw i8, ptr %.0171.i.i, i64 16
  %i.an = add nuw nsw i64 %.02.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.q
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !103

.loopexit:                                        ; preds = %.lr.ph.i.i, %.noexc
  store ptr %i.s, ptr %i.a, align 8, !tbaa !100
  ret void
}

declare noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv() local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_520applyTetrahedralSSE2EPKfiS1_Pfi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @_ZN16OpenColorIO_v2_519applyTetrahedralAVXEPKfiS1_Pfi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @_ZN16OpenColorIO_v2_520applyTetrahedralAVX2EPKfiS1_Pfi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @_ZN16OpenColorIO_v2_522applyTetrahedralAVX512EPKfiS1_Pfi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  invoke void @_ZN16OpenColorIO_v2_58Platform11AlignedFreeEPv(ptr noundef %i.b)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev.exit unwind label %bb.b, !inline_history !105

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28, !inline_history !105
  unreachable

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp sgt i64 %3, 1
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !98
  %i.i = trunc i64 %i.h to i32
  %i.j = trunc i64 %3 to i32
  tail call void %i.b(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %1, ptr noundef %2, i32 noundef %i.j)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98   ; 2 uses
  %i.m = uitofp i64 %i.l to float
  %i.n = fadd float %i.m, -1.000000e+00           ; 6 uses
  %i.o = icmp sgt i64 %3, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101  ; 8 uses
  %i.s = trunc i64 %i.l to i32                    ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 17 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %.0277 = phi ptr [ %1, %.lr.ph ], [ %i.ko, %bb.o ] ; 5 uses
  %.0263276 = phi ptr [ %2, %.lr.ph ], [ %i.kp, %bb.o ] ; 13 uses
  %.0264275 = phi i64 [ 0, %.lr.ph ], [ %i.kq, %bb.o ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0277, i64 12
  %4 = load float, ptr %i.v, align 4, !tbaa !102
  %i.w = load float, ptr %.0277, align 4, !tbaa !102
  %i.x = load float, ptr %i.p, align 8, !tbaa !99 ; 3 uses
  %5 = fmul float %i.w, %i.x                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0277, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !102
  %i.aa = fmul float %i.x, %i.z                   ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0277, i64 8
  %7 = load float, ptr %6, align 4, !tbaa !102
  %8 = fmul float %i.x, %7                        ; 2 uses
  %9 = fcmp ogt float %5, 0.000000e+00
  %.sroa.speculated2.i = select i1 %9, float %5, float 0.000000e+00 ; 2 uses
  %10 = fcmp olt float %i.n, %.sroa.speculated2.i
  %.sroa.speculated.i = select i1 %10, float %i.n, float %.sroa.speculated2.i ; 3 uses
  %11 = fcmp ogt float %i.aa, 0.000000e+00
  %.sroa.speculated2.i271 = select i1 %11, float %i.aa, float 0.000000e+00 ; 2 uses
  %12 = fcmp olt float %i.n, %.sroa.speculated2.i271
  %.sroa.speculated.i272 = select i1 %12, float %i.n, float %.sroa.speculated2.i271 ; 3 uses
  %13 = fcmp ogt float %8, 0.000000e+00
  %.sroa.speculated2.i273 = select i1 %13, float %8, float 0.000000e+00 ; 2 uses
  %14 = fcmp olt float %i.n, %.sroa.speculated2.i273
  %.sroa.speculated.i274 = select i1 %14, float %i.n, float %.sroa.speculated2.i273 ; 3 uses
  %15 = tail call noundef float @llvm.floor.f32(float %.sroa.speculated.i)
  %16 = fptosi float %15 to i32                   ; 2 uses
  %i.ab = tail call noundef float @llvm.floor.f32(float %.sroa.speculated.i272)
  %17 = fptosi float %i.ab to i32                 ; 3 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %.sroa.speculated.i274)
  %18 = fptosi float %i.ac to i32                 ; 5 uses
  %19 = tail call noundef float @llvm.ceil.f32(float %.sroa.speculated.i)
  %20 = fptosi float %19 to i32
  %i.ad = tail call noundef float @llvm.ceil.f32(float %.sroa.speculated.i272)
  %i.ae = fptosi float %i.ad to i32               ; 2 uses
  %i.af = tail call noundef float @llvm.ceil.f32(float %.sroa.speculated.i274)
  %i.ag = fptosi float %i.af to i32               ; 4 uses
  %21 = sitofp i32 %16 to float
  %22 = fsub float %.sroa.speculated.i, %21       ; 19 uses
  %i.ah = sitofp i32 %17 to float
  %i.ai = fsub float %.sroa.speculated.i272, %i.ah ; 18 uses
  %23 = sitofp i32 %18 to float
  %24 = fsub float %.sroa.speculated.i274, %23    ; 20 uses
  %25 = mul nsw i32 %16, %i.s                     ; 2 uses
  %i.aj = add nsw i32 %25, %17
  %i.ak = mul nsw i32 %i.aj, %i.s                 ; 2 uses
  %i.al = add nsw i32 %i.ak, %18
  %i.am = mul nsw i32 %i.al, %i.r                 ; 3 uses
  %i.an = mul nsw i32 %20, %i.s                   ; 2 uses
  %i.ao = add nsw i32 %i.an, %17
  %i.ap = mul nsw i32 %i.ao, %i.s                 ; 2 uses
  %i.aq = add nsw i32 %i.ap, %18
  %i.ar = mul nsw i32 %i.aq, %i.r                 ; 2 uses
  %i.as = add nsw i32 %25, %i.ae
  %i.at = mul nsw i32 %i.as, %i.s                 ; 2 uses
  %i.au = add nsw i32 %i.at, %18
  %i.av = mul nsw i32 %i.au, %i.r
  %i.aw = add nsw i32 %i.ak, %i.ag
  %i.ax = mul nsw i32 %i.aw, %i.r                 ; 2 uses
  %i.ay = add nsw i32 %i.an, %i.ae
  %i.az = mul nsw i32 %i.ay, %i.s                 ; 2 uses
  %i.ba = add nsw i32 %i.az, %18
  %i.bb = mul nsw i32 %i.ba, %i.r                 ; 2 uses
  %i.bc = add nsw i32 %i.ap, %i.ag
  %i.bd = mul nsw i32 %i.bc, %i.r
  %i.be = add nsw i32 %i.at, %i.ag
  %i.bf = mul nsw i32 %i.be, %i.r                 ; 2 uses
  %i.bg = add nsw i32 %i.az, %i.ag
  %i.bh = mul nsw i32 %i.bg, %i.r                 ; 4 uses
  %i.bi = fcmp ogt float %22, %i.ai
  br i1 %i.bi, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bj = fcmp ogt float %i.ai, %24
  %i.bk = sext i32 %i.am to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bk ; 6 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !102 ; 3 uses
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = fsub float 1.000000e+00, %22            ; 3 uses
  %i.bo = fsub float %22, %i.ai                   ; 3 uses
  %i.bp = sext i32 %i.ar to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bp ; 3 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !102
  %i.bs = fmul float %i.bo, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bm, float %i.bs)
  %i.bu = fsub float %i.ai, %24                   ; 3 uses
  %i.bv = sext i32 %i.bb to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bv ; 3 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !102
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bx, float %i.bt)
  %i.bz = sext i32 %i.bh to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bz ; 3 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !102
  %i.cc = tail call float @llvm.fmuladd.f32(float %24, float %i.cb, float %i.by)
  store float %i.cc, ptr %.0263276, align 4, !tbaa !102
  %i.cd = getelementptr i8, ptr %i.bl, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !102
  %i.cf = getelementptr i8, ptr %i.bq, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !102
  %i.ch = fmul float %i.bo, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.ce, float %i.ch)
  %i.cj = getelementptr i8, ptr %i.bw, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !102
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.ck, float %i.ci)
  %i.cm = getelementptr i8, ptr %i.ca, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !102
  %i.co = tail call float @llvm.fmuladd.f32(float %24, float %i.cn, float %i.cl)
  %i.cp = getelementptr inbounds nuw i8, ptr %.0263276, i64 4
  store float %i.co, ptr %i.cp, align 4, !tbaa !102
  %i.cq = getelementptr i8, ptr %i.bl, i64 8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !102
  %i.cs = getelementptr i8, ptr %i.bq, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !102
  %i.cu = fmul float %i.bo, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.cr, float %i.cu)
  %i.cw = getelementptr i8, ptr %i.bw, i64 8
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !102
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.cx, float %i.cv)
  %i.cz = getelementptr i8, ptr %i.ca, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !102
  %i.db = tail call float @llvm.fmuladd.f32(float %24, float %i.da, float %i.cy)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.dc = fcmp ogt float %22, %24
  %i.dd = sext i32 %i.bd to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.dd ; 4 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !102 ; 2 uses
  %i.dg = sext i32 %i.bh to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.dg ; 4 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !102 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %i.dk = getelementptr i8, ptr %i.de, i64 4      ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dh, i64 4      ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0263276, i64 4 ; 2 uses
  br i1 %i.dc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dn = fsub float 1.000000e+00, %22            ; 3 uses
  %i.do = fsub float %22, %24                     ; 3 uses
  %i.dp = sext i32 %i.ar to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.dp ; 3 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !102
  %i.ds = fmul float %i.do, %i.dr
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.bm, float %i.ds)
  %i.du = fsub float %24, %i.ai                   ; 3 uses
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %i.df, float %i.dt)
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.di, float %i.dv)
  store float %i.dw, ptr %.0263276, align 4, !tbaa !102
  %i.dx = load float, ptr %i.dj, align 4, !tbaa !102
  %i.dy = getelementptr i8, ptr %i.dq, i64 4
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !102
  %i.ea = fmul float %i.do, %i.dz
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.dx, float %i.ea)
  %i.ec = load float, ptr %i.dk, align 4, !tbaa !102
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.du, float %i.ec, float %i.eb)
  %i.ee = load float, ptr %i.dl, align 4, !tbaa !102
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ee, float %i.ed)
  store float %i.ef, ptr %i.dm, align 4, !tbaa !102
  %i.eg = getelementptr i8, ptr %i.bl, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !102
  %i.ei = getelementptr i8, ptr %i.dq, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !102
  %i.ek = fmul float %i.do, %i.ej
  %i.el = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.eh, float %i.ek)
  %i.em = getelementptr i8, ptr %i.de, i64 8
  %i.en = load float, ptr %i.em, align 4, !tbaa !102
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.du, float %i.en, float %i.el)
  %i.ep = getelementptr i8, ptr %i.dh, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !102
  %i.er = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.eq, float %i.eo)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.es = fsub float 1.000000e+00, %24            ; 3 uses
  %i.et = fsub float %24, %22                     ; 3 uses
  %i.eu = sext i32 %i.ax to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.eu ; 3 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !102
  %i.ex = fmul float %i.et, %i.ew
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.es, float %i.bm, float %i.ex)
  %i.ez = fsub float %22, %i.ai                   ; 3 uses
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.df, float %i.ey)
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.di, float %i.fa)
  store float %i.fb, ptr %.0263276, align 4, !tbaa !102
  %i.fc = load float, ptr %i.dj, align 4, !tbaa !102
  %i.fd = getelementptr i8, ptr %i.ev, i64 4
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !102
  %i.ff = fmul float %i.et, %i.fe
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.es, float %i.fc, float %i.ff)
  %i.fh = load float, ptr %i.dk, align 4, !tbaa !102
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.fh, float %i.fg)
  %i.fj = load float, ptr %i.dl, align 4, !tbaa !102
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.fj, float %i.fi)
  store float %i.fk, ptr %i.dm, align 4, !tbaa !102
  %i.fl = getelementptr i8, ptr %i.bl, i64 8
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !102
  %i.fn = getelementptr i8, ptr %i.ev, i64 8
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !102
  %i.fp = fmul float %i.et, %i.fo
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.es, float %i.fm, float %i.fp)
  %i.fr = getelementptr i8, ptr %i.de, i64 8
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !102
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.fs, float %i.fq)
  %i.fu = getelementptr i8, ptr %i.dh, i64 8
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !102
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.fv, float %i.ft)
  br label %bb.o

bb.j:                                             ; preds = %bb.d
  %i.fx = fcmp ogt float %24, %i.ai
  br i1 %i.fx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fy = fsub float 1.000000e+00, %24            ; 3 uses
  %i.fz = sext i32 %i.am to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.fz ; 3 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !102
  %i.gc = fsub float %24, %i.ai                   ; 3 uses
  %i.gd = sext i32 %i.ax to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.gd ; 3 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !102
  %i.gg = fmul float %i.gc, %i.gf
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.gb, float %i.gg)
  %i.gi = fsub float %i.ai, %22                   ; 3 uses
  %i.gj = sext i32 %i.bf to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.gj ; 3 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !102
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.gl, float %i.gh)
  %i.gn = sext i32 %i.bh to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.gn ; 3 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !102
  %i.gq = tail call float @llvm.fmuladd.f32(float %22, float %i.gp, float %i.gm)
  store float %i.gq, ptr %.0263276, align 4, !tbaa !102
  %i.gr = getelementptr i8, ptr %i.ga, i64 4
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !102
  %i.gt = getelementptr i8, ptr %i.ge, i64 4
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !102
  %i.gv = fmul float %i.gc, %i.gu
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.gs, float %i.gv)
  %i.gx = getelementptr i8, ptr %i.gk, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !102
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.gy, float %i.gw)
  %i.ha = getelementptr i8, ptr %i.go, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !102
  %i.hc = tail call float @llvm.fmuladd.f32(float %22, float %i.hb, float %i.gz)
  %i.hd = getelementptr inbounds nuw i8, ptr %.0263276, i64 4
  store float %i.hc, ptr %i.hd, align 4, !tbaa !102
  %i.he = getelementptr i8, ptr %i.ga, i64 8
  %i.hf = load float, ptr %i.he, align 4, !tbaa !102
  %i.hg = getelementptr i8, ptr %i.ge, i64 8
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !102
  %i.hi = fmul float %i.gc, %i.hh
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.hf, float %i.hi)
  %i.hk = getelementptr i8, ptr %i.gk, i64 8
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !102
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.hl, float %i.hj)
  %i.hn = getelementptr i8, ptr %i.go, i64 8
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !102
  %i.hp = tail call float @llvm.fmuladd.f32(float %22, float %i.ho, float %i.hm)
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.hq = fcmp ogt float %24, %22
  %i.hr = fsub float 1.000000e+00, %i.ai          ; 6 uses
  %i.hs = sext i32 %i.am to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.hs ; 3 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !102 ; 2 uses
  %i.hv = sext i32 %i.av to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.hv ; 4 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !102 ; 2 uses
  %i.hy = sext i32 %i.bh to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.hy ; 4 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !102 ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ht, i64 4      ; 2 uses
  %i.ic = getelementptr i8, ptr %i.hw, i64 4      ; 2 uses
  %i.id = getelementptr i8, ptr %i.hz, i64 4      ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0263276, i64 4 ; 2 uses
  %i.if = getelementptr i8, ptr %i.ht, i64 8      ; 2 uses
  br i1 %i.hq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ig = fsub float %i.ai, %24                   ; 3 uses
  %i.ih = fmul float %i.ig, %i.hx
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hu, float %i.ih)
  %i.ij = fsub float %24, %22                     ; 3 uses
  %i.ik = sext i32 %i.bf to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ik ; 3 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !102
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.im, float %i.ii)
  %i.io = tail call float @llvm.fmuladd.f32(float %22, float %i.ia, float %i.in)
  store float %i.io, ptr %.0263276, align 4, !tbaa !102
  %i.ip = load float, ptr %i.ib, align 4, !tbaa !102
  %i.iq = load float, ptr %i.ic, align 4, !tbaa !102
  %i.ir = fmul float %i.ig, %i.iq
  %i.is = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.ip, float %i.ir)
  %i.it = getelementptr i8, ptr %i.il, i64 4
  %i.iu = load float, ptr %i.it, align 4, !tbaa !102
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.iu, float %i.is)
  %i.iw = load float, ptr %i.id, align 4, !tbaa !102
  %i.ix = tail call float @llvm.fmuladd.f32(float %22, float %i.iw, float %i.iv)
  store float %i.ix, ptr %i.ie, align 4, !tbaa !102
  %i.iy = load float, ptr %i.if, align 4, !tbaa !102
  %i.iz = getelementptr i8, ptr %i.hw, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !102
  %i.jb = fmul float %i.ig, %i.ja
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.iy, float %i.jb)
  %i.jd = getelementptr i8, ptr %i.il, i64 8
  %i.je = load float, ptr %i.jd, align 4, !tbaa !102
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.je, float %i.jc)
  %i.jg = getelementptr i8, ptr %i.hz, i64 8
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !102
  %i.ji = tail call float @llvm.fmuladd.f32(float %22, float %i.jh, float %i.jf)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.jj = fsub float %i.ai, %22                   ; 3 uses
  %i.jk = fmul float %i.jj, %i.hx
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hu, float %i.jk)
  %i.jm = fsub float %22, %24                     ; 3 uses
  %i.jn = sext i32 %i.bb to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.jn ; 3 uses
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !102
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.jp, float %i.jl)
  %i.jr = tail call float @llvm.fmuladd.f32(float %24, float %i.ia, float %i.jq)
  store float %i.jr, ptr %.0263276, align 4, !tbaa !102
  %i.js = load float, ptr %i.ib, align 4, !tbaa !102
  %i.jt = load float, ptr %i.ic, align 4, !tbaa !102
  %i.ju = fmul float %i.jj, %i.jt
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.js, float %i.ju)
  %i.jw = getelementptr i8, ptr %i.jo, i64 4
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !102
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.jx, float %i.jv)
  %i.jz = load float, ptr %i.id, align 4, !tbaa !102
  %i.ka = tail call float @llvm.fmuladd.f32(float %24, float %i.jz, float %i.jy)
  store float %i.ka, ptr %i.ie, align 4, !tbaa !102
  %i.kb = load float, ptr %i.if, align 4, !tbaa !102
  %i.kc = getelementptr i8, ptr %i.hw, i64 8
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !102
  %i.ke = fmul float %i.jj, %i.kd
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.kb, float %i.ke)
  %i.kg = getelementptr i8, ptr %i.jo, i64 8
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !102
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.kh, float %i.kf)
  %i.kj = getelementptr i8, ptr %i.hz, i64 8
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !102
  %i.kl = tail call float @llvm.fmuladd.f32(float %24, float %i.kk, float %i.ki)
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.m, %bb.f, %bb.i, %bb.h
  %.sink = phi float [ %i.hp, %bb.k ], [ %i.kl, %bb.n ], [ %i.ji, %bb.m ], [ %i.db, %bb.f ], [ %i.fw, %bb.i ], [ %i.er, %bb.h ]
  %i.km = getelementptr inbounds nuw i8, ptr %.0263276, i64 8
  store float %.sink, ptr %i.km, align 4, !tbaa !102
  %i.kn = getelementptr inbounds nuw i8, ptr %.0263276, i64 12
  store float %4, ptr %i.kn, align 4, !tbaa !102
  %i.ko = getelementptr inbounds nuw i8, ptr %.0277, i64 16
  %i.kp = getelementptr inbounds nuw i8, ptr %.0263276, i64 16
  %i.kq = add nuw nsw i64 %.0264275, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.kq, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !106

.loopexit:                                        ; preds = %bb.o, %bb.c, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE() unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #13 align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

declare void @_ZN16OpenColorIO_v2_58Platform11AlignedFreeEPv(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN16OpenColorIO_v2_58Platform13AlignedMallocEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25, !inline_history !107
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !96
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  invoke void @_ZN16OpenColorIO_v2_58Platform11AlignedFreeEPv(ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  invoke void @_ZN16OpenColorIO_v2_58Platform11AlignedFreeEPv(ptr noundef %i.b)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev.exit unwind label %bb.b, !inline_history !105

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28, !inline_history !105
  unreachable

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load <1 x float>, ptr %i.a, align 8
  %i.c = shufflevector <1 x float> %i.b, <1 x float> poison, <4 x i32> zeroinitializer
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %i.f = add i64 %i.e, -1
  %i.g = uitofp i64 %i.f to float
  %i.h = insertelement <4 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.j = icmp sgt i64 %3, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = trunc i64 %i.e to i32
  %i.l = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %i.m = shufflevector <4 x i32> %i.l, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = bitcast <4 x i32> %i.m to <2 x i64>
  %i.p = and <2 x i64> %i.o, splat (i64 4294967295) ; 8 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.096 = phi ptr [ %1, %.lr.ph ], [ %i.eg, %bb.b ] ; 3 uses
  %.06795 = phi ptr [ %2, %.lr.ph ], [ %i.eh, %bb.b ] ; 3 uses
  %.06894 = phi i64 [ 0, %.lr.ph ], [ %i.ei, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %.096, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !102
  %i.s = load <4 x float>, ptr %.096, align 4, !tbaa !102
  %i.t = fmul <4 x float> %i.c, %i.s
  %i.u = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.t, <4 x float> zeroinitializer)
  %i.v = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.u, <4 x float> %i.i) ; 2 uses
  %i.w = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.v) ; 5 uses
  %i.x = sitofp <4 x i32> %i.w to <4 x float>     ; 2 uses
  %i.y = fcmp ogt <4 x float> %i.i, %i.x
  %.neg = zext <4 x i1> %i.y to <4 x i32>
  %i.z = add <4 x i32> %i.w, %.neg                ; 3 uses
  %i.aa = fsub <4 x float> %i.v, %i.x             ; 3 uses
  %i.ab = shufflevector <4 x i32> %i.w, <4 x i32> %i.z, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ac = bitcast <4 x i32> %i.ab to <2 x i64>
  %i.ad = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ae = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.af = shufflevector <4 x i32> %i.w, <4 x i32> %i.z, <4 x i32> <i32 1, i32 1, i32 5, i32 5> ; 3 uses
  %i.ag = shufflevector <2 x i64> %i.ac, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !100 ; 8 uses
  %i.ai = bitcast <2 x i64> %i.ag to <4 x i32>    ; 2 uses
  %i.aj = bitcast <4 x i32> %i.ad to <2 x i64>
  %i.ak = and <2 x i64> %i.aj, splat (i64 4294967295)
  %i.al = mul nuw <2 x i64> %i.ak, %i.p
  %.cast.i.i = bitcast <4 x i32> %i.ad to <16 x i8>
  %i.am = shufflevector <16 x i8> %.cast.i.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
end_hunk_0
