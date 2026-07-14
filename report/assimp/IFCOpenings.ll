inline.NumInlined: 3958
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC8QuadrifyERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERNS0_8TempMeshE:bb.a

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.i, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %i.ar = phi ptr [ %.pre, %bb.e ], [ %i.r, %.loopexit ], [ %i.r, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #26
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit14

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix4x4t) align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) initializes((0, 1)) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.aiMatrix3x3t, align 16       ; 9 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1
  store double 1.000000e+00, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.j, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix3x3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = load double, ptr %i.k, align 16          ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.o = load double, ptr %i.n, align 8           ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = load <2 x double>, ptr %5, align 16      ; 5 uses
  %i.r = load <2 x double>, ptr %i.m, align 8     ; 4 uses
  %i.s = load <2 x double>, ptr %i.p, align 16    ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.u = load double, ptr %i.t, align 16          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.v = load i8, ptr %3, align 1, !range !143, !noundef !144
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ac, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 24                ; 4 uses
  %i.aj = icmp ugt i64 %i.ai, 576460752303423487
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %1, align 8               ; 6 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = ashr exact i64 %i.ap, 4
  %i.ar = icmp ult i64 %i.aq, %i.ai
  br i1 %i.ar, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ao
  %i.aw = shl nuw nsw i64 %i.ai, 4
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #25 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.am, %i.at
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.am, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !220
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.am, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ap) #26
  br label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ax, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store ptr %i.ba, ptr %i.as, align 8
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ai
  store ptr %i.bb, ptr %i.ak, align 8
  %.pre = load ptr, ptr %2, align 8
  %.pre170 = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.bc = phi ptr [ %i.am, %bb.g ], [ %i.ax, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.bd = phi ptr [ %i.ad, %bb.g ], [ %.pre170, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  %i.be = phi ptr [ %i.ae, %bb.g ], [ %.pre, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %.not142 = icmp eq ptr %i.be, %i.bd
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre175 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit
  %i.bf = extractelement <2 x double> %i.s, i64 1
  %i.bg = extractelement <2 x double> %i.s, i64 0
  %i.bh = shufflevector <2 x double> %i.q, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.bi = shufflevector <2 x double> %i.q, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.bj = insertelement <2 x double> poison, double %i.l, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.o, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %.pre172 = load ptr, ptr %i.b, align 8
  %.pre173 = load ptr, ptr %2, align 8
  %.pre174 = load ptr, ptr %1, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit, %._crit_edge.loopexit
  %i.bl = phi ptr [ %i.ed, %._crit_edge.loopexit ], [ %.pre175, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.bm = phi ptr [ %.pre174, %._crit_edge.loopexit ], [ %i.bc, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.bn = phi ptr [ %.pre173, %._crit_edge.loopexit ], [ %i.bd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bo = phi ptr [ %.pre172, %._crit_edge.loopexit ], [ %i.bd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %.0.lcssa = phi double [ %i.cu, %._crit_edge.loopexit ], [ 0.000000e+00, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bp = phi <2 x double> [ %i.di, %._crit_edge.loopexit ], [ splat (double -1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bq = phi <2 x double> [ %i.dg, %._crit_edge.loopexit ], [ splat (double 1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 5 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 24
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fsub <2 x double> %i.bp, %i.bq          ; 3 uses
  %.not136155 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not136155, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %._crit_edge
  %i.bx = ptrtoint ptr %i.bm to i64
  %i.by = ptrtoint ptr %i.bl to i64
  %6 = add i64 %i.by, -16
  %7 = sub i64 %6, %i.bx
  %i.bz = lshr i64 %7, 4                          ; 2 uses
  %min.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.iters.check, label %.lr.ph158, label %vector.body

vector.body:                                      ; preds = %.lr.ph158.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph158.preheader ] ; 3 uses
  %i.ca = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.ca ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8
  %i.cb = fsub <2 x double> %wide.load, %i.bq
  %i.cc = fdiv <2 x double> %i.cb, %i.bw          ; 2 uses
  %i.cd = fcmp olt <2 x double> %i.cc, zeroinitializer
  %i.ce = select <2 x i1> %i.cd, <2 x double> zeroinitializer, <2 x double> %i.cc ; 2 uses
  %i.cf = fcmp ogt <2 x double> %i.ce, splat (double 1.000000e+00)
  %i.cg = select <2 x i1> %i.cf, <2 x double> splat (double 1.000000e+00), <2 x double> %i.ce
  store <2 x double> %i.cg, ptr %next.gep, align 8
  %index.next = add nuw i64 %index, 1
  %i.ch = icmp eq i64 %index, %i.bz
  br i1 %i.ch, label %._crit_edge159, label %vector.body, !llvm.loop !224

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %i.ci = phi ptr [ %i.ed, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %.pre175, %.lr.ph.preheader ] ; 5 uses
  %.0150 = phi double [ %i.cu, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.097.0143 = phi ptr [ %i.ee, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %i.be, %.lr.ph.preheader ] ; 4 uses
  %i.cj = phi <2 x double> [ %i.di, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double -1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.ck = phi <2 x double> [ %i.dg, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double 1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.cl = load double, ptr %.sroa.097.0143, align 8, !noalias !225 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 8
  %i.cn = load double, ptr %i.cm, align 8, !noalias !225 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 16
  %i.cp = load double, ptr %i.co, align 8, !noalias !225 ; 2 uses
  %i.cq = fmul double %i.bf, %i.cn
  %i.cr = call double @llvm.fmuladd.f64(double %i.bg, double %i.cl, double %i.cq)
  %i.cs = call double @llvm.fmuladd.f64(double %i.u, double %i.cp, double %i.cr)
  %i.ct = fadd double %i.cs, 0.000000e+00
  %i.cu = fadd double %.0150, %i.ct               ; 2 uses
  %i.cv = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.bh, %i.cw
  %i.cy = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.cz, <2 x double> %i.cx)
  %i.db = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.dc, <2 x double> %i.da) ; 3 uses
  %i.de = fadd <2 x double> %i.dd, zeroinitializer ; 4 uses
  %i.df = fcmp olt <2 x double> %i.ck, %i.dd
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.ck, <2 x double> %i.de ; 2 uses
  %i.dh = fcmp olt <2 x double> %i.dd, %i.cj
  %i.di = select <2 x i1> %i.dh, <2 x double> %i.cj, <2 x double> %i.de ; 2 uses
  %i.dj = load ptr, ptr %i.ak, align 8
  %.not.i = icmp eq ptr %i.ci, %i.dj
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store <2 x double> %i.de, ptr %i.ci, align 8
  %i.dk = load ptr, ptr %.phi.trans.insert, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  store ptr %i.dl, ptr %.phi.trans.insert, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.dm = load ptr, ptr %1, align 8               ; 5 uses
  %i.dn = ptrtoint ptr %i.ci to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 4 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775792
  br i1 %i.dq, label %bb.k, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.dr = ashr exact i64 %i.dp, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.ds = add nsw i64 %.sroa.speculated.i.i.i, %i.dr ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dr
  %i.du = call i64 @llvm.umin.i64(i64 %i.ds, i64 576460752303423487)
  %i.dv = select i1 %i.dt, i64 576460752303423487, i64 %i.du ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dw = shl nuw nsw i64 %i.dv, 4
  %i.dx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #25 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dp
  store <2 x double> %i.de, ptr %i.dy, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.dm, %i.ci
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %i.dx, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %i.dm, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !228
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dz, %i.ci
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dx, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ea, %.lr.ph.i.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dp) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.dx, ptr %1, align 8
  store ptr %i.eb, ptr %.phi.trans.insert, align 8
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.dv
  store ptr %i.ec, ptr %i.ak, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ed = phi ptr [ %i.dl, %bb.i ], [ %i.eb, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ee, %i.bd
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge159:                                   ; preds = %vector.body, %.lr.ph158, %._crit_edge
  %i.ef = fdiv <2 x double> splat (double 1.000000e+00), %i.bw ; 5 uses
  %i.eg = extractelement <2 x double> %i.bq, i64 0
  %i.eh = fneg double %i.eg
  %i.ei = extractelement <2 x double> %i.ef, i64 0 ; 2 uses
  %i.ej = fmul double %i.ei, %i.eh                ; 3 uses
  %i.ek = extractelement <2 x double> %i.bq, i64 1
  %i.el = fneg double %i.ek
  %i.em = extractelement <2 x double> %i.ef, i64 1 ; 3 uses
  %i.en = fmul double %i.em, %i.el                ; 3 uses
  %i.eo = fneg double %.0.lcssa
  %i.ep = fdiv double %i.eo, %i.bv                ; 2 uses
  %i.eq = fmul <2 x double> %i.r, zeroinitializer ; 2 uses
  %i.er = fmul double %i.o, 0.000000e+00          ; 2 uses
  %i.es = call double @llvm.fmuladd.f64(double %i.l, double %i.ei, double %i.er)
  %i.et = call double @llvm.fmuladd.f64(double %i.u, double 0.000000e+00, double %i.es)
  %i.eu = call double @llvm.fmuladd.f64(double %i.ej, double 0.000000e+00, double %i.et)
  %i.ev = extractelement <2 x double> %i.s, i64 0
  %i.ew = fmul double %i.o, %i.em
  %i.ex = insertelement <2 x double> %i.ef, double %i.l, i64 1
  %i.ey = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ew, i64 1
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> zeroinitializer, <2 x double> %i.ey) ; 2 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 0
  %i.fb = fadd double %i.fa, 0.000000e+00
  %i.fc = fadd double %i.ej, %i.fb
  %i.fd = extractelement <2 x double> %i.ez, i64 1
  %i.fe = call double @llvm.fmuladd.f64(double %i.u, double 0.000000e+00, double %i.fd)
  %i.ff = fmul double %i.em, 0.000000e+00
  %i.fg = fadd double %i.ff, 0.000000e+00
  %i.fh = fadd double %i.en, %i.fg
  %i.fi = insertelement <2 x double> poison, double %i.en, i64 0
  %i.fj = insertelement <2 x double> %i.fi, double %i.l, i64 1
  %i.fk = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.er, i64 1
  %i.fm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> zeroinitializer, <2 x double> %i.fl) ; 3 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 1
  %i.fo = fadd double %i.fn, %i.u
  %i.fp = call double @llvm.fmuladd.f64(double %i.ep, double 0.000000e+00, double %i.fo)
  %i.fq = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.fq, <2 x double> %i.eq)
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> zeroinitializer, <2 x double> %i.fr)
  %i.ft = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> zeroinitializer, <2 x double> %i.fs)
  store <2 x double> %i.fv, ptr %0, align 8
  %.sroa.11123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.eu, ptr %.sroa.11123.0..sroa_idx, align 8
  %.sroa.15125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.fc, ptr %.sroa.15125.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fw = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = fmul <2 x double> %i.r, %i.fw
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.fx)
  %i.fz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> zeroinitializer, <2 x double> %i.fy)
  %i.ga = insertelement <2 x double> poison, double %i.en, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> zeroinitializer, <2 x double> %i.fz)
  store <2 x double> %i.gc, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.27129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gd = extractelement <2 x double> %i.fm, i64 0
  store double %i.gd, ptr %.sroa.27129.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.fh, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.eq) ; 3 uses
  %i.gf = fadd <2 x double> %i.ge, %i.s
  %i.gg = insertelement <2 x double> poison, double %i.ep, i64 0 ; 2 uses
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> zeroinitializer, <2 x double> %i.gf)
  %i.gj = extractelement <2 x double> %i.ge, i64 0
  %i.gk = call double @llvm.fmuladd.f64(double %i.ev, double 0.000000e+00, double %i.gj)
  store <2 x double> %i.gi, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.fp, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gl = insertelement <2 x double> %i.gg, double %i.gk, i64 1
  %i.gm = fadd <2 x double> %i.gl, zeroinitializer
  store <2 x double> %i.gm, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE:bb.a
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc243 unwind label %.loopexit.split-lp478

.noexc243:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.cc
  %i.st = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sr) #25
          to label %.noexc244 unwind label %.loopexit477

.noexc244:                                        ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.cb
  %i.su = phi ptr [ null, %bb.cb ], [ %i.st, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.su, ptr %i.sk, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 2 uses
  store ptr %i.su, ptr %i.sv, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.sr
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  store ptr %i.sw, ptr %i.sx, align 8
  %i.sy = load ptr, ptr %12, align 8              ; 2 uses
  %i.sz = load ptr, ptr %..sroa.gep412, align 8   ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.sy, %i.sz
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, label %.lr.ph.i.i.i.i.i.i.i241

.lr.ph.i.i.i.i.i.i.i241:                          ; preds = %.noexc244, %.lr.ph.i.i.i.i.i.i.i241
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.tb, %.lr.ph.i.i.i.i.i.i.i241 ], [ %i.su, %.noexc244 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ta, %.lr.ph.i.i.i.i.i.i.i241 ], [ %i.sy, %.noexc244 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i242 = icmp eq ptr %i.ta, %i.sz
  br i1 %.not.i.i.i.i.i.i.i242, label %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, label %.lr.ph.i.i.i.i.i.i.i241, !llvm.loop !256

_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i241, %.noexc244
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.su, %.noexc244 ], [ %i.tb, %.lr.ph.i.i.i.i.i.i.i241 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.sv, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.tc, ptr noundef nonnull align 16 dereferenceable(32) %13, i64 32, i1 false)
  %i.td = getelementptr inbounds nuw i8, ptr %i.sk, i64 56
  store ptr null, ptr %i.td, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.sk, i64 64
  store i32 0, ptr %i.te, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sk, i64 72
  store ptr null, ptr %i.tf, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sk, i64 80
  store i32 0, ptr %i.tg, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.sk, i64 88
  store ptr null, ptr %i.th, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sk, i64 96
  store i8 %i.sm, ptr %i.ti, align 8
  %i.tj = load ptr, ptr %i.u, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 104
  store ptr %i.tk, ptr %i.u, align 8
  br label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit

bb.cd:                                            ; preds = %bb.ca
  invoke void @_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE17_M_realloc_insertIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.sk, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit unwind label %.loopexit477

.loopexit477:                                     ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.cd
  %lpad.loopexit479 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp478:                            ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp480 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit: ; preds = %bb.bt, %bb.bv, %bb.cd, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, %.thread446
  %.4450 = phi i1 [ %.4451, %bb.cd ], [ %.4451, %.thread446 ], [ %.4451, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i ], [ %i.mi, %bb.bv ], [ %.2861, %bb.bt ]
  %.5137 = phi i32 [ 0, %bb.cd ], [ 0, %.thread446 ], [ 0, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i ], [ 1, %bb.bv ], [ %.2134860, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.tl = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i.i246 = icmp eq ptr %i.tl, null
  br i1 %.not.i.i.i246, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit
  %i.tm = load ptr, ptr %i.t, align 8
  %i.tn = ptrtoint ptr %i.tm to i64
  %i.to = ptrtoint ptr %i.tl to i64
  %i.tp = sub i64 %i.tn, %i.to
  call void @_ZdlPvm(ptr noundef nonnull %i.tl, i64 noundef %i.tp) #26
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.cf

bb.cf:                                            ; preds = %bb.aj, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit
  %.6138 = phi i32 [ %.5137, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit ], [ 3, %bb.aj ]
  %.5 = phi i1 [ %.4450, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit ], [ %.0653, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ah, %bb.ai, %bb.cf, %bb.q
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760 = phi ptr [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420759, %bb.q ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420, %bb.ah ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420761886, %bb.cf ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420761886, %bb.ai ] ; 4 uses
  %.sroa.11424.0..sroa.11424.0..sroa.11424.8.756 = phi ptr [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8., %bb.q ], [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8.425, %bb.ah ], [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8.757896, %bb.cf ], [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8.757896, %bb.ai ]
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0.753 = phi ptr [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0., %bb.q ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420, %bb.ah ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420761886, %bb.cf ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420761886, %bb.ai ]
  %.9141 = phi i32 [ 3, %bb.q ], [ 3, %bb.ah ], [ %.6138, %bb.cf ], [ 3, %bb.ai ]
  %.8 = phi i1 [ %.0653, %bb.q ], [ %.0653, %bb.ah ], [ %.5, %bb.cf ], [ %.0653, %bb.ai ] ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.bu) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.cg, %bb.ch
  %.not.i.i.i248 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i248, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bf) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ci
  switch i32 %.9141, label %.loopexit482 [
    i32 0, label %bb.cj
    i32 3, label %bb.cj
    i32 2, label %.thread452
  ]

bb.cj:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 88 ; 2 uses
  %.not456 = icmp eq ptr %i.tq, %i.k
  br i1 %.not456, label %.thread452, label %bb.g

bb.ck:                                            ; preds = %.loopexit477, %.loopexit.split-lp478, %bb.bz, %bb.bs
  %.pn159 = phi { ptr, i32 } [ %.pn157, %bb.bs ], [ %i.sj, %bb.bz ], [ %lpad.loopexit479, %.loopexit477 ], [ %lpad.loopexit.split-lp480, %.loopexit.split-lp478 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.tr = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i.i249 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i.i249, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ts = load ptr, ptr %i.t, align 8
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.tr to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @_ZdlPvm(ptr noundef nonnull %i.tr, i64 noundef %i.tv) #26
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250: ; preds = %bb.cl, %bb.ck, %bb.al
  %.pn159.pn = phi { ptr, i32 } [ %i.jx, %bb.al ], [ %.pn159, %bb.ck ], [ %.pn159, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit462, %.loopexit.split-lp463, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250
  %.pn164.pn.pn.pn = phi { ptr, i32 } [ %.pn159.pn, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250 ], [ %lpad.loopexit464, %.loopexit462 ], [ %lpad.loopexit.split-lp465, %.loopexit.split-lp463 ] ; 2 uses
  %.not.i.i.i251 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i251, label %_ZNSt6vectorIjSaIjEED2Ev.exit252, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.bu) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit252

_ZNSt6vectorIjSaIjEED2Ev.exit252:                 ; preds = %.loopexit472, %.loopexit.split-lp473, %bb.cn, %bb.cm
  %.pn164.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn164.pn.pn.pn, %bb.cn ], [ %.pn164.pn.pn.pn, %bb.cm ], [ %lpad.loopexit474, %.loopexit472 ], [ %lpad.loopexit.split-lp475, %.loopexit.split-lp473 ] ; 2 uses
  %.not.i.i.i253 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i253, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit252
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bf) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

.thread452:                                       ; preds = %bb.cj, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %.pre767 = load ptr, ptr %11, align 8
  %.pre768 = load ptr, ptr %i.u, align 8
  %i.tw = icmp eq ptr %.pre767, %.pre768
  br i1 %i.tw, label %.loopexit482, label %bb.cp

bb.cp:                                            ; preds = %.thread452
  invoke void @_ZN6Assimp3IFC8TempMesh5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cq unwind label %bb.f

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN6Assimp3IFC8QuadrifyERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cr unwind label %bb.f

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN6Assimp3IFC21CleanupWindowContoursERSt6vectorINS0_22ProjectedWindowContourESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.cs unwind label %bb.f

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN6Assimp3IFC20InsertWindowContoursERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERKS1_INS0_11TempOpeningESaIS7_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ct unwind label %bb.f

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN6Assimp3IFC19CleanupOuterContourERKSt6vectorI10aiVector2tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cu unwind label %bb.f

bb.cu:                                            ; preds = %bb.ct
  %i.tx = load ptr, ptr %1, align 8               ; 6 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8            ; 3 uses
  %.not459655 = icmp eq ptr %i.tx, %i.tz
  br i1 %.not459655, label %._crit_edge659, label %.lr.ph658

.lr.ph658:                                        ; preds = %bb.cu
  %18 = ptrtoint ptr %i.tz to i64
  %19 = ptrtoint ptr %i.tx to i64
  %20 = load <8 x double>, ptr %9, align 8, !noalias !257 ; 12 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ub = load double, ptr %i.ua, align 8, !noalias !257 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ud = load double, ptr %i.uc, align 8, !noalias !257 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.uf = load double, ptr %i.ue, align 8, !noalias !257 ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %22 = load double, ptr %21, align 8, !noalias !257 ; 2 uses
  %23 = add i64 %18, -24
  %24 = sub i64 %23, %19                          ; 2 uses
  %i.ug = udiv i64 %24, 24
  %i.uh = add nuw nsw i64 %i.ug, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %24, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph658
  %n.vec = and i64 %i.uh, 2305843009213693950     ; 3 uses
  %i.ui = mul i64 %n.vec, 24
  %i.uj = getelementptr i8, ptr %i.tx, i64 %i.ui
  %broadcast.splat = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat1099 = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat1101 = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat1103 = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splat1105 = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 4, i32 4>
  %broadcast.splat1107 = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 5, i32 5>
  %broadcast.splat1109 = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 6, i32 6>
  %broadcast.splat1111 = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 7, i32 7>
  %broadcast.splatinsert1112 = insertelement <2 x double> poison, double %i.ub, i64 0
  %broadcast.splat1113 = shufflevector <2 x double> %broadcast.splatinsert1112, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1114 = insertelement <2 x double> poison, double %i.ud, i64 0
  %broadcast.splat1115 = shufflevector <2 x double> %broadcast.splatinsert1114, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1116 = insertelement <2 x double> poison, double %i.uf, i64 0
  %broadcast.splat1117 = shufflevector <2 x double> %broadcast.splatinsert1116, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1118 = insertelement <2 x double> poison, double %22, i64 0
  %broadcast.splat1119 = shufflevector <2 x double> %broadcast.splatinsert1118, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uk = mul i64 %index, 24                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.tx, i64 %i.uk ; 4 uses
  %i.ul = getelementptr i8, ptr %i.tx, i64 %i.uk  ; 3 uses
  %next.gep1120 = getelementptr i8, ptr %i.ul, i64 24
  %i.um = load double, ptr %next.gep, align 8, !noalias !257
  %i.un = load double, ptr %next.gep1120, align 8, !noalias !257
  %i.uo = insertelement <2 x double> poison, double %i.um, i64 0
  %i.up = insertelement <2 x double> %i.uo, double %i.un, i64 1 ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ur = getelementptr i8, ptr %i.ul, i64 32
  %i.us = load double, ptr %i.uq, align 8, !noalias !257
  %i.ut = load double, ptr %i.ur, align 8, !noalias !257
  %i.uu = insertelement <2 x double> poison, double %i.us, i64 0
  %i.uv = insertelement <2 x double> %i.uu, double %i.ut, i64 1 ; 3 uses
  %i.uw = fmul <2 x double> %broadcast.splat1099, %i.uv
  %i.ux = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.up, <2 x double> %i.uw)
  %i.uy = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.uz = getelementptr i8, ptr %i.ul, i64 40
  %i.va = load double, ptr %i.uy, align 8, !noalias !257
  %i.vb = load double, ptr %i.uz, align 8, !noalias !257
  %i.vc = insertelement <2 x double> poison, double %i.va, i64 0
  %i.vd = insertelement <2 x double> %i.vc, double %i.vb, i64 1 ; 3 uses
  %i.ve = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1101, <2 x double> %i.vd, <2 x double> %i.ux)
  %i.vf = fadd <2 x double> %i.ve, %broadcast.splat1103
  %i.vg = fmul <2 x double> %i.uv, %broadcast.splat1107
  %i.vh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1105, <2 x double> %i.up, <2 x double> %i.vg)
  %i.vi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1109, <2 x double> %i.vd, <2 x double> %i.vh)
  %i.vj = fadd <2 x double> %broadcast.splat1111, %i.vi
  %i.vk = fmul <2 x double> %i.uv, %broadcast.splat1115
  %i.vl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1113, <2 x double> %i.up, <2 x double> %i.vk)
  %i.vm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1117, <2 x double> %i.vd, <2 x double> %i.vl)
  %i.vn = fadd <2 x double> %broadcast.splat1119, %i.vm
  %i.vo = shufflevector <2 x double> %i.vf, <2 x double> %i.vj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vp = shufflevector <2 x double> %i.vn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.vo, <4 x double> %i.vp, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %next.gep, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.vq = icmp eq i64 %index.next, %n.vec
  br i1 %i.vq, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uh, %n.vec
  br i1 %cmp.n, label %._crit_edge659, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph658, %middle.block
  %.sroa.0288.0656.ph = phi ptr [ %i.tx, %.lr.ph658 ], [ %i.uj, %middle.block ]
  %i.vr = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.vs = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.vt = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.vu = shufflevector <8 x double> %20, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  br label %scalar.ph

._crit_edge659:                                   ; preds = %scalar.ph, %middle.block, %bb.cu
  br i1 %3, label %bb.cv, label %.loopexit482

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0288.0656 = phi ptr [ %i.wo, %scalar.ph ], [ %.sroa.0288.0656.ph, %scalar.ph.preheader ] ; 5 uses
  %i.vv = load double, ptr %.sroa.0288.0656, align 8, !noalias !257 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.0288.0656, i64 8
  %i.vx = load double, ptr %i.vw, align 8, !noalias !257 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.0288.0656, i64 16 ; 2 uses
  %i.vz = load double, ptr %i.vy, align 8, !noalias !257 ; 2 uses
  %i.wa = fmul double %i.vx, %i.ud
  %i.wb = call double @llvm.fmuladd.f64(double %i.ub, double %i.vv, double %i.wa)
  %i.wc = call double @llvm.fmuladd.f64(double %i.uf, double %i.vz, double %i.wb)
  %i.wd = fadd double %22, %i.wc
  %i.we = insertelement <2 x double> poison, double %i.vx, i64 0
  %i.wf = shufflevector <2 x double> %i.we, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wg = fmul <2 x double> %i.wf, %i.vr
  %i.wh = insertelement <2 x double> poison, double %i.vv, i64 0
  %i.wi = shufflevector <2 x double> %i.wh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vs, <2 x double> %i.wi, <2 x double> %i.wg)
  %i.wk = insertelement <2 x double> poison, double %i.vz, i64 0
  %i.wl = shufflevector <2 x double> %i.wk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vt, <2 x double> %i.wl, <2 x double> %i.wj)
  %i.wn = fadd <2 x double> %i.wm, %i.vu
  store <2 x double> %i.wn, ptr %.sroa.0288.0656, align 8
  store double %i.wd, ptr %i.vy, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0288.0656, i64 24 ; 2 uses
  %.not459 = icmp eq ptr %i.wo, %i.tz
  br i1 %.not459, label %._crit_edge659, label %scalar.ph, !llvm.loop !261

bb.cv:                                            ; preds = %._crit_edge659
  %i.wp = invoke noundef i64 @_ZN6Assimp3IFC12CloseWindowsERSt6vectorINS0_22ProjectedWindowContourESaIS2_EERK12aiMatrix4x4tIdERS1_IS1_IPNS0_11TempOpeningESaISB_EESaISD_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.loopexit482 unwind label %bb.f ; 0 uses

.loopexit482:                                     ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, %._crit_edge659, %bb.cv, %.thread452
  %.10 = phi i1 [ true, %._crit_edge659 ], [ false, %.thread452 ], [ true, %bb.cv ], [ %.8, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760, null
  br i1 %.not.i.i.i255, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %.loopexit482
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.427 = load ptr, ptr %.sroa.18, align 8
  %i.wq = ptrtoint ptr %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.427 to i64
  %i.wr = ptrtoint ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760 to i64
  %i.ws = sub i64 %i.wq, %i.wr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760, i64 noundef %i.ws) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit, %.loopexit482, %bb.cw
  %.10905 = phi i1 [ %.10, %bb.cw ], [ %.10, %.loopexit482 ], [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  %i.wt = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i256 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit
  %i.wu = load ptr, ptr %..sroa.gep418, align 8
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = ptrtoint ptr %i.wt to i64
  %i.wx = sub i64 %i.wv, %i.ww
  call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.wx) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.wy = load ptr, ptr %11, align 8              ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.xa = load ptr, ptr %i.wz, align 8            ; 2 uses
  %.not4.i.i.i258 = icmp eq ptr %i.wy, %i.xa
  br i1 %.not4.i.i.i258, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i259

.lr.ph.i.i.i259:                                  ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i
  %.05.i.i.i260 = phi ptr [ %i.xr, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i ], [ %i.wy, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257 ] ; 5 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 56
  %i.xc = load ptr, ptr %i.xb, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i261 = icmp eq ptr %i.xc, null
  br i1 %.not.i.i.i.i.i.i.i261, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i259
  %i.xd = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 88
  %i.xe = load ptr, ptr %i.xd, align 8            ; 2 uses
  %i.xf = ptrtoint ptr %i.xe to i64
  %i.xg = ptrtoint ptr %i.xc to i64
  %i.xh = sub i64 %i.xf, %i.xg                    ; 2 uses
  %i.xi = ashr exact i64 %i.xh, 3
  %i.xj = sub nsw i64 0, %i.xi
  %i.xk = getelementptr inbounds [8 x i8], ptr %i.xe, i64 %i.xj
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xh) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i:   ; preds = %bb.cy, %.lr.ph.i.i.i259
  %i.xl = load ptr, ptr %.05.i.i.i260, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.xl, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i
  %i.xm = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 16
  %i.xn = load ptr, ptr %i.xm, align 8
  %i.xo = ptrtoint ptr %i.xn to i64
  %i.xp = ptrtoint ptr %i.xl to i64
  %i.xq = sub i64 %i.xo, %i.xp
  call void @_ZdlPvm(ptr noundef nonnull %i.xl, i64 noundef %i.xq) #26
  br label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i: ; preds = %bb.cz, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i
  %i.xr = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 104 ; 2 uses
  %.not.i.i.i262 = icmp eq ptr %i.xr, %i.xa
  br i1 %.not.i.i.i262, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i259, !llvm.loop !262

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i
  %.pr.i263 = load ptr, ptr %11, align 8
  br label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257
  %i.xs = phi ptr [ %.pr.i263, %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.wy, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257 ] ; 3 uses
  %.not.i.i1.i264 = icmp eq ptr %i.xs, null
  br i1 %.not.i.i1.i264, label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i
  %i.xt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = ptrtoint ptr %i.xs to i64
  %i.xx = sub i64 %i.xv, %i.xw
  call void @_ZdlPvm(ptr noundef nonnull %i.xs, i64 noundef %i.xx) #26
  br label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.de

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254: ; preds = %.loopexit467, %.loopexit.split-lp468, %bb.co, %_ZNSt6vectorIjSaIjEED2Ev.exit252, %bb.f
  %.pn172 = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %.pn164.pn.pn.pn.pn, %bb.co ], [ %.pn164.pn.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit252 ], [ %lpad.loopexit469, %.loopexit467 ], [ %lpad.loopexit.split-lp470, %.loopexit.split-lp468 ]
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423 = load ptr, ptr %.sroa.0419, align 8 ; 3 uses
  %.not.i.i.i265 = icmp eq ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423, null
  br i1 %.not.i.i.i265, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.428 = load ptr, ptr %.sroa.18, align 8
  %i.xy = ptrtoint ptr %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.428 to i64
  %i.xz = ptrtoint ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423 to i64
  %i.ya = sub i64 %i.xy, %i.xz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423, i64 noundef %i.ya) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  %i.yb = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i267 = icmp eq ptr %i.yb, null
  br i1 %.not.i.i.i267, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266
  %i.yc = load ptr, ptr %..sroa.gep418, align 8
  %i.yd = ptrtoint ptr %i.yc to i64
  %i.ye = ptrtoint ptr %i.yb to i64
  %i.yf = sub i64 %i.yd, %i.ye
  call void @_ZdlPvm(ptr noundef nonnull %i.yb, i64 noundef %i.yf) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268, %bb.e
  %.pn172.pn = phi { ptr, i32 } [ %.pn172, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268 ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.di

bb.de:                                            ; preds = %bb.b, %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit
  %.11 = phi i1 [ %.10905, %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.yg = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i269 = icmp eq ptr %i.yg, null
  br i1 %.not.i.i.i269, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.yh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8
  %i.yj = ptrtoint ptr %i.yi to i64
  %i.yk = ptrtoint ptr %i.yg to i64
  %i.yl = sub i64 %i.yj, %i.yk
  call void @_ZdlPvm(ptr noundef nonnull %i.yg, i64 noundef %i.yl) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270: ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ym = load ptr, ptr %5, align 8               ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.yo = load ptr, ptr %i.yn, align 8            ; 2 uses
  %.not4.i.i.i271 = icmp eq ptr %i.ym, %i.yo
  br i1 %.not4.i.i.i271, label %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i272

.lr.ph.i.i.i272:                                  ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270, %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i273 = phi ptr [ %i.yv, %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i ], [ %i.ym, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270 ] ; 3 uses
  %i.yp = load ptr, ptr %.05.i.i.i273, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i274 = icmp eq ptr %i.yp, null
  br i1 %.not.i.i.i.i.i.i.i274, label %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i272
  %i.yq = getelementptr inbounds nuw i8, ptr %.05.i.i.i273, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = ptrtoint ptr %i.yp to i64
  %i.yu = sub i64 %i.ys, %i.yt
  call void @_ZdlPvm(ptr noundef nonnull %i.yp, i64 noundef %i.yu) #26
  br label %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i
end_hunk_1
