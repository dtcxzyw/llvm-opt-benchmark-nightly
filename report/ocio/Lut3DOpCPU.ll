Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut3DOpCPU?download=true
inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRenderer5applyEPKvPvl:bb.a
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.it, float %i.ld, float %i.lg)
  %i.li = getelementptr i8, ptr %i.kq, i64 8
  %i.lj = load float, ptr %i.li, align 4, !tbaa !56
  %i.lk = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.lj, float %i.lh)
  %i.ll = getelementptr i8, ptr %i.jb, i64 8
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !56
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.lm, float %i.lk)
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.m, %bb.f, %bb.i, %bb.h
  %.sink = phi float [ %i.ir, %bb.k ], [ %i.ln, %bb.n ], [ %i.kk, %bb.m ], [ %i.ed, %bb.f ], [ %i.gy, %bb.i ], [ %i.ft, %bb.h ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.0263276, i64 8
  store float %.sink, ptr %i.lo, align 4, !tbaa !56
  %i.lp = getelementptr inbounds nuw i8, ptr %.0263276, i64 12
  store float %i.y, ptr %i.lp, align 4, !tbaa !56
  %i.lq = getelementptr inbounds nuw i8, ptr %.0264275, i64 16
  %i.lr = getelementptr inbounds nuw i8, ptr %.0263276, i64 16
  %i.ls = add nuw nsw i64 %.0277, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ls, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !126

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #25, !inline_history !127
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !51
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
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
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  invoke void @_ZN16OpenColorIO_v2_58Platform11AlignedFreeEPv(ptr noundef %i.b)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev.exit unwind label %bb.b, !inline_history !58

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28, !inline_history !58
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52   ; 2 uses
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
  %.094 = phi ptr [ %1, %.lr.ph ], [ %i.ea, %bb.b ] ; 3 uses
  %.06793 = phi ptr [ %2, %.lr.ph ], [ %i.eb, %bb.b ] ; 3 uses
  %.06892 = phi i64 [ 0, %.lr.ph ], [ %i.ec, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %.094, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !56
  %i.s = load <4 x float>, ptr %.094, align 4, !tbaa !56
  %i.t = fmul <4 x float> %i.c, %i.s
  %i.u = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.t, <4 x float> zeroinitializer)
  %i.v = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.u, <4 x float> %i.i) ; 2 uses
  %i.w = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.v) ; 5 uses
  %i.x = sitofp <4 x i32> %i.w to <4 x float>     ; 2 uses
  %i.y = fcmp ogt <4 x float> %i.i, %i.x
  %.neg = zext <4 x i1> %i.y to <4 x i32>
  %i.z = add <4 x i32> %i.w, %.neg                ; 4 uses
  %i.aa = fsub <4 x float> %i.v, %i.x             ; 3 uses
  %i.ab = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ac = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ad = shufflevector <4 x i32> %i.w, <4 x i32> %i.z, <4 x i32> <i32 1, i32 1, i32 5, i32 5> ; 3 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !54  ; 8 uses
  %4 = shufflevector <4 x i32> %i.w, <4 x i32> %i.z, <4 x i32> <i32 2, i32 6, i32 2, i32 6> ; 2 uses
  %i.af = bitcast <4 x i32> %i.ab to <2 x i64>
  %i.ag = and <2 x i64> %i.af, splat (i64 4294967295)
  %i.ah = mul nuw <2 x i64> %i.ag, %i.p
  %.cast.i.i = bitcast <4 x i32> %i.ab to <16 x i8>
  %i.ai = shufflevector <16 x i8> %.cast.i.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.aj = bitcast <16 x i8> %i.ai to <2 x i64>
  %i.ak = and <2 x i64> %i.aj, splat (i64 4294967295)
  %i.al = mul nuw <2 x i64> %i.ak, %i.p
  %i.am = bitcast <2 x i64> %i.ah to <4 x i32>
  %i.an = add <4 x i32> %i.ad, %i.am
  %i.ao = shufflevector <4 x i32> %i.ad, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 2, i32 3, i32 4> ; 2 uses
  %i.ap = bitcast <2 x i64> %i.al to <4 x i32>
  %i.aq = add <4 x i32> %i.ao, %i.ap
  %i.ar = bitcast <4 x i32> %i.an to <2 x i64>
  %i.as = and <2 x i64> %i.ar, splat (i64 4294967295)
  %i.at = mul nuw <2 x i64> %i.as, %i.p
  %i.au = bitcast <4 x i32> %i.aq to <2 x i64>
  %i.av = and <2 x i64> %i.au, splat (i64 4294967295)
  %i.aw = mul nuw <2 x i64> %i.av, %i.p
  %i.ax = bitcast <2 x i64> %i.at to <4 x i32>
  %i.ay = add <4 x i32> %4, %i.ax
  %5 = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 2, i32 poison> ; 2 uses
  %i.az = bitcast <2 x i64> %i.aw to <4 x i32>
  %i.ba = add <4 x i32> %5, %i.az
  %i.bb = shufflevector <4 x i32> %i.ay, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bc = shl <4 x i32> %i.bb, splat (i32 2)      ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x i32> %i.bc, i64 0
  %i.bd = sext i32 %.sroa.0.0.vec.extract.i to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bd
  %i.bf = load <4 x float>, ptr %i.be, align 16, !tbaa !51
  %.sroa.0.4.vec.extract.i = extractelement <4 x i32> %i.bc, i64 1
  %i.bg = sext i32 %.sroa.0.4.vec.extract.i to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bg
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !tbaa !51
  %.sroa.0.8.vec.extract.i = extractelement <4 x i32> %i.bc, i64 2
  %i.bj = sext i32 %.sroa.0.8.vec.extract.i to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load <4 x float>, ptr %i.bk, align 16, !tbaa !51
  %.sroa.0.12.vec.extract.i = extractelement <4 x i32> %i.bc, i64 3
  %i.bm = sext i32 %.sroa.0.12.vec.extract.i to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bm
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !tbaa !51
  %i.bp = bitcast <4 x i32> %i.ac to <2 x i64>
  %i.bq = and <2 x i64> %i.bp, splat (i64 4294967295)
  %i.br = mul nuw <2 x i64> %i.bq, %i.p
  %.cast.i.i76 = bitcast <4 x i32> %i.ac to <16 x i8>
  %i.bs = shufflevector <16 x i8> %.cast.i.i76, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  %i.bu = and <2 x i64> %i.bt, splat (i64 4294967295)
  %i.bv = mul nuw <2 x i64> %i.bu, %i.p
  %i.bw = bitcast <2 x i64> %i.br to <4 x i32>
  %i.bx = add <4 x i32> %i.ad, %i.bw
  %i.by = bitcast <2 x i64> %i.bv to <4 x i32>
  %i.bz = add <4 x i32> %i.ao, %i.by
  %i.ca = bitcast <4 x i32> %i.bx to <2 x i64>
  %i.cb = and <2 x i64> %i.ca, splat (i64 4294967295)
  %i.cc = mul nuw <2 x i64> %i.cb, %i.p
  %i.cd = bitcast <4 x i32> %i.bz to <2 x i64>
  %i.ce = and <2 x i64> %i.cd, splat (i64 4294967295)
  %i.cf = mul nuw <2 x i64> %i.ce, %i.p
  %i.cg = bitcast <2 x i64> %i.cc to <4 x i32>
  %i.ch = add <4 x i32> %4, %i.cg
  %i.ci = bitcast <2 x i64> %i.cf to <4 x i32>
  %i.cj = add <4 x i32> %5, %i.ci
  %i.ck = shufflevector <4 x i32> %i.ch, <4 x i32> %i.cj, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cl = shl <4 x i32> %i.ck, splat (i32 2)      ; 4 uses
  %.sroa.0.0.vec.extract.i79 = extractelement <4 x i32> %i.cl, i64 0
  %i.cm = sext i32 %.sroa.0.0.vec.extract.i79 to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.cm
  %i.co = load <4 x float>, ptr %i.cn, align 16, !tbaa !51
  %.sroa.0.4.vec.extract.i80 = extractelement <4 x i32> %i.cl, i64 1
  %i.cp = sext i32 %.sroa.0.4.vec.extract.i80 to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.cp
  %i.cr = load <4 x float>, ptr %i.cq, align 16, !tbaa !51
  %.sroa.0.8.vec.extract.i81 = extractelement <4 x i32> %i.cl, i64 2
  %i.cs = sext i32 %.sroa.0.8.vec.extract.i81 to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.cs
  %i.cu = load <4 x float>, ptr %i.ct, align 16, !tbaa !51
  %.sroa.0.12.vec.extract.i82 = extractelement <4 x i32> %i.cl, i64 3
  %i.cv = sext i32 %.sroa.0.12.vec.extract.i82 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.cv
  %i.cx = load <4 x float>, ptr %i.cw, align 16, !tbaa !51
  %i.cy = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cz = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.da = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 5 uses
  %i.db = fsub <4 x float> splat (float 1.000000e+00), %i.cy
  %i.dc = fsub <4 x float> splat (float 1.000000e+00), %i.cz ; 2 uses
  %i.dd = fsub <4 x float> splat (float 1.000000e+00), %i.da ; 4 uses
  %i.de = fmul <4 x float> %i.bf, %i.dd
  %i.df = fmul <4 x float> %i.bi, %i.da
  %i.dg = fadd <4 x float> %i.df, %i.de
  %i.dh = fmul <4 x float> %i.bl, %i.dd
  %i.di = fmul <4 x float> %i.da, %i.bo
  %i.dj = fadd <4 x float> %i.dh, %i.di
  %i.dk = fmul <4 x float> %i.dd, %i.co
  %i.dl = fmul <4 x float> %i.da, %i.cr
  %i.dm = fadd <4 x float> %i.dk, %i.dl
  %i.dn = fmul <4 x float> %i.dd, %i.cu
  %i.do = fmul <4 x float> %i.da, %i.cx
  %i.dp = fadd <4 x float> %i.dn, %i.do
  %i.dq = fmul <4 x float> %i.dc, %i.dg
  %i.dr = fmul <4 x float> %i.cz, %i.dj
  %i.ds = fadd <4 x float> %i.dq, %i.dr
  %i.dt = fmul <4 x float> %i.dc, %i.dm
  %i.du = fmul <4 x float> %i.cz, %i.dp
  %i.dv = fadd <4 x float> %i.dt, %i.du
  %i.dw = fmul <4 x float> %i.db, %i.ds
  %i.dx = fmul <4 x float> %i.cy, %i.dv
  %i.dy = fadd <4 x float> %i.dw, %i.dx
  store <4 x float> %i.dy, ptr %.06793, align 1, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %.06793, i64 12
  store float %i.r, ptr %i.dz, align 4, !tbaa !56
  %i.ea = getelementptr inbounds nuw i8, ptr %.094, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.06793, i64 16
  %i.ec = add nuw nsw i64 %.06892, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ec, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !128
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.a) #25, !inline_history !129
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !51
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.h, align 8             ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1 = load ptr, ptr %i.i, align 8
  %i.j = ptrtoint ptr %.val1 to i64
  %i.k = ptrtoint ptr %.val to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.l) #26
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit, %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i ], [ %i.n, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EED2Ev.exit ] ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.d, %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i:         ; preds = %bb.e, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
end_hunk_0
