Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/md_support?download=true
inline.NumInlined: 480
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL19calc_ke_part_normalILb1EEvPA3_KfN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEES8_S2_PK9t_grpoptsPK9t_mdatomsP14gmx_ekindata_tP6t_nrnbb.omp_outlined:bb.a
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cp = load <2 x float>, ptr %i.cd, align 4
  %i.cq = load float, ptr %i.cg, align 4, !tbaa !146 ; 2 uses
  %i.cr = load float, ptr %i.ch, align 4, !tbaa !146 ; 2 uses
  %i.cs = load float, ptr %i.ci, align 4, !tbaa !146 ; 2 uses
  %i.ct = load <4 x float>, ptr %8, align 4, !tbaa !146 ; 3 uses
  %i.cu = load <4 x float>, ptr %i.n, align 4     ; 2 uses
  %i.cv = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <2 x i32> <i32 1, i32 4>
  %i.cy = fmul <2 x float> %i.cw, %i.cx
  %i.cz = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.db, <2 x float> %i.cy)
  %i.dd = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <2 x i32> <i32 2, i32 5>
  %i.dg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.df, <2 x float> %i.dc)
  %i.dh = fsub <2 x float> %i.cp, %i.dg           ; 5 uses
  %i.di = fmul float %i.cr, %i.ck
  %i.dj = call float @llvm.fmuladd.f32(float %i.cq, float %i.cj, float %i.di)
  %i.dk = call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.cl, float %i.dj)
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.dl = fsub float %.sroa.19.0.copyload, %i.dk  ; 6 uses
  %i.dm = fmul float %i.cm, %i.dl
  %i.dn = insertelement <3 x float> poison, float %i.cm, i64 0
  %i.do = shufflevector <2 x float> %i.dh, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.dp = insertelement <3 x float> poison, float %i.dl, i64 2 ; 2 uses
  %i.dq = shufflevector <3 x float> %i.dn, <3 x float> poison, <8 x i32> zeroinitializer
  %i.dr = shufflevector <3 x float> %i.do, <3 x float> %i.dp, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 5, i32 5>
  %i.ds = fmul <8 x float> %i.dq, %i.dr
  %i.dt = load <8 x float>, ptr %i.co, align 4, !tbaa !146
  %i.du = shufflevector <3 x float> %i.do, <3 x float> %i.dp, <8 x i32> <i32 0, i32 1, i32 5, i32 0, i32 1, i32 5, i32 0, i32 1>
  %i.dv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ds, <8 x float> %i.du, <8 x float> %i.dt) ; 8 uses
  %i.dw = extractelement <8 x float> %i.dv, i64 0
  store float %i.dw, ptr %i.co, align 4, !tbaa !146
  %i.dx = extractelement <8 x float> %i.dv, i64 3
  store float %i.dx, ptr %gep.1, align 4, !tbaa !146
  %i.dy = extractelement <8 x float> %i.dv, i64 6
  store float %i.dy, ptr %gep.2, align 4, !tbaa !146
  %i.dz = load float, ptr %i.bz, align 4, !tbaa !146
  %i.ea = extractelement <8 x float> %i.dv, i64 1
  store float %i.ea, ptr %invariant.gep.1, align 4, !tbaa !146
  %i.eb = extractelement <8 x float> %i.dv, i64 4
  store float %i.eb, ptr %gep.1.1, align 4, !tbaa !146
  %i.ec = extractelement <8 x float> %i.dv, i64 7
  store float %i.ec, ptr %gep.2.1, align 4, !tbaa !146
  %i.ed = load float, ptr %i.bz, align 4, !tbaa !146
  %i.ee = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.ed, i64 1
  %i.eg = fmul <2 x float> %i.ef, %i.dh
  %i.eh = fpext <2 x float> %i.eg to <2 x double>
  %i.ei = fadd <2 x double> %i.bv, %i.eh          ; 2 uses
  store <2 x double> %i.ei, ptr %i.bb, align 8, !tbaa !149
  %i.ej = extractelement <8 x float> %i.dv, i64 2
  store float %i.ej, ptr %invariant.gep.2, align 4, !tbaa !146
  %i.ek = extractelement <8 x float> %i.dv, i64 5
  store float %i.ek, ptr %gep.1.2, align 4, !tbaa !146
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 2 uses
  %i.el = load float, ptr %gep.2.2, align 4, !tbaa !146
  %i.em = call float @llvm.fmuladd.f32(float %i.dm, float %i.dl, float %i.el)
  store float %i.em, ptr %gep.2.2, align 4, !tbaa !146
  %i.en = load float, ptr %i.bz, align 4, !tbaa !146 ; 3 uses
  %i.eo = fmul float %i.en, %i.dl
  %i.ep = fpext float %i.eo to double
  %i.eq = load double, ptr %i.bu, align 8, !tbaa !149
  %i.er = fadd double %i.eq, %i.ep
  store double %i.er, ptr %i.bu, align 8, !tbaa !149
  br i1 %.not65, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.preheader66
  %i.es = load ptr, ptr %i.bp, align 8, !tbaa !188
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv90
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !190, !range !137, !noundef !138
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ew = load ptr, ptr %i.bq, align 8, !tbaa !185
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv90
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !146
  %i.ez = load ptr, ptr %i.br, align 8, !tbaa !185
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv90
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !146
  %i.fc = fsub float %i.ey, %i.fb
  %i.fd = fpext float %i.fc to double
  %i.fe = fmul double %i.fd, 5.000000e-01
  %foldExtExtBinop = fmul <2 x float> %i.dh, %i.dh
  %i.ff = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fg = extractelement <2 x float> %i.dh, i64 0 ; 2 uses
  %i.fh = call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.ff)
  %i.fi = call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %i.fh)
  %i.fj = fpext float %i.fi to double
  %i.fk = load float, ptr %i.ao, align 4, !tbaa !146
  %i.fl = fpext float %i.fk to double
  %i.fm = call double @llvm.fmuladd.f64(double %i.fe, double %i.fj, double %i.fl)
  %i.fn = fptrunc double %i.fm to float
  store float %i.fn, ptr %i.ao, align 4, !tbaa !146
  %.pre115 = load float, ptr %i.bz, align 4, !tbaa !146
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.preheader66
  %i.fo = phi float [ %.pre115, %bb.g ], [ %i.en, %bb.f ], [ %i.en, %.preheader66 ]
  %i.fp = fpext float %i.fo to double
  %i.fq = load double, ptr %i.bs, align 8, !tbaa !159
  %i.fr = fadd double %i.fq, %i.fp
  store double %i.fr, ptr %i.bs, align 8, !tbaa !159
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !405

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
declare !callback !213 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

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
  %i.e = load i32, ptr %2, align 4, !tbaa !150    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !150
  %i.h = load i32, ptr %0, align 4, !tbaa !150    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !150
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !150
  %i.k = load i32, ptr %i.a, align 4, !tbaa !150  ; 2 uses
  %.not57 = icmp sgt i32 %i.k, %i.j
  br i1 %.not57, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.b
  %i.l = sext i32 %i.k to i64
  %i.m = add nsw i32 %i.j, 1
  %.pre.a = load ptr, ptr %5, align 8, !tbaa !140
  %.pre88.a = load i32, ptr %.pre.a, align 8, !tbaa !145
  br label %bb.c

.loopexit:                                        ; preds = %bb.h, %._crit_edge
  %exitcond75.not = icmp eq i32 %i.m, %i.p
  br i1 %exitcond75.not, label %._crit_edge61, label %bb.c

bb.c:                                             ; preds = %.lr.ph60, %.loopexit
  %i.n = phi i32 [ %.pre88.a, %.lr.ph60 ], [ %i.ao, %.loopexit ] ; 2 uses
  %indvars.iv72 = phi i64 [ %i.l, %.lr.ph60 ], [ %indvars.iv.next73, %.loopexit ] ; 4 uses
  %7 = load ptr, ptr %3, align 8, !tbaa !142
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 640
  %9 = load i32, ptr %8, align 8, !tbaa !183
  %i.o = load i32, ptr %2, align 4, !tbaa !150
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1 ; 3 uses
  %i.p = trunc i64 %indvars.iv.next73 to i32
  %i.q = trunc i64 %indvars.iv72 to i32
  %i.r = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.s = trunc i64 %indvars.iv.next73 to i32
  %i.t = insertelement <2 x i32> %i.r, i32 %i.s, i64 1
  %i.u = insertelement <2 x i32> poison, i32 %9, i64 0
  %i.v = shufflevector <2 x i32> %i.u, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.w = mul nsw <2 x i32> %i.v, %i.t
  %i.x = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %i.y = shufflevector <2 x i32> %i.x, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.z = sdiv <2 x i32> %i.w, %i.y                ; 2 uses
  %10 = load ptr, ptr %4, align 8, !tbaa !144     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !156
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !151
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !152 ; 3 uses
  %i.ai = icmp sgt i32 %i.n, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.aj, i8 0, i64 36, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !140
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !145 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !406

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.ao = phi i32 [ %i.n, %bb.c ], [ %i.al, %.lr.ph ]
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !146
  %i.ap = extractelement <2 x i32> %i.z, i64 0    ; 2 uses
  %i.aq = extractelement <2 x i32> %i.z, i64 1    ; 2 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph56, label %.loopexit

.lr.ph56:                                         ; preds = %._crit_edge
  %11 = load ptr, ptr %3, align 8, !tbaa !142     ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 448
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !184 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 456
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !184
  %i.aw = icmp eq ptr %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !185
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !211
  %.not49 = icmp eq i32 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 352
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.be = sext i32 %i.ap to i64
  %wide.trip.count = sext i32 %i.aq to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph56, %bb.h
  %indvars.iv69 = phi i64 [ %i.be, %.lr.ph56 ], [ %indvars.iv.next70, %bb.h ] ; 7 uses
  %.154 = phi i32 [ 0, %.lr.ph56 ], [ %.2, %bb.h ]
  br i1 %i.aw, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv69
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !187
  %i.bh = zext i16 %i.bg to i32
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.154, %bb.d ], [ %i.bh, %bb.e ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv69
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !146
  %i.bk = fmul float %i.bj, 5.000000e-01          ; 2 uses
  %i.bl = load i64, ptr %6, align 8
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %indvars.iv69 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bo = zext nneg i32 %.2 to i64
  %i.bp = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %i.bo ; 3 uses
  %i.bq = load <3 x float>, ptr %i.bn, align 4    ; 4 uses
  %i.br = extractelement <3 x float> %i.bq, i64 2 ; 4 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.bs = fmul float %i.bk, %i.br
  %i.bt = insertelement <3 x float> poison, float %i.bk, i64 0
  %i.bu = shufflevector <3 x float> %i.bt, <3 x float> poison, <8 x i32> zeroinitializer
  %i.bv = shufflevector <3 x float> %i.bq, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.bw = fmul <8 x float> %i.bu, %i.bv
  %i.bx = load <8 x float>, ptr %i.bp, align 4, !tbaa !146
  %i.by = shufflevector <3 x float> %i.bq, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.bz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bw, <8 x float> %i.by, <8 x float> %i.bx)
  store <8 x float> %i.bz, ptr %i.bp, align 4, !tbaa !146
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.ca = load float, ptr %gep.2.2, align 4, !tbaa !146
  %i.cb = call float @llvm.fmuladd.f32(float %i.bs, float %i.br, float %i.ca)
  store float %i.cb, ptr %gep.2.2, align 4, !tbaa !146
  br i1 %.not49, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.cc = load ptr, ptr %i.bb, align 8, !tbaa !188
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv69
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !190, !range !137, !noundef !138
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cg = load ptr, ptr %i.bc, align 8, !tbaa !185
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv69
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !146
  %i.cj = load ptr, ptr %i.bd, align 8, !tbaa !185
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv69
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !146
  %i.cm = fsub float %i.ci, %i.cl
  %i.cn = fpext float %i.cm to double
  %i.co = fmul double %i.cn, 5.000000e-01
  %i.cp = fmul float %.sroa.8.0.copyload, %.sroa.8.0.copyload
  %i.cq = extractelement <3 x float> %i.bq, i64 0 ; 2 uses
  %i.cr = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cp)
  %i.cs = call noundef float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.cr)
  %i.ct = fpext float %i.cs to double
  %i.cu = load float, ptr %i.ah, align 4, !tbaa !146
  %i.cv = fpext float %i.cu to double
  %i.cw = call double @llvm.fmuladd.f64(double %i.co, double %i.ct, double %i.cv)
  %i.cx = fptrunc double %i.cw to float
  store float %i.cx, ptr %i.ah, align 4, !tbaa !146
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.preheader
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !407

._crit_edge61:                                    ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge61, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z32computeGlobalCommunicationPeriodPK10t_inputrec(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !214  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load i32, ptr %i.d, align 8, !tbaa !215
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.thread16

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.h = load i32, ptr %i.g, align 4, !tbaa !216
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.h

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %.thread, label %.thread16

.thread16:                                        ; preds = %bb.b, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.j = load i32, ptr %i.i, align 4, !tbaa !217
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %.thread16
  %i.k = phi i32 [ %i.j, %.thread16 ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.m = load i32, ptr %i.l, align 4, !tbaa !216
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.o = load i32, ptr %i.n, align 4, !tbaa !218
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.p = phi i32 [ %i.o, %bb.e ], [ 0, %.thread ]
  %i.q = tail call fastcc noundef i32 @_ZL4lcd3iii(i32 noundef %i.b, i32 noundef %i.k, i32 noundef %i.p) ; 3 uses
  %i.r = icmp sgt i32 %i.q, 200
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = tail call fastcc noundef i32 @_ZL4lcd3iii(i32 noundef %i.q, i32 noundef 200, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  %.0 = phi i32 [ %i.q, %bb.f ], [ %i.s, %bb.g ], [ 200, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL4lcd3iii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZL8min_zeroPii.exit:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.265", align 1 ; 3 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = icmp sgt i32 %0, 0
  %spec.select = tail call i32 @llvm.smax.i32(i32 %0, i32 0) ; 4 uses
  %i.b = icmp sgt i32 %1, 0                       ; 3 uses
  %i.c = icmp slt i32 %0, 1
  %i.d = tail call i32 @llvm.umin.i32(i32 %1, i32 %spec.select)
  %spec.select34 = select i1 %i.c, i32 %1, i32 %i.d ; 3 uses
  %.2 = select i1 %i.b, i32 %spec.select34, i32 %spec.select ; 2 uses
  %i.e = icmp sgt i32 %2, 0                       ; 5 uses
  %i.f = add i32 %.2, -1
  %or.cond.i24.not = icmp uge i32 %i.f, %2
  %i.g = and i1 %i.e, %or.cond.i24.not
  %.3 = select i1 %i.g, i32 %2, i32 %.2           ; 7 uses
  %i.h = icmp eq i32 %.3, 0
  br i1 %i.h, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZL8min_zeroPii.exit
  %i.i = icmp sgt i32 %.3, 1
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.b, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %i.e, label %.lr.ph.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us, %.critedge2.us.us.us
  %.036.us.us.us = phi i32 [ %i.m, %.critedge2.us.us.us ], [ %.3, %.lr.ph.split.us.split.us ] ; 6 uses
  %i.j = urem i32 %0, %.036.us.us.us
  %.not.us.us.us = icmp eq i32 %i.j, 0
  br i1 %.not.us.us.us, label %bb.a, label %.critedge2.us.us.us

bb.a:                                             ; preds = %.lr.ph.split.us.split.us.split.us
  %i.k = urem i32 %1, %.036.us.us.us
  %.not18.us.us.us = icmp eq i32 %i.k, 0
  br i1 %.not18.us.us.us, label %bb.b, label %.critedge2.us.us.us

bb.b:                                             ; preds = %bb.a
  %i.l = urem i32 %2, %.036.us.us.us
  %.not19.us.us.us = icmp eq i32 %i.l, 0
  br i1 %.not19.us.us.us, label %.critedge, label %.critedge2.us.us.us

.critedge2.us.us.us:                              ; preds = %bb.b, %bb.a, %.lr.ph.split.us.split.us.split.us
  %i.m = add nsw i32 %.036.us.us.us, -1
end_hunk_0
