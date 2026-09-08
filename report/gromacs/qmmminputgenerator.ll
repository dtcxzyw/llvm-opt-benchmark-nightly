Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/qmmminputgenerator?download=true
inline.NumInlined: 1092
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_:bb.a

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx18QMMMInputGeneratorC2ERKNS_14QMMMParametersE7PbcTypePA3_KfNS_8ArrayRefIS5_EENS8_IKNS_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 12), (48, 108), (120, 124), (128, 136)) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr %4, ptr %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.4") align 8 captures(none) %6) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.b, i8 0, i64 60, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.d, ptr %i.g, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %4, ptr %i.i, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = ptrtoint ptr %5 to i64
  %i.l = ptrtoint ptr %4 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %i.m
  store ptr %i.n, ptr %i.j, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %6, align 8, !tbaa !50     ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.v
  store ptr %i.w, ptr %i.q, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load float, ptr %3, align 4, !tbaa !52
  store float %i.y, ptr %i.x, align 4, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.aa, ptr %i.ab, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ad, ptr %i.ae, align 4, !tbaa !52
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load float, ptr %i.af, align 4, !tbaa !52
  store float %i.ah, ptr %i.ag, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.aj, ptr %i.ak, align 4, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.am = load float, ptr %i.al, align 4, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.am, ptr %i.an, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !52
  store float %i.aq, ptr %i.ap, align 4, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.as = load float, ptr %i.ar, align 4, !tbaa !52
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.as, ptr %i.at, align 8, !tbaa !52
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = load float, ptr %i.au, align 4, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.av, ptr %i.aw, align 4, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !87 ; 2 uses
  %.not14 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt3setIlSt4lessIlESaIlEE7emplaceIJRKlEEESt4pairISt23_Rb_tree_const_iteratorIlEbEDpOT_.exit, %bb.a
  invoke void @_ZN3gmx18QMMMInputGenerator12computeQMBoxEff(ptr noundef nonnull align 8 dereferenceable(192) %0, float noundef 1.200000e+00, float noundef 1.000000e+00)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %_ZNSt3setIlSt4lessIlESaIlEE7emplaceIJRKlEEESt4pairISt23_Rb_tree_const_iteratorIlEbEDpOT_.exit
  %.sroa.010.015 = phi ptr [ %i.bd, %_ZNSt3setIlSt4lessIlESaIlEE7emplaceIJRKlEEESt4pairISt23_Rb_tree_const_iteratorIlEbEDpOT_.exit ], [ %i.ay, %bb.a ] ; 2 uses
  %i.bc = invoke { ptr, i8 } @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE17_M_emplace_uniqueIJRKlEEESt4pairISt17_Rb_tree_iteratorIlEbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.010.015)
          to label %_ZNSt3setIlSt4lessIlESaIlEE7emplaceIJRKlEEESt4pairISt23_Rb_tree_const_iteratorIlEbEDpOT_.exit unwind label %bb.c ; 0 uses

_ZNSt3setIlSt4lessIlESaIlEE7emplaceIJRKlEEESt4pairISt23_Rb_tree_const_iteratorIlEbEDpOT_.exit: ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.ba
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.be, %bb.c ], [ %i.bb, %bb.b ]
  tail call void @_ZNSt3setIlSt4lessIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.c) #23
  resume { ptr, i32 } %.pn
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
  %i.m = load <8 x float>, ptr %i.k, align 4, !tbaa !52 ; 6 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !91
  %i.w = extractelement <8 x float> %i.m, i64 2
  %i.x = fmul float %i.w, 5.000000e-01
  %i.y = extractelement <8 x float> %i.m, i64 5
  %i.z = fmul float %i.y, 5.000000e-01
  %i.aa = fadd float %i.x, %i.z
  %i.ab = fmul float %i.o, 5.000000e-01
  %i.ac = fadd float %i.aa, %i.ab
  %i.ad = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ae = fmul <2 x float> %i.ad, splat (float 5.000000e-01)
  %i.af = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 3, i32 4>
  %i.ag = fmul <2 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd <2 x float> %i.ae, %i.ag
  %i.ai = shufflevector <8 x float> %i.m, <8 x float> poison, <2 x i32> <i32 6, i32 7>
  %i.aj = fmul <2 x float> %i.ai, splat (float 5.000000e-01)
  %i.ak = fadd <2 x float> %i.ah, %i.aj
  %i.al = load <2 x float>, ptr %i.v, align 4, !tbaa !52
  %i.am = fsub <2 x float> %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ao = load float, ptr %i.an, align 4, !tbaa !52
  %i.ap = fsub float %i.ac, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x float> %i.am, ptr %i.aq, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.ap, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !21
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %3, i32 noundef %i.as, ptr noundef nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !52
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.av, align 8, !tbaa !52
  %5 = add nsw i64 %i.i, -1                       ; 2 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph304

.lr.ph304:                                        ; preds = %bb.c
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph
  %exitcond309.not = icmp eq i64 %i.gw, %5
  br i1 %exitcond309.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !88

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %.0.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %spec.select, %.loopexit ]
  %i.aw = fmul float %1, %.0.lcssa                ; 3 uses
  %i.ax = load float, ptr %i.at, align 4, !tbaa !52 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load float, ptr %i.ay, align 8, !tbaa !52 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !52 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !52 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bf = load float, ptr %i.be, align 4, !tbaa !52 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !52 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !52 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !52 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !52 ; 7 uses
  %i.bo = fmul float %i.az, %i.az
  %i.bp = call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.bo)
  %i.bq = call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.bp)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bq) ; 2 uses
  %i.br = fneg float %i.bl                        ; 2 uses
  %i.bs = fmul float %i.bh, %i.br
  %i.bt = call float @llvm.fmuladd.f32(float %i.bf, float %i.bn, float %i.bs) ; 3 uses
  %i.bu = fneg float %i.bn                        ; 2 uses
  %i.bv = fmul float %i.bd, %i.bu
  %i.bw = call float @llvm.fmuladd.f32(float %i.bh, float %i.bj, float %i.bv) ; 3 uses
  %i.bx = fneg float %i.bj                        ; 2 uses
  %i.by = fmul float %i.bf, %i.bx
  %i.bz = call float @llvm.fmuladd.f32(float %i.bd, float %i.bl, float %i.by) ; 3 uses
  %i.ca = fmul float %i.bw, %i.bw
  %i.cb = call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.ca)
  %i.cc = call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.cb)
  %sqrt.i.i114 = call noundef float @llvm.sqrt.f32(float %i.cc)
  %i.cd = fdiv float 1.000000e+00, %sqrt.i.i114   ; 3 uses
  %i.ce = fmul float %i.bt, %i.cd
  %i.cf = fmul float %i.bw, %i.cd
  %i.cg = fmul float %i.bz, %i.cd
  %i.ch = fmul float %i.az, %i.cf
  %i.ci = call float @llvm.fmuladd.f32(float %i.ax, float %i.ce, float %i.ch)
  %i.cj = call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.cg, float %i.ci)
  %i.ck = call noundef float @llvm.fabs.f32(float %i.cj)
  %i.cl = fdiv float %i.aw, %i.ck                 ; 3 uses
  %i.cm = fmul float %i.ax, %i.cl                 ; 4 uses
  %i.cn = fmul float %i.az, %i.cl                 ; 4 uses
  %i.co = fmul float %i.bb, %i.cl                 ; 4 uses
  %.sroa.0.0.vec.insert.i19.i = insertelement <2 x float> poison, float %i.cm, i64 0
  %.sroa.0.4.vec.insert.i20.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i, float %i.cn, i64 1
  %i.cp = fmul float %i.cn, %i.cn
  %i.cq = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.cp)
  %i.cr = call noundef float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cq)
  %sqrt.i23.i = call noundef float @llvm.sqrt.f32(float %i.cr) ; 2 uses
  %i.cs = fcmp olt float %sqrt.i23.i, %2
  br i1 %i.cs, label %bb.d, label %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit

bb.d:                                             ; preds = %._crit_edge
  %i.ct = fdiv float %2, %sqrt.i23.i              ; 3 uses
  %i.cu = fmul float %i.cm, %i.ct
  %.sroa.058.0.vec.insert66.i = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cv = fmul float %i.cn, %i.ct
  %.sroa.058.4.vec.insert81.i = insertelement <2 x float> %.sroa.058.0.vec.insert66.i, float %i.cv, i64 1
  %i.cw = fmul float %i.co, %i.ct
  br label %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit

_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit: ; preds = %bb.d, %._crit_edge
  %.sroa.058.0.i = phi <2 x float> [ %.sroa.058.4.vec.insert81.i, %bb.d ], [ %.sroa.0.4.vec.insert.i20.i, %._crit_edge ] ; 5 uses
  %.sroa.20.0.i = phi float [ %i.cw, %bb.d ], [ %i.co, %._crit_edge ] ; 4 uses
  %.sroa.058.0.vec.extract68.i = extractelement <2 x float> %.sroa.058.0.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.058.0.i, %.sroa.058.0.i
  %i.cx = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cy = call float @llvm.fmuladd.f32(float %.sroa.058.0.vec.extract68.i, float %.sroa.058.0.vec.extract68.i, float %i.cx)
  %i.cz = call noundef float @llvm.fmuladd.f32(float %.sroa.20.0.i, float %.sroa.20.0.i, float %i.cy)
  %sqrt.i25.i = call noundef float @llvm.sqrt.f32(float %i.cz) ; 2 uses
  %i.da = fcmp ogt float %sqrt.i25.i, %sqrt.i.i   ; 2 uses
  %i.db = fdiv float %sqrt.i.i, %sqrt.i25.i       ; 2 uses
  %i.dc = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x float> %.sroa.058.0.i, %i.dd
  %i.df = fmul float %.sroa.20.0.i, %i.db
  %.sroa.058.1.i = select i1 %i.da, <2 x float> %i.de, <2 x float> %.sroa.058.0.i ; 2 uses
  %.sroa.20.1.i = select i1 %i.da, float %i.df, float %.sroa.20.0.i ; 2 uses
  %i.dg = fmul float %i.bf, %i.bf
  %i.dh = call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.dg)
  %i.di = call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.dh)
  %sqrt.i.i117 = call noundef float @llvm.sqrt.f32(float %i.di) ; 2 uses
  %i.dj = fmul float %i.bb, %i.br
  %i.dk = call float @llvm.fmuladd.f32(float %i.az, float %i.bn, float %i.dj) ; 3 uses
  %i.dl = fmul float %i.ax, %i.bu
  %i.dm = call float @llvm.fmuladd.f32(float %i.bb, float %i.bj, float %i.dl) ; 3 uses
  %i.dn = fmul float %i.az, %i.bx
  %i.do = call float @llvm.fmuladd.f32(float %i.ax, float %i.bl, float %i.dn) ; 3 uses
  %i.dp = fmul float %i.dm, %i.dm
  %i.dq = call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dp)
  %i.dr = call noundef float @llvm.fmuladd.f32(float %i.do, float %i.do, float %i.dq)
  %sqrt.i.i133 = call noundef float @llvm.sqrt.f32(float %i.dr)
  %i.ds = fdiv float 1.000000e+00, %sqrt.i.i133   ; 3 uses
  %i.dt = fmul float %i.dk, %i.ds
  %i.du = fmul float %i.dm, %i.ds
  %i.dv = fmul float %i.do, %i.ds
  %i.dw = fmul float %i.bf, %i.du
  %i.dx = call float @llvm.fmuladd.f32(float %i.bd, float %i.dt, float %i.dw)
  %i.dy = call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.dv, float %i.dx)
  %i.dz = call noundef float @llvm.fabs.f32(float %i.dy)
  %i.ea = fdiv float %i.aw, %i.dz                 ; 3 uses
  %i.eb = fmul float %i.bd, %i.ea                 ; 4 uses
  %i.ec = fmul float %i.bf, %i.ea                 ; 4 uses
  %i.ed = fmul float %i.bh, %i.ea                 ; 4 uses
  %.sroa.0.0.vec.insert.i19.i134 = insertelement <2 x float> poison, float %i.eb, i64 0
  %.sroa.0.4.vec.insert.i20.i135 = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i134, float %i.ec, i64 1
  %i.ee = fmul float %i.ec, %i.ec
  %i.ef = call float @llvm.fmuladd.f32(float %i.eb, float %i.eb, float %i.ee)
  %i.eg = call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.ed, float %i.ef)
  %sqrt.i23.i136 = call noundef float @llvm.sqrt.f32(float %i.eg) ; 2 uses
  %i.eh = fcmp olt float %sqrt.i23.i136, %2
  br i1 %i.eh, label %bb.e, label %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit150

bb.e:                                             ; preds = %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit
  %i.ei = fdiv float %2, %sqrt.i23.i136           ; 3 uses
  %i.ej = fmul float %i.eb, %i.ei
  %.sroa.058.0.vec.insert66.i148 = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ek = fmul float %i.ec, %i.ei
  %.sroa.058.4.vec.insert81.i149 = insertelement <2 x float> %.sroa.058.0.vec.insert66.i148, float %i.ek, i64 1
  %i.el = fmul float %i.ed, %i.ei
  br label %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit150

_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit150: ; preds = %bb.e, %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit
  %.sroa.058.0.i137 = phi <2 x float> [ %.sroa.058.4.vec.insert81.i149, %bb.e ], [ %.sroa.0.4.vec.insert.i20.i135, %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit ] ; 5 uses
  %.sroa.20.0.i138 = phi float [ %i.el, %bb.e ], [ %i.ed, %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit ] ; 4 uses
  %.sroa.058.0.vec.extract68.i139 = extractelement <2 x float> %.sroa.058.0.i137, i64 0 ; 2 uses
  %foldExtExtBinop327 = fmul <2 x float> %.sroa.058.0.i137, %.sroa.058.0.i137
  %i.em = extractelement <2 x float> %foldExtExtBinop327, i64 1
  %i.en = call float @llvm.fmuladd.f32(float %.sroa.058.0.vec.extract68.i139, float %.sroa.058.0.vec.extract68.i139, float %i.em)
  %i.eo = call noundef float @llvm.fmuladd.f32(float %.sroa.20.0.i138, float %.sroa.20.0.i138, float %i.en)
  %sqrt.i25.i141 = call noundef float @llvm.sqrt.f32(float %i.eo) ; 2 uses
  %i.ep = fcmp ogt float %sqrt.i25.i141, %sqrt.i.i117 ; 2 uses
  %i.eq = fdiv float %sqrt.i.i117, %sqrt.i25.i141 ; 2 uses
  %i.er = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x float> %.sroa.058.0.i137, %i.es
  %i.eu = fmul float %.sroa.20.0.i138, %i.eq
  %.sroa.058.1.i142 = select i1 %i.ep, <2 x float> %i.et, <2 x float> %.sroa.058.0.i137 ; 2 uses
  %.sroa.20.1.i143 = select i1 %i.ep, float %i.eu, float %.sroa.20.0.i138 ; 2 uses
  %i.ev = fmul float %i.bl, %i.bl
  %i.ew = call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.ev)
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.ew)
  %sqrt.i.i151 = call noundef float @llvm.sqrt.f32(float %i.ex) ; 2 uses
  %i.ey = fneg float %i.bf
  %i.ez = fmul float %i.bb, %i.ey
  %i.fa = call float @llvm.fmuladd.f32(float %i.az, float %i.bh, float %i.ez) ; 3 uses
  %i.fb = fneg float %i.bh
  %i.fc = fmul float %i.ax, %i.fb
  %i.fd = call float @llvm.fmuladd.f32(float %i.bb, float %i.bd, float %i.fc) ; 3 uses
  %i.fe = fneg float %i.bd
  %i.ff = fmul float %i.az, %i.fe
  %i.fg = call float @llvm.fmuladd.f32(float %i.ax, float %i.bf, float %i.ff) ; 3 uses
  %i.fh = fmul float %i.fd, %i.fd
  %i.fi = call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.fh)
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fi)
  %sqrt.i.i167 = call noundef float @llvm.sqrt.f32(float %i.fj)
  %i.fk = fdiv float 1.000000e+00, %sqrt.i.i167   ; 3 uses
  %i.fl = fmul float %i.fa, %i.fk
  %i.fm = fmul float %i.fd, %i.fk
  %i.fn = fmul float %i.fg, %i.fk
  %i.fo = fmul float %i.bl, %i.fm
  %i.fp = call float @llvm.fmuladd.f32(float %i.bj, float %i.fl, float %i.fo)
  %i.fq = call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.fn, float %i.fp)
  %i.fr = call noundef float @llvm.fabs.f32(float %i.fq)
  %i.fs = fdiv float %i.aw, %i.fr                 ; 3 uses
  %i.ft = fmul float %i.bj, %i.fs                 ; 4 uses
  %i.fu = fmul float %i.bl, %i.fs                 ; 4 uses
  %i.fv = fmul float %i.bn, %i.fs                 ; 4 uses
  %.sroa.0.0.vec.insert.i19.i168 = insertelement <2 x float> poison, float %i.ft, i64 0
  %.sroa.0.4.vec.insert.i20.i169 = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i168, float %i.fu, i64 1
  %i.fw = fmul float %i.fu, %i.fu
  %i.fx = call float @llvm.fmuladd.f32(float %i.ft, float %i.ft, float %i.fw)
  %i.fy = call noundef float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.fx)
  %sqrt.i23.i170 = call noundef float @llvm.sqrt.f32(float %i.fy) ; 2 uses
  %i.fz = fcmp olt float %sqrt.i23.i170, %2
  br i1 %i.fz, label %bb.f, label %.lr.ph307

bb.f:                                             ; preds = %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit150
  %i.ga = fdiv float %2, %sqrt.i23.i170           ; 3 uses
  %i.gb = fmul float %i.ft, %i.ga
  %.sroa.058.0.vec.insert66.i182 = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gc = fmul float %i.fu, %i.ga
  %.sroa.058.4.vec.insert81.i183 = insertelement <2 x float> %.sroa.058.0.vec.insert66.i182, float %i.gc, i64 1
  %i.gd = fmul float %i.fv, %i.ga
  br label %.lr.ph307

.lr.ph307:                                        ; preds = %bb.f, %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit150
  %.sroa.058.0.i171 = phi <2 x float> [ %.sroa.058.4.vec.insert81.i183, %bb.f ], [ %.sroa.0.4.vec.insert.i20.i169, %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit150 ] ; 2 uses
  %.sroa.20.0.i172 = phi float [ %i.gd, %bb.f ], [ %i.fv, %_ZN3gmx15computeQMBoxVecERKNS_11BasicVectorIfEES3_S3_fff.exit150 ] ; 4 uses
  %.sroa.058.0.vec.extract68.i173 = extractelement <2 x float> %.sroa.058.0.i171, i64 0 ; 4 uses
  %.sroa.058.4.vec.extract83.i174 = extractelement <2 x float> %.sroa.058.0.i171, i64 1 ; 4 uses
  %i.ge = fmul float %.sroa.058.4.vec.extract83.i174, %.sroa.058.4.vec.extract83.i174
  %i.gf = call float @llvm.fmuladd.f32(float %.sroa.058.0.vec.extract68.i173, float %.sroa.058.0.vec.extract68.i173, float %i.ge)
  %i.gg = call noundef float @llvm.fmuladd.f32(float %.sroa.20.0.i172, float %.sroa.20.0.i172, float %i.gf)
  %sqrt.i25.i175 = call noundef float @llvm.sqrt.f32(float %i.gg) ; 2 uses
  %i.gh = fcmp ogt float %sqrt.i25.i175, %sqrt.i.i151 ; 3 uses
  %i.gi = fdiv float %sqrt.i.i151, %sqrt.i25.i175 ; 3 uses
  %i.gj = fmul float %.sroa.20.0.i172, %i.gi
  %i.gk = fmul float %.sroa.058.4.vec.extract83.i174, %i.gi
  %i.gl = fmul float %.sroa.058.0.vec.extract68.i173, %i.gi
  %.sroa.0240.4.vec.extract.pre-phi = select i1 %i.gh, float %i.gk, float %.sroa.058.4.vec.extract83.i174 ; 2 uses
  %.sroa.0240.0.vec.extract.pre-phi = select i1 %i.gh, float %i.gl, float %.sroa.058.0.vec.extract68.i173 ; 2 uses
  %.sroa.20.1.i177 = select i1 %i.gh, float %i.gj, float %.sroa.20.0.i172 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.058.1.i, ptr %i.gm, align 8, !tbaa !52
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %.sroa.20.1.i, ptr %i.gn, align 8, !tbaa !52
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <2 x float> %.sroa.058.1.i142, ptr %i.go, align 4, !tbaa !52
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.20.1.i143, ptr %i.gp, align 4, !tbaa !52
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %.sroa.0240.0.vec.extract.pre-phi, ptr %i.gq, align 8, !tbaa !52
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %.sroa.0240.4.vec.extract.pre-phi, ptr %i.gr, align 4, !tbaa !52
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %.sroa.20.1.i177, ptr %i.gs, align 8, !tbaa !52
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.i, i64 2)
  br label %bb.g

.lr.ph.preheader:                                 ; preds = %.loopexit, %.lr.ph304
  %.0303 = phi float [ 0.000000e+00, %.lr.ph304 ], [ %spec.select, %.loopexit ]
  %.094302 = phi i64 [ 0, %.lr.ph304 ], [ %i.gw, %.loopexit ] ; 2 uses
  %i.gw = add nuw i64 %.094302, 1                 ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1301 = phi float [ %spec.select, %.lr.ph ], [ %.0303, %.lr.ph.preheader ] ; 2 uses
  %.095300 = phi i64 [ %i.hp, %.lr.ph ], [ %i.gw, %.lr.ph.preheader ] ; 2 uses
  %i.gx = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !59 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.094302
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !26
  %i.hc = load i64, ptr %6, align 8
  %i.hd = inttoptr i64 %i.hc to ptr               ; 2 uses
  %i.he = getelementptr inbounds [12 x i8], ptr %i.hd, i64 %i.hb
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.095300
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !26
  %i.hh = getelementptr inbounds [12 x i8], ptr %i.hd, i64 %i.hg
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %3, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hh, ptr noundef nonnull %4)
  %i.hi = load float, ptr %4, align 8, !tbaa !52  ; 2 uses
  %i.hj = load float, ptr %i.au, align 4, !tbaa !52 ; 2 uses
  %i.hk = fmul float %i.hj, %i.hj
  %i.hl = call float @llvm.fmuladd.f32(float %i.hi, float %i.hi, float %i.hk)
  %i.hm = load float, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %i.hn = call noundef float @llvm.fmuladd.f32(float %i.hm, float %i.hm, float %i.hl)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.hn) ; 2 uses
  %i.ho = fcmp ogt float %sqrt.i, %.1301
  %spec.select = select i1 %i.ho, float %sqrt.i, float %.1301 ; 3 uses
  %i.hp = add i64 %.095300, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.hp, %i.i
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !89

._crit_edge308:                                   ; preds = %bb.g
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.hr = uitofp i64 %i.i to float
  %i.hs = fdiv float 1.000000e+00, %i.hr          ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.hu = fmul float %i.hs, %i.jp
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hw = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !59
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !26
  %i.ia = load i64, ptr %i.hv, align 8
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = getelementptr inbounds [12 x i8], ptr %i.ib, i64 %i.hz ; 2 uses
  %i.id = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fmul <2 x float> %i.ie, %i.jm
  %i.ig = load <2 x float>, ptr %i.ic, align 4, !tbaa !52
  %i.ih = fadd <2 x float> %i.if, %i.ig           ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !52
  %i.ik = fadd float %i.hu, %i.ij                 ; 2 uses
  store <2 x float> %i.ih, ptr %i.hq, align 4
  store float %i.ik, ptr %i.ht, align 4, !tbaa !21
  %i.il = fmul <2 x float> %.sroa.058.1.i, splat (float 5.000000e-01)
  %i.im = fmul float %.sroa.20.1.i, 5.000000e-01
  %i.in = fmul <2 x float> %.sroa.058.1.i142, splat (float 5.000000e-01)
  %i.io = fmul float %.sroa.20.1.i143, 5.000000e-01
  %i.ip = fadd float %i.im, %i.io
  %i.iq = insertelement <2 x float> poison, float %.sroa.0240.0.vec.extract.pre-phi, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %.sroa.0240.4.vec.extract.pre-phi, i64 1
  %i.is = fmul <2 x float> %i.ir, splat (float 5.000000e-01)
  %i.it = fmul float %.sroa.20.1.i177, 5.000000e-01
  %i.iu = fadd float %i.ip, %i.it
  %i.iv = fadd <2 x float> %i.il, %i.in
  %i.iw = fadd <2 x float> %i.iv, %i.is
  %i.ix = fsub <2 x float> %i.iw, %i.ih
  %i.iy = fsub float %i.iu, %i.ik
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x float> %i.ix, ptr %i.iz, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.iy, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph307, %bb.g
  %.096306 = phi i64 [ 1, %.lr.ph307 ], [ %i.jq, %bb.g ] ; 2 uses
  %i.ja = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !59 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.096306
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !26
  %i.jf = load i64, ptr %i.gt, align 8
  %i.jg = inttoptr i64 %i.jf to ptr               ; 2 uses
  %i.jh = getelementptr inbounds [12 x i8], ptr %i.jg, i64 %i.je
  %i.ji = load i64, ptr %i.jc, align 8, !tbaa !26
  %i.jj = getelementptr inbounds [12 x i8], ptr %i.jg, i64 %i.ji
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %3, ptr noundef nonnull %i.jh, ptr noundef nonnull %i.jj, ptr noundef nonnull %4)
  %i.jk = load <2 x float>, ptr %i.gu, align 4, !tbaa !52
  %i.jl = load <2 x float>, ptr %4, align 8, !tbaa !52
  %i.jm = fadd <2 x float> %i.jk, %i.jl           ; 2 uses
  %i.jn = load float, ptr %i.gv, align 4, !tbaa !52
  %i.jo = load float, ptr %i.av, align 8, !tbaa !52
  %i.jp = fadd float %i.jn, %i.jo                 ; 2 uses
  store <2 x float> %i.jm, ptr %i.gu, align 4
  store float %i.jp, ptr %i.gv, align 4, !tbaa !21
  %i.jq = add nuw i64 %.096306, 1                 ; 2 uses
  %exitcond310.not = icmp eq i64 %i.jq, %umax
  br i1 %exitcond310.not, label %._crit_edge308, label %bb.g, !llvm.loop !90

bb.h:                                             ; preds = %._crit_edge308, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setIlSt4lessIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE17_M_emplace_uniqueIJRKlEEESt4pairISt17_Rb_tree_iteratorIlEbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %1, align 8, !tbaa !26     ; 4 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.d, align 8, !tbaa !60 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %i.h = icmp slt i64 %i.c, %i.g                  ; 2 uses
  %.in.v.i = select i1 %i.h, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !60 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !92

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.h, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp eq ptr %.019.lcssa29.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #27 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.m = phi i64 [ %.pre, %bb.b ], [ %i.g, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.l, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.n = icmp slt i64 %i.m, %i.c
  br i1 %i.n, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.o = icmp eq ptr %.sroa.4.0.i.ph, %i.e
  br i1 %i.o, label %.thread24, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26
  %i.r = icmp slt i64 %i.c, %i.q
  br label %.thread24

.thread24:                                        ; preds = %select.unfold, %bb.d
  %i.s = phi i1 [ %i.r, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !49
  br label %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #22
  br label %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_Auto_nodeD2Ev.exit: ; preds = %.thread24, %bb.e
  %.sroa.3.030 = phi i8 [ 1, %.thread24 ], [ 0, %bb.e ]
  %.sroa.016.029 = phi ptr [ %i.a, %.thread24 ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.016.029, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.030, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
