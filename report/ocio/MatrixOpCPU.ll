Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MatrixOpCPU?download=true
inline.NumInlined: 274
inline.NumDeleted: 126
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_113ScaleRenderer5applyEPKvPvl:bb.a
  %i.s = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.s
  %next.gep28 = getelementptr i8, ptr %1, i64 %i.s ; 4 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.s       ; 4 uses
  %next.gep29 = getelementptr i8, ptr %i.t, i64 16
  %i.u = getelementptr i8, ptr %1, i64 %i.s       ; 4 uses
  %next.gep30 = getelementptr i8, ptr %i.u, i64 32
  %i.v = getelementptr i8, ptr %1, i64 %i.s       ; 4 uses
  %next.gep31 = getelementptr i8, ptr %i.v, i64 48
  %i.w = load float, ptr %next.gep28, align 4, !tbaa !13, !alias.scope !99
  %i.x = load float, ptr %next.gep29, align 4, !tbaa !13, !alias.scope !99
  %i.y = load float, ptr %next.gep30, align 4, !tbaa !13, !alias.scope !99
  %i.z = load float, ptr %next.gep31, align 4, !tbaa !13, !alias.scope !99
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep28, i64 4
  %i.af = getelementptr i8, ptr %i.t, i64 20
  %i.ag = getelementptr i8, ptr %i.u, i64 36
  %i.ah = getelementptr i8, ptr %i.v, i64 52
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !13, !alias.scope !99
  %i.aj = load float, ptr %i.af, align 4, !tbaa !13, !alias.scope !99
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !13, !alias.scope !99
  %i.al = load float, ptr %i.ah, align 4, !tbaa !13, !alias.scope !99
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep28, i64 8
  %i.ar = getelementptr i8, ptr %i.t, i64 24
  %i.as = getelementptr i8, ptr %i.u, i64 40
  %i.at = getelementptr i8, ptr %i.v, i64 56
  %i.au = load float, ptr %i.aq, align 4, !tbaa !13, !alias.scope !99
  %i.av = load float, ptr %i.ar, align 4, !tbaa !13, !alias.scope !99
  %i.aw = load float, ptr %i.as, align 4, !tbaa !13, !alias.scope !99
  %i.ax = load float, ptr %i.at, align 4, !tbaa !13, !alias.scope !99
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep28, i64 12
  %i.bd = getelementptr i8, ptr %i.t, i64 28
  %i.be = getelementptr i8, ptr %i.u, i64 44
  %i.bf = getelementptr i8, ptr %i.v, i64 60
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !13, !alias.scope !99
  %i.bh = load float, ptr %i.bd, align 4, !tbaa !13, !alias.scope !99
  %i.bi = load float, ptr %i.be, align 4, !tbaa !13, !alias.scope !99
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !13, !alias.scope !99
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3
  %i.bo = shufflevector <4 x float> %i.ad, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bp = fmul <8 x float> %i.bo, %i.q
  %i.bq = shufflevector <4 x float> %i.bb, <4 x float> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = fmul <8 x float> %i.bq, %i.r
  %interleaved.vec = shufflevector <8 x float> %i.bp, <8 x float> %i.br, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !13, !alias.scope !100, !noalias !101
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.k, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.l, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.cn, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ]
  %.01518 = phi ptr [ %i.cm, %scalar.ph ], [ %.01518.ph, %scalar.ph.preheader ] ; 5 uses
  %.01617 = phi ptr [ %i.cl, %scalar.ph ], [ %.01617.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bt = load float, ptr %.01617, align 4, !tbaa !13
  %i.bu = load float, ptr %i.b, align 8, !tbaa !13
  %i.bv = fmul float %i.bt, %i.bu
  store float %i.bv, ptr %.01518, align 4, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.01617, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !13
  %i.by = load float, ptr %i.c, align 4, !tbaa !13
  %i.bz = fmul float %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.01617, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !13
  %i.cd = load float, ptr %i.d, align 8, !tbaa !13
  %i.ce = fmul float %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  store float %i.ce, ptr %i.cf, align 4, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.01617, i64 12
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !13
  %i.ci = load float, ptr %i.e, align 4, !tbaa !13
  %i.cj = fmul float %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.cj, ptr %i.ck, align 4, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.01617, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.cn = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !97
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.a) #13, !inline_history !102
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #13
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !13
  %i.f = load <4 x float>, ptr %i.a, align 8
  %i.g = insertelement <4 x float> %i.f, float %i.e, i64 1
  %i.h = shufflevector <4 x float> %i.g, <4 x float> %i.c, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <4 x float>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load float, ptr %i.l, align 4, !tbaa !13
  %i.n = load <4 x float>, ptr %i.i, align 8
  %i.o = insertelement <4 x float> %i.n, float %i.m, i64 1
  %i.p = shufflevector <4 x float> %i.o, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load <4 x float>, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load float, ptr %i.t, align 4, !tbaa !13
  %i.v = load <4 x float>, ptr %i.q, align 8
  %i.w = insertelement <4 x float> %i.v, float %i.u, i64 1
  %i.x = shufflevector <4 x float> %i.w, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load <4 x float>, ptr %i.y, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load <4 x float>, ptr %i.aa, align 8, !tbaa !13
  %i.ac = icmp sgt i64 %3, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi ptr [ %i.ba, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.02730 = phi ptr [ %i.bb, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02829 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %bb.a ]
  %i.ad = load float, ptr %.031, align 4, !tbaa !13
  %i.ae = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.031, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !13
  %i.ai = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13
  %i.am = insertelement <4 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ao = getelementptr inbounds nuw i8, ptr %.031, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !13
  %i.aq = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = fmul <4 x float> %i.h, %i.af
  %i.at = fmul <4 x float> %i.p, %i.aj
  %i.au = fmul <4 x float> %i.x, %i.an
  %i.av = fmul <4 x float> %i.z, %i.ar
  %i.aw = fadd <4 x float> %i.as, %i.at
  %i.ax = fadd <4 x float> %i.au, %i.av
  %i.ay = fadd <4 x float> %i.aw, %i.ax
  %i.az = fadd <4 x float> %i.ab, %i.ay
  store <4 x float> %i.az, ptr %.02730, align 1, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.02730, i64 16
  %i.bc = add nuw nsw i64 %.02829, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !103
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #13, !inline_history !104
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #13
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_55OpCPUD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_114MatrixRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !13
  %i.f = load <4 x float>, ptr %i.a, align 8
  %i.g = insertelement <4 x float> %i.f, float %i.e, i64 1
  %i.h = shufflevector <4 x float> %i.g, <4 x float> %i.c, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <4 x float>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load float, ptr %i.l, align 4, !tbaa !13
  %i.n = load <4 x float>, ptr %i.i, align 8
  %i.o = insertelement <4 x float> %i.n, float %i.m, i64 1
  %i.p = shufflevector <4 x float> %i.o, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load <4 x float>, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load float, ptr %i.t, align 4, !tbaa !13
  %i.v = load <4 x float>, ptr %i.q, align 8
  %i.w = insertelement <4 x float> %i.v, float %i.u, i64 1
  %i.x = shufflevector <4 x float> %i.w, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load <4 x float>, ptr %i.y, align 8, !tbaa !13
  %i.aa = icmp sgt i64 %3, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.029 = phi ptr [ %i.ax, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.02528 = phi ptr [ %i.ay, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02627 = phi i64 [ %i.az, %.lr.ph ], [ 0, %bb.a ]
  %i.ab = load float, ptr %.029, align 4, !tbaa !13
  %i.ac = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ae = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !13
  %i.ag = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !13
  %i.ak = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !13
  %i.ao = insertelement <4 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.h, %i.ad
  %i.ar = fmul <4 x float> %i.p, %i.ah
  %i.as = fmul <4 x float> %i.x, %i.al
  %i.at = fmul <4 x float> %i.z, %i.ap
  %i.au = fadd <4 x float> %i.aq, %i.ar
  %i.av = fadd <4 x float> %i.as, %i.at
  %i.aw = fadd <4 x float> %i.au, %i.av
  store <4 x float> %i.aw, ptr %.02528, align 1, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.02528, i64 16
  %i.az = add nuw nsw i64 %.02627, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"vtable pointer", !3, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"float", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSSt9type_info", !9, i64 8}
!15 = !{!14, !9, i64 8}
!16 = !{!4, !4, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, i1 false, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!21 = distinct !{!21, !20, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!22 = distinct !{!22, i1 false, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!23 = distinct !{!23, !22, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!24 = distinct !{!24, i1 false, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!25 = distinct !{!25, !24, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!26 = distinct !{null}
!27 = distinct !{!27, i1 false, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!28 = distinct !{!28, !27, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!29 = distinct !{null}
!30 = !{!"p1 _ZTSN16OpenColorIO_v2_512MatrixOpDataE", !8, i64 0}
!31 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!32 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0}
!33 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0, !32, i64 8}
!34 = !{!33, !30, i64 0}
!35 = !{!"_ZTSSt12__mutex_base", !4, i64 0}
!36 = !{!"_ZTSSt5mutex", !35, i64 0}
!37 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!39 = !{!"long", !4, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !39, i64 8, !4, i64 16}
!41 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !8, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !44, i64 0}
!46 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !8, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !49, i64 0}
!51 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !37, i64 0, !40, i64 8, !40, i64 40, !45, i64 72, !50, i64 96}
!52 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !36, i64 8, !51, i64 48}
!53 = !{!"_ZTSN16OpenColorIO_v2_59ArrayBaseE"}
!54 = !{!"p1 double", !8, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !55, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIdSaIdEE", !57, i64 0}
!59 = !{!"_ZTSN16OpenColorIO_v2_56ArrayTIdEE", !53, i64 0, !39, i64 8, !39, i64 16, !58, i64 24}
!60 = !{!"_ZTSN16OpenColorIO_v2_512MatrixOpData11MatrixArrayE", !59, i64 0}
!61 = !{!"_ZTSN16OpenColorIO_v2_512MatrixOpData7OffsetsE", !4, i64 0}
!62 = !{!"_ZTSN16OpenColorIO_v2_58BitDepthE", !4, i64 0}
!63 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !4, i64 0}
!64 = !{!"_ZTSN16OpenColorIO_v2_512MatrixOpDataE", !52, i64 0, !60, i64 168, !61, i64 216, !62, i64 248, !62, i64 252, !63, i64 256}
!65 = !{!64, !63, i64 256}
!66 = !{!21}
!67 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!68 = !{!67, !5, i64 8}
!69 = !{!67, !5, i64 12}
!70 = !{!55, !54, i64 0}
!71 = !{!"double", !4, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!23}
!74 = !{!25}
!75 = !{!28}
!76 = !{!"p1 _ZTSN16OpenColorIO_v2_55OpCPUE", !8, i64 0}
!77 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EE", !76, i64 0, !32, i64 8}
!78 = !{!77, !76, i64 0}
!79 = !{!32, !31, i64 0}
!80 = distinct !{null}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !17, !18, !19}
!86 = distinct !{!86, !17, !18}
!87 = !{!82}
!88 = !{!83}
!89 = !{!84}
!90 = !{!83, !82}
!91 = distinct !{null}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !92}
!96 = distinct !{!96, !17, !18, !19}
!97 = distinct !{!97, !17, !18}
!98 = !{!93}
!99 = !{!94}
!100 = !{!95}
!101 = !{!94, !93}
!102 = distinct !{null}
!103 = distinct !{!103, !17}
!104 = distinct !{null}
!105 = distinct !{!105, !17}
end_hunk_0
