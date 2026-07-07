inline.NumInlined: 428
inline.NumDeleted: 201
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZNK16OpenColorIO_v2_525DynamicPropertyDoubleImpl18createEditableCopyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.11") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_114ECRendererBaseD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119ECLinearRevRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119ECLinearRevRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #24, !inline_history !109
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119ECLinearRevRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119ECLinearRevRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119ECLinearRevRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_119ECLinearRevRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_114ECRendererBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119ECLinearRevRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef double %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.m = fmul double %i.f, %i.l                   ; 2 uses
  %i.n = fcmp ogt double %i.m, 1.000000e-03
  %.sroa.speculated = select i1 %i.n, double %i.m, double 1.000000e-03
  %i.o = fptrunc double %.sroa.speculated to float ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef double %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.v = fptrunc double %i.u to float
  %exp2f = tail call float @exp2f(float %i.v)
  %i.w = fdiv float 1.000000e+00, %exp2f          ; 10 uses
  %i.x = fcmp oeq float %i.o, 1.000000e+00
  br i1 %i.x, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.y = icmp sgt i64 %3, 0
  br i1 %i.y, label %.lr.ph52.preheader, label %.loopexit

.lr.ph52.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %3, 1
  %i.z = icmp eq i64 %3, 1
  br i1 %i.z, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter = and i64 %3, 9223372036854775806
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader.new
  %.051 = phi ptr [ %1, %.lr.ph52.preheader.new ], [ %i.bc, %.lr.ph52 ] ; 9 uses
  %.04150 = phi ptr [ %2, %.lr.ph52.preheader.new ], [ %i.bd, %.lr.ph52 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %niter.next.1, %.lr.ph52 ]
  %i.aa = load float, ptr %.051, align 4, !tbaa !66
  %i.ab = fmul float %i.w, %i.aa
  store float %i.ab, ptr %.04150, align 4, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %.051, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !66
  %i.ae = fmul float %i.w, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.04150, i64 4
  store float %i.ae, ptr %i.af, align 4, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %.051, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !66
  %i.ai = fmul float %i.w, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.04150, i64 8
  store float %i.ai, ptr %i.aj, align 4, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %.051, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %.04150, i64 12
  store float %i.al, ptr %i.am, align 4, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.04150, i64 16
  %i.ap = load float, ptr %i.an, align 4, !tbaa !66
  %i.aq = fmul float %i.w, %i.ap
  store float %i.aq, ptr %i.ao, align 4, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %.051, i64 20
  %i.as = load float, ptr %i.ar, align 4, !tbaa !66
  %i.at = fmul float %i.w, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.04150, i64 20
  store float %i.at, ptr %i.au, align 4, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %.051, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !66
  %i.ax = fmul float %i.w, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.04150, i64 24
  store float %i.ax, ptr %i.ay, align 4, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %.051, i64 28
  %i.ba = load float, ptr %i.az, align 4, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %.04150, i64 28
  store float %i.ba, ptr %i.bb, align 4, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %.051, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04150, i64 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph52, !llvm.loop !110

bb.b:                                             ; preds = %bb.a
  %4 = fdiv float 1.000000e+00, %i.o
  %5 = insertelement <4 x float> poison, float %4, i64 0
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load float, ptr %i.be, align 8, !tbaa !48 ; 2 uses
  %i.bg = fmul float %i.w, %i.bf
  %7 = fdiv float 1.000000e+00, %i.bf
  %8 = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bh = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = insertelement <4 x float> poison, float %7, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = icmp sgt i64 %3, 0
  br i1 %i.bk, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.148 = phi ptr [ %i.dj, %.lr.ph ], [ %1, %bb.b ] ; 3 uses
  %.14247 = phi ptr [ %i.dk, %.lr.ph ], [ %2, %bb.b ] ; 3 uses
  %.04346 = phi i64 [ %i.dl, %.lr.ph ], [ 0, %bb.b ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.148, i64 12
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !66
  %i.bn = load <4 x float>, ptr %.148, align 4, !tbaa !66
  %i.bo = fmul <4 x float> %i.bj, %i.bn           ; 2 uses
  %i.bp = bitcast <4 x float> %i.bo to <4 x i32>  ; 2 uses
  %i.bq = and <4 x i32> %i.bp, splat (i32 -2139095041)
  %i.br = or disjoint <4 x i32> %i.bq, splat (i32 1065353216)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>  ; 5 uses
  %i.bt = fmul nnan <4 x float> %i.bs, splat (float f0x3D37CD65)
  %i.bu = fadd nnan <4 x float> %i.bt, splat (float f0xBED547D7)
  %i.bv = fmul nnan <4 x float> %i.bu, %i.bs
  %i.bw = fadd nnan <4 x float> %i.bv, splat (float f0x3FD0C97C)
  %i.bx = fmul nnan <4 x float> %i.bw, %i.bs
  %i.by = fadd nnan <4 x float> %i.bx, splat (float f0xC0634031)
  %i.bz = fmul nnan <4 x float> %i.by, %i.bs
  %i.ca = fadd nnan <4 x float> %i.bz, splat (float f0x40A2EF4C)
  %i.cb = fmul nnan <4 x float> %i.ca, %i.bs
  %i.cc = fadd nnan <4 x float> %i.cb, splat (float f0xC033392A)
  %i.cd = lshr <4 x i32> %i.bp, splat (i32 23)
  %i.ce = and <4 x i32> %i.cd, splat (i32 255)
  %i.cf = add nsw <4 x i32> %i.ce, splat (i32 -127)
  %i.cg = sitofp <4 x i32> %i.cf to <4 x float>
  %i.ch = fadd nnan <4 x float> %i.cc, %i.cg
  %i.ci = fmul <4 x float> %6, %i.ch              ; 5 uses
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ci)
  %i.ck = fcmp ult <4 x float> %i.ci, zeroinitializer
  %i.cl = sext <4 x i1> %i.ck to <4 x i32>
  %i.cm = add <4 x i32> %i.cj, %i.cl              ; 2 uses
  %i.cn = shl <4 x i32> %i.cm, splat (i32 23)
  %i.co = add <4 x i32> %i.cn, splat (i32 1065353216)
  %i.cp = bitcast <4 x i32> %i.co to <4 x float>
  %i.cq = sitofp <4 x i32> %i.cm to <4 x float>
  %i.cr = fsub <4 x float> %i.ci, %i.cq           ; 4 uses
  %i.cs = fmul <4 x float> %i.cr, splat (float f0x3C5DBE6A)
  %i.ct = fadd <4 x float> %i.cs, splat (float f0x3D5509F8)
  %i.cu = fmul <4 x float> %i.cr, %i.ct
  %i.cv = fadd <4 x float> %i.cu, splat (float f0x3E773CC5)
  %i.cw = fmul <4 x float> %i.cr, %i.cv
  %i.cx = fadd <4 x float> %i.cw, splat (float f0x3F3168B3)
  %i.cy = fmul <4 x float> %i.cr, %i.cx
  %i.cz = fadd <4 x float> %i.cy, splat (float f0x3F800016)
  %i.da = fmul <4 x float> %i.cz, %i.cp
  %i.db = fcmp uge <4 x float> %i.ci, splat (float -1.260000e+02)
  %i.dc = fcmp oge <4 x float> %i.ci, splat (float 1.280000e+02)
  %i.dd = fcmp ogt <4 x float> %i.bo, zeroinitializer
  %i.de = select <4 x i1> %i.db, <4 x float> %i.da, <4 x float> zeroinitializer
  %i.df = select <4 x i1> %i.dc, <4 x float> splat (float +inf), <4 x float> %i.de
  %i.dg = select <4 x i1> %i.dd, <4 x float> %i.df, <4 x float> zeroinitializer
  %i.dh = fmul <4 x float> %i.bh, %i.dg
  store <4 x float> %i.dh, ptr %.14247, align 1, !tbaa !75
  %i.di = getelementptr inbounds nuw i8, ptr %.14247, i64 12
  store float %i.bm, ptr %i.di, align 4, !tbaa !66
  %i.dj = getelementptr inbounds nuw i8, ptr %.148, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.14247, i64 16
  %i.dl = add nuw nsw i64 %.04346, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !111

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph52.preheader
  %.051.epil.init = phi ptr [ %1, %.lr.ph52.preheader ], [ %i.bc, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %.04150.epil.init = phi ptr [ %2, %.lr.ph52.preheader ], [ %i.bd, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod59 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.dm = load float, ptr %.051.epil.init, align 4, !tbaa !66
  %i.dn = fmul float %i.w, %i.dm
  store float %i.dn, ptr %.04150.epil.init, align 4, !tbaa !66
  %i.do = getelementptr inbounds nuw i8, ptr %.051.epil.init, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !66
  %i.dq = fmul float %i.w, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.04150.epil.init, i64 4
  store float %i.dq, ptr %i.dr, align 4, !tbaa !66
  %i.ds = getelementptr inbounds nuw i8, ptr %.051.epil.init, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !66
  %i.du = fmul float %i.w, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.04150.epil.init, i64 8
  store float %i.du, ptr %i.dv, align 4, !tbaa !66
  %i.dw = getelementptr inbounds nuw i8, ptr %.051.epil.init, i64 12
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !66
  %i.dy = getelementptr inbounds nuw i8, ptr %.04150.epil.init, i64 12
  store float %i.dx, ptr %i.dy, align 4, !tbaa !66
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph52.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_119ECLinearRevRenderer10updateDataERSt10shared_ptrIKNS_22ExposureContrastOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((56, 60)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load double, ptr %i.b, align 8, !tbaa !47 ; 2 uses
  %i.d = fcmp ogt double %i.c, 1.000000e-03
  %.sroa.speculated = select i1 %i.d, double %i.c, double 1.000000e-03
  %i.e = fptrunc double %.sroa.speculated to float
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.e, ptr %i.f, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #24, !inline_history !112
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_114ECRendererBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef double %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.m = fmul double %i.f, %i.l                   ; 2 uses
  %i.n = fcmp ogt double %i.m, 1.000000e-03
  %.sroa.speculated = select i1 %i.n, double %i.m, double 1.000000e-03
  %i.o = fptrunc double %.sroa.speculated to float ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef double %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.v = fptrunc double %i.u to float
  %exp2f = tail call float @exp2f(float %i.v)
  %i.w = tail call float @powf(float noundef %exp2f, float noundef f0x3F0BE406) #24, !tbaa !3 ; 10 uses
  %i.x = fcmp oeq float %i.o, 1.000000e+00
  br i1 %i.x, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.y = icmp sgt i64 %3, 0
  br i1 %i.y, label %.lr.ph50.preheader, label %.loopexit

.lr.ph50.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %3, 1
  %i.z = icmp eq i64 %3, 1
  br i1 %i.z, label %.lr.ph50.epil.preheader, label %.lr.ph50.preheader.new

.lr.ph50.preheader.new:                           ; preds = %.lr.ph50.preheader
  %unroll_iter = and i64 %3, 9223372036854775806
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50, %.lr.ph50.preheader.new
  %.049 = phi ptr [ %1, %.lr.ph50.preheader.new ], [ %i.bc, %.lr.ph50 ] ; 9 uses
  %.03848 = phi ptr [ %2, %.lr.ph50.preheader.new ], [ %i.bd, %.lr.ph50 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph50.preheader.new ], [ %niter.next.1, %.lr.ph50 ]
  %i.aa = load float, ptr %.049, align 4, !tbaa !66
  %i.ab = fmul float %i.w, %i.aa
  store float %i.ab, ptr %.03848, align 4, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !66
  %i.ae = fmul float %i.w, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.03848, i64 4
  store float %i.ae, ptr %i.af, align 4, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !66
  %i.ai = fmul float %i.w, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.03848, i64 8
  store float %i.ai, ptr %i.aj, align 4, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %.049, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %.03848, i64 12
  store float %i.al, ptr %i.am, align 4, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %.049, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.03848, i64 16
  %i.ap = load float, ptr %i.an, align 4, !tbaa !66
  %i.aq = fmul float %i.w, %i.ap
  store float %i.aq, ptr %i.ao, align 4, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %.049, i64 20
  %i.as = load float, ptr %i.ar, align 4, !tbaa !66
  %i.at = fmul float %i.w, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.03848, i64 20
  store float %i.at, ptr %i.au, align 4, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %.049, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !66
  %i.ax = fmul float %i.w, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.03848, i64 24
  store float %i.ax, ptr %i.ay, align 4, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %.049, i64 28
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRenderer5applyEPKvPvl:bb.a
  %.049.epil.init = phi ptr [ %1, %.lr.ph50.preheader ], [ %i.bc, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %.03848.epil.init = phi ptr [ %2, %.lr.ph50.preheader ], [ %i.bd, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod57 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod57)
  %i.dp = load float, ptr %.049.epil.init, align 4, !tbaa !66
  %i.dq = fmul float %i.w, %i.dp
  store float %i.dq, ptr %.03848.epil.init, align 4, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %.049.epil.init, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !66
  %i.dt = fmul float %i.w, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.03848.epil.init, i64 4
  store float %i.dt, ptr %i.du, align 4, !tbaa !66
  %i.dv = getelementptr inbounds nuw i8, ptr %.049.epil.init, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !66
  %i.dx = fmul float %i.w, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %.03848.epil.init, i64 8
  store float %i.dx, ptr %i.dy, align 4, !tbaa !66
  %i.dz = getelementptr inbounds nuw i8, ptr %.049.epil.init, i64 12
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !66
  %i.eb = getelementptr inbounds nuw i8, ptr %.03848.epil.init, i64 12
  store float %i.ea, ptr %i.eb, align 4, !tbaa !66
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph50.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRenderer10updateDataERSt10shared_ptrIKNS_22ExposureContrastOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((56, 60)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load double, ptr %i.b, align 8, !tbaa !47 ; 2 uses
  %i.d = fcmp ogt double %i.c, 1.000000e-03
  %.sroa.speculated = select i1 %i.d, double %i.c, double 1.000000e-03
  %i.e = fptrunc double %.sroa.speculated to float
  %i.f = tail call float @powf(float noundef %i.e, float noundef f0x3F0BE406) #24, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.f, ptr %i.g, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_118ECVideoRevRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_118ECVideoRevRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #24, !inline_history !115
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_118ECVideoRevRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_118ECVideoRevRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_118ECVideoRevRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_118ECVideoRevRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_114ECRendererBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_118ECVideoRevRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef double %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.m = fmul double %i.f, %i.l                   ; 2 uses
  %i.n = fcmp ogt double %i.m, 1.000000e-03
  %.sroa.speculated = select i1 %i.n, double %i.m, double 1.000000e-03
  %i.o = fptrunc double %.sroa.speculated to float ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef double %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.v = fptrunc double %i.u to float
  %exp2f = tail call float @exp2f(float %i.v)
  %i.w = tail call float @powf(float noundef %exp2f, float noundef f0x3F0BE406) #24, !tbaa !3
  %i.x = fdiv float 1.000000e+00, %i.w            ; 10 uses
  %i.y = fcmp oeq float %i.o, 1.000000e+00
  br i1 %i.y, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.z = icmp sgt i64 %3, 0
  br i1 %i.z, label %.lr.ph52.preheader, label %.loopexit

.lr.ph52.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %3, 1
  %i.aa = icmp eq i64 %3, 1
  br i1 %i.aa, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter = and i64 %3, 9223372036854775806
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader.new
  %.051 = phi ptr [ %1, %.lr.ph52.preheader.new ], [ %i.bd, %.lr.ph52 ] ; 9 uses
  %.04150 = phi ptr [ %2, %.lr.ph52.preheader.new ], [ %i.be, %.lr.ph52 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %niter.next.1, %.lr.ph52 ]
  %i.ab = load float, ptr %.051, align 4, !tbaa !66
  %i.ac = fmul float %i.x, %i.ab
  store float %i.ac, ptr %.04150, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %.051, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !66
  %i.af = fmul float %i.x, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.04150, i64 4
  store float %i.af, ptr %i.ag, align 4, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %.051, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !66
  %i.aj = fmul float %i.x, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.04150, i64 8
  store float %i.aj, ptr %i.ak, align 4, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %.051, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %.04150, i64 12
  store float %i.am, ptr %i.an, align 4, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.04150, i64 16
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !66
  %i.ar = fmul float %i.x, %i.aq
  store float %i.ar, ptr %i.ap, align 4, !tbaa !66
  %i.as = getelementptr inbounds nuw i8, ptr %.051, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !66
  %i.au = fmul float %i.x, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.04150, i64 20
  store float %i.au, ptr %i.av, align 4, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %.051, i64 24
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !66
  %i.ay = fmul float %i.x, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.04150, i64 24
  store float %i.ay, ptr %i.az, align 4, !tbaa !66
  %i.ba = getelementptr inbounds nuw i8, ptr %.051, i64 28
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %.04150, i64 28
  store float %i.bb, ptr %i.bc, align 4, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %.051, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04150, i64 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph52, !llvm.loop !116

bb.b:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !48 ; 2 uses
  %4 = fdiv float 1.000000e+00, %i.bg
  %5 = fmul float %i.x, %i.bg
  %6 = fdiv float 1.000000e+00, %i.o
  %7 = insertelement <4 x float> poison, float %6, i64 0
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = insertelement <4 x float> poison, float %5, i64 0
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> zeroinitializer
  %9 = insertelement <4 x float> poison, float %4, i64 0
  %i.bj = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = icmp sgt i64 %3, 0
  br i1 %i.bk, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.148 = phi ptr [ %i.dj, %.lr.ph ], [ %1, %bb.b ] ; 3 uses
  %.14247 = phi ptr [ %i.dk, %.lr.ph ], [ %2, %bb.b ] ; 3 uses
  %.04346 = phi i64 [ %i.dl, %.lr.ph ], [ 0, %bb.b ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.148, i64 12
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !66
  %i.bn = load <4 x float>, ptr %.148, align 4, !tbaa !66
  %i.bo = fmul <4 x float> %i.bj, %i.bn           ; 2 uses
  %i.bp = bitcast <4 x float> %i.bo to <4 x i32>  ; 2 uses
  %i.bq = and <4 x i32> %i.bp, splat (i32 -2139095041)
  %i.br = or disjoint <4 x i32> %i.bq, splat (i32 1065353216)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>  ; 5 uses
  %i.bt = fmul nnan <4 x float> %i.bs, splat (float f0x3D37CD65)
  %i.bu = fadd nnan <4 x float> %i.bt, splat (float f0xBED547D7)
  %i.bv = fmul nnan <4 x float> %i.bu, %i.bs
  %i.bw = fadd nnan <4 x float> %i.bv, splat (float f0x3FD0C97C)
  %i.bx = fmul nnan <4 x float> %i.bw, %i.bs
  %i.by = fadd nnan <4 x float> %i.bx, splat (float f0xC0634031)
  %i.bz = fmul nnan <4 x float> %i.by, %i.bs
  %i.ca = fadd nnan <4 x float> %i.bz, splat (float f0x40A2EF4C)
  %i.cb = fmul nnan <4 x float> %i.ca, %i.bs
  %i.cc = fadd nnan <4 x float> %i.cb, splat (float f0xC033392A)
  %i.cd = lshr <4 x i32> %i.bp, splat (i32 23)
  %i.ce = and <4 x i32> %i.cd, splat (i32 255)
  %i.cf = add nsw <4 x i32> %i.ce, splat (i32 -127)
  %i.cg = sitofp <4 x i32> %i.cf to <4 x float>
  %i.ch = fadd nnan <4 x float> %i.cc, %i.cg
  %i.ci = fmul <4 x float> %8, %i.ch              ; 5 uses
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ci)
  %i.ck = fcmp ult <4 x float> %i.ci, zeroinitializer
  %i.cl = sext <4 x i1> %i.ck to <4 x i32>
  %i.cm = add <4 x i32> %i.cj, %i.cl              ; 2 uses
  %i.cn = shl <4 x i32> %i.cm, splat (i32 23)
  %i.co = add <4 x i32> %i.cn, splat (i32 1065353216)
  %i.cp = bitcast <4 x i32> %i.co to <4 x float>
  %i.cq = sitofp <4 x i32> %i.cm to <4 x float>
  %i.cr = fsub <4 x float> %i.ci, %i.cq           ; 4 uses
  %i.cs = fmul <4 x float> %i.cr, splat (float f0x3C5DBE6A)
  %i.ct = fadd <4 x float> %i.cs, splat (float f0x3D5509F8)
  %i.cu = fmul <4 x float> %i.cr, %i.ct
  %i.cv = fadd <4 x float> %i.cu, splat (float f0x3E773CC5)
  %i.cw = fmul <4 x float> %i.cr, %i.cv
  %i.cx = fadd <4 x float> %i.cw, splat (float f0x3F3168B3)
  %i.cy = fmul <4 x float> %i.cr, %i.cx
  %i.cz = fadd <4 x float> %i.cy, splat (float f0x3F800016)
  %i.da = fmul <4 x float> %i.cz, %i.cp
  %i.db = fcmp uge <4 x float> %i.ci, splat (float -1.260000e+02)
  %i.dc = fcmp oge <4 x float> %i.ci, splat (float 1.280000e+02)
  %i.dd = fcmp ogt <4 x float> %i.bo, zeroinitializer
  %i.de = select <4 x i1> %i.db, <4 x float> %i.da, <4 x float> zeroinitializer
  %i.df = select <4 x i1> %i.dc, <4 x float> splat (float +inf), <4 x float> %i.de
  %i.dg = select <4 x i1> %i.dd, <4 x float> %i.df, <4 x float> zeroinitializer
  %i.dh = fmul <4 x float> %i.bi, %i.dg
  store <4 x float> %i.dh, ptr %.14247, align 1, !tbaa !75
  %i.di = getelementptr inbounds nuw i8, ptr %.14247, i64 12
  store float %i.bm, ptr %i.di, align 4, !tbaa !66
  %i.dj = getelementptr inbounds nuw i8, ptr %.148, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.14247, i64 16
  %i.dl = add nuw nsw i64 %.04346, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !117

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph52.preheader
  %.051.epil.init = phi ptr [ %1, %.lr.ph52.preheader ], [ %i.bd, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %.04150.epil.init = phi ptr [ %2, %.lr.ph52.preheader ], [ %i.be, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod59 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.dm = load float, ptr %.051.epil.init, align 4, !tbaa !66
  %i.dn = fmul float %i.x, %i.dm
  store float %i.dn, ptr %.04150.epil.init, align 4, !tbaa !66
  %i.do = getelementptr inbounds nuw i8, ptr %.051.epil.init, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !66
  %i.dq = fmul float %i.x, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.04150.epil.init, i64 4
  store float %i.dq, ptr %i.dr, align 4, !tbaa !66
  %i.ds = getelementptr inbounds nuw i8, ptr %.051.epil.init, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !66
  %i.du = fmul float %i.x, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.04150.epil.init, i64 8
  store float %i.du, ptr %i.dv, align 4, !tbaa !66
  %i.dw = getelementptr inbounds nuw i8, ptr %.051.epil.init, i64 12
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !66
  %i.dy = getelementptr inbounds nuw i8, ptr %.04150.epil.init, i64 12
  store float %i.dx, ptr %i.dy, align 4, !tbaa !66
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph52.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_118ECVideoRevRenderer10updateDataERSt10shared_ptrIKNS_22ExposureContrastOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((56, 60)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load double, ptr %i.b, align 8, !tbaa !47 ; 2 uses
  %i.d = fcmp ogt double %i.c, 1.000000e-03
  %.sroa.speculated = select i1 %i.d, double %i.c, double 1.000000e-03
  %i.e = fptrunc double %.sroa.speculated to float
  %i.f = tail call float @powf(float noundef %i.e, float noundef f0x3F0BE406) #24, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.f, ptr %i.g, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_121ECLogarithmicRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_121ECLogarithmicRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #24, !inline_history !118
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_121ECLogarithmicRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_121ECLogarithmicRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_121ECLogarithmicRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
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
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_121ECLogarithmicRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_114ECRendererBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121ECLogarithmicRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.g = fptrunc double %i.f to float
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load float, ptr %i.h, align 4, !tbaa !79
  %i.j = fmul float %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef double %i.o(ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
end_hunk_1
