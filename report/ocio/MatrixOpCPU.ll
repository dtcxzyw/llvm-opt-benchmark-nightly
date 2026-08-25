Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MatrixOpCPU?download=true
inline.NumInlined: 274
inline.NumDeleted: 126
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_113ScaleRenderer5applyEPKvPvl:bb.a
  %i.p = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.p
  %next.gep25 = getelementptr i8, ptr %1, i64 %i.p ; 4 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p       ; 4 uses
  %next.gep26 = getelementptr i8, ptr %i.q, i64 16
  %i.r = getelementptr i8, ptr %1, i64 %i.p       ; 4 uses
  %next.gep27 = getelementptr i8, ptr %i.r, i64 32
  %i.s = getelementptr i8, ptr %1, i64 %i.p       ; 4 uses
  %next.gep28 = getelementptr i8, ptr %i.s, i64 48
  %i.t = load float, ptr %next.gep25, align 4, !tbaa !57, !alias.scope !95
  %i.u = load float, ptr %next.gep26, align 4, !tbaa !57, !alias.scope !95
  %i.v = load float, ptr %next.gep27, align 4, !tbaa !57, !alias.scope !95
  %i.w = load float, ptr %next.gep28, align 4, !tbaa !57, !alias.scope !95
  %i.x = insertelement <4 x float> poison, float %i.t, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.u, i64 1
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 2
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 3
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep25, i64 4
  %i.ac = getelementptr i8, ptr %i.q, i64 20
  %i.ad = getelementptr i8, ptr %i.r, i64 36
  %i.ae = getelementptr i8, ptr %i.s, i64 52
  %i.af = load float, ptr %i.ab, align 4, !tbaa !57, !alias.scope !95
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !57, !alias.scope !95
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !57, !alias.scope !95
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !57, !alias.scope !95
  %i.aj = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %next.gep25, i64 8
  %i.ao = getelementptr i8, ptr %i.q, i64 24
  %i.ap = getelementptr i8, ptr %i.r, i64 40
  %i.aq = getelementptr i8, ptr %i.s, i64 56
  %i.ar = load float, ptr %i.an, align 4, !tbaa !57, !alias.scope !95
  %i.as = load float, ptr %i.ao, align 4, !tbaa !57, !alias.scope !95
  %i.at = load float, ptr %i.ap, align 4, !tbaa !57, !alias.scope !95
  %i.au = load float, ptr %i.aq, align 4, !tbaa !57, !alias.scope !95
  %i.av = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 1
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 2
  %i.ay = insertelement <4 x float> %i.ax, float %i.au, i64 3
  %i.az = getelementptr inbounds nuw i8, ptr %next.gep25, i64 12
  %i.ba = getelementptr i8, ptr %i.q, i64 28
  %i.bb = getelementptr i8, ptr %i.r, i64 44
  %i.bc = getelementptr i8, ptr %i.s, i64 60
  %i.bd = load float, ptr %i.az, align 4, !tbaa !57, !alias.scope !95
  %i.be = load float, ptr %i.ba, align 4, !tbaa !57, !alias.scope !95
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !57, !alias.scope !95
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !57, !alias.scope !95
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %i.bl = shufflevector <4 x float> %i.aa, <4 x float> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = fmul <8 x float> %i.bl, %i.n
  %i.bn = shufflevector <4 x float> %i.ay, <4 x float> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bo = fmul <8 x float> %i.bn, %i.o
  %interleaved.vec = shufflevector <8 x float> %i.bm, <8 x float> %i.bo, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !57, !alias.scope !97, !noalias !99
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.h, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.ck, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ]
  %.01518 = phi ptr [ %i.cj, %scalar.ph ], [ %.01518.ph, %scalar.ph.preheader ] ; 5 uses
  %.01617 = phi ptr [ %i.ci, %scalar.ph ], [ %.01617.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bq = load float, ptr %.01617, align 4, !tbaa !57
  %i.br = load float, ptr %i.b, align 8, !tbaa !57
  %i.bs = fmul float %i.bq, %i.br
  store float %i.bs, ptr %.01518, align 4, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %.01617, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !57
  %i.bv = load float, ptr %i.c, align 4, !tbaa !57
  %i.bw = fmul float %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  store float %i.bw, ptr %i.bx, align 4, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %.01617, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !57
  %i.ca = load float, ptr %i.d, align 8, !tbaa !57
  %i.cb = fmul float %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  store float %i.cb, ptr %i.cc, align 4, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %.01617, i64 12
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !57
  %i.cf = load float, ptr %i.e, align 4, !tbaa !57
  %i.cg = fmul float %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.cg, ptr %i.ch, align 4, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %.01617, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.ck = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !101
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !77
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
  %i.e = load float, ptr %i.d, align 4, !tbaa !57
  %i.f = load <4 x float>, ptr %i.a, align 8
  %i.g = insertelement <4 x float> %i.f, float %i.e, i64 1
  %i.h = shufflevector <4 x float> %i.g, <4 x float> %i.c, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <4 x float>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load float, ptr %i.l, align 4, !tbaa !57
  %i.n = load <4 x float>, ptr %i.i, align 8
  %i.o = insertelement <4 x float> %i.n, float %i.m, i64 1
  %i.p = shufflevector <4 x float> %i.o, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load <4 x float>, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load float, ptr %i.t, align 4, !tbaa !57
  %i.v = load <4 x float>, ptr %i.q, align 8
  %i.w = insertelement <4 x float> %i.v, float %i.u, i64 1
  %i.x = shufflevector <4 x float> %i.w, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load <4 x float>, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %7 = load float, ptr %6, align 4, !tbaa !57
  %i.z = load <4 x float>, ptr %i.y, align 8
  %8 = insertelement <4 x float> %i.z, float %7, i64 1
  %9 = shufflevector <4 x float> %8, <4 x float> %5, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %11 = load <2 x float>, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %13 = load float, ptr %12, align 4, !tbaa !57
  %i.ab = load <4 x float>, ptr %i.aa, align 8
  %14 = insertelement <4 x float> %i.ab, float %13, i64 1
  %15 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x float> %14, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ac = icmp sgt i64 %3, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi ptr [ %i.ba, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.02730 = phi ptr [ %i.bb, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02829 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %bb.a ]
  %i.ad = load float, ptr %.031, align 4, !tbaa !57
  %i.ae = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.031, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !57
  %i.ai = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !57
  %i.am = insertelement <4 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ao = getelementptr inbounds nuw i8, ptr %.031, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !57
  %i.aq = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = fmul <4 x float> %i.h, %i.af
  %i.at = fmul <4 x float> %i.p, %i.aj
  %i.au = fmul <4 x float> %i.x, %i.an
  %i.av = fmul <4 x float> %9, %i.ar
  %i.aw = fadd <4 x float> %i.as, %i.at
  %i.ax = fadd <4 x float> %i.au, %i.av
  %i.ay = fadd <4 x float> %i.aw, %i.ax
  %i.az = fadd <4 x float> %16, %i.ay
  store <4 x float> %i.az, ptr %.02730, align 1, !tbaa !77
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !77
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
  %i.e = load float, ptr %i.d, align 4, !tbaa !57
  %i.f = load <4 x float>, ptr %i.a, align 8
  %i.g = insertelement <4 x float> %i.f, float %i.e, i64 1
  %i.h = shufflevector <4 x float> %i.g, <4 x float> %i.c, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <4 x float>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load float, ptr %i.l, align 4, !tbaa !57
  %i.n = load <4 x float>, ptr %i.i, align 8
  %i.o = insertelement <4 x float> %i.n, float %i.m, i64 1
  %i.p = shufflevector <4 x float> %i.o, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load <4 x float>, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load float, ptr %i.t, align 4, !tbaa !57
  %i.v = load <4 x float>, ptr %i.q, align 8
  %i.w = insertelement <4 x float> %i.v, float %i.u, i64 1
  %i.x = shufflevector <4 x float> %i.w, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load <2 x float>, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %7 = load float, ptr %6, align 4, !tbaa !57
  %i.z = load <4 x float>, ptr %i.y, align 8
  %8 = insertelement <4 x float> %i.z, float %7, i64 1
  %9 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x float> %8, <4 x float> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aa = icmp sgt i64 %3, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.029 = phi ptr [ %i.ax, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.02528 = phi ptr [ %i.ay, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02627 = phi i64 [ %i.az, %.lr.ph ], [ 0, %bb.a ]
  %i.ab = load float, ptr %.029, align 4, !tbaa !57
  %i.ac = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ae = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !57
  %i.ag = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !57
  %i.ak = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !57
  %i.ao = insertelement <4 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.h, %i.ad
  %i.ar = fmul <4 x float> %i.p, %i.ah
  %i.as = fmul <4 x float> %i.x, %i.al
  %i.at = fmul <4 x float> %10, %i.ap
  %i.au = fadd <4 x float> %i.aq, %i.ar
  %i.av = fadd <4 x float> %i.as, %i.at
  %i.aw = fadd <4 x float> %i.au, %i.av
  store <4 x float> %i.aw, ptr %.02528, align 1, !tbaa !77
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0, !12, i64 8}
!10 = !{!"p1 _ZTSN16OpenColorIO_v2_512MatrixOpDataE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!13 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!14 = !{!15, !45, i64 256}
!15 = !{!"_ZTSN16OpenColorIO_v2_512MatrixOpDataE", !16, i64 0, !35, i64 168, !43, i64 216, !44, i64 248, !44, i64 252, !45, i64 256}
!16 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !17, i64 8, !19, i64 48}
!17 = !{!"_ZTSSt5mutex", !18, i64 0}
!18 = !{!"_ZTSSt12__mutex_base", !6, i64 0}
!19 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !20, i64 0, !21, i64 8, !21, i64 40, !25, i64 72, !30, i64 96}
!20 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !24, i64 8, !6, i64 16}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!23 = !{!"p1 omnipotent char", !11, i64 0}
!24 = !{!"long", !6, i64 0}
!25 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !11, i64 0}
!30 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !11, i64 0}
!35 = !{!"_ZTSN16OpenColorIO_v2_512MatrixOpData11MatrixArrayE", !36, i64 0}
!36 = !{!"_ZTSN16OpenColorIO_v2_56ArrayTIdEE", !37, i64 0, !24, i64 8, !24, i64 16, !38, i64 24}
!37 = !{!"_ZTSN16OpenColorIO_v2_59ArrayBaseE"}
!38 = !{!"_ZTSSt6vectorIdSaIdEE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 double", !11, i64 0}
!43 = !{!"_ZTSN16OpenColorIO_v2_512MatrixOpData7OffsetsE", !6, i64 0}
!44 = !{!"_ZTSN16OpenColorIO_v2_58BitDepthE", !6, i64 0}
!45 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !6, i64 0}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!48 = distinct !{!48, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!49 = !{!50, !5, i64 8}
!50 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!51 = !{!50, !5, i64 12}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !7, i64 0}
!54 = !{!41, !42, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"double", !6, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !6, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!61 = distinct !{!61, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!64 = distinct !{!64, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!65 = distinct !{null}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!68 = distinct !{!68, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererEJRSt10shared_ptrIKNS0_12MatrixOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!69 = distinct !{null}
!70 = !{!71, !72, i64 0}
!71 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0, !12, i64 8}
!72 = !{!"p1 _ZTSN16OpenColorIO_v2_55OpCPUE", !11, i64 0}
!73 = !{!12, !13, i64 0}
!74 = distinct !{null}
!75 = !{!76, !23, i64 8}
!76 = !{!"_ZTSSt9type_info", !23, i64 8}
!77 = !{!6, !6, i64 0}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = !{!84}
!84 = distinct !{!84, !80}
!85 = !{!82, !79}
!86 = distinct !{!86, !87, !88, !89}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = distinct !{!90, !87, !88}
!91 = distinct !{null}
!92 = !{!93}
!93 = distinct !{!93, !94}
!94 = distinct !{!94, !"LVerDomain"}
!95 = !{!96}
!96 = distinct !{!96, !94}
!97 = !{!98}
!98 = distinct !{!98, !94}
!99 = !{!96, !93}
!100 = distinct !{!100, !87, !88, !89}
!101 = distinct !{!101, !87, !88}
!102 = distinct !{null}
!103 = distinct !{!103, !87}
!104 = distinct !{null}
!105 = distinct !{!105, !87}
end_hunk_0
