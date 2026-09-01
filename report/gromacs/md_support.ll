Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/md_support?download=true
inline.NumInlined: 480
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE:bb.a
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !392  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #6
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !389    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !285
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #6
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !389    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !285
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN3gmx27setBoxDeformationFlowMatrixEPA3_KfS2_PA3_f(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZL19calc_ke_part_normalILb1EEvPA3_KfN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEES8_S2_PK9t_grpoptsPK9t_mdatomsP14gmx_ekindata_tP6t_nrnbb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !287    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !287
  %i.h = load i32, ptr %0, align 4, !tbaa !287    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !287
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !287
  %i.k = load i32, ptr %i.a, align 4, !tbaa !287  ; 2 uses
  %.not75 = icmp sgt i32 %i.k, %i.j
  br i1 %.not75, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.b
  %i.l = sext i32 %i.k to i64
  %i.m = add nsw i32 %i.j, 1
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.c

.loopexit:                                        ; preds = %bb.h, %._crit_edge
  %exitcond96.not = icmp eq i32 %i.m, %i.v
  br i1 %exitcond96.not, label %._crit_edge79, label %bb.c

bb.c:                                             ; preds = %.lr.ph78, %.loopexit
  %indvars.iv93 = phi i64 [ %i.l, %.lr.ph78 ], [ %indvars.iv.next94, %.loopexit ] ; 5 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !270
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 640
  %i.q = load i32, ptr %i.p, align 8, !tbaa !312  ; 2 uses
  %i.r = trunc nsw i64 %indvars.iv93 to i32
  %i.s = mul nsw i32 %i.q, %i.r
  %i.t = load i32, ptr %2, align 4, !tbaa !287    ; 2 uses
  %i.u = sdiv i32 %i.s, %i.t                      ; 2 uses
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.v = trunc i64 %indvars.iv.next94 to i32      ; 2 uses
  %i.w = mul nsw i32 %i.q, %i.v
  %i.x = sdiv i32 %i.w, %i.t                      ; 2 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !272    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !294
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %indvars.iv93
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !289 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !288
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv93
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !289 ; 3 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !268
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !274
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ak, i8 0, i64 36, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !268
  %i.am = load i32, ptr %i.al, align 8, !tbaa !274
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !394

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %4, align 8, !tbaa !272
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ap = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.y, %bb.c ]
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !276
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !291
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv93
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !292 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 32, i1 false)
  %i.au = icmp slt i32 %i.u, %i.x
  br i1 %i.au, label %.lr.ph74, label %.loopexit

.lr.ph74:                                         ; preds = %._crit_edge
  %i.av = load ptr, ptr %3, align 8, !tbaa !270   ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 448
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !341 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 456
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !341
  %i.ba = icmp eq ptr %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !342
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !395
  %.not65 = icmp eq i32 %i.be, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 352
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.bj = sext i32 %i.u to i64
  %wide.trip.count = sext i32 %i.x to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph74, %bb.h
  %indvars.iv90 = phi i64 [ %i.bj, %.lr.ph74 ], [ %indvars.iv.next91, %bb.h ] ; 8 uses
  %.16272 = phi i32 [ 0, %.lr.ph74 ], [ %.2, %bb.h ]
  %i.bm = phi <2 x double> [ zeroinitializer, %.lr.ph74 ], [ %i.dh, %bb.h ]
  br i1 %i.ba, label %.preheader66, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv90
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !344
  %i.bp = zext i16 %i.bo to i32
  br label %.preheader66

.preheader66:                                     ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.16272, %bb.d ], [ %i.bp, %bb.e ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv90 ; 5 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !276
  %i.bs = load i64, ptr %6, align 8
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %indvars.iv90
  %i.bv = load i64, ptr %7, align 8
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds [12 x i8], ptr %i.bw, i64 %indvars.iv90
  %i.by = fmul float %i.br, 5.000000e-01          ; 2 uses
  %i.bz = zext nneg i32 %.2 to i64
  %i.ca = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %i.bz ; 10 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cb = load <3 x float>, ptr %i.bu, align 4
  %9 = load <3 x float>, ptr %i.bx, align 4, !tbaa !276 ; 3 uses
  %10 = load <8 x float>, ptr %8, align 4, !tbaa !276 ; 2 uses
  %11 = shufflevector <3 x float> %9, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.cc = shufflevector <8 x float> %10, <8 x float> poison, <3 x i32> <i32 1, i32 4, i32 7>
  %i.cd = fmul <3 x float> %11, %i.cc
  %i.ce = shufflevector <3 x float> %9, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cf = shufflevector <8 x float> %10, <8 x float> poison, <3 x i32> <i32 0, i32 3, i32 6>
  %i.cg = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ce, <3 x float> %i.cf, <3 x float> %i.cd)
  %i.ch = call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %i.n, <7 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true>, <7 x float> poison), !tbaa !276
  %i.ci = shufflevector <7 x float> %i.ch, <7 x float> poison, <3 x i32> <i32 0, i32 3, i32 6>
  %12 = shufflevector <3 x float> %9, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.cj = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %12, <3 x float> %i.ci, <3 x float> %i.cg)
  %i.ck = fsub <3 x float> %i.cb, %i.cj           ; 7 uses
  %i.cl = extractelement <3 x float> %i.ck, i64 2 ; 5 uses
  %i.cm = fmul float %i.by, %i.cl
  %i.cn = insertelement <3 x float> poison, float %i.by, i64 0
  %i.co = shufflevector <3 x float> %i.cn, <3 x float> poison, <8 x i32> zeroinitializer
  %i.cp = shufflevector <3 x float> %i.ck, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.cq = fmul <8 x float> %i.co, %i.cp
  %i.cr = load <8 x float>, ptr %i.ca, align 4, !tbaa !276
  %i.cs = shufflevector <3 x float> %i.ck, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.ct = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cq, <8 x float> %i.cs, <8 x float> %i.cr) ; 8 uses
  %i.cu = extractelement <8 x float> %i.ct, i64 0
  store float %i.cu, ptr %i.ca, align 4, !tbaa !276
  %i.cv = extractelement <8 x float> %i.ct, i64 3
  store float %i.cv, ptr %gep.1, align 4, !tbaa !276
  %i.cw = extractelement <8 x float> %i.ct, i64 6
  store float %i.cw, ptr %gep.2, align 4, !tbaa !276
  %i.cx = load float, ptr %i.bq, align 4, !tbaa !276
  %i.cy = extractelement <8 x float> %i.ct, i64 1
  store float %i.cy, ptr %invariant.gep.1, align 4, !tbaa !276
  %i.cz = extractelement <8 x float> %i.ct, i64 4
  store float %i.cz, ptr %gep.1.1, align 4, !tbaa !276
  %i.da = extractelement <8 x float> %i.ct, i64 7
  store float %i.da, ptr %gep.2.1, align 4, !tbaa !276
  %i.db = load float, ptr %i.bq, align 4, !tbaa !276
  %i.dc = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.db, i64 1
  %i.de = shufflevector <3 x float> %i.ck, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.df = fmul <2 x float> %i.dd, %i.de
  %i.dg = fpext <2 x float> %i.df to <2 x double>
  %i.dh = fadd <2 x double> %i.bm, %i.dg          ; 3 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  store double %i.di, ptr %i.at, align 8, !tbaa !286
  %i.dj = extractelement <2 x double> %i.dh, i64 1
  store double %i.dj, ptr %i.bk, align 8, !tbaa !286
  %i.dk = extractelement <8 x float> %i.ct, i64 2
  store float %i.dk, ptr %invariant.gep.2, align 4, !tbaa !276
  %i.dl = extractelement <8 x float> %i.ct, i64 5
  store float %i.dl, ptr %gep.1.2, align 4, !tbaa !276
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.dm = load float, ptr %gep.2.2, align 4, !tbaa !276
  %i.dn = call float @llvm.fmuladd.f32(float %i.cm, float %i.cl, float %i.dm)
  store float %i.dn, ptr %gep.2.2, align 4, !tbaa !276
  %i.do = load float, ptr %i.bq, align 4, !tbaa !276 ; 3 uses
  %i.dp = fmul float %i.do, %i.cl
  %i.dq = fpext float %i.dp to double
  %i.dr = load double, ptr %i.bl, align 8, !tbaa !286
  %i.ds = fadd double %i.dr, %i.dq
  store double %i.ds, ptr %i.bl, align 8, !tbaa !286
  br i1 %.not65, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.preheader66
  %i.dt = load ptr, ptr %i.bf, align 8, !tbaa !347
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv90
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !348, !range !266, !noundef !267
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dx = load ptr, ptr %i.bg, align 8, !tbaa !342
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv90
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !276
  %i.ea = load ptr, ptr %i.bh, align 8, !tbaa !342
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv90
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !276
  %i.ed = fsub float %i.dz, %i.ec
  %i.ee = fpext float %i.ed to double
  %i.ef = fmul double %i.ee, 5.000000e-01
  %foldExtExtBinop = fmul <3 x float> %i.ck, %i.ck
  %i.eg = extractelement <3 x float> %foldExtExtBinop, i64 1
  %i.eh = extractelement <3 x float> %i.ck, i64 0 ; 2 uses
  %i.ei = call float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.eg)
  %i.ej = call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.ei)
  %i.ek = fpext float %i.ej to double
  %i.el = load float, ptr %i.ag, align 4, !tbaa !276
  %i.em = fpext float %i.el to double
  %i.en = call double @llvm.fmuladd.f64(double %i.ef, double %i.ek, double %i.em)
  %i.eo = fptrunc double %i.en to float
  store float %i.eo, ptr %i.ag, align 4, !tbaa !276
  %.pre115 = load float, ptr %i.bq, align 4, !tbaa !276
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.preheader66
  %i.ep = phi float [ %.pre115, %bb.g ], [ %i.do, %bb.f ], [ %i.do, %.preheader66 ]
  %i.eq = fpext float %i.ep to double
  %i.er = load double, ptr %i.bi, align 8, !tbaa !298
  %i.es = fadd double %i.er, %i.eq
  store double %i.es, ptr %i.bi, align 8, !tbaa !298
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !396

._crit_edge79:                                    ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge79, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !397 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZL19calc_ke_part_normalILb0EEvPA3_KfN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEES8_S2_PK9t_grpoptsPK9t_mdatomsP14gmx_ekindata_tP6t_nrnbb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6) #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !287    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !287
  %i.h = load i32, ptr %0, align 4, !tbaa !287    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !287
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !287
  %i.k = load i32, ptr %i.a, align 4, !tbaa !287  ; 2 uses
  %.not57 = icmp sgt i32 %i.k, %i.j
  br i1 %.not57, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.b
  %i.l = sext i32 %i.k to i64
  %i.m = add nsw i32 %i.j, 1
  %.pre = load ptr, ptr %5, align 8, !tbaa !268
  %.pre88 = load i32, ptr %.pre, align 8, !tbaa !274
  br label %bb.c

.loopexit:                                        ; preds = %bb.h, %._crit_edge
  %exitcond75.not = icmp eq i32 %i.m, %i.v
  br i1 %exitcond75.not, label %._crit_edge61, label %bb.c

bb.c:                                             ; preds = %.lr.ph60, %.loopexit
  %i.n = phi i32 [ %.pre88, %.lr.ph60 ], [ %i.an, %.loopexit ] ; 2 uses
  %indvars.iv72 = phi i64 [ %i.l, %.lr.ph60 ], [ %indvars.iv.next73, %.loopexit ] ; 4 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !270
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 640
  %i.q = load i32, ptr %i.p, align 8, !tbaa !312  ; 2 uses
  %i.r = trunc nsw i64 %indvars.iv72 to i32
  %i.s = mul nsw i32 %i.q, %i.r
  %i.t = load i32, ptr %2, align 4, !tbaa !287    ; 2 uses
  %i.u = sdiv i32 %i.s, %i.t                      ; 2 uses
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.v = trunc i64 %indvars.iv.next73 to i32      ; 2 uses
  %i.w = mul nsw i32 %i.q, %i.v
  %i.x = sdiv i32 %i.w, %i.t                      ; 2 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !272    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !294
end_hunk_0
