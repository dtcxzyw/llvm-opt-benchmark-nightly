Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut1DOpCPU?download=true
inline.NumInlined: 24572
inline.NumDeleted: 8059
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 216
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EEC2ERSt10shared_ptrIKNS_11Lut1DOpDataEES2_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 8, ptr %i.i, align 4, !tbaa !8106
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 8, !tbaa !231
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !8107
  %i.l = load ptr, ptr %0, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.p = load i32, ptr %i.o, align 4, !tbaa !233
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.i, align 4, !tbaa !8106
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_521SSE2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.r)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !8107
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.u = load i32, ptr %i.t, align 4, !tbaa !233
  %i.v = and i32 %i.u, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.x = load i32, ptr %i.w, align 4, !tbaa !233
  %i.y = and i32 %i.x, 512
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !8106
  %i.aa = tail call noundef ptr @_ZN16OpenColorIO_v2_520AVXGetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.z)
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !8107
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !233
  %i.ad = and i32 %i.ac, 1024
  %.not6 = icmp eq i32 %i.ad, 0
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !233
  %i.ag = and i32 %i.af, 2048
  %.not7 = icmp eq i32 %i.ag, 0
  br i1 %.not7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !8106
  %i.ai = tail call noundef ptr @_ZN16OpenColorIO_v2_521AVX2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.ah)
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !8107
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #21, !inline_history !8125
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS1_8BitDepthE8ELS4_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !225
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS_8BitDepthE8ELS2_2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i.i = icmp eq ptr %i.d, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i.i = icmp eq ptr %i.f, null
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %.not2.i.i, i1 false
  br i1 %or.cond5.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !8109
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !8110
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8108
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !8109
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !8110
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8111 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !8109
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EED2Ev.exit: ; preds = %bb.a, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS_8BitDepthE8ELS2_2EE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8107 ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp sgt i64 %3, 1
  %or.cond = and i1 %i.d, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8108 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8110 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8111 ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8104
  %i.m = trunc i64 %i.l to i32
  tail call void %i.b(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, i32 noundef %i.m, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp sgt i64 %3, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load float, ptr %i.o, align 8, !tbaa !8116 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %5 = load float, ptr %i.p, align 4, !tbaa !231  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load float, ptr %i.q, align 8, !tbaa !8112
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %i.s = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit47
  %.064 = phi ptr [ %1, %.lr.ph ], [ %i.df, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit47 ] ; 4 uses
  %.03663 = phi ptr [ %2, %.lr.ph ], [ %i.dg, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit47 ] ; 5 uses
  %.03762 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit47 ]
  %i.t = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !231
  %i.v = fmul float %4, %i.u                      ; 2 uses
  %i.w = load <2 x float>, ptr %.064, align 4, !tbaa !231
  %i.x = fmul <2 x float> %8, %i.w                ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x float> %i.x, <2 x float> zeroinitializer ; 3 uses
  %i.aa = fcmp olt <2 x float> %i.s, %i.z         ; 2 uses
  %i.ab = extractelement <2 x i1> %i.aa, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 0
  %i.ad = select i1 %i.ab, float %5, float %i.ac  ; 3 uses
  %.val = load float, ptr %i.p, align 4           ; 2 uses
  %i.ae = extractelement <2 x i1> %i.aa, i64 1
  %i.af = extractelement <2 x float> %i.z, i64 1
  %i.ag = select i1 %i.ae, float %.val, float %i.af ; 3 uses
  %i.ah = fcmp ogt float %i.v, 0.000000e+00
  %i.ai = select i1 %i.ah, float %i.v, float 0.000000e+00 ; 2 uses
  %i.aj = fcmp olt float %5, %i.ai
  %i.ak = select i1 %i.aj, float %.val, float %i.ai ; 3 uses
  %i.al = tail call noundef float @llvm.floor.f32(float %i.ad)
  %i.am = fptoui float %i.al to i32
  %i.an = tail call noundef float @llvm.floor.f32(float %i.ag)
  %i.ao = fptoui float %i.an to i32
  %i.ap = tail call noundef float @llvm.floor.f32(float %i.ak)
  %i.aq = fptoui float %i.ap to i32
  %i.ar = tail call noundef float @llvm.ceil.f32(float %i.ad)
  %i.as = fptoui float %i.ar to i32               ; 2 uses
  %i.at = tail call noundef float @llvm.ceil.f32(float %i.ag)
  %i.au = fptoui float %i.at to i32               ; 2 uses
  %i.av = tail call noundef float @llvm.ceil.f32(float %i.ak)
  %i.aw = fptoui float %i.av to i32               ; 2 uses
  %i.ax = uitofp i32 %i.as to float
  %i.ay = fsub float %i.ax, %i.ad
  %i.az = uitofp i32 %i.au to float
  %i.ba = fsub float %i.az, %i.ag
  %i.bb = uitofp i32 %i.aw to float
  %i.bc = fsub float %i.bb, %i.ak
  %i.bd = zext i32 %i.as to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !231 ; 2 uses
  %i.bg = zext i32 %i.am to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !231
  %i.bj = fsub float %i.bi, %i.bf
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.ay, float %i.bf)
  %i.bl = fadd float %i.bk, 5.000000e-01          ; 3 uses
  %i.bm = fcmp ogt float %i.bl, 1.023000e+03
  br i1 %i.bm, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = fcmp olt float %i.bl, 0.000000e+00
  %i.bo = select i1 %i.bn, float 0.000000e+00, float %i.bl
  %i.bp = fptoui float %i.bo to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit: ; preds = %bb.d, %bb.e
  %i.bq = phi i16 [ %i.bp, %bb.e ], [ 1023, %bb.d ]
  store i16 %i.bq, ptr %.03663, align 2, !tbaa !256
  %i.br = zext i32 %i.au to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !231 ; 2 uses
  %i.bu = zext i32 %i.ao to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !231
  %i.bx = fsub float %i.bw, %i.bt
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.ba, float %i.bt)
  %i.bz = fadd float %i.by, 5.000000e-01          ; 3 uses
  %i.ca = fcmp ogt float %i.bz, 1.023000e+03
  br i1 %i.ca, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit45, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit
  %i.cb = fcmp olt float %i.bz, 0.000000e+00
  %i.cc = select i1 %i.cb, float 0.000000e+00, float %i.bz
  %i.cd = fptoui float %i.cc to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit45

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit45: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit, %bb.f
  %i.ce = phi i16 [ %i.cd, %bb.f ], [ 1023, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.03663, i64 2
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !256
  %i.cg = zext i32 %i.aw to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !231 ; 2 uses
  %i.cj = zext i32 %i.aq to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !231
  %i.cm = fsub float %i.cl, %i.ci
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.bc, float %i.ci)
  %i.co = fadd float %i.cn, 5.000000e-01          ; 3 uses
  %i.cp = fcmp ogt float %i.co, 1.023000e+03
  br i1 %i.cp, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit46, label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit45
  %i.cq = fcmp olt float %i.co, 0.000000e+00
  %i.cr = select i1 %i.cq, float 0.000000e+00, float %i.co
  %i.cs = fptoui float %i.cr to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit46

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit46: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit45, %bb.g
  %i.ct = phi i16 [ %i.cs, %bb.g ], [ 1023, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit45 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.03663, i64 4
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !256
  %i.cv = getelementptr inbounds nuw i8, ptr %.064, i64 12
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !231
  %i.cx = fmul float %i.cw, %i.r
  %i.cy = fadd float %i.cx, 5.000000e-01          ; 3 uses
  %i.cz = fcmp ogt float %i.cy, 1.023000e+03
  br i1 %i.cz, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit47, label %bb.h

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit46
  %i.da = fcmp olt float %i.cy, 0.000000e+00
  %i.db = select i1 %i.da, float 0.000000e+00, float %i.cy
  %i.dc = fptoui float %i.db to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit47

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit47: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit46, %bb.h
  %i.dd = phi i16 [ %i.dc, %bb.h ], [ 1023, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit46 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.03663, i64 6
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !256
  %i.df = getelementptr inbounds nuw i8, ptr %.064, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.03663, i64 8
  %i.dh = add nuw nsw i64 %.03762, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !8126

.loopexit:                                        ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit47, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #21, !inline_history !8127
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS1_8BitDepthE8ELS4_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !225
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8108 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i = icmp eq ptr %i.d, null
  %or.cond.i = select i1 %.not.i, i1 %.not1.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i = icmp eq ptr %i.f, null
  %or.cond5.i = select i1 %or.cond.i, i1 %.not2.i, i1 false
  br i1 %or.cond5.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !8110
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8108
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EEC2ERSt10shared_ptrIKNS_11Lut1DOpDataEES2_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 8, ptr %i.i, align 4, !tbaa !8308
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 8, !tbaa !231
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !8309
  %i.l = load ptr, ptr %0, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.p = load i32, ptr %i.o, align 4, !tbaa !233
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.i, align 4, !tbaa !8308
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_521SSE2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.r)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !8309
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.u = load i32, ptr %i.t, align 4, !tbaa !233
  %i.v = and i32 %i.u, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.x = load i32, ptr %i.w, align 4, !tbaa !233
  %i.y = and i32 %i.x, 512
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !8308
  %i.aa = tail call noundef ptr @_ZN16OpenColorIO_v2_520AVXGetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.z)
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !8309
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !233
  %i.ad = and i32 %i.ac, 1024
  %.not6 = icmp eq i32 %i.ad, 0
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !233
  %i.ag = and i32 %i.af, 2048
  %.not7 = icmp eq i32 %i.ag, 0
  br i1 %.not7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !8308
  %i.ai = tail call noundef ptr @_ZN16OpenColorIO_v2_521AVX2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.ah)
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !8309
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #21, !inline_history !8327
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS1_8BitDepthE8ELS4_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !225
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS_8BitDepthE8ELS2_3EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8310 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i.i = icmp eq ptr %i.d, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i.i = icmp eq ptr %i.f, null
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %.not2.i.i, i1 false
  br i1 %or.cond5.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !8311
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !8312
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8310
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !8311
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !8312
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8313 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !8311
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EED2Ev.exit: ; preds = %bb.a, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS_8BitDepthE8ELS2_3EE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8309 ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp sgt i64 %3, 1
  %or.cond = and i1 %i.d, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8310 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8312 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8313 ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8306
  %i.m = trunc i64 %i.l to i32
  tail call void %i.b(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, i32 noundef %i.m, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp sgt i64 %3, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load float, ptr %i.o, align 8, !tbaa !8318 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %5 = load float, ptr %i.p, align 4, !tbaa !231  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load float, ptr %i.q, align 8, !tbaa !8314
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %i.s = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit47
  %.064 = phi ptr [ %1, %.lr.ph ], [ %i.df, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit47 ] ; 4 uses
  %.03663 = phi ptr [ %2, %.lr.ph ], [ %i.dg, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit47 ] ; 5 uses
  %.03762 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit47 ]
  %i.t = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !231
  %i.v = fmul float %4, %i.u                      ; 2 uses
  %i.w = load <2 x float>, ptr %.064, align 4, !tbaa !231
  %i.x = fmul <2 x float> %8, %i.w                ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x float> %i.x, <2 x float> zeroinitializer ; 3 uses
  %i.aa = fcmp olt <2 x float> %i.s, %i.z         ; 2 uses
  %i.ab = extractelement <2 x i1> %i.aa, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 0
  %i.ad = select i1 %i.ab, float %5, float %i.ac  ; 3 uses
  %.val = load float, ptr %i.p, align 4           ; 2 uses
  %i.ae = extractelement <2 x i1> %i.aa, i64 1
  %i.af = extractelement <2 x float> %i.z, i64 1
  %i.ag = select i1 %i.ae, float %.val, float %i.af ; 3 uses
  %i.ah = fcmp ogt float %i.v, 0.000000e+00
  %i.ai = select i1 %i.ah, float %i.v, float 0.000000e+00 ; 2 uses
  %i.aj = fcmp olt float %5, %i.ai
  %i.ak = select i1 %i.aj, float %.val, float %i.ai ; 3 uses
  %i.al = tail call noundef float @llvm.floor.f32(float %i.ad)
  %i.am = fptoui float %i.al to i32
  %i.an = tail call noundef float @llvm.floor.f32(float %i.ag)
  %i.ao = fptoui float %i.an to i32
  %i.ap = tail call noundef float @llvm.floor.f32(float %i.ak)
  %i.aq = fptoui float %i.ap to i32
  %i.ar = tail call noundef float @llvm.ceil.f32(float %i.ad)
  %i.as = fptoui float %i.ar to i32               ; 2 uses
  %i.at = tail call noundef float @llvm.ceil.f32(float %i.ag)
  %i.au = fptoui float %i.at to i32               ; 2 uses
  %i.av = tail call noundef float @llvm.ceil.f32(float %i.ak)
  %i.aw = fptoui float %i.av to i32               ; 2 uses
  %i.ax = uitofp i32 %i.as to float
  %i.ay = fsub float %i.ax, %i.ad
  %i.az = uitofp i32 %i.au to float
  %i.ba = fsub float %i.az, %i.ag
  %i.bb = uitofp i32 %i.aw to float
  %i.bc = fsub float %i.bb, %i.ak
  %i.bd = zext i32 %i.as to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !231 ; 2 uses
  %i.bg = zext i32 %i.am to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !231
  %i.bj = fsub float %i.bi, %i.bf
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.ay, float %i.bf)
  %i.bl = fadd float %i.bk, 5.000000e-01          ; 3 uses
  %i.bm = fcmp ogt float %i.bl, 4.095000e+03
  br i1 %i.bm, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = fcmp olt float %i.bl, 0.000000e+00
  %i.bo = select i1 %i.bn, float 0.000000e+00, float %i.bl
  %i.bp = fptoui float %i.bo to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit: ; preds = %bb.d, %bb.e
  %i.bq = phi i16 [ %i.bp, %bb.e ], [ 4095, %bb.d ]
  store i16 %i.bq, ptr %.03663, align 2, !tbaa !256
  %i.br = zext i32 %i.au to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !231 ; 2 uses
  %i.bu = zext i32 %i.ao to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !231
  %i.bx = fsub float %i.bw, %i.bt
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.ba, float %i.bt)
  %i.bz = fadd float %i.by, 5.000000e-01          ; 3 uses
  %i.ca = fcmp ogt float %i.bz, 4.095000e+03
  br i1 %i.ca, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit45, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit
  %i.cb = fcmp olt float %i.bz, 0.000000e+00
  %i.cc = select i1 %i.cb, float 0.000000e+00, float %i.bz
  %i.cd = fptoui float %i.cc to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit45

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit45: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit, %bb.f
  %i.ce = phi i16 [ %i.cd, %bb.f ], [ 4095, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.03663, i64 2
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !256
  %i.cg = zext i32 %i.aw to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !231 ; 2 uses
  %i.cj = zext i32 %i.aq to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !231
  %i.cm = fsub float %i.cl, %i.ci
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.bc, float %i.ci)
  %i.co = fadd float %i.cn, 5.000000e-01          ; 3 uses
  %i.cp = fcmp ogt float %i.co, 4.095000e+03
  br i1 %i.cp, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit46, label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit45
  %i.cq = fcmp olt float %i.co, 0.000000e+00
  %i.cr = select i1 %i.cq, float 0.000000e+00, float %i.co
  %i.cs = fptoui float %i.cr to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit46

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit46: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit45, %bb.g
  %i.ct = phi i16 [ %i.cs, %bb.g ], [ 4095, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit45 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.03663, i64 4
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !256
  %i.cv = getelementptr inbounds nuw i8, ptr %.064, i64 12
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !231
  %i.cx = fmul float %i.cw, %i.r
  %i.cy = fadd float %i.cx, 5.000000e-01          ; 3 uses
  %i.cz = fcmp ogt float %i.cy, 4.095000e+03
  br i1 %i.cz, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit47, label %bb.h

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit46
  %i.da = fcmp olt float %i.cy, 0.000000e+00
  %i.db = select i1 %i.da, float 0.000000e+00, float %i.cy
  %i.dc = fptoui float %i.db to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit47

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit47: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit46, %bb.h
  %i.dd = phi i16 [ %i.dc, %bb.h ], [ 4095, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit46 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.03663, i64 6
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !256
  %i.df = getelementptr inbounds nuw i8, ptr %.064, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.03663, i64 8
  %i.dh = add nuw nsw i64 %.03762, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !8328

.loopexit:                                        ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit47, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #21, !inline_history !8329
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS1_8BitDepthE8ELS4_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !225
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8310 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i = icmp eq ptr %i.d, null
  %or.cond.i = select i1 %.not.i, i1 %.not1.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i = icmp eq ptr %i.f, null
  %or.cond5.i = select i1 %or.cond.i, i1 %.not2.i, i1 false
  br i1 %or.cond5.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !8312
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8310
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EEC2ERSt10shared_ptrIKNS_11Lut1DOpDataEES2_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 8, ptr %i.i, align 4, !tbaa !8510
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 8, !tbaa !231
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !8511
  %i.l = load ptr, ptr %0, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.p = load i32, ptr %i.o, align 4, !tbaa !233
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.i, align 4, !tbaa !8510
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_521SSE2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.r)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !8511
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.u = load i32, ptr %i.t, align 4, !tbaa !233
  %i.v = and i32 %i.u, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.x = load i32, ptr %i.w, align 4, !tbaa !233
  %i.y = and i32 %i.x, 512
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !8510
  %i.aa = tail call noundef ptr @_ZN16OpenColorIO_v2_520AVXGetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.z)
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !8511
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !233
  %i.ad = and i32 %i.ac, 1024
  %.not6 = icmp eq i32 %i.ad, 0
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !233
  %i.ag = and i32 %i.af, 2048
  %.not7 = icmp eq i32 %i.ag, 0
  br i1 %.not7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !8510
  %i.ai = tail call noundef ptr @_ZN16OpenColorIO_v2_521AVX2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.ah)
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !8511
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #21, !inline_history !8529
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS1_8BitDepthE8ELS4_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !225
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS_8BitDepthE8ELS2_5EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8512 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i.i = icmp eq ptr %i.d, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i.i = icmp eq ptr %i.f, null
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %.not2.i.i, i1 false
  br i1 %or.cond5.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !8513
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !8514
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8512
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !8513
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !8514
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8515 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !8513
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EED2Ev.exit: ; preds = %bb.a, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS_8BitDepthE8ELS2_5EE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8511 ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp sgt i64 %3, 1
  %or.cond = and i1 %i.d, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8512 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8514 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8515 ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8508
  %i.m = trunc i64 %i.l to i32
  tail call void %i.b(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, i32 noundef %i.m, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp sgt i64 %3, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load float, ptr %i.o, align 8, !tbaa !8520 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %5 = load float, ptr %i.p, align 4, !tbaa !231  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load float, ptr %i.q, align 8, !tbaa !8516
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %i.s = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit47
  %.064 = phi ptr [ %1, %.lr.ph ], [ %i.df, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit47 ] ; 4 uses
  %.03663 = phi ptr [ %2, %.lr.ph ], [ %i.dg, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit47 ] ; 5 uses
  %.03762 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit47 ]
  %i.t = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !231
  %i.v = fmul float %4, %i.u                      ; 2 uses
  %i.w = load <2 x float>, ptr %.064, align 4, !tbaa !231
  %i.x = fmul <2 x float> %8, %i.w                ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x float> %i.x, <2 x float> zeroinitializer ; 3 uses
  %i.aa = fcmp olt <2 x float> %i.s, %i.z         ; 2 uses
  %i.ab = extractelement <2 x i1> %i.aa, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 0
  %i.ad = select i1 %i.ab, float %5, float %i.ac  ; 3 uses
  %.val = load float, ptr %i.p, align 4           ; 2 uses
  %i.ae = extractelement <2 x i1> %i.aa, i64 1
  %i.af = extractelement <2 x float> %i.z, i64 1
  %i.ag = select i1 %i.ae, float %.val, float %i.af ; 3 uses
  %i.ah = fcmp ogt float %i.v, 0.000000e+00
  %i.ai = select i1 %i.ah, float %i.v, float 0.000000e+00 ; 2 uses
  %i.aj = fcmp olt float %5, %i.ai
  %i.ak = select i1 %i.aj, float %.val, float %i.ai ; 3 uses
  %i.al = tail call noundef float @llvm.floor.f32(float %i.ad)
  %i.am = fptoui float %i.al to i32
  %i.an = tail call noundef float @llvm.floor.f32(float %i.ag)
  %i.ao = fptoui float %i.an to i32
  %i.ap = tail call noundef float @llvm.floor.f32(float %i.ak)
  %i.aq = fptoui float %i.ap to i32
  %i.ar = tail call noundef float @llvm.ceil.f32(float %i.ad)
  %i.as = fptoui float %i.ar to i32               ; 2 uses
  %i.at = tail call noundef float @llvm.ceil.f32(float %i.ag)
  %i.au = fptoui float %i.at to i32               ; 2 uses
  %i.av = tail call noundef float @llvm.ceil.f32(float %i.ak)
  %i.aw = fptoui float %i.av to i32               ; 2 uses
  %i.ax = uitofp i32 %i.as to float
  %i.ay = fsub float %i.ax, %i.ad
  %i.az = uitofp i32 %i.au to float
  %i.ba = fsub float %i.az, %i.ag
  %i.bb = uitofp i32 %i.aw to float
  %i.bc = fsub float %i.bb, %i.ak
  %i.bd = zext i32 %i.as to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !231 ; 2 uses
  %i.bg = zext i32 %i.am to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !231
  %i.bj = fsub float %i.bi, %i.bf
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.ay, float %i.bf)
  %i.bl = fadd float %i.bk, 5.000000e-01          ; 3 uses
  %i.bm = fcmp ogt float %i.bl, 6.553500e+04
  br i1 %i.bm, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = fcmp olt float %i.bl, 0.000000e+00
  %i.bo = select i1 %i.bn, float 0.000000e+00, float %i.bl
  %i.bp = fptoui float %i.bo to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit: ; preds = %bb.d, %bb.e
  %i.bq = phi i16 [ %i.bp, %bb.e ], [ -1, %bb.d ]
  store i16 %i.bq, ptr %.03663, align 2, !tbaa !256
  %i.br = zext i32 %i.au to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !231 ; 2 uses
  %i.bu = zext i32 %i.ao to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !231
  %i.bx = fsub float %i.bw, %i.bt
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.ba, float %i.bt)
  %i.bz = fadd float %i.by, 5.000000e-01          ; 3 uses
  %i.ca = fcmp ogt float %i.bz, 6.553500e+04
  br i1 %i.ca, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit45, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit
  %i.cb = fcmp olt float %i.bz, 0.000000e+00
  %i.cc = select i1 %i.cb, float 0.000000e+00, float %i.bz
  %i.cd = fptoui float %i.cc to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit45

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit45: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit, %bb.f
  %i.ce = phi i16 [ %i.cd, %bb.f ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.03663, i64 2
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !256
  %i.cg = zext i32 %i.aw to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !231 ; 2 uses
  %i.cj = zext i32 %i.aq to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !231
  %i.cm = fsub float %i.cl, %i.ci
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.bc, float %i.ci)
  %i.co = fadd float %i.cn, 5.000000e-01          ; 3 uses
  %i.cp = fcmp ogt float %i.co, 6.553500e+04
  br i1 %i.cp, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit46, label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit45
  %i.cq = fcmp olt float %i.co, 0.000000e+00
  %i.cr = select i1 %i.cq, float 0.000000e+00, float %i.co
  %i.cs = fptoui float %i.cr to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit46

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit46: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit45, %bb.g
  %i.ct = phi i16 [ %i.cs, %bb.g ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit45 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.03663, i64 4
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !256
  %i.cv = getelementptr inbounds nuw i8, ptr %.064, i64 12
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !231
  %i.cx = fmul float %i.cw, %i.r
  %i.cy = fadd float %i.cx, 5.000000e-01          ; 3 uses
  %i.cz = fcmp ogt float %i.cy, 6.553500e+04
  br i1 %i.cz, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit47, label %bb.h

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit46
  %i.da = fcmp olt float %i.cy, 0.000000e+00
  %i.db = select i1 %i.da, float 0.000000e+00, float %i.cy
  %i.dc = fptoui float %i.db to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit47

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit47: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit46, %bb.h
  %i.dd = phi i16 [ %i.dc, %bb.h ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit46 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.03663, i64 6
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !256
  %i.df = getelementptr inbounds nuw i8, ptr %.064, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.03663, i64 8
  %i.dh = add nuw nsw i64 %.03762, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !8530

.loopexit:                                        ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit47, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #21, !inline_history !8531
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS1_8BitDepthE8ELS4_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !225
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8512 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i = icmp eq ptr %i.d, null
  %or.cond.i = select i1 %.not.i, i1 %.not1.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i = icmp eq ptr %i.f, null
  %or.cond5.i = select i1 %or.cond.i, i1 %.not2.i, i1 false
  br i1 %or.cond5.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !8514
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8512
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EEC2ERSt10shared_ptrIKNS_11Lut1DOpDataEES2_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 8, ptr %i.i, align 4, !tbaa !8712
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 8, !tbaa !231
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !8713
  %i.l = load ptr, ptr %0, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.p = load i32, ptr %i.o, align 4, !tbaa !233
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.i, align 4, !tbaa !8712
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_521SSE2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.r)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !8713
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.u = load i32, ptr %i.t, align 4, !tbaa !233
  %i.v = and i32 %i.u, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.x = load i32, ptr %i.w, align 4, !tbaa !233
  %i.y = and i32 %i.x, 512
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !8712
  %i.aa = tail call noundef ptr @_ZN16OpenColorIO_v2_520AVXGetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.z)
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !8713
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !233
  %i.ad = and i32 %i.ac, 1024
  %.not6 = icmp eq i32 %i.ad, 0
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !233
  %i.ag = and i32 %i.af, 2048
  %.not7 = icmp eq i32 %i.ag, 0
  br i1 %.not7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !8712
  %i.ai = tail call noundef ptr @_ZN16OpenColorIO_v2_521AVX2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.ah)
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !8713
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_7EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_7EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #21, !inline_history !8731
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_7EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS1_8BitDepthE8ELS4_7EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_7EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !225
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS_8BitDepthE8ELS2_7EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8714 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i.i = icmp eq ptr %i.d, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i.i = icmp eq ptr %i.f, null
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %.not2.i.i, i1 false
  br i1 %or.cond5.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !8715
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !8716
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8714
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !8715
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !8716
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8717 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !8715
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EED2Ev.exit: ; preds = %bb.a, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS_8BitDepthE8ELS2_7EE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8713 ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp sgt i64 %3, 1
  %or.cond = and i1 %i.d, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8714 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8716 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8717 ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8710
  %i.m = trunc i64 %i.l to i32
  tail call void %i.b(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, i32 noundef %i.m, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp sgt i64 %3, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load float, ptr %i.o, align 8, !tbaa !8722 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %5 = load float, ptr %i.p, align 4, !tbaa !231  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load float, ptr %i.q, align 8, !tbaa !8718
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %i.s = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit60
  %.077 = phi ptr [ %1, %.lr.ph ], [ %i.it, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit60 ] ; 4 uses
  %.04076 = phi ptr [ %2, %.lr.ph ], [ %i.iu, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit60 ] ; 5 uses
  %.04175 = phi i64 [ 0, %.lr.ph ], [ %i.iv, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit60 ]
  %i.t = getelementptr inbounds nuw i8, ptr %.077, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !231
  %i.v = fmul float %4, %i.u                      ; 2 uses
  %i.w = load <2 x float>, ptr %.077, align 4, !tbaa !231
  %i.x = fmul <2 x float> %8, %i.w                ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x float> %i.x, <2 x float> zeroinitializer ; 3 uses
  %i.aa = fcmp olt <2 x float> %i.s, %i.z         ; 2 uses
  %i.ab = extractelement <2 x i1> %i.aa, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 0
  %i.ad = select i1 %i.ab, float %5, float %i.ac  ; 3 uses
  %.val = load float, ptr %i.p, align 4           ; 2 uses
  %i.ae = extractelement <2 x i1> %i.aa, i64 1
  %i.af = extractelement <2 x float> %i.z, i64 1
  %i.ag = select i1 %i.ae, float %.val, float %i.af ; 3 uses
  %i.ah = fcmp ogt float %i.v, 0.000000e+00
  %i.ai = select i1 %i.ah, float %i.v, float 0.000000e+00 ; 2 uses
  %i.aj = fcmp olt float %5, %i.ai
  %i.ak = select i1 %i.aj, float %.val, float %i.ai ; 3 uses
  %i.al = tail call noundef float @llvm.floor.f32(float %i.ad)
  %i.am = fptoui float %i.al to i32
  %i.an = tail call noundef float @llvm.floor.f32(float %i.ag)
  %i.ao = fptoui float %i.an to i32
  %i.ap = tail call noundef float @llvm.floor.f32(float %i.ak)
  %i.aq = fptoui float %i.ap to i32
  %i.ar = tail call noundef float @llvm.ceil.f32(float %i.ad)
  %i.as = fptoui float %i.ar to i32               ; 2 uses
  %i.at = tail call noundef float @llvm.ceil.f32(float %i.ag)
  %i.au = fptoui float %i.at to i32               ; 2 uses
  %i.av = tail call noundef float @llvm.ceil.f32(float %i.ak)
  %i.aw = fptoui float %i.av to i32               ; 2 uses
  %i.ax = uitofp i32 %i.as to float
  %i.ay = fsub float %i.ax, %i.ad
  %i.az = uitofp i32 %i.au to float
  %i.ba = fsub float %i.az, %i.ag
  %i.bb = uitofp i32 %i.aw to float
  %i.bc = fsub float %i.bb, %i.ak
  %i.bd = zext i32 %i.as to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !231 ; 2 uses
  %i.bg = zext i32 %i.am to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !231
  %i.bj = fsub float %i.bi, %i.bf
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.ay, float %i.bf) ; 2 uses
  %i.bl = bitcast float %i.bk to i32
  %i.bm = tail call float @llvm.fabs.f32(float %i.bk)
  %i.bn = bitcast float %i.bm to i32              ; 10 uses
  %i.bo = lshr i32 %i.bl, 16                      ; 3 uses
  %i.bp = trunc nuw i32 %i.bo to i16
  %i.bq = and i16 %i.bp, -32768                   ; 3 uses
  %i.br = icmp samesign ugt i32 %i.bn, 947912703
  br i1 %i.br, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.bs = icmp samesign ugt i32 %i.bn, 2139095039
  br i1 %i.bs, label %bb.f, label %bb.h, !prof !245

bb.f:                                             ; preds = %bb.e
  %i.bt = or disjoint i16 %i.bq, 31744            ; 2 uses
  %i.bu = icmp eq i32 %i.bn, 2139095040
  br i1 %i.bu, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = lshr i32 %i.bn, 13
  %i.bw = and i32 %i.bv, 1023                     ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = zext i1 %i.bx to i16
  %i.bz = trunc nuw nsw i32 %i.bw to i16
  %i.ca = or i16 %i.bz, %i.by
  %i.cb = or disjoint i16 %i.ca, %i.bt
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit

bb.h:                                             ; preds = %bb.e
  %i.cc = icmp samesign ugt i32 %i.bn, 1199566847
  br i1 %i.cc, label %bb.i, label %bb.j, !prof !245

bb.i:                                             ; preds = %bb.h
  %i.cd = or disjoint i16 %i.bq, 31744
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = add nuw nsw i32 %i.bn, 134221823
  %i.cf = lshr i32 %i.bn, 13
  %i.cg = and i32 %i.cf, 1
  %i.ch = add nuw nsw i32 %i.ce, %i.cg
  %i.ci = lshr i32 %i.ch, 13
  %i.cj = and i32 %i.bo, 32768
  %i.ck = or i32 %i.ci, %i.cj
  %i.cl = trunc i32 %i.ck to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit

bb.k:                                             ; preds = %bb.d
  %i.cm = icmp samesign ult i32 %i.bn, 855638017
  br i1 %i.cm, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = lshr i32 %i.bn, 23                      ; 2 uses
  %i.co = sub nuw nsw i32 126, %i.cn
  %i.cp = and i32 %i.bn, 8388607
  %i.cq = or disjoint i32 %i.cp, 8388608          ; 2 uses
  %i.cr = add nsw i32 %i.cn, -94
  %i.cs = shl i32 %i.cq, %i.cr                    ; 2 uses
  %i.ct = lshr i32 %i.cq, %i.co                   ; 2 uses
  %i.cu = and i32 %i.bo, 32768
  %i.cv = or i32 %i.ct, %i.cu
  %i.cw = trunc nuw i32 %i.cv to i16              ; 2 uses
  %i.cx = icmp ugt i32 %i.cs, -2147483648
  br i1 %i.cx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = icmp ne i32 %i.cs, -2147483648
  %i.cz = and i32 %i.ct, 1
  %.not.i.i.i = icmp eq i32 %i.cz, 0
  %or.cond.i.i.i = select i1 %i.cy, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.da = add nuw i16 %i.cw, 1
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.m, %bb.n
  %.033.i.i.i = phi i16 [ %i.bq, %bb.k ], [ %i.cb, %bb.g ], [ %i.cd, %bb.i ], [ %i.cl, %bb.j ], [ %i.bt, %bb.f ], [ %i.da, %bb.n ], [ %i.cw, %bb.m ]
  store i16 %.033.i.i.i, ptr %.04076, align 2, !tbaa !256
  %i.db = zext i32 %i.au to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !231 ; 2 uses
  %i.de = zext i32 %i.ao to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !231
  %i.dh = fsub float %i.dg, %i.dd
  %i.di = tail call noundef float @llvm.fmuladd.f32(float %i.dh, float %i.ba, float %i.dd) ; 2 uses
  %i.dj = bitcast float %i.di to i32
  %i.dk = tail call float @llvm.fabs.f32(float %i.di)
  %i.dl = bitcast float %i.dk to i32              ; 10 uses
  %i.dm = lshr i32 %i.dj, 16                      ; 3 uses
  %i.dn = trunc nuw i32 %i.dm to i16
  %i.do = and i16 %i.dn, -32768                   ; 3 uses
  %i.dp = icmp samesign ugt i32 %i.dl, 947912703
  br i1 %i.dp, label %bb.o, label %bb.u

bb.o:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit
  %i.dq = icmp samesign ugt i32 %i.dl, 2139095039
  br i1 %i.dq, label %bb.p, label %bb.r, !prof !245

bb.p:                                             ; preds = %bb.o
  %i.dr = or disjoint i16 %i.do, 31744            ; 2 uses
  %i.ds = icmp eq i32 %i.dl, 2139095040
  br i1 %i.ds, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = lshr i32 %i.dl, 13
  %i.du = and i32 %i.dt, 1023                     ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i16
  %i.dx = trunc nuw nsw i32 %i.du to i16
  %i.dy = or i16 %i.dx, %i.dw
  %i.dz = or disjoint i16 %i.dy, %i.dr
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit52

bb.r:                                             ; preds = %bb.o
  %i.ea = icmp samesign ugt i32 %i.dl, 1199566847
  br i1 %i.ea, label %bb.s, label %bb.t, !prof !245

bb.s:                                             ; preds = %bb.r
  %i.eb = or disjoint i16 %i.do, 31744
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit52

bb.t:                                             ; preds = %bb.r
  %i.ec = add nuw nsw i32 %i.dl, 134221823
  %i.ed = lshr i32 %i.dl, 13
  %i.ee = and i32 %i.ed, 1
  %i.ef = add nuw nsw i32 %i.ec, %i.ee
  %i.eg = lshr i32 %i.ef, 13
  %i.eh = and i32 %i.dm, 32768
  %i.ei = or i32 %i.eg, %i.eh
  %i.ej = trunc i32 %i.ei to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit52

bb.u:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit
  %i.ek = icmp samesign ult i32 %i.dl, 855638017
  br i1 %i.ek, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit52, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.el = lshr i32 %i.dl, 23                      ; 2 uses
  %i.em = sub nuw nsw i32 126, %i.el
  %i.en = and i32 %i.dl, 8388607
  %i.eo = or disjoint i32 %i.en, 8388608          ; 2 uses
  %i.ep = add nsw i32 %i.el, -94
  %i.eq = shl i32 %i.eo, %i.ep                    ; 2 uses
  %i.er = lshr i32 %i.eo, %i.em                   ; 2 uses
  %i.es = and i32 %i.dm, 32768
  %i.et = or i32 %i.er, %i.es
  %i.eu = trunc nuw i32 %i.et to i16              ; 2 uses
  %i.ev = icmp ugt i32 %i.eq, -2147483648
  br i1 %i.ev, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ew = icmp ne i32 %i.eq, -2147483648
  %i.ex = and i32 %i.er, 1
  %.not.i.i.i49 = icmp eq i32 %i.ex, 0
  %or.cond.i.i.i50 = select i1 %i.ew, i1 true, i1 %.not.i.i.i49
  br i1 %or.cond.i.i.i50, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit52, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ey = add nuw i16 %i.eu, 1
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit52

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit52: ; preds = %bb.p, %bb.q, %bb.s, %bb.t, %bb.u, %bb.w, %bb.x
  %.033.i.i.i51 = phi i16 [ %i.do, %bb.u ], [ %i.dz, %bb.q ], [ %i.eb, %bb.s ], [ %i.ej, %bb.t ], [ %i.dr, %bb.p ], [ %i.ey, %bb.x ], [ %i.eu, %bb.w ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.04076, i64 2
  store i16 %.033.i.i.i51, ptr %i.ez, align 2, !tbaa !256
  %i.fa = zext i32 %i.aw to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !231 ; 2 uses
  %i.fd = zext i32 %i.aq to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !231
end_hunk_3
