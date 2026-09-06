Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/ExposureContrastOpCPU?download=true
inline.NumInlined: 428
inline.NumDeleted: 201
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_114ECRendererBaseD2Ev:bb.a
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !0
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !42
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !0
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !0
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !60

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53 ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !42
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !0
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !0
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i7 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i9 = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i9, 1
  br i1 %i.ay, label %bb.s, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, !prof !60

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_124ECLogarithmicRevRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_114ECRendererBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_124ECLogarithmicRevRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.g = fptrunc double %i.f to float
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load float, ptr %i.h, align 4, !tbaa !58
  %i.j = fmul float %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef double %i.o(ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef double %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.w = fmul double %i.p, %i.v
  %i.x = fdiv double 1.000000e+00, %i.w           ; 2 uses
  %i.y = fcmp ogt double %i.x, 1.000000e-03
  %.sroa.speculated = select i1 %i.y, double %i.x, double 1.000000e-03
  %i.z = fptrunc double %.sroa.speculated to float ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.ac = fneg float %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.z, float %i.ab)
  %i.ae = fsub float %i.ad, %i.j                  ; 4 uses
  %i.af = icmp sgt i64 %3, 0
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ag = shl i64 %3, 4                           ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.ag
  %scevgep28 = getelementptr i8, ptr %1, i64 %i.ag
  %bound0 = icmp ult ptr %2, %scevgep28
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.ah = shl i64 %n.vec, 4                       ; 2 uses
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah
  %i.aj = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %4 = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %i.ae, i64 0 ; 2 uses
  %broadcast.splat30 = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 4                       ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.al
  %next.gep31 = getelementptr i8, ptr %1, i64 %i.al ; 4 uses
  %i.am = getelementptr i8, ptr %1, i64 %i.al     ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.am, i64 16
  %i.an = getelementptr i8, ptr %1, i64 %i.al     ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.an, i64 32
  %i.ao = getelementptr i8, ptr %1, i64 %i.al     ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.ao, i64 48
  %i.ap = load float, ptr %next.gep31, align 4, !tbaa !52, !alias.scope !128
  %i.aq = load float, ptr %next.gep32, align 4, !tbaa !52, !alias.scope !128
  %i.ar = load float, ptr %next.gep33, align 4, !tbaa !52, !alias.scope !128
  %i.as = load float, ptr %next.gep34, align 4, !tbaa !52, !alias.scope !128
  %i.at = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 2
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 3
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep31, i64 4
  %i.ay = getelementptr i8, ptr %i.am, i64 20
  %i.az = getelementptr i8, ptr %i.an, i64 36
  %i.ba = getelementptr i8, ptr %i.ao, i64 52
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !52, !alias.scope !128
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !52, !alias.scope !128
  %i.bd = load float, ptr %i.az, align 4, !tbaa !52, !alias.scope !128
  %i.be = load float, ptr %i.ba, align 4, !tbaa !52, !alias.scope !128
  %i.bf = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 1
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 2
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 3
  %5 = shufflevector <4 x float> %i.aw, <4 x float> %i.bi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep31, i64 8
  %i.bk = getelementptr i8, ptr %i.am, i64 24
  %i.bl = getelementptr i8, ptr %i.an, i64 40
  %i.bm = getelementptr i8, ptr %i.ao, i64 56
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !52, !alias.scope !128
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !52, !alias.scope !128
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !52, !alias.scope !128
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !52, !alias.scope !128
  %i.br = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 3
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat30)
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep31, i64 12
  %i.bx = getelementptr i8, ptr %i.am, i64 28
  %i.by = getelementptr i8, ptr %i.an, i64 44
  %i.bz = getelementptr i8, ptr %i.ao, i64 60
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !52, !alias.scope !128
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !52, !alias.scope !128
  %i.cc = load float, ptr %i.by, align 4, !tbaa !52, !alias.scope !128
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !52, !alias.scope !128
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %5, <8 x float> %4, <8 x float> %i.ak)
  %i.cj = shufflevector <4 x float> %i.bv, <4 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ci, <8 x float> %i.cj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !52, !alias.scope !129, !noalias !128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.027.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.02326.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.ai, %middle.block ]
  %.02425.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.027 = phi i64 [ %i.da, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader37 ]
  %.02326 = phi ptr [ %i.cz, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader37 ] ; 5 uses
  %.02425 = phi ptr [ %i.cy, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader37 ] ; 5 uses
  %i.cl = load float, ptr %.02425, align 4, !tbaa !52
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.z, float %i.ae)
  store float %i.cm, ptr %.02326, align 4, !tbaa !52
  %i.cn = getelementptr inbounds nuw i8, ptr %.02425, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !52
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.z, float %i.ae)
  %i.cq = getelementptr inbounds nuw i8, ptr %.02326, i64 4
  store float %i.cp, ptr %i.cq, align 4, !tbaa !52
  %i.cr = getelementptr inbounds nuw i8, ptr %.02425, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !52
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.z, float %i.ae)
  %i.cu = getelementptr inbounds nuw i8, ptr %.02326, i64 8
  store float %i.ct, ptr %i.cu, align 4, !tbaa !52
  %i.cv = getelementptr inbounds nuw i8, ptr %.02425, i64 12
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !52
  %i.cx = getelementptr inbounds nuw i8, ptr %.02326, i64 12
  store float %i.cw, ptr %i.cx, align 4, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %.02425, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %.02326, i64 16
  %i.da = add nuw nsw i64 %.027, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.da, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_124ECLogarithmicRevRenderer10updateDataERSt10shared_ptrIKNS_22ExposureContrastOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((56, 60)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load double, ptr %i.b, align 8, !tbaa !45 ; 2 uses
  %i.d = fcmp ogt double %i.c, 1.000000e-03
  %.sroa.speculated7 = select i1 %i.d, double %i.c, double 1.000000e-03
  %i.e = fptrunc double %.sroa.speculated7 to float
  %i.f = fpext float %i.e to double
  %i.g = fdiv double %i.f, 1.800000e-01
  %i.h = tail call double @log2(double noundef %i.g) #24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.j = load double, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.l = load double, ptr %i.k, align 8, !tbaa !51
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double %i.j, double %i.l) ; 2 uses
  %i.n = fcmp ogt double %i.m, 0.000000e+00
  %.sroa.speculated = select i1 %i.n, double %i.m, double 0.000000e+00
  %i.o = fptrunc double %.sroa.speculated to float
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.o, ptr %i.p, align 8, !tbaa !49
  ret void
}

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN16OpenColorIO_v2_522ExposureContrastOpDataE", !9, i64 0}
!11 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!13 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_522ExposureContrastOpDataELN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0, !12, i64 8}
!14 = !{!13, !10, i64 0}
!15 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!16 = !{!"_ZTSSt5mutex", !15, i64 0}
!17 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!18 = !{!"p1 omnipotent char", !9, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !20, i64 8, !5, i64 16}
!22 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !9, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!24 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !23, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !24, i64 0}
!26 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !25, i64 0}
!27 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !9, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !30, i64 0}
!32 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !17, i64 0, !21, i64 8, !21, i64 40, !26, i64 72, !31, i64 96}
!33 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !16, i64 8, !32, i64 48}
!34 = !{!"_ZTSN16OpenColorIO_v2_522ExposureContrastOpData5StyleE", !5, i64 0}
!35 = !{!"p1 _ZTSN16OpenColorIO_v2_525DynamicPropertyDoubleImplE", !9, i64 0}
!36 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !12, i64 8}
!37 = !{!"_ZTSSt10shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplEE", !36, i64 0}
!38 = !{!"double", !5, i64 0}
!39 = !{!"_ZTSN16OpenColorIO_v2_522ExposureContrastOpDataE", !33, i64 0, !34, i64 168, !37, i64 176, !37, i64 192, !37, i64 208, !38, i64 224, !38, i64 232, !38, i64 240}
!40 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!41 = !{!40, !6, i64 8}
!42 = !{!40, !6, i64 12}
!43 = !{!"vtable pointer", !4, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!39, !38, i64 224}
!46 = !{!"_ZTSN16OpenColorIO_v2_55OpCPUE"}
!47 = !{!"float", !5, i64 0}
!48 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_114ECRendererBaseE", !46, i64 0, !37, i64 8, !37, i64 24, !37, i64 40, !47, i64 56, !47, i64 60}
!49 = !{!48, !47, i64 56}
!50 = !{!39, !38, i64 232}
!51 = !{!39, !38, i64 240}
!52 = !{!47, !47, i64 0}
!53 = !{!12, !11, i64 0}
!54 = !{!5, !5, i64 0}
!55 = !{!6, !6, i64 0}
!56 = !{!"_ZTSSt9type_info", !18, i64 8}
!57 = !{!56, !18, i64 8}
!58 = !{!48, !47, i64 60}
!59 = !{!36, !35, i64 0}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{!"_ZTSN16OpenColorIO_v2_515DynamicPropertyE"}
!62 = !{!"_ZTSN16OpenColorIO_v2_519DynamicPropertyTypeE", !5, i64 0}
!63 = !{!"bool", !5, i64 0}
!64 = !{!"_ZTSN16OpenColorIO_v2_519DynamicPropertyImplE", !61, i64 0, !62, i64 8, !63, i64 12}
!65 = !{!64, !63, i64 12}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!"llvm.loop.mustprogress"}
!69 = distinct !{!69, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_116ECLinearRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!70 = distinct !{!70, !69, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_116ECLinearRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!71 = distinct !{!71, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_119ECLinearRevRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!72 = distinct !{!72, !71, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_119ECLinearRevRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!73 = distinct !{!73, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!74 = distinct !{!74, !73, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_115ECVideoRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!75 = distinct !{!75, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_118ECVideoRevRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!76 = distinct !{!76, !75, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_118ECVideoRevRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!77 = distinct !{!77, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_121ECLogarithmicRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!78 = distinct !{!78, !77, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_121ECLogarithmicRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!79 = distinct !{!79, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_124ECLogarithmicRevRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!80 = distinct !{!80, !79, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_124ECLogarithmicRevRendererEJRSt10shared_ptrIKNS0_22ExposureContrastOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!81 = !{!39, !34, i64 168}
!82 = !{!70}
end_hunk_0
