Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/qmmminputgenerator?download=true
inline.NumInlined: 1092
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gmx18QMMMInputGeneratorC2ERKNS_14QMMMParametersE7PbcTypePA3_KfNS_8ArrayRefIS5_EENS8_IKNS_11BasicVectorIfEEEE
define void @_ZN3gmx18QMMMInputGeneratorC2ERKNS_14QMMMParametersE7PbcTypePA3_KfNS_8ArrayRefIS5_EENS8_IKNS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 12), (48, 108), (120, 124), (128, 136)) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr %4, ptr %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.4") align 8 captures(none) %6) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 192
  %i.d = add i64 %i.a, 36
  %rt.bound0 = icmp ugt i64 %i.d, %i.b
  %rt.bound1 = icmp ugt i64 %i.c, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !83

._crit_edge:                                      ; preds = %_ZNSt3setIlSt4lessIlESaIlEE7emplaceIJRKlEEESt4pairISt23_Rb_tree_const_iteratorIlEbEDpOT_.exit, %.rtcont
  invoke void @_ZN3gmx18QMMMInputGenerator12computeQMBoxEff(ptr noundef nonnull align 8 dereferenceable(192) %0, float noundef 1.200000e+00, float noundef 1.000000e+00)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.lr.ph:                                           ; preds = %.rtcont, %_ZNSt3setIlSt4lessIlESaIlEE7emplaceIJRKlEEESt4pairISt23_Rb_tree_const_iteratorIlEbEDpOT_.exit
  %.sroa.010.015 = phi ptr [ %i.g, %_ZNSt3setIlSt4lessIlESaIlEE7emplaceIJRKlEEESt4pairISt23_Rb_tree_const_iteratorIlEbEDpOT_.exit ], [ %.rtmerge18, %.rtcont ] ; 2 uses
  %i.f = invoke { ptr, i8 } @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE17_M_emplace_uniqueIJRKlEEESt4pairISt17_Rb_tree_iteratorIlEbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %.rtmerge, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.010.015)
          to label %_ZNSt3setIlSt4lessIlESaIlEE7emplaceIJRKlEEESt4pairISt23_Rb_tree_const_iteratorIlEbEDpOT_.exit unwind label %bb.c ; 0 uses

_ZNSt3setIlSt4lessIlESaIlEE7emplaceIJRKlEEESt4pairISt23_Rb_tree_const_iteratorIlEbEDpOT_.exit: ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %.rtmerge19
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.e, %bb.b ]
  tail call void @_ZNSt3setIlSt4lessIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.rtmerge) #24
  resume { ptr, i32 } %.pn

.rtvec:                                           ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.l, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.j, i8 0, i64 60, i1 false)
  store ptr %i.k, ptr %i.m, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.k, ptr %i.n, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %4, ptr %i.p, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = ptrtoint ptr %5 to i64
  %i.s = ptrtoint ptr %4 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 %i.t
  store ptr %i.u, ptr %i.q, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load ptr, ptr %6, align 8, !tbaa !50     ; 3 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !50
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load <8 x float>, ptr %3, align 4, !tbaa !52
  store <8 x float> %i.af, ptr %i.ae, align 4, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.ah, ptr %i.ai, align 4, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !88 ; 2 uses
  %.not14 = icmp eq ptr %i.ak, %i.am
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.an, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !85
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.aq, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.ao, i8 0, i64 60, i1 false)
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.at, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %4, ptr %i.au, align 8, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aw = ptrtoint ptr %5 to i64
  %i.ax = ptrtoint ptr %4 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay
  store ptr %i.az, ptr %i.av, align 8, !tbaa !87
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = load ptr, ptr %6, align 8, !tbaa !50    ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !50
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  store ptr %i.bi, ptr %i.bc, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bk = load float, ptr %3, align 4, !tbaa !52
  store float %i.bk, ptr %i.bj, align 4, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bm, ptr %i.bn, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !52
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bp, ptr %i.bq, align 4, !tbaa !52
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = load float, ptr %i.br, align 4, !tbaa !52
  store float %i.bt, ptr %i.bs, align 8, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !52
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.bv, ptr %i.bw, align 4, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.by = load float, ptr %i.bx, align 4, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.by, ptr %i.bz, align 8, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cc = load float, ptr %i.ca, align 4, !tbaa !52
  store float %i.cc, ptr %i.cb, align 4, !tbaa !52
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !52
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ce, ptr %i.cf, align 8, !tbaa !52
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.ch, ptr %i.ci, align 4, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !88 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !88 ; 2 uses
  %.not14.scalar = icmp eq ptr %i.ck, %i.cm
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  %.rtmerge18 = phi ptr [ %i.ak, %.rtvec ], [ %i.ck, %.rtscalar ]
  %.rtmerge19 = phi ptr [ %i.am, %.rtvec ], [ %i.cm, %.rtscalar ]
  %.not14.rtmerge = phi i1 [ %.not14, %.rtvec ], [ %.not14.scalar, %.rtscalar ]
  %.rtmerge = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br i1 %.not14.rtmerge, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx18QMMMInputGenerator12computeQMBoxEff(ptr noundef nonnull align 8 dereferenceable(192) %0, float noundef %1, float noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %3 = alloca %struct.t_pbc, align 4              ; 5 uses
  %4 = alloca %"class.gmx::BasicVector", align 8  ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !55, !align !56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 5 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load <8 x float>, ptr %i.k, align 4, !tbaa !52 ; 5 uses
  store <8 x float> %i.m, ptr %i.l, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = load float, ptr %i.n, align 4, !tbaa !52 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.o, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load i64, ptr %i.e, align 8, !tbaa !26
  %i.s = load i64, ptr %i.q, align 8
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds [12 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !92
  %5 = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 2, i32 5>
  %6 = fmul <2 x float> %5, splat (float 5.000000e-01) ; 2 uses
  %shift = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %6, %shift
  %7 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = fmul float %i.o, 5.000000e-01
  %i.x = fadd float %7, %i.w
  %i.y = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 3, i32 4>
  %i.ab = fmul <2 x float> %i.aa, splat (float 5.000000e-01)
  %i.ac = fadd <2 x float> %i.z, %i.ab
  %i.ad = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 6, i32 7>
  %i.ae = fmul <2 x float> %i.ad, splat (float 5.000000e-01)
  %i.af = fadd <2 x float> %i.ac, %i.ae
  %i.ag = load <2 x float>, ptr %i.v, align 4, !tbaa !52
  %i.ah = fsub <2 x float> %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !52
  %i.ak = fsub float %i.x, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x float> %i.ah, ptr %i.al, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.ak, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !21
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %3, i32 noundef %i.an, ptr noundef nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.aq, align 8, !tbaa !52
  %i.ar = add nsw i64 %i.i, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph294

.lr.ph294:                                        ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph
  %exitcond299.not = icmp eq i64 %i.hf, %i.ar
  br i1 %exitcond299.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !89

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %.0.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %spec.select, %.loopexit ]
  %i.at = fmul float %1, %.0.lcssa                ; 3 uses
  %i.au = load float, ptr %i.ao, align 4, !tbaa !52 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load float, ptr %i.av, align 8, !tbaa !52 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !52 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load float, ptr %i.az, align 8, !tbaa !52 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !52 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load float, ptr %i.bd, align 8, !tbaa !52 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !52 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !52 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !52 ; 7 uses
  %i.bl = fmul float %i.aw, %i.aw
  %i.bm = call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.bl)
  %i.bn = call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.bm)
  %i.bo = call noundef float @sqrtf(float noundef %i.bn) #24 ; 2 uses
  %i.bp = fneg float %i.bi                        ; 2 uses
  %i.bq = fmul float %i.be, %i.bp
  %i.br = call float @llvm.fmuladd.f32(float %i.bc, float %i.bk, float %i.bq) ; 3 uses
  %i.bs = fneg float %i.bk                        ; 2 uses
  %i.bt = fmul float %i.ba, %i.bs
  %i.bu = call float @llvm.fmuladd.f32(float %i.be, float %i.bg, float %i.bt) ; 3 uses
  %i.bv = fneg float %i.bg                        ; 2 uses
  %i.bw = fmul float %i.bc, %i.bv
  %i.bx = call float @llvm.fmuladd.f32(float %i.ba, float %i.bi, float %i.bw) ; 3 uses
  %i.by = fmul float %i.bu, %i.bu
  %i.bz = call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.by)
  %i.ca = call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bz)
  %i.cb = call noundef float @sqrtf(float noundef %i.ca) #24
  %i.cc = fdiv float 1.000000e+00, %i.cb          ; 3 uses
  %i.cd = fmul float %i.br, %i.cc
  %i.ce = fmul float %i.bu, %i.cc
  %i.cf = fmul float %i.bx, %i.cc
  %i.cg = fmul float %i.aw, %i.ce
  %i.ch = call float @llvm.fmuladd.f32(float %i.au, float %i.cd, float %i.cg)
  %i.ci = call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.cf, float %i.ch)
  %i.cj = call noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = fdiv float %i.at, %i.cj                 ; 3 uses
  %i.cl = fmul float %i.au, %i.ck                 ; 4 uses
  %i.cm = fmul float %i.aw, %i.ck                 ; 4 uses
  %i.cn = fmul float %i.ay, %i.ck                 ; 4 uses
  %.sroa.0.0.vec.insert.i19.i = insertelement <2 x float> poison, float %i.cl, i64 0
  %.sroa.0.4.vec.insert.i20.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i, float %i.cm, i64 1
  %i.co = fmul float %i.cm, %i.cm
  %i.cp = call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.co)
  %i.cq = call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cp)
  %i.cr = call noundef float @sqrtf(float noundef %i.cq) #24 ; 2 uses
  %i.cs = fcmp olt float %i.cr, %2
  br i1 %i.cs, label %bb.d, label %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit

bb.d:                                             ; preds = %._crit_edge
  %i.ct = fdiv float %2, %i.cr                    ; 3 uses
  %i.cu = fmul float %i.ct, %i.cl
  %.sroa.054.0.vec.insert62.i = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cv = fmul float %i.ct, %i.cm
  %.sroa.054.4.vec.insert77.i = insertelement <2 x float> %.sroa.054.0.vec.insert62.i, float %i.cv, i64 1
  %i.cw = fmul float %i.ct, %i.cn
  br label %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit

_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit: ; preds = %bb.d, %._crit_edge
  %.sroa.054.0.i = phi <2 x float> [ %.sroa.054.4.vec.insert77.i, %bb.d ], [ %.sroa.0.4.vec.insert.i20.i, %._crit_edge ] ; 5 uses
  %.sroa.20.0.i = phi float [ %i.cw, %bb.d ], [ %i.cn, %._crit_edge ] ; 4 uses
  %.sroa.054.0.vec.extract64.i = extractelement <2 x float> %.sroa.054.0.i, i64 0 ; 2 uses
  %foldExtExtBinop.a = fmul <2 x float> %.sroa.054.0.i, %.sroa.054.0.i
  %i.cx = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %i.cy = call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract64.i, float %.sroa.054.0.vec.extract64.i, float %i.cx)
  %i.cz = call noundef float @llvm.fmuladd.f32(float %.sroa.20.0.i, float %.sroa.20.0.i, float %i.cy)
  %i.da = call noundef float @sqrtf(float noundef %i.cz) #24 ; 2 uses
  %i.db = fcmp ogt float %i.da, %i.bo             ; 2 uses
  %i.dc = fdiv float %i.bo, %i.da                 ; 2 uses
  %i.dd = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x float> %.sroa.054.0.i, %i.de
  %i.dg = fmul float %.sroa.20.0.i, %i.dc
  %.sroa.054.1.i = select i1 %i.db, <2 x float> %i.df, <2 x float> %.sroa.054.0.i ; 2 uses
  %.sroa.20.1.i = select i1 %i.db, float %i.dg, float %.sroa.20.0.i ; 2 uses
  %i.dh = fmul float %i.bc, %i.bc
  %i.di = call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.dh)
  %i.dj = call noundef float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.di)
  %i.dk = call noundef float @sqrtf(float noundef %i.dj) #24 ; 2 uses
  %i.dl = fmul float %i.ay, %i.bp
  %i.dm = call float @llvm.fmuladd.f32(float %i.aw, float %i.bk, float %i.dl) ; 3 uses
  %i.dn = fmul float %i.au, %i.bs
  %i.do = call float @llvm.fmuladd.f32(float %i.ay, float %i.bg, float %i.dn) ; 3 uses
  %i.dp = fmul float %i.aw, %i.bv
  %i.dq = call float @llvm.fmuladd.f32(float %i.au, float %i.bi, float %i.dp) ; 3 uses
  %i.dr = fmul float %i.do, %i.do
  %i.ds = call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.dr)
  %i.dt = call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.ds)
  %i.du = call noundef float @sqrtf(float noundef %i.dt) #24
  %i.dv = fdiv float 1.000000e+00, %i.du          ; 3 uses
  %i.dw = fmul float %i.dm, %i.dv
  %i.dx = fmul float %i.do, %i.dv
  %i.dy = fmul float %i.dq, %i.dv
  %i.dz = fmul float %i.bc, %i.dx
  %i.ea = call float @llvm.fmuladd.f32(float %i.ba, float %i.dw, float %i.dz)
  %i.eb = call noundef float @llvm.fmuladd.f32(float %i.be, float %i.dy, float %i.ea)
  %i.ec = call noundef float @llvm.fabs.f32(float %i.eb)
  %i.ed = fdiv float %i.at, %i.ec                 ; 3 uses
  %i.ee = fmul float %i.ba, %i.ed                 ; 4 uses
  %i.ef = fmul float %i.bc, %i.ed                 ; 4 uses
  %i.eg = fmul float %i.be, %i.ed                 ; 4 uses
  %.sroa.0.0.vec.insert.i19.i131 = insertelement <2 x float> poison, float %i.ee, i64 0
  %.sroa.0.4.vec.insert.i20.i132 = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i131, float %i.ef, i64 1
  %i.eh = fmul float %i.ef, %i.ef
  %i.ei = call float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %i.eh)
  %i.ej = call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %i.ei)
  %i.ek = call noundef float @sqrtf(float noundef %i.ej) #24 ; 2 uses
  %i.el = fcmp olt float %i.ek, %2
  br i1 %i.el, label %bb.e, label %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit145

bb.e:                                             ; preds = %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit
  %i.em = fdiv float %2, %i.ek                    ; 3 uses
  %i.en = fmul float %i.em, %i.ee
  %.sroa.054.0.vec.insert62.i143 = insertelement <2 x float> poison, float %i.en, i64 0
  %i.eo = fmul float %i.em, %i.ef
  %.sroa.054.4.vec.insert77.i144 = insertelement <2 x float> %.sroa.054.0.vec.insert62.i143, float %i.eo, i64 1
  %i.ep = fmul float %i.em, %i.eg
  br label %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit145

_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit145: ; preds = %bb.e, %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit
  %.sroa.054.0.i133 = phi <2 x float> [ %.sroa.054.4.vec.insert77.i144, %bb.e ], [ %.sroa.0.4.vec.insert.i20.i132, %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit ] ; 5 uses
  %.sroa.20.0.i134 = phi float [ %i.ep, %bb.e ], [ %i.eg, %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit ] ; 4 uses
  %.sroa.054.0.vec.extract64.i135 = extractelement <2 x float> %.sroa.054.0.i133, i64 0 ; 2 uses
  %foldExtExtBinop326 = fmul <2 x float> %.sroa.054.0.i133, %.sroa.054.0.i133
  %i.eq = extractelement <2 x float> %foldExtExtBinop326, i64 1
  %i.er = call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract64.i135, float %.sroa.054.0.vec.extract64.i135, float %i.eq)
  %i.es = call noundef float @llvm.fmuladd.f32(float %.sroa.20.0.i134, float %.sroa.20.0.i134, float %i.er)
  %i.et = call noundef float @sqrtf(float noundef %i.es) #24 ; 2 uses
  %i.eu = fcmp ogt float %i.et, %i.dk             ; 2 uses
  %i.ev = fdiv float %i.dk, %i.et                 ; 2 uses
  %i.ew = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %.sroa.054.0.i133, %i.ex
  %i.ez = fmul float %.sroa.20.0.i134, %i.ev
  %.sroa.054.1.i137 = select i1 %i.eu, <2 x float> %i.ey, <2 x float> %.sroa.054.0.i133 ; 2 uses
  %.sroa.20.1.i138 = select i1 %i.eu, float %i.ez, float %.sroa.20.0.i134 ; 2 uses
  %i.fa = fmul float %i.bi, %i.bi
  %i.fb = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.fa)
  %i.fc = call noundef float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.fb)
  %i.fd = call noundef float @sqrtf(float noundef %i.fc) #24 ; 2 uses
  %i.fe = fneg float %i.bc
  %i.ff = fmul float %i.ay, %i.fe
  %i.fg = call float @llvm.fmuladd.f32(float %i.aw, float %i.be, float %i.ff) ; 3 uses
  %i.fh = fneg float %i.be
  %i.fi = fmul float %i.au, %i.fh
  %i.fj = call float @llvm.fmuladd.f32(float %i.ay, float %i.ba, float %i.fi) ; 3 uses
  %i.fk = fneg float %i.ba
  %i.fl = fmul float %i.aw, %i.fk
  %i.fm = call float @llvm.fmuladd.f32(float %i.au, float %i.bc, float %i.fl) ; 3 uses
end_hunk_0
