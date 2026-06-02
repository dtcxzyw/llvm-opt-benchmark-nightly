inline.NumInlined: 24572
inline.NumDeleted: 8059
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EE10updateDataItEEvRSt10shared_ptrIKNS_11Lut1DOpDataEE:bb.a
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !7897
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #23
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !7898
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EE9resetDataItEEvv.exit, %.lr.ph
  %.055 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EE9resetDataItEEvv.exit ] ; 5 uses
  %i.ae = mul i64 %.055, 3                        ; 3 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !230
  %i.ai = fmul float %i.ah, %i.r
  %i.aj = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ai)
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !7895
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.055
  store float %i.aj, ptr %i.al, align 4, !tbaa !230
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ae
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !230
  %i.aq = fmul float %i.ap, %i.r
  %i.ar = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.aq)
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !7897
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.055
  store float %i.ar, ptr %i.at, align 4, !tbaa !230
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.ae
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !230
  %i.ay = fmul float %i.ax, %i.r
  %i.az = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ay)
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !7898
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.055
  store float %i.az, ptr %i.bb, align 4, !tbaa !230
  %i.bc = add nuw i64 %.055, 1                    ; 2 uses
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !7891
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !7909

._crit_edge:                                      ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EE9resetDataItEEvv.exit
  %i.bf = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 1)
  %i.bg = fptrunc double %i.bf to float
  %i.bh = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bi = fptrunc double %i.bh to float
  %i.bj = fdiv float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.bj, ptr %i.bk, align 8, !tbaa !7899
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !7891
  %i.bm = uitofp i64 %i.bl to float
  %i.bn = fadd float %i.bm, -1.000000e+00
  %i.bo = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bp = fptrunc double %i.bo to float
  %i.bq = fdiv float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.bq, ptr %i.br, align 8, !tbaa !7903
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !7891
  %i.bt = uitofp i64 %i.bs to float
  %i.bu = fadd float %i.bt, -1.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bu, ptr %i.bv, align 4, !tbaa !7904
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21, !inline_history !7910
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS1_8BitDepthE8ELS4_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !224
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7895 ; 2 uses
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
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !7896
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !7897
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !7895
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !7896
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !7897
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !7898 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !7896
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EED2Ev.exit: ; preds = %bb.f, %bb.g, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_1EE5applyEPKvPvl(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7895 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7897 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7898 ; 2 uses
  %i.i = icmp sgt i64 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit36, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit36
  %.044 = phi ptr [ %1, %.lr.ph ], [ %i.dl, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit36 ] ; 4 uses
  %.03143 = phi ptr [ %2, %.lr.ph ], [ %i.dm, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit36 ] ; 5 uses
  %.03242 = phi i64 [ 0, %.lr.ph ], [ %i.dn, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit36 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.n = load <2 x float>, ptr %.044, align 4, !tbaa !230 ; 3 uses
  %4 = extractelement <2 x float> %i.n, i64 1     ; 3 uses
  %5 = extractelement <2 x float> %i.n, i64 0     ; 3 uses
  store <2 x float> %i.n, ptr %i.a, align 8, !tbaa !230
  %6 = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %7 = load float, ptr %6, align 4, !tbaa !230    ; 4 uses
  store float %7, ptr %i.j, align 8, !tbaa !230
  %i.o = fcmp ogt float %5, %4
  %i.p = select i1 %i.o, i64 5, i64 0
  %i.q = fcmp ogt float %4, %7
  %i.r = select i1 %i.q, i64 4, i64 0
  %i.s = fcmp ogt float %5, %7
  %.neg.i = select i1 %i.s, i64 -3, i64 0
  %i.t = getelementptr [4 x i8], ptr @_ZZN16OpenColorIO_v2_512_GLOBAL__N_113GamutMapUtils6Order3EPKfRiS4_S4_E5table, i64 %i.r
  %i.u = getelementptr [4 x i8], ptr %i.t, i64 %i.p
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.neg.i ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = getelementptr i8, ptr %i.v, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr i8, ptr %i.v, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %5) ; 3 uses
  %.sroa.48.0.extract.shift = lshr i64 %i.ac, 16
  %.sroa.59.0.extract.shift = lshr i64 %i.ac, 32
  %.sroa.59.0.extract.trunc = trunc nuw i64 %.sroa.59.0.extract.shift to i32
  %i.ad = bitcast i32 %.sroa.59.0.extract.trunc to float
  %i.ae = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %4) ; 3 uses
  %.sroa.45.0.extract.shift = lshr i64 %i.ae, 16
  %.sroa.56.0.extract.shift = lshr i64 %i.ae, 32
  %.sroa.56.0.extract.trunc = trunc nuw i64 %.sroa.56.0.extract.shift to i32
  %i.af = bitcast i32 %.sroa.56.0.extract.trunc to float
  %i.ag = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %7) ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.ag, 16
  %.sroa.5.0.extract.shift = lshr i64 %i.ag, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ah = bitcast i32 %.sroa.5.0.extract.trunc to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ai = and i64 %.sroa.48.0.extract.shift, 65535
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !230 ; 2 uses
  %i.al = and i64 %i.ac, 65535
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !230
  %i.ao = fsub float 1.000000e+00, %i.ad
  %i.ap = fsub float %i.an, %i.ak
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ao, float %i.ak)
  store float %i.aq, ptr %i.b, align 4, !tbaa !230
  %i.ar = and i64 %.sroa.45.0.extract.shift, 65535
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !230 ; 2 uses
  %i.au = and i64 %i.ae, 65535
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !230
  %i.ax = fsub float 1.000000e+00, %i.af
  %i.ay = fsub float %i.aw, %i.at
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.ax, float %i.at)
  store float %i.az, ptr %i.k, align 4, !tbaa !230
  %i.ba = and i64 %.sroa.4.0.extract.shift, 65535
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !230 ; 2 uses
  %i.bd = and i64 %i.ag, 65535
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !230
  %i.bg = fsub float 1.000000e+00, %i.ah
  %i.bh = fsub float %i.bf, %i.bc
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.bg, float %i.bc)
  store float %i.bi, ptr %i.l, align 4, !tbaa !230
  %i.bj = sext i32 %i.x to i64                    ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !230
  %i.bm = sext i32 %i.ab to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !230 ; 2 uses
  %i.bp = fsub float %i.bl, %i.bo                 ; 2 uses
  %i.bq = fcmp oeq float %i.bp, 0.000000e+00
  %.pre = sext i32 %i.z to i64                    ; 2 uses
  br i1 %i.bq, label %._crit_edge45, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre
  %i.bs = load float, ptr %i.br, align 4, !tbaa !230
  %i.bt = fsub float %i.bs, %i.bo
  %i.bu = fdiv float %i.bt, %i.bp
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %bb.b, %bb.c
  %i.bv = phi float [ %i.bu, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bj
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !230
  %i.by = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bm
  %i.bz = load float, ptr %i.by, align 4, !tbaa !230 ; 2 uses
  %i.ca = fsub float %i.bx, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ca, float %i.bz)
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre
  store float %i.cb, ptr %i.cc, align 4, !tbaa !230
  %i.cd = load float, ptr %i.b, align 4, !tbaa !230
  %i.ce = fadd float %i.cd, 5.000000e-01          ; 3 uses
  %i.cf = fcmp ogt float %i.ce, 2.550000e+02
  br i1 %i.cf, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge45
  %i.cg = fcmp olt float %i.ce, 0.000000e+00
  %i.ch = select i1 %i.cg, float 0.000000e+00, float %i.ce
  %i.ci = fptoui float %i.ch to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %._crit_edge45, %bb.d
  %i.cj = phi i8 [ %i.ci, %bb.d ], [ -1, %._crit_edge45 ]
  store i8 %i.cj, ptr %.03143, align 1, !tbaa !224
  %i.ck = load float, ptr %i.k, align 4, !tbaa !230
  %i.cl = fadd float %i.ck, 5.000000e-01          ; 3 uses
  %i.cm = fcmp ogt float %i.cl, 2.550000e+02
  br i1 %i.cm, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit34, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.cn = fcmp olt float %i.cl, 0.000000e+00
  %i.co = select i1 %i.cn, float 0.000000e+00, float %i.cl
  %i.cp = fptoui float %i.co to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit34

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit34: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.e
  %i.cq = phi i8 [ %i.cp, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.03143, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !224
  %i.cs = load float, ptr %i.l, align 4, !tbaa !230
  %i.ct = fadd float %i.cs, 5.000000e-01          ; 3 uses
  %i.cu = fcmp ogt float %i.ct, 2.550000e+02
  br i1 %i.cu, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit35, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit34
  %i.cv = fcmp olt float %i.ct, 0.000000e+00
  %i.cw = select i1 %i.cv, float 0.000000e+00, float %i.ct
  %i.cx = fptoui float %i.cw to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit35

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit35: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit34, %bb.f
  %i.cy = phi i8 [ %i.cx, %bb.f ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit34 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.03143, i64 2
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !224
  %i.da = getelementptr inbounds nuw i8, ptr %.044, i64 12
  %i.db = load float, ptr %i.da, align 4, !tbaa !230
  %i.dc = load float, ptr %i.m, align 8, !tbaa !7899
  %i.dd = fmul float %i.db, %i.dc
  %i.de = fadd float %i.dd, 5.000000e-01          ; 3 uses
  %i.df = fcmp ogt float %i.de, 2.550000e+02
  br i1 %i.df, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit36, label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit35
  %i.dg = fcmp olt float %i.de, 0.000000e+00
  %i.dh = select i1 %i.dg, float 0.000000e+00, float %i.de
  %i.di = fptoui float %i.dh to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit36

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit36: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit35, %bb.g
  %i.dj = phi i8 [ %i.di, %bb.g ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit35 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.03143, i64 3
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !224
  %i.dl = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.03143, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.dn = add nuw nsw i64 %.03242, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !7911
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EEC2ERSt10shared_ptrIKNS_11Lut1DOpDataEES2_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_1EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !7891
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 8, ptr %i.i, align 4, !tbaa !7893
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !7894
  %i.l = load ptr, ptr %0, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.p = load i32, ptr %i.o, align 4, !tbaa !232
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.i, align 4, !tbaa !7893
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_521SSE2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.r)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !7894
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.u = load i32, ptr %i.t, align 4, !tbaa !232
  %i.v = and i32 %i.u, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.x = load i32, ptr %i.w, align 4, !tbaa !232
  %i.y = and i32 %i.x, 512
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !7893
  %i.aa = tail call noundef ptr @_ZN16OpenColorIO_v2_520AVXGetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.z)
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !7894
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !232
  %i.ad = and i32 %i.ac, 1024
  %.not6 = icmp eq i32 %i.ad, 0
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !232
  %i.ag = and i32 %i.af, 2048
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EE10updateDataItEEvRSt10shared_ptrIKNS_11Lut1DOpDataEE:bb.a
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #23
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !8109
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EE9resetDataItEEvv.exit, %.lr.ph
  %.055 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EE9resetDataItEEvv.exit ] ; 5 uses
  %i.ae = mul i64 %.055, 3                        ; 3 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !230
  %i.ai = fmul float %i.ah, %i.r
  %i.aj = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ai)
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !8106
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.055
  store float %i.aj, ptr %i.al, align 4, !tbaa !230
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ae
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !230
  %i.aq = fmul float %i.ap, %i.r
  %i.ar = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.aq)
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !8108
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.055
  store float %i.ar, ptr %i.at, align 4, !tbaa !230
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.ae
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !230
  %i.ay = fmul float %i.ax, %i.r
  %i.az = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ay)
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !8109
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.055
  store float %i.az, ptr %i.bb, align 4, !tbaa !230
  %i.bc = add nuw i64 %.055, 1                    ; 2 uses
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !8102
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !8120

._crit_edge:                                      ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EE9resetDataItEEvv.exit
  %i.bf = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 2)
  %i.bg = fptrunc double %i.bf to float
  %i.bh = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bi = fptrunc double %i.bh to float
  %i.bj = fdiv float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.bj, ptr %i.bk, align 8, !tbaa !8110
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !8102
  %i.bm = uitofp i64 %i.bl to float
  %i.bn = fadd float %i.bm, -1.000000e+00
  %i.bo = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bp = fptrunc double %i.bo to float
  %i.bq = fdiv float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.bq, ptr %i.br, align 8, !tbaa !8114
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !8102
  %i.bt = uitofp i64 %i.bs to float
  %i.bu = fadd float %i.bt, -1.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bu, ptr %i.bv, align 4, !tbaa !8115
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21, !inline_history !8121
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS1_8BitDepthE8ELS4_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !224
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8106 ; 2 uses
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
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !8107
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !8108
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8106
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !8107
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !8108
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8109 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !8107
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EED2Ev.exit: ; preds = %bb.f, %bb.g, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_2EE5applyEPKvPvl(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8106 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8108 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8109 ; 2 uses
  %i.i = icmp sgt i64 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load float, ptr %i.m, align 8, !tbaa !8110
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit36, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit36
  %.044 = phi ptr [ %1, %.lr.ph ], [ %i.dl, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit36 ] ; 4 uses
  %.03143 = phi ptr [ %2, %.lr.ph ], [ %i.dm, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit36 ] ; 5 uses
  %.03242 = phi i64 [ 0, %.lr.ph ], [ %i.dn, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit36 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.o = load <2 x float>, ptr %.044, align 4, !tbaa !230 ; 3 uses
  %4 = extractelement <2 x float> %i.o, i64 1     ; 3 uses
  %5 = extractelement <2 x float> %i.o, i64 0     ; 3 uses
  store <2 x float> %i.o, ptr %i.a, align 8, !tbaa !230
  %6 = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %7 = load float, ptr %6, align 4, !tbaa !230    ; 4 uses
  store float %7, ptr %i.j, align 8, !tbaa !230
  %i.p = fcmp ogt float %5, %4
  %i.q = select i1 %i.p, i64 5, i64 0
  %i.r = fcmp ogt float %4, %7
  %i.s = select i1 %i.r, i64 4, i64 0
  %i.t = fcmp ogt float %5, %7
  %.neg.i = select i1 %i.t, i64 -3, i64 0
  %i.u = getelementptr [4 x i8], ptr @_ZZN16OpenColorIO_v2_512_GLOBAL__N_113GamutMapUtils6Order3EPKfRiS4_S4_E5table, i64 %i.s
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %i.q
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %.neg.i ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = getelementptr i8, ptr %i.w, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %5) ; 3 uses
  %.sroa.48.0.extract.shift = lshr i64 %i.ad, 16
  %.sroa.59.0.extract.shift = lshr i64 %i.ad, 32
  %.sroa.59.0.extract.trunc = trunc nuw i64 %.sroa.59.0.extract.shift to i32
  %i.ae = bitcast i32 %.sroa.59.0.extract.trunc to float
  %i.af = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %4) ; 3 uses
  %.sroa.45.0.extract.shift = lshr i64 %i.af, 16
  %.sroa.56.0.extract.shift = lshr i64 %i.af, 32
  %.sroa.56.0.extract.trunc = trunc nuw i64 %.sroa.56.0.extract.shift to i32
  %i.ag = bitcast i32 %.sroa.56.0.extract.trunc to float
  %i.ah = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %7) ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.ah, 16
  %.sroa.5.0.extract.shift = lshr i64 %i.ah, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ai = bitcast i32 %.sroa.5.0.extract.trunc to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.aj = and i64 %.sroa.48.0.extract.shift, 65535
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !230 ; 2 uses
  %i.am = and i64 %i.ad, 65535
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !230
  %i.ap = fsub float 1.000000e+00, %i.ae
  %i.aq = fsub float %i.ao, %i.al
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.ap, float %i.al)
  store float %i.ar, ptr %i.b, align 4, !tbaa !230
  %i.as = and i64 %.sroa.45.0.extract.shift, 65535
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !230 ; 2 uses
  %i.av = and i64 %i.af, 65535
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !230
  %i.ay = fsub float 1.000000e+00, %i.ag
  %i.az = fsub float %i.ax, %i.au
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.az, float %i.ay, float %i.au)
  store float %i.ba, ptr %i.k, align 4, !tbaa !230
  %i.bb = and i64 %.sroa.4.0.extract.shift, 65535
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !230 ; 2 uses
  %i.be = and i64 %i.ah, 65535
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !230
  %i.bh = fsub float 1.000000e+00, %i.ai
  %i.bi = fsub float %i.bg, %i.bd
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.bd)
  store float %i.bj, ptr %i.l, align 4, !tbaa !230
  %i.bk = sext i32 %i.y to i64                    ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !230
  %i.bn = sext i32 %i.ac to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !230 ; 2 uses
  %i.bq = fsub float %i.bm, %i.bp                 ; 2 uses
  %i.br = fcmp oeq float %i.bq, 0.000000e+00
  %.pre = sext i32 %i.aa to i64                   ; 2 uses
  br i1 %i.br, label %._crit_edge45, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !230
  %i.bu = fsub float %i.bt, %i.bp
  %i.bv = fdiv float %i.bu, %i.bq
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %bb.b, %bb.c
  %i.bw = phi float [ %i.bv, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bk
  %i.by = load float, ptr %i.bx, align 4, !tbaa !230
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bn
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !230 ; 2 uses
  %i.cb = fsub float %i.by, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cb, float %i.ca)
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre
  store float %i.cc, ptr %i.cd, align 4, !tbaa !230
  %i.ce = load float, ptr %i.b, align 4, !tbaa !230
  %i.cf = fadd float %i.ce, 5.000000e-01          ; 3 uses
  %i.cg = fcmp ogt float %i.cf, 1.023000e+03
  br i1 %i.cg, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge45
  %i.ch = fcmp olt float %i.cf, 0.000000e+00
  %i.ci = select i1 %i.ch, float 0.000000e+00, float %i.cf
  %i.cj = fptoui float %i.ci to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit: ; preds = %._crit_edge45, %bb.d
  %i.ck = phi i16 [ %i.cj, %bb.d ], [ 1023, %._crit_edge45 ]
  store i16 %i.ck, ptr %.03143, align 2, !tbaa !254
  %i.cl = load float, ptr %i.k, align 4, !tbaa !230
  %i.cm = fadd float %i.cl, 5.000000e-01          ; 3 uses
  %i.cn = fcmp ogt float %i.cm, 1.023000e+03
  br i1 %i.cn, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit34, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit
  %i.co = fcmp olt float %i.cm, 0.000000e+00
  %i.cp = select i1 %i.co, float 0.000000e+00, float %i.cm
  %i.cq = fptoui float %i.cp to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit34

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit34: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit, %bb.e
  %i.cr = phi i16 [ %i.cq, %bb.e ], [ 1023, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.03143, i64 2
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !254
  %i.ct = load float, ptr %i.l, align 4, !tbaa !230
  %i.cu = fadd float %i.ct, 5.000000e-01          ; 3 uses
  %i.cv = fcmp ogt float %i.cu, 1.023000e+03
  br i1 %i.cv, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit35, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit34
  %i.cw = fcmp olt float %i.cu, 0.000000e+00
  %i.cx = select i1 %i.cw, float 0.000000e+00, float %i.cu
  %i.cy = fptoui float %i.cx to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit35

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit35: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit34, %bb.f
  %i.cz = phi i16 [ %i.cy, %bb.f ], [ 1023, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit34 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.03143, i64 4
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !254
  %i.db = getelementptr inbounds nuw i8, ptr %.044, i64 12
  %i.dc = load float, ptr %i.db, align 4, !tbaa !230
  %i.dd = fmul float %i.dc, %i.n
  %i.de = fadd float %i.dd, 5.000000e-01          ; 3 uses
  %i.df = fcmp ogt float %i.de, 1.023000e+03
  br i1 %i.df, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit36, label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit35
  %i.dg = fcmp olt float %i.de, 0.000000e+00
  %i.dh = select i1 %i.dg, float 0.000000e+00, float %i.de
  %i.di = fptoui float %i.dh to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit36

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit36: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit35, %bb.g
  %i.dj = phi i16 [ %i.di, %bb.g ], [ 1023, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE2EE9CastValueEf.exit35 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.03143, i64 6
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !254
  %i.dl = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.03143, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.dn = add nuw nsw i64 %.03242, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8122
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EEC2ERSt10shared_ptrIKNS_11Lut1DOpDataEES2_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_2EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !8102
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 8, ptr %i.i, align 4, !tbaa !8104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !8105
  %i.l = load ptr, ptr %0, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.p = load i32, ptr %i.o, align 4, !tbaa !232
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.i, align 4, !tbaa !8104
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_521SSE2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.r)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !8105
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.u = load i32, ptr %i.t, align 4, !tbaa !232
  %i.v = and i32 %i.u, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.x = load i32, ptr %i.w, align 4, !tbaa !232
  %i.y = and i32 %i.x, 512
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !8104
  %i.aa = tail call noundef ptr @_ZN16OpenColorIO_v2_520AVXGetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.z)
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !8105
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !232
  %i.ad = and i32 %i.ac, 1024
  %.not6 = icmp eq i32 %i.ad, 0
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !232
  %i.ag = and i32 %i.af, 2048
  %.not7 = icmp eq i32 %i.ag, 0
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EE10updateDataItEEvRSt10shared_ptrIKNS_11Lut1DOpDataEE:bb.a
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #23
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !8311
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EE9resetDataItEEvv.exit, %.lr.ph
  %.055 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EE9resetDataItEEvv.exit ] ; 5 uses
  %i.ae = mul i64 %.055, 3                        ; 3 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !230
  %i.ai = fmul float %i.ah, %i.r
  %i.aj = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ai)
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !8308
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.055
  store float %i.aj, ptr %i.al, align 4, !tbaa !230
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ae
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !230
  %i.aq = fmul float %i.ap, %i.r
  %i.ar = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.aq)
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !8310
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.055
  store float %i.ar, ptr %i.at, align 4, !tbaa !230
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.ae
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !230
  %i.ay = fmul float %i.ax, %i.r
  %i.az = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ay)
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !8311
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.055
  store float %i.az, ptr %i.bb, align 4, !tbaa !230
  %i.bc = add nuw i64 %.055, 1                    ; 2 uses
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !8304
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !8322

._crit_edge:                                      ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EE9resetDataItEEvv.exit
  %i.bf = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 3)
  %i.bg = fptrunc double %i.bf to float
  %i.bh = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bi = fptrunc double %i.bh to float
  %i.bj = fdiv float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.bj, ptr %i.bk, align 8, !tbaa !8312
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !8304
  %i.bm = uitofp i64 %i.bl to float
  %i.bn = fadd float %i.bm, -1.000000e+00
  %i.bo = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bp = fptrunc double %i.bo to float
  %i.bq = fdiv float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.bq, ptr %i.br, align 8, !tbaa !8316
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !8304
  %i.bt = uitofp i64 %i.bs to float
  %i.bu = fadd float %i.bt, -1.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bu, ptr %i.bv, align 4, !tbaa !8317
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21, !inline_history !8323
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS1_8BitDepthE8ELS4_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !224
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_3EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8308 ; 2 uses
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
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !8309
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !8310
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8308
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !8309
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !8310
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8311 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !8309
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EED2Ev.exit: ; preds = %bb.f, %bb.g, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_3EE5applyEPKvPvl(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8308 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8310 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8311 ; 2 uses
  %i.i = icmp sgt i64 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load float, ptr %i.m, align 8, !tbaa !8312
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit36, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit36
  %.044 = phi ptr [ %1, %.lr.ph ], [ %i.dl, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit36 ] ; 4 uses
  %.03143 = phi ptr [ %2, %.lr.ph ], [ %i.dm, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit36 ] ; 5 uses
  %.03242 = phi i64 [ 0, %.lr.ph ], [ %i.dn, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit36 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.o = load <2 x float>, ptr %.044, align 4, !tbaa !230 ; 3 uses
  %4 = extractelement <2 x float> %i.o, i64 1     ; 3 uses
  %5 = extractelement <2 x float> %i.o, i64 0     ; 3 uses
  store <2 x float> %i.o, ptr %i.a, align 8, !tbaa !230
  %6 = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %7 = load float, ptr %6, align 4, !tbaa !230    ; 4 uses
  store float %7, ptr %i.j, align 8, !tbaa !230
  %i.p = fcmp ogt float %5, %4
  %i.q = select i1 %i.p, i64 5, i64 0
  %i.r = fcmp ogt float %4, %7
  %i.s = select i1 %i.r, i64 4, i64 0
  %i.t = fcmp ogt float %5, %7
  %.neg.i = select i1 %i.t, i64 -3, i64 0
  %i.u = getelementptr [4 x i8], ptr @_ZZN16OpenColorIO_v2_512_GLOBAL__N_113GamutMapUtils6Order3EPKfRiS4_S4_E5table, i64 %i.s
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %i.q
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %.neg.i ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = getelementptr i8, ptr %i.w, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %5) ; 3 uses
  %.sroa.48.0.extract.shift = lshr i64 %i.ad, 16
  %.sroa.59.0.extract.shift = lshr i64 %i.ad, 32
  %.sroa.59.0.extract.trunc = trunc nuw i64 %.sroa.59.0.extract.shift to i32
  %i.ae = bitcast i32 %.sroa.59.0.extract.trunc to float
  %i.af = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %4) ; 3 uses
  %.sroa.45.0.extract.shift = lshr i64 %i.af, 16
  %.sroa.56.0.extract.shift = lshr i64 %i.af, 32
  %.sroa.56.0.extract.trunc = trunc nuw i64 %.sroa.56.0.extract.shift to i32
  %i.ag = bitcast i32 %.sroa.56.0.extract.trunc to float
  %i.ah = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %7) ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.ah, 16
  %.sroa.5.0.extract.shift = lshr i64 %i.ah, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ai = bitcast i32 %.sroa.5.0.extract.trunc to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.aj = and i64 %.sroa.48.0.extract.shift, 65535
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !230 ; 2 uses
  %i.am = and i64 %i.ad, 65535
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !230
  %i.ap = fsub float 1.000000e+00, %i.ae
  %i.aq = fsub float %i.ao, %i.al
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.ap, float %i.al)
  store float %i.ar, ptr %i.b, align 4, !tbaa !230
  %i.as = and i64 %.sroa.45.0.extract.shift, 65535
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !230 ; 2 uses
  %i.av = and i64 %i.af, 65535
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !230
  %i.ay = fsub float 1.000000e+00, %i.ag
  %i.az = fsub float %i.ax, %i.au
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.az, float %i.ay, float %i.au)
  store float %i.ba, ptr %i.k, align 4, !tbaa !230
  %i.bb = and i64 %.sroa.4.0.extract.shift, 65535
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !230 ; 2 uses
  %i.be = and i64 %i.ah, 65535
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !230
  %i.bh = fsub float 1.000000e+00, %i.ai
  %i.bi = fsub float %i.bg, %i.bd
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.bd)
  store float %i.bj, ptr %i.l, align 4, !tbaa !230
  %i.bk = sext i32 %i.y to i64                    ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !230
  %i.bn = sext i32 %i.ac to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !230 ; 2 uses
  %i.bq = fsub float %i.bm, %i.bp                 ; 2 uses
  %i.br = fcmp oeq float %i.bq, 0.000000e+00
  %.pre = sext i32 %i.aa to i64                   ; 2 uses
  br i1 %i.br, label %._crit_edge45, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !230
  %i.bu = fsub float %i.bt, %i.bp
  %i.bv = fdiv float %i.bu, %i.bq
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %bb.b, %bb.c
  %i.bw = phi float [ %i.bv, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bk
  %i.by = load float, ptr %i.bx, align 4, !tbaa !230
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bn
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !230 ; 2 uses
  %i.cb = fsub float %i.by, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cb, float %i.ca)
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre
  store float %i.cc, ptr %i.cd, align 4, !tbaa !230
  %i.ce = load float, ptr %i.b, align 4, !tbaa !230
  %i.cf = fadd float %i.ce, 5.000000e-01          ; 3 uses
  %i.cg = fcmp ogt float %i.cf, 4.095000e+03
  br i1 %i.cg, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge45
  %i.ch = fcmp olt float %i.cf, 0.000000e+00
  %i.ci = select i1 %i.ch, float 0.000000e+00, float %i.cf
  %i.cj = fptoui float %i.ci to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit: ; preds = %._crit_edge45, %bb.d
  %i.ck = phi i16 [ %i.cj, %bb.d ], [ 4095, %._crit_edge45 ]
  store i16 %i.ck, ptr %.03143, align 2, !tbaa !254
  %i.cl = load float, ptr %i.k, align 4, !tbaa !230
  %i.cm = fadd float %i.cl, 5.000000e-01          ; 3 uses
  %i.cn = fcmp ogt float %i.cm, 4.095000e+03
  br i1 %i.cn, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit34, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit
  %i.co = fcmp olt float %i.cm, 0.000000e+00
  %i.cp = select i1 %i.co, float 0.000000e+00, float %i.cm
  %i.cq = fptoui float %i.cp to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit34

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit34: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit, %bb.e
  %i.cr = phi i16 [ %i.cq, %bb.e ], [ 4095, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.03143, i64 2
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !254
  %i.ct = load float, ptr %i.l, align 4, !tbaa !230
  %i.cu = fadd float %i.ct, 5.000000e-01          ; 3 uses
  %i.cv = fcmp ogt float %i.cu, 4.095000e+03
  br i1 %i.cv, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit35, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit34
  %i.cw = fcmp olt float %i.cu, 0.000000e+00
  %i.cx = select i1 %i.cw, float 0.000000e+00, float %i.cu
  %i.cy = fptoui float %i.cx to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit35

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit35: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit34, %bb.f
  %i.cz = phi i16 [ %i.cy, %bb.f ], [ 4095, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit34 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.03143, i64 4
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !254
  %i.db = getelementptr inbounds nuw i8, ptr %.044, i64 12
  %i.dc = load float, ptr %i.db, align 4, !tbaa !230
  %i.dd = fmul float %i.dc, %i.n
  %i.de = fadd float %i.dd, 5.000000e-01          ; 3 uses
  %i.df = fcmp ogt float %i.de, 4.095000e+03
  br i1 %i.df, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit36, label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit35
  %i.dg = fcmp olt float %i.de, 0.000000e+00
  %i.dh = select i1 %i.dg, float 0.000000e+00, float %i.de
  %i.di = fptoui float %i.dh to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit36

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit36: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit35, %bb.g
  %i.dj = phi i16 [ %i.di, %bb.g ], [ 4095, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE3EE9CastValueEf.exit35 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.03143, i64 6
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !254
  %i.dl = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.03143, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.dn = add nuw nsw i64 %.03242, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8324
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EEC2ERSt10shared_ptrIKNS_11Lut1DOpDataEES2_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_3EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !8304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 8, ptr %i.i, align 4, !tbaa !8306
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !8307
  %i.l = load ptr, ptr %0, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.p = load i32, ptr %i.o, align 4, !tbaa !232
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.i, align 4, !tbaa !8306
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_521SSE2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.r)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !8307
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.u = load i32, ptr %i.t, align 4, !tbaa !232
  %i.v = and i32 %i.u, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.x = load i32, ptr %i.w, align 4, !tbaa !232
  %i.y = and i32 %i.x, 512
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !8306
  %i.aa = tail call noundef ptr @_ZN16OpenColorIO_v2_520AVXGetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.z)
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !8307
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !232
  %i.ad = and i32 %i.ac, 1024
  %.not6 = icmp eq i32 %i.ad, 0
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !232
  %i.ag = and i32 %i.af, 2048
  %.not7 = icmp eq i32 %i.ag, 0
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EE10updateDataItEEvRSt10shared_ptrIKNS_11Lut1DOpDataEE:bb.a
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #23
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !8513
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EE9resetDataItEEvv.exit, %.lr.ph
  %.055 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EE9resetDataItEEvv.exit ] ; 5 uses
  %i.ae = mul i64 %.055, 3                        ; 3 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !230
  %i.ai = fmul float %i.ah, %i.r
  %i.aj = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ai)
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !8510
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.055
  store float %i.aj, ptr %i.al, align 4, !tbaa !230
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ae
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !230
  %i.aq = fmul float %i.ap, %i.r
  %i.ar = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.aq)
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !8512
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.055
  store float %i.ar, ptr %i.at, align 4, !tbaa !230
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.ae
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !230
  %i.ay = fmul float %i.ax, %i.r
  %i.az = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ay)
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !8513
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.055
  store float %i.az, ptr %i.bb, align 4, !tbaa !230
  %i.bc = add nuw i64 %.055, 1                    ; 2 uses
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !8506
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !8524

._crit_edge:                                      ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EE9resetDataItEEvv.exit
  %i.bf = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 5)
  %i.bg = fptrunc double %i.bf to float
  %i.bh = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bi = fptrunc double %i.bh to float
  %i.bj = fdiv float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.bj, ptr %i.bk, align 8, !tbaa !8514
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !8506
  %i.bm = uitofp i64 %i.bl to float
  %i.bn = fadd float %i.bm, -1.000000e+00
  %i.bo = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bp = fptrunc double %i.bo to float
  %i.bq = fdiv float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.bq, ptr %i.br, align 8, !tbaa !8518
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !8506
  %i.bt = uitofp i64 %i.bs to float
  %i.bu = fadd float %i.bt, -1.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bu, ptr %i.bv, align 4, !tbaa !8519
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21, !inline_history !8525
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS1_8BitDepthE8ELS4_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_5EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !224
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_5EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8510 ; 2 uses
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
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !8511
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !8512
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8510
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !8511
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !8512
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8513 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !8511
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EED2Ev.exit: ; preds = %bb.f, %bb.g, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_5EE5applyEPKvPvl(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8510 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8512 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8513 ; 2 uses
  %i.i = icmp sgt i64 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load float, ptr %i.m, align 8, !tbaa !8514
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit36, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit36
  %.044 = phi ptr [ %1, %.lr.ph ], [ %i.dl, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit36 ] ; 4 uses
  %.03143 = phi ptr [ %2, %.lr.ph ], [ %i.dm, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit36 ] ; 5 uses
  %.03242 = phi i64 [ 0, %.lr.ph ], [ %i.dn, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit36 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.o = load <2 x float>, ptr %.044, align 4, !tbaa !230 ; 3 uses
  %4 = extractelement <2 x float> %i.o, i64 1     ; 3 uses
  %5 = extractelement <2 x float> %i.o, i64 0     ; 3 uses
  store <2 x float> %i.o, ptr %i.a, align 8, !tbaa !230
  %6 = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %7 = load float, ptr %6, align 4, !tbaa !230    ; 4 uses
  store float %7, ptr %i.j, align 8, !tbaa !230
  %i.p = fcmp ogt float %5, %4
  %i.q = select i1 %i.p, i64 5, i64 0
  %i.r = fcmp ogt float %4, %7
  %i.s = select i1 %i.r, i64 4, i64 0
  %i.t = fcmp ogt float %5, %7
  %.neg.i = select i1 %i.t, i64 -3, i64 0
  %i.u = getelementptr [4 x i8], ptr @_ZZN16OpenColorIO_v2_512_GLOBAL__N_113GamutMapUtils6Order3EPKfRiS4_S4_E5table, i64 %i.s
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %i.q
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %.neg.i ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = getelementptr i8, ptr %i.w, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %5) ; 3 uses
  %.sroa.48.0.extract.shift = lshr i64 %i.ad, 16
  %.sroa.59.0.extract.shift = lshr i64 %i.ad, 32
  %.sroa.59.0.extract.trunc = trunc nuw i64 %.sroa.59.0.extract.shift to i32
  %i.ae = bitcast i32 %.sroa.59.0.extract.trunc to float
  %i.af = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %4) ; 3 uses
  %.sroa.45.0.extract.shift = lshr i64 %i.af, 16
  %.sroa.56.0.extract.shift = lshr i64 %i.af, 32
  %.sroa.56.0.extract.trunc = trunc nuw i64 %.sroa.56.0.extract.shift to i32
  %i.ag = bitcast i32 %.sroa.56.0.extract.trunc to float
  %i.ah = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %7) ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.ah, 16
  %.sroa.5.0.extract.shift = lshr i64 %i.ah, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ai = bitcast i32 %.sroa.5.0.extract.trunc to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.aj = and i64 %.sroa.48.0.extract.shift, 65535
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !230 ; 2 uses
  %i.am = and i64 %i.ad, 65535
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !230
  %i.ap = fsub float 1.000000e+00, %i.ae
  %i.aq = fsub float %i.ao, %i.al
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.ap, float %i.al)
  store float %i.ar, ptr %i.b, align 4, !tbaa !230
  %i.as = and i64 %.sroa.45.0.extract.shift, 65535
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !230 ; 2 uses
  %i.av = and i64 %i.af, 65535
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !230
  %i.ay = fsub float 1.000000e+00, %i.ag
  %i.az = fsub float %i.ax, %i.au
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.az, float %i.ay, float %i.au)
  store float %i.ba, ptr %i.k, align 4, !tbaa !230
  %i.bb = and i64 %.sroa.4.0.extract.shift, 65535
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !230 ; 2 uses
  %i.be = and i64 %i.ah, 65535
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !230
  %i.bh = fsub float 1.000000e+00, %i.ai
  %i.bi = fsub float %i.bg, %i.bd
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.bd)
  store float %i.bj, ptr %i.l, align 4, !tbaa !230
  %i.bk = sext i32 %i.y to i64                    ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !230
  %i.bn = sext i32 %i.ac to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !230 ; 2 uses
  %i.bq = fsub float %i.bm, %i.bp                 ; 2 uses
  %i.br = fcmp oeq float %i.bq, 0.000000e+00
  %.pre = sext i32 %i.aa to i64                   ; 2 uses
  br i1 %i.br, label %._crit_edge45, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !230
  %i.bu = fsub float %i.bt, %i.bp
  %i.bv = fdiv float %i.bu, %i.bq
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %bb.b, %bb.c
  %i.bw = phi float [ %i.bv, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bk
  %i.by = load float, ptr %i.bx, align 4, !tbaa !230
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bn
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !230 ; 2 uses
  %i.cb = fsub float %i.by, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cb, float %i.ca)
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre
  store float %i.cc, ptr %i.cd, align 4, !tbaa !230
  %i.ce = load float, ptr %i.b, align 4, !tbaa !230
  %i.cf = fadd float %i.ce, 5.000000e-01          ; 3 uses
  %i.cg = fcmp ogt float %i.cf, 6.553500e+04
  br i1 %i.cg, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge45
  %i.ch = fcmp olt float %i.cf, 0.000000e+00
  %i.ci = select i1 %i.ch, float 0.000000e+00, float %i.cf
  %i.cj = fptoui float %i.ci to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit: ; preds = %._crit_edge45, %bb.d
  %i.ck = phi i16 [ %i.cj, %bb.d ], [ -1, %._crit_edge45 ]
  store i16 %i.ck, ptr %.03143, align 2, !tbaa !254
  %i.cl = load float, ptr %i.k, align 4, !tbaa !230
  %i.cm = fadd float %i.cl, 5.000000e-01          ; 3 uses
  %i.cn = fcmp ogt float %i.cm, 6.553500e+04
  br i1 %i.cn, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit34, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit
  %i.co = fcmp olt float %i.cm, 0.000000e+00
  %i.cp = select i1 %i.co, float 0.000000e+00, float %i.cm
  %i.cq = fptoui float %i.cp to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit34

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit34: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit, %bb.e
  %i.cr = phi i16 [ %i.cq, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.03143, i64 2
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !254
  %i.ct = load float, ptr %i.l, align 4, !tbaa !230
  %i.cu = fadd float %i.ct, 5.000000e-01          ; 3 uses
  %i.cv = fcmp ogt float %i.cu, 6.553500e+04
  br i1 %i.cv, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit35, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit34
  %i.cw = fcmp olt float %i.cu, 0.000000e+00
  %i.cx = select i1 %i.cw, float 0.000000e+00, float %i.cu
  %i.cy = fptoui float %i.cx to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit35

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit35: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit34, %bb.f
  %i.cz = phi i16 [ %i.cy, %bb.f ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit34 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.03143, i64 4
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !254
  %i.db = getelementptr inbounds nuw i8, ptr %.044, i64 12
  %i.dc = load float, ptr %i.db, align 4, !tbaa !230
  %i.dd = fmul float %i.dc, %i.n
  %i.de = fadd float %i.dd, 5.000000e-01          ; 3 uses
  %i.df = fcmp ogt float %i.de, 6.553500e+04
  br i1 %i.df, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit36, label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit35
  %i.dg = fcmp olt float %i.de, 0.000000e+00
  %i.dh = select i1 %i.dg, float 0.000000e+00, float %i.de
  %i.di = fptoui float %i.dh to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit36

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit36: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit35, %bb.g
  %i.dj = phi i16 [ %i.di, %bb.g ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE5EE9CastValueEf.exit35 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.03143, i64 6
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !254
  %i.dl = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.03143, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.dn = add nuw nsw i64 %.03242, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8526
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EEC2ERSt10shared_ptrIKNS_11Lut1DOpDataEES2_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_5EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !8506
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 8, ptr %i.i, align 4, !tbaa !8508
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !8509
  %i.l = load ptr, ptr %0, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.p = load i32, ptr %i.o, align 4, !tbaa !232
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.i, align 4, !tbaa !8508
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_521SSE2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.r)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !8509
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.u = load i32, ptr %i.t, align 4, !tbaa !232
  %i.v = and i32 %i.u, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.x = load i32, ptr %i.w, align 4, !tbaa !232
  %i.y = and i32 %i.x, 512
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !8508
  %i.aa = tail call noundef ptr @_ZN16OpenColorIO_v2_520AVXGetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.z)
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !8509
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !232
  %i.ad = and i32 %i.ac, 1024
  %.not6 = icmp eq i32 %i.ad, 0
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !232
  %i.ag = and i32 %i.af, 2048
  %.not7 = icmp eq i32 %i.ag, 0
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EE10updateDataItEEvRSt10shared_ptrIKNS_11Lut1DOpDataEE:bb.a
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #23
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !8715
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EE9resetDataItEEvv.exit, %.lr.ph
  %.055 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EE9resetDataItEEvv.exit ] ; 5 uses
  %i.ae = mul i64 %.055, 3                        ; 3 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !230
  %i.ai = fmul float %i.ah, %i.r
  %i.aj = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ai)
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !8712
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.055
  store float %i.aj, ptr %i.al, align 4, !tbaa !230
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ae
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !230
  %i.aq = fmul float %i.ap, %i.r
  %i.ar = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.aq)
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !8714
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.055
  store float %i.ar, ptr %i.at, align 4, !tbaa !230
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.ae
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !230
  %i.ay = fmul float %i.ax, %i.r
  %i.az = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ay)
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !8715
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.055
  store float %i.az, ptr %i.bb, align 4, !tbaa !230
  %i.bc = add nuw i64 %.055, 1                    ; 2 uses
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !8708
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !8726

._crit_edge:                                      ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EE9resetDataItEEvv.exit
  %i.bf = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 7)
  %i.bg = fptrunc double %i.bf to float
  %i.bh = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bi = fptrunc double %i.bh to float
  %i.bj = fdiv float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.bj, ptr %i.bk, align 8, !tbaa !8716
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !8708
  %i.bm = uitofp i64 %i.bl to float
  %i.bn = fadd float %i.bm, -1.000000e+00
  %i.bo = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bp = fptrunc double %i.bo to float
  %i.bq = fdiv float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.bq, ptr %i.br, align 8, !tbaa !8720
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !8708
  %i.bt = uitofp i64 %i.bs to float
  %i.bu = fadd float %i.bt, -1.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bu, ptr %i.bv, align 4, !tbaa !8721
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_7EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_7EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21, !inline_history !8727
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_7EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS1_8BitDepthE8ELS4_7EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_7EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !224
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_7EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8712 ; 2 uses
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
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !8713
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !8714
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8712
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !8713
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !8714
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8715 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !8713
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_7EED2Ev.exit: ; preds = %bb.f, %bb.g, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_7EE5applyEPKvPvl(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8712 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8714 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8715 ; 2 uses
  %i.i = icmp sgt i64 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load float, ptr %i.m, align 8, !tbaa !8716
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit49, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit49
  %.057 = phi ptr [ %1, %.lr.ph ], [ %i.iz, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit49 ] ; 4 uses
  %.03556 = phi ptr [ %2, %.lr.ph ], [ %i.ja, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit49 ] ; 5 uses
  %.03655 = phi i64 [ 0, %.lr.ph ], [ %i.jb, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit49 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.o = load <2 x float>, ptr %.057, align 4, !tbaa !230 ; 3 uses
  %4 = extractelement <2 x float> %i.o, i64 1     ; 3 uses
  %5 = extractelement <2 x float> %i.o, i64 0     ; 3 uses
  store <2 x float> %i.o, ptr %i.a, align 8, !tbaa !230
  %6 = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %7 = load float, ptr %6, align 4, !tbaa !230    ; 4 uses
  store float %7, ptr %i.j, align 8, !tbaa !230
  %i.p = fcmp ogt float %5, %4
  %i.q = select i1 %i.p, i64 5, i64 0
  %i.r = fcmp ogt float %4, %7
  %i.s = select i1 %i.r, i64 4, i64 0
  %i.t = fcmp ogt float %5, %7
  %.neg.i = select i1 %i.t, i64 -3, i64 0
  %i.u = getelementptr [4 x i8], ptr @_ZZN16OpenColorIO_v2_512_GLOBAL__N_113GamutMapUtils6Order3EPKfRiS4_S4_E5table, i64 %i.s
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %i.q
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %.neg.i ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = getelementptr i8, ptr %i.w, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %5) ; 3 uses
  %.sroa.412.0.extract.shift = lshr i64 %i.ad, 16
  %.sroa.513.0.extract.shift = lshr i64 %i.ad, 32
  %.sroa.513.0.extract.trunc = trunc nuw i64 %.sroa.513.0.extract.shift to i32
  %i.ae = bitcast i32 %.sroa.513.0.extract.trunc to float
  %i.af = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %4) ; 3 uses
  %.sroa.49.0.extract.shift = lshr i64 %i.af, 16
  %.sroa.510.0.extract.shift = lshr i64 %i.af, 32
  %.sroa.510.0.extract.trunc = trunc nuw i64 %.sroa.510.0.extract.shift to i32
  %i.ag = bitcast i32 %.sroa.510.0.extract.trunc to float
  %i.ah = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %7) ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.ah, 16
  %.sroa.5.0.extract.shift = lshr i64 %i.ah, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ai = bitcast i32 %.sroa.5.0.extract.trunc to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.aj = and i64 %.sroa.412.0.extract.shift, 65535
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !230 ; 2 uses
  %i.am = and i64 %i.ad, 65535
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !230
  %i.ap = fsub float 1.000000e+00, %i.ae
  %i.aq = fsub float %i.ao, %i.al
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.ap, float %i.al)
  store float %i.ar, ptr %i.b, align 4, !tbaa !230
  %i.as = and i64 %.sroa.49.0.extract.shift, 65535
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !230 ; 2 uses
  %i.av = and i64 %i.af, 65535
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !230
  %i.ay = fsub float 1.000000e+00, %i.ag
  %i.az = fsub float %i.ax, %i.au
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.az, float %i.ay, float %i.au)
  store float %i.ba, ptr %i.k, align 4, !tbaa !230
  %i.bb = and i64 %.sroa.4.0.extract.shift, 65535
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !230 ; 2 uses
  %i.be = and i64 %i.ah, 65535
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !230
  %i.bh = fsub float 1.000000e+00, %i.ai
  %i.bi = fsub float %i.bg, %i.bd
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.bd)
  store float %i.bj, ptr %i.l, align 4, !tbaa !230
  %i.bk = sext i32 %i.y to i64                    ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !230
  %i.bn = sext i32 %i.ac to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !230 ; 2 uses
  %i.bq = fsub float %i.bm, %i.bp                 ; 2 uses
  %i.br = fcmp oeq float %i.bq, 0.000000e+00
  %.pre = sext i32 %i.aa to i64                   ; 2 uses
  br i1 %i.br, label %._crit_edge58, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !230
  %i.bu = fsub float %i.bt, %i.bp
  %i.bv = fdiv float %i.bu, %i.bq
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %bb.b, %bb.c
  %i.bw = phi float [ %i.bv, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bk
  %i.by = load float, ptr %i.bx, align 4, !tbaa !230
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bn
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !230 ; 2 uses
  %i.cb = fsub float %i.by, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cb, float %i.ca)
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre
  store float %i.cc, ptr %i.cd, align 4, !tbaa !230
  %i.ce = load float, ptr %i.b, align 4, !tbaa !230 ; 2 uses
  %i.cf = bitcast float %i.ce to i32
  %i.cg = tail call float @llvm.fabs.f32(float %i.ce)
  %i.ch = bitcast float %i.cg to i32              ; 10 uses
  %i.ci = lshr i32 %i.cf, 16                      ; 3 uses
  %i.cj = trunc nuw i32 %i.ci to i16
  %i.ck = and i16 %i.cj, -32768                   ; 3 uses
  %i.cl = icmp samesign ugt i32 %i.ch, 947912703
  br i1 %i.cl, label %bb.d, label %bb.j

bb.d:                                             ; preds = %._crit_edge58
  %i.cm = icmp samesign ugt i32 %i.ch, 2139095039
  br i1 %i.cm, label %bb.e, label %bb.g, !prof !243

bb.e:                                             ; preds = %bb.d
  %i.cn = or disjoint i16 %i.ck, 31744            ; 2 uses
  %i.co = icmp eq i32 %i.ch, 2139095040
  br i1 %i.co, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = lshr i32 %i.ch, 13
  %i.cq = and i32 %i.cp, 1023                     ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = zext i1 %i.cr to i16
  %i.ct = trunc nuw nsw i32 %i.cq to i16
  %i.cu = or i16 %i.ct, %i.cs
  %i.cv = or disjoint i16 %i.cu, %i.cn
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit

bb.g:                                             ; preds = %bb.d
  %i.cw = icmp samesign ugt i32 %i.ch, 1199566847
  br i1 %i.cw, label %bb.h, label %bb.i, !prof !243

bb.h:                                             ; preds = %bb.g
  %i.cx = or disjoint i16 %i.ck, 31744
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit

bb.i:                                             ; preds = %bb.g
  %i.cy = add nuw nsw i32 %i.ch, 134221823
  %i.cz = lshr i32 %i.ch, 13
  %i.da = and i32 %i.cz, 1
  %i.db = add nuw nsw i32 %i.cy, %i.da
  %i.dc = lshr i32 %i.db, 13
  %i.dd = and i32 %i.ci, 32768
  %i.de = or i32 %i.dc, %i.dd
  %i.df = trunc i32 %i.de to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit

bb.j:                                             ; preds = %._crit_edge58
  %i.dg = icmp samesign ult i32 %i.ch, 855638017
  br i1 %i.dg, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = lshr i32 %i.ch, 23                      ; 2 uses
  %i.di = sub nuw nsw i32 126, %i.dh
  %i.dj = and i32 %i.ch, 8388607
  %i.dk = or disjoint i32 %i.dj, 8388608          ; 2 uses
  %i.dl = add nsw i32 %i.dh, -94
  %i.dm = shl i32 %i.dk, %i.dl                    ; 2 uses
  %i.dn = lshr i32 %i.dk, %i.di                   ; 2 uses
  %i.do = and i32 %i.ci, 32768
  %i.dp = or i32 %i.dn, %i.do
  %i.dq = trunc nuw i32 %i.dp to i16              ; 2 uses
  %i.dr = icmp ugt i32 %i.dm, -2147483648
  br i1 %i.dr, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = icmp ne i32 %i.dm, -2147483648
  %i.dt = and i32 %i.dn, 1
  %.not.i.i.i = icmp eq i32 %i.dt, 0
  %or.cond.i.i.i = select i1 %i.ds, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.du = add nuw i16 %i.dq, 1
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit: ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m
  %.0.i.i.i = phi i16 [ %i.ck, %bb.j ], [ %i.cv, %bb.f ], [ %i.cx, %bb.h ], [ %i.df, %bb.i ], [ %i.cn, %bb.e ], [ %i.du, %bb.m ], [ %i.dq, %bb.l ]
  store i16 %.0.i.i.i, ptr %.03556, align 2, !tbaa !254
  %i.dv = load float, ptr %i.k, align 4, !tbaa !230 ; 2 uses
  %i.dw = bitcast float %i.dv to i32
  %i.dx = tail call float @llvm.fabs.f32(float %i.dv)
  %i.dy = bitcast float %i.dx to i32              ; 10 uses
  %i.dz = lshr i32 %i.dw, 16                      ; 3 uses
  %i.ea = trunc nuw i32 %i.dz to i16
  %i.eb = and i16 %i.ea, -32768                   ; 3 uses
  %i.ec = icmp samesign ugt i32 %i.dy, 947912703
  br i1 %i.ec, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit
  %i.ed = icmp samesign ugt i32 %i.dy, 2139095039
  br i1 %i.ed, label %bb.o, label %bb.q, !prof !243

bb.o:                                             ; preds = %bb.n
  %i.ee = or disjoint i16 %i.eb, 31744            ; 2 uses
  %i.ef = icmp eq i32 %i.dy, 2139095040
  br i1 %i.ef, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit41, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eg = lshr i32 %i.dy, 13
  %i.eh = and i32 %i.eg, 1023                     ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  %i.ej = zext i1 %i.ei to i16
  %i.ek = trunc nuw nsw i32 %i.eh to i16
  %i.el = or i16 %i.ek, %i.ej
  %i.em = or disjoint i16 %i.el, %i.ee
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit41

bb.q:                                             ; preds = %bb.n
  %i.en = icmp samesign ugt i32 %i.dy, 1199566847
  br i1 %i.en, label %bb.r, label %bb.s, !prof !243

bb.r:                                             ; preds = %bb.q
  %i.eo = or disjoint i16 %i.eb, 31744
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit41

bb.s:                                             ; preds = %bb.q
  %i.ep = add nuw nsw i32 %i.dy, 134221823
  %i.eq = lshr i32 %i.dy, 13
  %i.er = and i32 %i.eq, 1
  %i.es = add nuw nsw i32 %i.ep, %i.er
  %i.et = lshr i32 %i.es, 13
  %i.eu = and i32 %i.dz, 32768
  %i.ev = or i32 %i.et, %i.eu
  %i.ew = trunc i32 %i.ev to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit41

bb.t:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit
  %i.ex = icmp samesign ult i32 %i.dy, 855638017
  br i1 %i.ex, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit41, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ey = lshr i32 %i.dy, 23                      ; 2 uses
  %i.ez = sub nuw nsw i32 126, %i.ey
  %i.fa = and i32 %i.dy, 8388607
  %i.fb = or disjoint i32 %i.fa, 8388608          ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EE10updateDataItEEvRSt10shared_ptrIKNS_11Lut1DOpDataEE:bb.a
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !8916
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #23
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !8917
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EE9resetDataItEEvv.exit, %.lr.ph
  %.055 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EE9resetDataItEEvv.exit ] ; 5 uses
  %i.ae = mul i64 %.055, 3                        ; 3 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !230
  %i.ai = fmul float %i.ah, %i.r
  %i.aj = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ai)
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !8914
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.055
  store float %i.aj, ptr %i.al, align 4, !tbaa !230
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ae
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !230
  %i.aq = fmul float %i.ap, %i.r
  %i.ar = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.aq)
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !8916
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.055
  store float %i.ar, ptr %i.at, align 4, !tbaa !230
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.ae
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !230
  %i.ay = fmul float %i.ax, %i.r
  %i.az = tail call noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %i.ay)
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !8917
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.055
  store float %i.az, ptr %i.bb, align 4, !tbaa !230
  %i.bc = add nuw i64 %.055, 1                    ; 2 uses
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !8910
  %i.be = icmp ult i64 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !8928

._crit_edge:                                      ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EE9resetDataItEEvv.exit
  %i.bf = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bg = fptrunc double %i.bf to float
  %i.bh = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bi = fptrunc double %i.bh to float
  %i.bj = fdiv float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.bj, ptr %i.bk, align 8, !tbaa !8918
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !8910
  %i.bm = uitofp i64 %i.bl to float
  %i.bn = fadd float %i.bm, -1.000000e+00
  %i.bo = tail call noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef 8)
  %i.bp = fptrunc double %i.bo to float
  %i.bq = fdiv float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.bq, ptr %i.br, align 8, !tbaa !8922
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !8910
  %i.bt = uitofp i64 %i.bs to float
  %i.bu = fadd float %i.bt, -1.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bu, ptr %i.bv, align 4, !tbaa !8923
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21, !inline_history !8929
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS1_8BitDepthE8ELS4_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS0_8BitDepthE8ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !224
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_8EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8914 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i.i = icmp eq ptr %i.d, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not2.i.i = icmp eq ptr %i.f, null
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %.not2.i.i, i1 false
  br i1 %or.cond5.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24, !inline_history !8915
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !8916
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8914
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24, !inline_history !8915
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !8916
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8917 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24, !inline_history !8915
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EED2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EED2Ev.exit: ; preds = %bb.f, %bb.g, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_130Lut1DRendererHalfCodeHueAdjustILNS_8BitDepthE8ELS2_8EE5applyEPKvPvl(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca [3 x float], align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8914 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8916 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8917 ; 2 uses
  %i.i = icmp sgt i64 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %._crit_edge42, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %._crit_edge42
  %.041 = phi ptr [ %1, %.lr.ph ], [ %i.cl, %._crit_edge42 ] ; 4 uses
  %.03140 = phi ptr [ %2, %.lr.ph ], [ %i.cm, %._crit_edge42 ] ; 4 uses
  %.03239 = phi i64 [ 0, %.lr.ph ], [ %i.cn, %._crit_edge42 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.n = load <2 x float>, ptr %.041, align 4, !tbaa !230 ; 3 uses
  %4 = extractelement <2 x float> %i.n, i64 1     ; 3 uses
  %5 = extractelement <2 x float> %i.n, i64 0     ; 3 uses
  store <2 x float> %i.n, ptr %i.a, align 8, !tbaa !230
  %6 = getelementptr inbounds nuw i8, ptr %.041, i64 8
  %7 = load float, ptr %6, align 4, !tbaa !230    ; 4 uses
  store float %7, ptr %i.j, align 8, !tbaa !230
  %i.o = fcmp ogt float %5, %4
  %i.p = select i1 %i.o, i64 5, i64 0
  %i.q = fcmp ogt float %4, %7
  %i.r = select i1 %i.q, i64 4, i64 0
  %i.s = fcmp ogt float %5, %7
  %.neg.i = select i1 %i.s, i64 -3, i64 0
  %i.t = getelementptr [4 x i8], ptr @_ZZN16OpenColorIO_v2_512_GLOBAL__N_113GamutMapUtils6Order3EPKfRiS4_S4_E5table, i64 %i.r
  %i.u = getelementptr [4 x i8], ptr %i.t, i64 %i.p
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.neg.i ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = getelementptr i8, ptr %i.v, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr i8, ptr %i.v, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %5) ; 3 uses
  %.sroa.48.0.extract.shift = lshr i64 %i.ac, 16
  %.sroa.59.0.extract.shift = lshr i64 %i.ac, 32
  %.sroa.59.0.extract.trunc = trunc nuw i64 %.sroa.59.0.extract.shift to i32
  %i.ad = bitcast i32 %.sroa.59.0.extract.trunc to float
  %i.ae = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %4) ; 3 uses
  %.sroa.45.0.extract.shift = lshr i64 %i.ae, 16
  %.sroa.56.0.extract.shift = lshr i64 %i.ae, 32
  %.sroa.56.0.extract.trunc = trunc nuw i64 %.sroa.56.0.extract.shift to i32
  %i.af = bitcast i32 %.sroa.56.0.extract.trunc to float
  %i.ag = tail call fastcc i64 @_ZN16OpenColorIO_v2_512_GLOBAL__N_19IndexPair18GetEdgeFloatValuesEf(float noundef %7) ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.ag, 16
  %.sroa.5.0.extract.shift = lshr i64 %i.ag, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ah = bitcast i32 %.sroa.5.0.extract.trunc to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ai = and i64 %.sroa.48.0.extract.shift, 65535
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !230 ; 2 uses
  %i.al = and i64 %i.ac, 65535
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !230
  %i.ao = fsub float 1.000000e+00, %i.ad
  %i.ap = fsub float %i.an, %i.ak
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ao, float %i.ak)
  store float %i.aq, ptr %i.b, align 8, !tbaa !230
  %i.ar = and i64 %.sroa.45.0.extract.shift, 65535
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !230 ; 2 uses
  %i.au = and i64 %i.ae, 65535
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !230
  %i.ax = fsub float 1.000000e+00, %i.af
  %i.ay = fsub float %i.aw, %i.at
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.ax, float %i.at)
  store float %i.az, ptr %i.k, align 4, !tbaa !230
  %i.ba = and i64 %.sroa.4.0.extract.shift, 65535
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !230 ; 2 uses
  %i.bd = and i64 %i.ag, 65535
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !230
  %i.bg = fsub float 1.000000e+00, %i.ah
  %i.bh = fsub float %i.bf, %i.bc
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.bg, float %i.bc)
  store float %i.bi, ptr %i.l, align 8, !tbaa !230
  %i.bj = sext i32 %i.x to i64                    ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !230
  %i.bm = sext i32 %i.ab to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !230 ; 2 uses
  %i.bp = fsub float %i.bl, %i.bo                 ; 2 uses
  %i.bq = fcmp oeq float %i.bp, 0.000000e+00
  %.pre = sext i32 %i.z to i64                    ; 2 uses
  br i1 %i.bq, label %._crit_edge42, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre
  %i.bs = load float, ptr %i.br, align 4, !tbaa !230
  %i.bt = fsub float %i.bs, %i.bo
  %i.bu = fdiv float %i.bt, %i.bp
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %bb.b, %bb.c
  %i.bv = phi float [ %i.bu, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bj
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !230
  %i.by = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bm
  %i.bz = load float, ptr %i.by, align 4, !tbaa !230 ; 2 uses
  %i.ca = fsub float %i.bx, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ca, float %i.bz)
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre
  store float %i.cb, ptr %i.cc, align 4, !tbaa !230
  %i.cd = load <2 x float>, ptr %i.b, align 8, !tbaa !230
  store <2 x float> %i.cd, ptr %.03140, align 4, !tbaa !230
  %i.ce = load float, ptr %i.l, align 8, !tbaa !230
  %i.cf = getelementptr inbounds nuw i8, ptr %.03140, i64 8
  store float %i.ce, ptr %i.cf, align 4, !tbaa !230
  %i.cg = getelementptr inbounds nuw i8, ptr %.041, i64 12
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !230
  %i.ci = load float, ptr %i.m, align 8, !tbaa !8918
  %i.cj = fmul float %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.03140, i64 12
  store float %i.cj, ptr %i.ck, align 4, !tbaa !230
  %i.cl = getelementptr inbounds nuw i8, ptr %.041, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.03140, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.cn = add nuw nsw i64 %.03239, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8930
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EEC2ERSt10shared_ptrIKNS_11Lut1DOpDataEES2_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut1DRendererILNS_8BitDepthE8ELS2_8EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !8910
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 8, ptr %i.i, align 4, !tbaa !8912
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !8913
  %i.l = load ptr, ptr %0, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.o = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.p = load i32, ptr %i.o, align 4, !tbaa !232
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.i, align 4, !tbaa !8912
  %i.s = tail call noundef ptr @_ZN16OpenColorIO_v2_521SSE2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.r)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !8913
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.u = load i32, ptr %i.t, align 4, !tbaa !232
  %i.v = and i32 %i.u, 256
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.x = load i32, ptr %i.w, align 4, !tbaa !232
  %i.y = and i32 %i.x, 512
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !8912
  %i.aa = tail call noundef ptr @_ZN16OpenColorIO_v2_520AVXGetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.z)
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !8913
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !232
  %i.ad = and i32 %i.ac, 1024
  %.not6 = icmp eq i32 %i.ad, 0
  br i1 %.not6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !232
  %i.ag = and i32 %i.af, 2048
  %.not7 = icmp eq i32 %i.ag, 0
  br i1 %.not7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !8912
  %i.ai = tail call noundef ptr @_ZN16OpenColorIO_v2_521AVX2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef 8, i32 noundef %i.ah)
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !8913
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21, !inline_history !8931
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS1_8BitDepthE8ELS4_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut1DRendererILNS0_8BitDepthE8ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_5
