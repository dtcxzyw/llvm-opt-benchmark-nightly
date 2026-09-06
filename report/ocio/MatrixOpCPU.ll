Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MatrixOpCPU?download=true
inline.NumInlined: 274
inline.NumDeleted: 126
begin_hunk_0_@_ZN16OpenColorIO_v2_517GetMatrixRendererERSt10shared_ptrIKNS_12MatrixOpDataEE:bb.a
_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i
  %i.ef = load ptr, ptr %1, align 8, !tbaa !34, !noalias !75
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 192
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !70, !noalias !75 ; 7 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !72, !noalias !75
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.ek = getelementptr [8 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !72, !noalias !75
  %.idx.i.i.i.i.i.i.i21 = shl i64 %i.ed, 4
  %i.em = getelementptr i8, ptr %i.eh, i64 %.idx.i.i.i.i.i.i.i21 ; 4 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !72, !noalias !75
  %.idx34.i.i.i.i.i.i.i = mul i64 %i.ed, 24
  %i.eo = getelementptr i8, ptr %i.eh, i64 %.idx34.i.i.i.i.i.i.i ; 4 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !72, !noalias !75
  %i.eq = insertelement <4 x double> poison, double %i.ei, i64 0
  %i.er = insertelement <4 x double> %i.eq, double %i.el, i64 1
  %i.es = insertelement <4 x double> %i.er, double %i.en, i64 2
  %i.et = insertelement <4 x double> %i.es, double %i.ep, i64 3
  %i.eu = fptrunc <4 x double> %i.et to <4 x float>
  store <4 x float> %i.eu, ptr %i.ej, align 8, !tbaa !13, !noalias !75
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !72, !noalias !75
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.ey = getelementptr i8, ptr %i.ek, i64 8
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !72, !noalias !75
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !72, !noalias !75
  %i.fc = getelementptr i8, ptr %i.eo, i64 8
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !72, !noalias !75
  %i.fe = insertelement <4 x double> poison, double %i.ew, i64 0
  %i.ff = insertelement <4 x double> %i.fe, double %i.ez, i64 1
  %i.fg = insertelement <4 x double> %i.ff, double %i.fb, i64 2
  %i.fh = insertelement <4 x double> %i.fg, double %i.fd, i64 3
  %i.fi = fptrunc <4 x double> %i.fh to <4 x float>
  store <4 x float> %i.fi, ptr %i.ex, align 8, !tbaa !13, !noalias !75
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !72, !noalias !75
  %i.fl = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.fm = getelementptr i8, ptr %i.ek, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !72, !noalias !75
  %i.fo = getelementptr i8, ptr %i.em, i64 16
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !72, !noalias !75
  %i.fq = getelementptr i8, ptr %i.eo, i64 16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !72, !noalias !75
  %i.fs = insertelement <4 x double> poison, double %i.fk, i64 0
  %i.ft = insertelement <4 x double> %i.fs, double %i.fn, i64 1
  %i.fu = insertelement <4 x double> %i.ft, double %i.fp, i64 2
  %i.fv = insertelement <4 x double> %i.fu, double %i.fr, i64 3
  %i.fw = fptrunc <4 x double> %i.fv to <4 x float>
  store <4 x float> %i.fw, ptr %i.fl, align 8, !tbaa !13, !noalias !75
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !72, !noalias !75
  %i.fz = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.ga = getelementptr i8, ptr %i.ek, i64 24
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !72, !noalias !75
  %i.gc = getelementptr i8, ptr %i.em, i64 24
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !72, !noalias !75
  %i.ge = getelementptr i8, ptr %i.eo, i64 24
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !72, !noalias !75
  %i.gg = insertelement <4 x double> poison, double %i.fy, i64 0
  %i.gh = insertelement <4 x double> %i.gg, double %i.gb, i64 1
  %i.gi = insertelement <4 x double> %i.gh, double %i.gd, i64 2
  %i.gj = insertelement <4 x double> %i.gi, double %i.gf, i64 3
  %i.gk = fptrunc <4 x double> %i.gj to <4 x float>
  store <4 x float> %i.gk, ptr %i.fz, align 8, !tbaa !13, !noalias !75
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sink32 = phi ptr [ %i.dx, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.bc, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.al, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.n, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.sink = phi ptr [ %i.du, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.az, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_124MatrixWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.ah, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.k, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %.sink32, ptr %0, align 8, !tbaa !78
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.gl, align 8, !tbaa !79
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData10isDiagonalEv(ptr noundef nonnull align 8 dereferenceable(260)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData7Offsets9isNotNullEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #13, !inline_history !80
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #6 align 2 {
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_123ScaleWithOffsetRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.j = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.j   ; 2 uses
  %scevgep20 = getelementptr i8, ptr %1, i64 %i.j
  %scevgep21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %bound0 = icmp ult ptr %2, %scevgep20
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %2, %scevgep21
  %bound123 = icmp ult ptr %i.b, %scevgep
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.k = shl i64 %n.vec, 4                        ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  %i.m = getelementptr i8, ptr %1, i64 %i.k
  %i.n = load <4 x float>, ptr %i.b, align 8
  %i.o = load <4 x float>, ptr %i.c, align 8
  %i.p = load <4 x float>, ptr %i.d, align 4
  %4 = shufflevector <4 x float> %i.n, <4 x float> %i.p, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.q = load float, ptr %i.e, align 4, !tbaa !13, !alias.scope !87
  %broadcast.splatinsert33 = insertelement <4 x float> poison, float %i.q, i64 0
  %5 = shufflevector <4 x float> %i.o, <4 x float> %broadcast.splatinsert33, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.r = load <4 x float>, ptr %i.f, align 8
  %i.s = load float, ptr %i.g, align 8, !tbaa !13, !alias.scope !87
  %broadcast.splatinsert37 = insertelement <4 x float> poison, float %i.s, i64 0
  %i.t = load <4 x float>, ptr %i.h, align 4
  %i.u = shufflevector <4 x float> %i.r, <4 x float> %i.t, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %6 = load float, ptr %i.i, align 4, !tbaa !13, !alias.scope !87
  %broadcast.splatinsert41 = insertelement <4 x float> poison, float %6, i64 0
  %i.v = shufflevector <4 x float> %broadcast.splatinsert37, <4 x float> %broadcast.splatinsert41, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.w
  %next.gep25 = getelementptr i8, ptr %1, i64 %i.w ; 4 uses
  %i.x = getelementptr i8, ptr %1, i64 %i.w       ; 4 uses
  %next.gep26 = getelementptr i8, ptr %i.x, i64 16
  %i.y = getelementptr i8, ptr %1, i64 %i.w       ; 4 uses
  %next.gep27 = getelementptr i8, ptr %i.y, i64 32
  %i.z = getelementptr i8, ptr %1, i64 %i.w       ; 4 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 48
  %i.aa = load float, ptr %next.gep25, align 4, !tbaa !13, !alias.scope !88
  %i.ab = load float, ptr %next.gep26, align 4, !tbaa !13, !alias.scope !88
  %i.ac = load float, ptr %next.gep27, align 4, !tbaa !13, !alias.scope !88
  %i.ad = load float, ptr %next.gep28, align 4, !tbaa !13, !alias.scope !88
  %i.ae = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 3
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep25, i64 4
  %i.aj = getelementptr i8, ptr %i.x, i64 20
  %i.ak = getelementptr i8, ptr %i.y, i64 36
  %i.al = getelementptr i8, ptr %i.z, i64 52
  %i.am = load float, ptr %i.ai, align 4, !tbaa !13, !alias.scope !88
  %i.an = load float, ptr %i.aj, align 4, !tbaa !13, !alias.scope !88
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !13, !alias.scope !88
  %i.ap = load float, ptr %i.al, align 4, !tbaa !13, !alias.scope !88
  %i.aq = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 3
  %7 = shufflevector <4 x float> %i.ah, <4 x float> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.au = getelementptr inbounds nuw i8, ptr %next.gep25, i64 8
  %i.av = getelementptr i8, ptr %i.x, i64 24
  %i.aw = getelementptr i8, ptr %i.y, i64 40
  %i.ax = getelementptr i8, ptr %i.z, i64 56
  %i.ay = load float, ptr %i.au, align 4, !tbaa !13, !alias.scope !88
  %i.az = load float, ptr %i.av, align 4, !tbaa !13, !alias.scope !88
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !13, !alias.scope !88
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !13, !alias.scope !88
  %i.bc = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep25, i64 12
  %i.bh = getelementptr i8, ptr %i.x, i64 28
  %i.bi = getelementptr i8, ptr %i.y, i64 44
  %i.bj = getelementptr i8, ptr %i.z, i64 60
  %i.bk = load float, ptr %i.bg, align 4, !tbaa !13, !alias.scope !88
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !13, !alias.scope !88
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !13, !alias.scope !88
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !13, !alias.scope !88
  %i.bo = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 3
  %i.bs = shufflevector <4 x float> %i.bf, <4 x float> %i.br, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %7, <8 x float> %4, <8 x float> %5)
  %i.bu = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bs, <8 x float> %i.u, <8 x float> %i.v)
  %interleaved.vec = shufflevector <8 x float> %i.bt, <8 x float> %i.bu, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !13, !alias.scope !89, !noalias !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.l, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.m, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.cu, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ]
  %.01518 = phi ptr [ %i.ct, %scalar.ph ], [ %.01518.ph, %scalar.ph.preheader ] ; 5 uses
  %.01617 = phi ptr [ %i.cs, %scalar.ph ], [ %.01617.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bw = load float, ptr %.01617, align 4, !tbaa !13
  %i.bx = load float, ptr %i.b, align 8, !tbaa !13
  %i.by = load float, ptr %i.c, align 8, !tbaa !13
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bx, float %i.by)
  store float %i.bz, ptr %.01518, align 4, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.01617, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !13
  %i.cc = load float, ptr %i.d, align 4, !tbaa !13
  %i.cd = load float, ptr %i.e, align 4, !tbaa !13
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cc, float %i.cd)
  %i.cf = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  store float %i.ce, ptr %i.cf, align 4, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.01617, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !13
  %i.ci = load float, ptr %i.f, align 8, !tbaa !13
  %i.cj = load float, ptr %i.g, align 8, !tbaa !13
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ci, float %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  store float %i.ck, ptr %i.cl, align 4, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.01617, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !13
  %i.co = load float, ptr %i.h, align 4, !tbaa !13
  %i.cp = load float, ptr %i.i, align 4, !tbaa !13
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.cq, ptr %i.cr, align 4, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.01617, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.cu = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !86
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE() unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #13, !inline_history !91
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #6 align 2 {
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ScaleRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_113ScaleRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.f = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.f   ; 2 uses
  %scevgep20 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %bound0 = icmp ult ptr %2, %scevgep20
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %2, %scevgep21
  %bound123 = icmp ult ptr %i.b, %scevgep
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.g = shl i64 %n.vec, 4                        ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %i.j = load <4 x float>, ptr %i.b, align 8
  %i.k = load <4 x float>, ptr %0, align 8
  %i.l = load float, ptr %i.d, align 8, !tbaa !13, !alias.scope !98
  %broadcast.splatinsert31 = insertelement <4 x float> poison, float %i.l, i64 0
  %i.m = load float, ptr %i.e, align 4, !tbaa !13, !alias.scope !98
  %broadcast.splatinsert33 = insertelement <4 x float> poison, float %i.m, i64 0
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7>
  %i.o = shufflevector <4 x float> %broadcast.splatinsert31, <4 x float> %broadcast.splatinsert33, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.p
  %next.gep25 = getelementptr i8, ptr %1, i64 %i.p ; 4 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p       ; 4 uses
  %next.gep26 = getelementptr i8, ptr %i.q, i64 16
  %i.r = getelementptr i8, ptr %1, i64 %i.p       ; 4 uses
  %next.gep27 = getelementptr i8, ptr %i.r, i64 32
  %i.s = getelementptr i8, ptr %1, i64 %i.p       ; 4 uses
  %next.gep28 = getelementptr i8, ptr %i.s, i64 48
  %i.t = load float, ptr %next.gep25, align 4, !tbaa !13, !alias.scope !99
  %i.u = load float, ptr %next.gep26, align 4, !tbaa !13, !alias.scope !99
  %i.v = load float, ptr %next.gep27, align 4, !tbaa !13, !alias.scope !99
  %i.w = load float, ptr %next.gep28, align 4, !tbaa !13, !alias.scope !99
  %i.x = insertelement <4 x float> poison, float %i.t, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.u, i64 1
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 2
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 3
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep25, i64 4
  %i.ac = getelementptr i8, ptr %i.q, i64 20
  %i.ad = getelementptr i8, ptr %i.r, i64 36
  %i.ae = getelementptr i8, ptr %i.s, i64 52
end_hunk_0
