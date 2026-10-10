Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut1DOpCPU?download=true
inline.NumInlined: 24572
inline.NumDeleted: 8059
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 216
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EEC2ERSt10shared_ptrIKNS_11Lut1DOpDataEES2_:bb.a
  store ptr null, ptr %i.k, align 8, !tbaa !1102
  %i.l = load ptr, ptr %0, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.i, align 4, !tbaa !1101
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_521SSE2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.r)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !1102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.u = load i32, ptr %i.t, align 4, !tbaa !75
  %i.v = and i32 %i.u, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.x = load i32, ptr %i.w, align 4, !tbaa !75
  %i.y = and i32 %i.x, 512
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !1101
  %i.aa = tail call noundef ptr @_ZN16OpenColorIO_v2_520AVXGetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.z)
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !1102
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.ad = and i32 %i.ac, 1024
  %.not6 = icmp eq i32 %i.ad, 0
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75
  %i.ag = and i32 %i.af, 2048
  %.not7 = icmp eq i32 %i.ag, 0
  br i1 %.not7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !1101
  %i.ai = tail call noundef ptr @_ZN16OpenColorIO_v2_521AVX2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.ah)
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !1102
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #21, !inline_history !8108
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS1_8BitDepthE8ELS4_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !66
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS_8BitDepthE8ELS2_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1103 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i.i = icmp eq ptr %i.d, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i.i = icmp eq ptr %i.f, null
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %.not2.i.i, i1 false
  br i1 %or.cond5.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !1104
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !1105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !1103
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !1104
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !1105
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !1106 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !1104
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EED2Ev.exit: ; preds = %bb.a, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS_8BitDepthE8ELS2_1EE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1102 ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp sgt i64 %3, 1
  %or.cond = and i1 %i.d, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1103 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1105 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1106 ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1100
  %i.m = trunc i64 %i.l to i32
  tail call void %i.b(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, i32 noundef %i.m, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp sgt i64 %3, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit47
  %.064 = phi ptr [ %1, %.lr.ph ], [ %i.cr, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit47 ] ; 5 uses
  %.03663 = phi ptr [ %2, %.lr.ph ], [ %i.cs, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit47 ] ; 5 uses
  %.03762 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit47 ]
  %4 = load float, ptr %i.o, align 8, !tbaa !1108 ; 3 uses
  %i.r = load float, ptr %.064, align 4, !tbaa !72
  %5 = fmul float %4, %i.r                        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.064, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !72
  %i.u = fmul float %4, %i.t                      ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %7 = load float, ptr %6, align 4, !tbaa !72
  %8 = fmul float %4, %7                          ; 2 uses
  %i.v = fcmp ogt float %5, 0.000000e+00
  %i.w = load float, ptr %i.p, align 4, !tbaa !72 ; 6 uses
  %i.x = select i1 %i.v, float %5, float 0.000000e+00 ; 2 uses
  %i.y = fcmp olt float %i.w, %i.x
  %i.z = select i1 %i.y, float %i.w, float %i.x   ; 3 uses
  %9 = fcmp ogt float %i.u, 0.000000e+00
  %10 = select i1 %9, float %i.u, float 0.000000e+00 ; 2 uses
  %11 = fcmp olt float %i.w, %10
  %12 = select i1 %11, float %i.w, float %10      ; 3 uses
  %13 = fcmp ogt float %8, 0.000000e+00
  %14 = select i1 %13, float %8, float 0.000000e+00 ; 2 uses
  %15 = fcmp olt float %i.w, %14
  %16 = select i1 %15, float %i.w, float %14      ; 3 uses
  %i.aa = tail call noundef float @llvm.floor.f32(float %i.z)
  %i.ab = fptoui float %i.aa to i32
  %i.ac = tail call noundef float @llvm.floor.f32(float %12)
  %i.ad = fptoui float %i.ac to i32
  %i.ae = tail call noundef float @llvm.floor.f32(float %16)
  %i.af = fptoui float %i.ae to i32
  %17 = tail call noundef float @llvm.ceil.f32(float %i.z)
  %18 = fptoui float %17 to i32                   ; 2 uses
  %19 = tail call noundef float @llvm.ceil.f32(float %12)
  %i.ag = fptoui float %19 to i32                 ; 2 uses
  %20 = tail call noundef float @llvm.ceil.f32(float %16)
  %i.ah = fptoui float %20 to i32                 ; 2 uses
  %i.ai = uitofp i32 %18 to float
  %i.aj = fsub float %i.ai, %i.z
  %i.ak = uitofp i32 %i.ag to float
  %i.al = fsub float %i.ak, %12
  %i.am = uitofp i32 %i.ah to float
  %i.an = fsub float %i.am, %16
  %i.ao = zext i32 %18 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !72 ; 2 uses
  %i.ar = zext i32 %i.ab to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !72
  %i.au = fsub float %i.at, %i.aq
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.aj, float %i.aq)
  %i.aw = fadd float %i.av, 5.000000e-01          ; 3 uses
  %i.ax = fcmp ogt float %i.aw, 2.550000e+02
  br i1 %i.ax, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = fcmp olt float %i.aw, 0.000000e+00
  %i.az = select i1 %i.ay, float 0.000000e+00, float %i.aw
  %i.ba = fptoui float %i.az to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %bb.d, %bb.e
  %i.bb = phi i8 [ %i.ba, %bb.e ], [ -1, %bb.d ]
  store i8 %i.bb, ptr %.03663, align 1, !tbaa !66
  %i.bc = zext i32 %i.ag to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !72 ; 2 uses
  %i.bf = zext i32 %i.ad to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !72
  %i.bi = fsub float %i.bh, %i.be
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.al, float %i.be)
  %i.bk = fadd float %i.bj, 5.000000e-01          ; 3 uses
  %i.bl = fcmp ogt float %i.bk, 2.550000e+02
  br i1 %i.bl, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit45, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.bm = fcmp olt float %i.bk, 0.000000e+00
  %i.bn = select i1 %i.bm, float 0.000000e+00, float %i.bk
  %i.bo = fptoui float %i.bn to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit45

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit45: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.f
  %i.bp = phi i8 [ %i.bo, %bb.f ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.03663, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !66
  %i.br = zext i32 %i.ah to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !72 ; 2 uses
  %i.bu = zext i32 %i.af to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !72
  %i.bx = fsub float %i.bw, %i.bt
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.an, float %i.bt)
  %i.bz = fadd float %i.by, 5.000000e-01          ; 3 uses
  %i.ca = fcmp ogt float %i.bz, 2.550000e+02
  br i1 %i.ca, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit46, label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit45
  %i.cb = fcmp olt float %i.bz, 0.000000e+00
  %i.cc = select i1 %i.cb, float 0.000000e+00, float %i.bz
  %i.cd = fptoui float %i.cc to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit46

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit46: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit45, %bb.g
  %i.ce = phi i8 [ %i.cd, %bb.g ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit45 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.03663, i64 2
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !66
  %i.cg = getelementptr inbounds nuw i8, ptr %.064, i64 12
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !72
  %i.ci = load float, ptr %i.q, align 8, !tbaa !1107
  %i.cj = fmul float %i.ch, %i.ci
  %i.ck = fadd float %i.cj, 5.000000e-01          ; 3 uses
  %i.cl = fcmp ogt float %i.ck, 2.550000e+02
  br i1 %i.cl, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit47, label %bb.h

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit46
  %i.cm = fcmp olt float %i.ck, 0.000000e+00
  %i.cn = select i1 %i.cm, float 0.000000e+00, float %i.ck
  %i.co = fptoui float %i.cn to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit47

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit47: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit46, %bb.h
  %i.cp = phi i8 [ %i.co, %bb.h ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit46 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.03663, i64 3
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !66
  %i.cr = getelementptr inbounds nuw i8, ptr %.064, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.03663, i64 4
  %i.ct = add nuw nsw i64 %.03762, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ct, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !8109

.loopexit:                                        ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit47, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #14

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #21, !inline_history !8110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS1_8BitDepthE8ELS4_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !66
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1103 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i = icmp eq ptr %i.d, null
  %or.cond.i = select i1 %.not.i, i1 %.not1.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i = icmp eq ptr %i.f, null
  %or.cond5.i = select i1 %or.cond.i, i1 %.not2.i, i1 false
  br i1 %or.cond5.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !1105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !1103
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !1105
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !1106 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EE5resetEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EE5resetEv.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EE5resetEv.exit: ; preds = %bb.f, %bb.g, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_122Lut1DRendererHueAdjustILNS_8BitDepthE8ELS2_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1103 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i.i = icmp eq ptr %i.d, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i.i = icmp eq ptr %i.f, null
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %.not2.i.i, i1 false
  br i1 %or.cond5.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !1104
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !1105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !1103
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !1104
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !1105
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !1106 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !1104
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_125InvLut1DRendererHueAdjustILNS_8BitDepthE8ELS2_8EE5applyEPKvPvl:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bv = phi float [ %i.bu, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bw = load float, ptr %i.g, align 8, !tbaa !1285
  %i.bx = load float, ptr %i.j, align 8, !tbaa !1281
  %i.by = load float, ptr %i.k, align 8, !tbaa !1286 ; 3 uses
  %i.bz = fmul float %i.as, %i.bx                 ; 2 uses
  %i.ca = load float, ptr %i.f, align 4, !tbaa !72 ; 2 uses
  %i.cb = fcmp olt float %i.bz, %i.ca
  %i.cc = load float, ptr %i.i, align 4, !tbaa !72 ; 2 uses
  %i.cd = select i1 %i.cb, float %i.ca, float %i.bz ; 2 uses
  %i.ce = fcmp olt float %i.cc, %i.cd
  %i.cf = select i1 %i.ce, float %i.cc, float %i.cd ; 2 uses
  br i1 %i.p, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit

_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.d, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.cg = lshr i64 %.017.i.i.i, 1                 ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i, i64 %i.cg ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !72
  %i.cj = fcmp olt float %i.ci, %i.cf             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cl = xor i64 %i.cg, -1
  %i.cm = add nsw i64 %.017.i.i.i, %i.cl
  %.112.i.i.i = select i1 %i.cj, ptr %i.ck, ptr %.01116.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.cj, i64 %i.cm, i64 %i.cg ; 2 uses
  %i.cn = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.cn, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit, !llvm.loop !3

_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit: ; preds = %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.d
  %.011.lcssa.i.i.i = phi ptr [ %i.f, %bb.d ], [ %.112.i.i.i, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.co = icmp ugt ptr %.011.lcssa.i.i.i, %i.f
  %spec.select.idx.i = select i1 %i.co, i64 -4, i64 0
  %spec.select.i = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 %spec.select.idx.i ; 4 uses
  %i.cp = icmp ult ptr %spec.select.i, %i.i
  %.025.idx.i = select i1 %i.cp, i64 4, i64 0
  %.025.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.025.idx.i
  %i.cq = load float, ptr %.025.i, align 4, !tbaa !72 ; 2 uses
  %i.cr = load float, ptr %spec.select.i, align 4, !tbaa !72 ; 3 uses
  %i.cs = fcmp ogt float %i.cq, %i.cr
  %i.ct = fsub float %i.cf, %i.cr
  %i.cu = fsub float %i.cq, %i.cr
  %i.cv = fdiv float %i.ct, %i.cu
  %.026.i = select i1 %i.cs, float %i.cv, float 0.000000e+00
  %i.cw = ptrtoint ptr %spec.select.i to i64
  %i.cx = sub i64 %i.cw, %i.m
  %i.cy = ashr exact i64 %i.cx, 2
  %i.cz = sitofp i64 %i.cy to float
  %i.da = fadd float %i.bw, %i.cz
  %i.db = fadd float %.026.i, %i.da
  %i.dc = fmul float %i.by, %i.db
  store float %i.dc, ptr %i.b, align 8, !tbaa !72
  %i.dd = load float, ptr %i.t, align 8, !tbaa !1289
  %i.de = load float, ptr %i.w, align 8, !tbaa !1282
  %i.df = fmul float %i.at, %i.de                 ; 2 uses
  %i.dg = load float, ptr %i.s, align 4, !tbaa !72 ; 2 uses
  %i.dh = fcmp olt float %i.df, %i.dg
  %i.di = load float, ptr %i.v, align 4, !tbaa !72 ; 2 uses
  %i.dj = select i1 %i.dh, float %i.dg, float %i.df ; 2 uses
  %i.dk = fcmp olt float %i.di, %i.dj
  %i.dl = select i1 %i.dk, float %i.di, float %i.dj ; 2 uses
  br i1 %i.ab, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i28, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit35

_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i28: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i28
  %.017.i.i.i29 = phi i64 [ %.1.i.i.i34, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i28 ], [ %i.aa, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit ] ; 2 uses
  %.01116.i.i.i30 = phi ptr [ %.112.i.i.i33, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i28 ], [ %i.s, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit ] ; 2 uses
  %i.dm = lshr i64 %.017.i.i.i29, 1               ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i30, i64 %i.dm ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !72
  %i.dp = fcmp olt float %i.do, %i.dl             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dr = xor i64 %i.dm, -1
  %i.ds = add nsw i64 %.017.i.i.i29, %i.dr
  %.112.i.i.i33 = select i1 %i.dp, ptr %i.dq, ptr %.01116.i.i.i30 ; 2 uses
  %.1.i.i.i34 = select i1 %i.dp, i64 %i.ds, i64 %i.dm ; 2 uses
  %i.dt = icmp sgt i64 %.1.i.i.i34, 0
  br i1 %i.dt, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i28, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit35, !llvm.loop !3

_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit35: ; preds = %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i28, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit
  %.011.lcssa.i.i.i22 = phi ptr [ %i.s, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit ], [ %.112.i.i.i33, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i28 ] ; 2 uses
  %i.du = icmp ugt ptr %.011.lcssa.i.i.i22, %i.s
  %spec.select.idx.i23 = select i1 %i.du, i64 -4, i64 0
  %spec.select.i24 = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i22, i64 %spec.select.idx.i23 ; 4 uses
  %i.dv = icmp ult ptr %spec.select.i24, %i.v
  %.025.idx.i25 = select i1 %i.dv, i64 4, i64 0
  %.025.i26 = getelementptr inbounds nuw i8, ptr %spec.select.i24, i64 %.025.idx.i25
  %i.dw = load float, ptr %.025.i26, align 4, !tbaa !72 ; 2 uses
  %i.dx = load float, ptr %spec.select.i24, align 4, !tbaa !72 ; 3 uses
  %i.dy = fcmp ogt float %i.dw, %i.dx
  %i.dz = fsub float %i.dl, %i.dx
  %i.ea = fsub float %i.dw, %i.dx
  %i.eb = fdiv float %i.dz, %i.ea
  %.026.i27 = select i1 %i.dy, float %i.eb, float 0.000000e+00
  %i.ec = ptrtoint ptr %spec.select.i24 to i64
  %i.ed = sub i64 %i.ec, %i.y
  %i.ee = ashr exact i64 %i.ed, 2
  %i.ef = sitofp i64 %i.ee to float
  %i.eg = fadd float %i.dd, %i.ef
  %i.eh = fadd float %.026.i27, %i.eg
  %i.ei = fmul float %i.by, %i.eh
  store float %i.ei, ptr %i.q, align 4, !tbaa !72
  %i.ej = load float, ptr %i.af, align 8, !tbaa !1292
  %i.ek = load float, ptr %i.ai, align 8, !tbaa !1283
  %i.el = fmul float %i.ar, %i.ek                 ; 2 uses
  %i.em = load float, ptr %i.ae, align 4, !tbaa !72 ; 2 uses
  %i.en = fcmp olt float %i.el, %i.em
  %i.eo = load float, ptr %i.ah, align 4, !tbaa !72 ; 2 uses
  %i.ep = select i1 %i.en, float %i.em, float %i.el ; 2 uses
  %i.eq = fcmp olt float %i.eo, %i.ep
  %i.er = select i1 %i.eq, float %i.eo, float %i.ep ; 2 uses
  br i1 %i.an, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i42, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit49

_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i42: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit35, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i42
  %.017.i.i.i43 = phi i64 [ %.1.i.i.i48, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i42 ], [ %i.am, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit35 ] ; 2 uses
  %.01116.i.i.i44 = phi ptr [ %.112.i.i.i47, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i42 ], [ %i.ae, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit35 ] ; 2 uses
  %i.es = lshr i64 %.017.i.i.i43, 1               ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i44, i64 %i.es ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !72
  %i.ev = fcmp olt float %i.eu, %i.er             ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ex = xor i64 %i.es, -1
  %i.ey = add nsw i64 %.017.i.i.i43, %i.ex
  %.112.i.i.i47 = select i1 %i.ev, ptr %i.ew, ptr %.01116.i.i.i44 ; 2 uses
  %.1.i.i.i48 = select i1 %i.ev, i64 %i.ey, i64 %i.es ; 2 uses
  %i.ez = icmp sgt i64 %.1.i.i.i48, 0
  br i1 %i.ez, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i42, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit49, !llvm.loop !3

_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit49: ; preds = %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i42, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit35
  %.011.lcssa.i.i.i36 = phi ptr [ %i.ae, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_110FindLutInvEPKffS3_fff.exit35 ], [ %.112.i.i.i47, %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i.i.i42 ] ; 2 uses
  %i.fa = icmp ugt ptr %.011.lcssa.i.i.i36, %i.ae
  %spec.select.idx.i37 = select i1 %i.fa, i64 -4, i64 0
  %spec.select.i38 = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i36, i64 %spec.select.idx.i37 ; 4 uses
  %i.fb = icmp ult ptr %spec.select.i38, %i.ah
  %.025.idx.i39 = select i1 %i.fb, i64 4, i64 0
  %.025.i40 = getelementptr inbounds nuw i8, ptr %spec.select.i38, i64 %.025.idx.i39
  %i.fc = load float, ptr %.025.i40, align 4, !tbaa !72 ; 2 uses
  %i.fd = load float, ptr %spec.select.i38, align 4, !tbaa !72 ; 3 uses
  %i.fe = fcmp ogt float %i.fc, %i.fd
  %i.ff = fsub float %i.er, %i.fd
  %i.fg = fsub float %i.fc, %i.fd
  %i.fh = fdiv float %i.ff, %i.fg
  %.026.i41 = select i1 %i.fe, float %i.fh, float 0.000000e+00
  %i.fi = ptrtoint ptr %spec.select.i38 to i64
  %i.fj = sub i64 %i.fi, %i.ak
  %i.fk = ashr exact i64 %i.fj, 2
  %i.fl = sitofp i64 %i.fk to float
  %i.fm = fadd float %i.ej, %i.fl
  %i.fn = fadd float %.026.i41, %i.fm
  %i.fo = fmul float %i.by, %i.fn
  store float %i.fo, ptr %i.ac, align 8, !tbaa !72
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bi
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !72
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bl
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !72 ; 2 uses
  %i.ft = fsub float %i.fq, %i.fs
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ft, float %i.fs)
  %i.fv = sext i32 %i.bf to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fv
  store float %i.fu, ptr %i.fw, align 4, !tbaa !72
  %i.fx = load <2 x float>, ptr %i.b, align 8, !tbaa !72
  store <2 x float> %i.fx, ptr %.02055, align 4, !tbaa !72
  %i.fy = load float, ptr %i.ac, align 8, !tbaa !72
  %i.fz = getelementptr inbounds nuw i8, ptr %.02055, i64 8
  store float %i.fy, ptr %i.fz, align 4, !tbaa !72
  %i.ga = getelementptr inbounds nuw i8, ptr %.057, i64 12
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !72
  %i.gc = load float, ptr %i.ao, align 8, !tbaa !1294
  %i.gd = fmul float %i.gb, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %.02055, i64 12
  store float %i.gd, ptr %i.ge, align 4, !tbaa !72
  %i.gf = getelementptr inbounds nuw i8, ptr %.057, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %.02055, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.gh = add nuw nsw i64 %.01956, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.gh, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9116
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{!3, !80}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSN16OpenColorIO_v2_511Lut1DOpDataE", !12, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!15 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!16 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !15, i64 8}
!17 = !{!16, !13, i64 0}
!18 = !{!"_ZTSSt12__mutex_base", !8, i64 0}
!19 = !{!"_ZTSSt5mutex", !18, i64 0}
!20 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !8, i64 16}
!25 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !12, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !28, i64 0}
!30 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !12, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !33, i64 0}
!35 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !20, i64 0, !24, i64 8, !24, i64 40, !29, i64 72, !34, i64 96}
!36 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !19, i64 8, !35, i64 48}
!37 = !{!"_ZTSN16OpenColorIO_v2_513InterpolationE", !8, i64 0}
!38 = !{!"_ZTSN16OpenColorIO_v2_59ArrayBaseE"}
!39 = !{!"p1 float", !12, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIfSaIfEE", !42, i64 0}
!44 = !{!"_ZTSN16OpenColorIO_v2_56ArrayTIfEE", !38, i64 0, !23, i64 8, !23, i64 16, !43, i64 24}
!45 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayE", !44, i64 0}
!46 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData9HalfFlagsE", !8, i64 0}
!47 = !{!"_ZTSN16OpenColorIO_v2_514Lut1DHueAdjustE", !8, i64 0}
!48 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !8, i64 0}
!49 = !{!"_ZTSN16OpenColorIO_v2_58BitDepthE", !8, i64 0}
!50 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpDataE", !36, i64 0, !37, i64 168, !45, i64 176, !46, i64 224, !47, i64 228, !48, i64 232, !8, i64 240, !49, i64 360}
!51 = !{!50, !48, i64 232}
!52 = !{!50, !46, i64 224}
!53 = !{!50, !47, i64 228}
!54 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!55 = !{!54, !9, i64 8}
!56 = !{!54, !9, i64 12}
!57 = !{!"vtable pointer", !7, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{}
!60 = !{!"p1 _ZTSN16OpenColorIO_v2_55OpCPUE", !12, i64 0}
!61 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0, !15, i64 8}
!62 = !{!61, !60, i64 0}
!63 = !{!15, !14, i64 0}
!64 = !{!"_ZTSSt9type_info", !21, i64 8}
!65 = !{!64, !21, i64 8}
!66 = !{!8, !8, i64 0}
!67 = !{!"_ZTSN16OpenColorIO_v2_55OpCPUE"}
!68 = !{!"float", !8, i64 0}
!69 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE1ELS2_1EEE", !67, i64 0, !23, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !68, i64 40, !49, i64 44, !68, i64 48, !68, i64 52, !12, i64 56}
!70 = !{!69, !23, i64 8}
!71 = !{!69, !49, i64 44}
!72 = !{!68, !68, i64 0}
!73 = !{!69, !12, i64 56}
!74 = !{!"_ZTSN16OpenColorIO_v2_57CPUInfoE", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !8, i64 77}
!75 = !{!74, !9, i64 0}
!76 = !{!69, !12, i64 16}
!77 = !{!69, !12, i64 24}
!78 = !{!69, !12, i64 32}
!79 = !{!69, !68, i64 40}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!12, !12, i64 0}
!82 = !{!9, !9, i64 0}
!83 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!84 = !{!40, !39, i64 0}
!85 = !{!69, !68, i64 48}
!86 = !{!69, !68, i64 52}
!87 = !{!"short", !8, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = !{!40, !39, i64 8}
!92 = !{!40, !39, i64 16}
!93 = !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_124InvLut1DRendererHalfCodeILNS_8BitDepthE1ELS2_1EED2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut1DRendererILNS_8BitDepthE1ELS2_1EED2Ev}
!94 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_115ComponentParamsE", !39, i64 0, !68, i64 8, !39, i64 16, !39, i64 24, !68, i64 32, !39, i64 40, !68, i64 48, !68, i64 52}
!95 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut1DRendererILNS_8BitDepthE1ELS2_1EEE", !67, i64 0, !68, i64 8, !94, i64 16, !94, i64 72, !94, i64 128, !23, i64 184, !43, i64 192, !43, i64 216, !43, i64 240, !68, i64 264}
!96 = !{!95, !68, i64 64}
!97 = !{!95, !68, i64 120}
!98 = !{!95, !68, i64 176}
!99 = !{!95, !68, i64 68}
!100 = !{!95, !39, i64 16}
!101 = !{!95, !68, i64 24}
!102 = !{!95, !39, i64 32}
!103 = !{!95, !68, i64 8}
!104 = !{!95, !39, i64 40}
!105 = !{!95, !68, i64 48}
!106 = !{!95, !39, i64 56}
!107 = !{!"p1 _ZTS14imath_half_uif", !12, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!95, !68, i64 124}
!110 = !{!95, !39, i64 72}
!111 = !{!95, !68, i64 80}
!112 = !{!95, !39, i64 88}
!113 = !{!95, !39, i64 96}
!114 = !{!95, !68, i64 104}
!115 = !{!95, !39, i64 112}
!116 = !{!95, !68, i64 180}
!117 = !{!95, !39, i64 128}
!118 = !{!95, !68, i64 136}
!119 = !{!95, !39, i64 144}
!120 = !{!95, !39, i64 152}
!121 = !{!95, !68, i64 160}
!122 = !{!95, !39, i64 168}
!123 = !{!95, !68, i64 264}
!124 = !{!44, !23, i64 16}
!125 = !{!95, !23, i64 184}
!126 = !{!"bool", !8, i64 0}
!127 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData19ComponentPropertiesE", !126, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32}
!128 = !{!127, !126, i64 0}
!129 = !{i8 0, i8 2}
!130 = !{!94, !68, i64 48}
!131 = !{!94, !68, i64 52}
!132 = !{!127, !23, i64 8}
!133 = !{!94, !68, i64 8}
!134 = !{!94, !39, i64 0}
!135 = !{!127, !23, i64 16}
!136 = !{!94, !39, i64 16}
!137 = !{!127, !23, i64 24}
!138 = !{!94, !68, i64 32}
!139 = !{!94, !39, i64 24}
!140 = !{!127, !23, i64 32}
!141 = !{!94, !39, i64 40}
!142 = !{!39, !39, i64 0}
!143 = !{i64 0, i64 8, !142, i64 8, i64 4, !72, i64 16, i64 8, !142, i64 24, i64 8, !142, i64 32, i64 4, !72, i64 40, i64 8, !142, i64 48, i64 4, !72, i64 52, i64 4, !72}
!144 = !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut1DRendererILNS_8BitDepthE1ELS2_1EED2Ev}
!145 = !{!"llvm.loop.unroll.disable"}
!146 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE1ELS2_2EEE", !67, i64 0, !23, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !68, i64 40, !49, i64 44, !68, i64 48, !68, i64 52, !12, i64 56}
!147 = !{!146, !23, i64 8}
!148 = !{!146, !49, i64 44}
!149 = !{!146, !12, i64 56}
!150 = !{!146, !12, i64 16}
!151 = !{!146, !12, i64 24}
!152 = !{!146, !12, i64 32}
!153 = !{!146, !68, i64 40}
!154 = !{!146, !68, i64 48}
!155 = !{!146, !68, i64 52}
!156 = !{!"branch_weights", i32 1, i32 1048575}
!157 = !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_124InvLut1DRendererHalfCodeILNS_8BitDepthE1ELS2_2EED2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut1DRendererILNS_8BitDepthE1ELS2_2EED2Ev}
!158 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut1DRendererILNS_8BitDepthE1ELS2_2EEE", !67, i64 0, !68, i64 8, !94, i64 16, !94, i64 72, !94, i64 128, !23, i64 184, !43, i64 192, !43, i64 216, !43, i64 240, !68, i64 264}
!159 = !{!158, !68, i64 64}
!160 = !{!158, !68, i64 120}
!161 = !{!158, !68, i64 176}
!162 = !{!158, !68, i64 68}
!163 = !{!158, !68, i64 124}
!164 = !{!158, !68, i64 180}
!165 = !{!158, !68, i64 264}
!166 = !{!158, !23, i64 184}
!167 = !{!158, !68, i64 8}
!168 = !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut1DRendererILNS_8BitDepthE1ELS2_2EED2Ev}
end_hunk_1
