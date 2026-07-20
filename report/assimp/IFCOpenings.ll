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
  %6 = ptrtoaddr ptr %i.bl to i64
  %7 = ptrtoaddr ptr %i.bm to i64
  %i.bx = sub i64 %6, %7
  %i.by = add i64 %i.bx, -16
  %i.bz = lshr i64 %i.by, 4                       ; 2 uses
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
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE:bb.a

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
  %i.ua = load <8 x double>, ptr %9, align 8, !noalias !257 ; 12 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.uc = load double, ptr %i.ub, align 8, !noalias !257 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ue = load double, ptr %i.ud, align 8, !noalias !257 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ug = load double, ptr %i.uf, align 8, !noalias !257 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.ui = load double, ptr %i.uh, align 8, !noalias !257 ; 2 uses
  %18 = ptrtoaddr ptr %i.tz to i64
  %19 = ptrtoaddr ptr %i.tx to i64
  %i.uj = sub i64 %18, %19
  %i.uk = add i64 %i.uj, -24                      ; 2 uses
  %i.ul = udiv i64 %i.uk, 24
  %i.um = add nuw nsw i64 %i.ul, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.uk, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph658
  %n.vec = and i64 %i.um, 2305843009213693950     ; 3 uses
  %i.un = mul i64 %n.vec, 24
  %i.uo = getelementptr i8, ptr %i.tx, i64 %i.un
  %broadcast.splat = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat1099 = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat1101 = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat1103 = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splat1105 = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 4, i32 4>
  %broadcast.splat1107 = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 5, i32 5>
  %broadcast.splat1109 = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 6, i32 6>
  %broadcast.splat1111 = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 7, i32 7>
  %broadcast.splatinsert1112 = insertelement <2 x double> poison, double %i.uc, i64 0
  %broadcast.splat1113 = shufflevector <2 x double> %broadcast.splatinsert1112, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1114 = insertelement <2 x double> poison, double %i.ue, i64 0
  %broadcast.splat1115 = shufflevector <2 x double> %broadcast.splatinsert1114, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1116 = insertelement <2 x double> poison, double %i.ug, i64 0
  %broadcast.splat1117 = shufflevector <2 x double> %broadcast.splatinsert1116, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1118 = insertelement <2 x double> poison, double %i.ui, i64 0
  %broadcast.splat1119 = shufflevector <2 x double> %broadcast.splatinsert1118, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.up = mul i64 %index, 24                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.tx, i64 %i.up ; 4 uses
  %i.uq = getelementptr i8, ptr %i.tx, i64 %i.up  ; 3 uses
  %next.gep1120 = getelementptr i8, ptr %i.uq, i64 24
  %i.ur = load double, ptr %next.gep, align 8, !noalias !257
  %i.us = load double, ptr %next.gep1120, align 8, !noalias !257
  %i.ut = insertelement <2 x double> poison, double %i.ur, i64 0
  %i.uu = insertelement <2 x double> %i.ut, double %i.us, i64 1 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.uw = getelementptr i8, ptr %i.uq, i64 32
  %i.ux = load double, ptr %i.uv, align 8, !noalias !257
  %i.uy = load double, ptr %i.uw, align 8, !noalias !257
  %i.uz = insertelement <2 x double> poison, double %i.ux, i64 0
  %i.va = insertelement <2 x double> %i.uz, double %i.uy, i64 1 ; 3 uses
  %i.vb = fmul <2 x double> %broadcast.splat1099, %i.va
  %i.vc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.uu, <2 x double> %i.vb)
  %i.vd = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.ve = getelementptr i8, ptr %i.uq, i64 40
  %i.vf = load double, ptr %i.vd, align 8, !noalias !257
  %i.vg = load double, ptr %i.ve, align 8, !noalias !257
  %i.vh = insertelement <2 x double> poison, double %i.vf, i64 0
  %i.vi = insertelement <2 x double> %i.vh, double %i.vg, i64 1 ; 3 uses
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1101, <2 x double> %i.vi, <2 x double> %i.vc)
  %i.vk = fadd <2 x double> %i.vj, %broadcast.splat1103
  %i.vl = fmul <2 x double> %i.va, %broadcast.splat1107
  %i.vm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1105, <2 x double> %i.uu, <2 x double> %i.vl)
  %i.vn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1109, <2 x double> %i.vi, <2 x double> %i.vm)
  %i.vo = fadd <2 x double> %broadcast.splat1111, %i.vn
  %i.vp = fmul <2 x double> %i.va, %broadcast.splat1115
  %i.vq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1113, <2 x double> %i.uu, <2 x double> %i.vp)
  %i.vr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1117, <2 x double> %i.vi, <2 x double> %i.vq)
  %i.vs = fadd <2 x double> %broadcast.splat1119, %i.vr
  %i.vt = shufflevector <2 x double> %i.vk, <2 x double> %i.vo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vu = shufflevector <2 x double> %i.vs, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.vt, <4 x double> %i.vu, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %next.gep, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.vv = icmp eq i64 %index.next, %n.vec
  br i1 %i.vv, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.um, %n.vec
  br i1 %cmp.n, label %._crit_edge659, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph658, %middle.block
  %.sroa.0288.0656.ph = phi ptr [ %i.tx, %.lr.ph658 ], [ %i.uo, %middle.block ]
  %i.vw = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.vx = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.vy = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.vz = shufflevector <8 x double> %i.ua, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  br label %scalar.ph

._crit_edge659:                                   ; preds = %scalar.ph, %middle.block, %bb.cu
  br i1 %3, label %bb.cv, label %.loopexit482

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0288.0656 = phi ptr [ %i.wt, %scalar.ph ], [ %.sroa.0288.0656.ph, %scalar.ph.preheader ] ; 5 uses
  %i.wa = load double, ptr %.sroa.0288.0656, align 8, !noalias !257 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.0288.0656, i64 8
  %i.wc = load double, ptr %i.wb, align 8, !noalias !257 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.0288.0656, i64 16 ; 2 uses
  %i.we = load double, ptr %i.wd, align 8, !noalias !257 ; 2 uses
  %i.wf = fmul double %i.wc, %i.ue
  %i.wg = call double @llvm.fmuladd.f64(double %i.uc, double %i.wa, double %i.wf)
  %i.wh = call double @llvm.fmuladd.f64(double %i.ug, double %i.we, double %i.wg)
  %i.wi = fadd double %i.ui, %i.wh
  %i.wj = insertelement <2 x double> poison, double %i.wc, i64 0
  %i.wk = shufflevector <2 x double> %i.wj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wl = fmul <2 x double> %i.wk, %i.vw
  %i.wm = insertelement <2 x double> poison, double %i.wa, i64 0
  %i.wn = shufflevector <2 x double> %i.wm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vx, <2 x double> %i.wn, <2 x double> %i.wl)
  %i.wp = insertelement <2 x double> poison, double %i.we, i64 0
  %i.wq = shufflevector <2 x double> %i.wp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vy, <2 x double> %i.wq, <2 x double> %i.wo)
  %i.ws = fadd <2 x double> %i.wr, %i.vz
  store <2 x double> %i.ws, ptr %.sroa.0288.0656, align 8
  store double %i.wi, ptr %i.wd, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.0288.0656, i64 24 ; 2 uses
  %.not459 = icmp eq ptr %i.wt, %i.tz
  br i1 %.not459, label %._crit_edge659, label %scalar.ph, !llvm.loop !261

bb.cv:                                            ; preds = %._crit_edge659
  %i.wu = invoke noundef i64 @_ZN6Assimp3IFC12CloseWindowsERSt6vectorINS0_22ProjectedWindowContourESaIS2_EERK12aiMatrix4x4tIdERS1_IS1_IPNS0_11TempOpeningESaISB_EESaISD_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.loopexit482 unwind label %bb.f ; 0 uses

.loopexit482:                                     ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, %._crit_edge659, %bb.cv, %.thread452
  %.10 = phi i1 [ true, %._crit_edge659 ], [ false, %.thread452 ], [ true, %bb.cv ], [ %.8, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760, null
  br i1 %.not.i.i.i255, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %.loopexit482
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.427 = load ptr, ptr %.sroa.18, align 8
  %i.wv = ptrtoint ptr %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.427 to i64
  %i.ww = ptrtoint ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760 to i64
  %i.wx = sub i64 %i.wv, %i.ww
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760, i64 noundef %i.wx) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit, %.loopexit482, %bb.cw
  %.10905 = phi i1 [ %.10, %bb.cw ], [ %.10, %.loopexit482 ], [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  %i.wy = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i256 = icmp eq ptr %i.wy, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit
  %i.wz = load ptr, ptr %..sroa.gep418, align 8
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = ptrtoint ptr %i.wy to i64
  %i.xc = sub i64 %i.xa, %i.xb
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef %i.xc) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.xd = load ptr, ptr %11, align 8              ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8            ; 2 uses
  %.not4.i.i.i258 = icmp eq ptr %i.xd, %i.xf
  br i1 %.not4.i.i.i258, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i259

.lr.ph.i.i.i259:                                  ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i
  %.05.i.i.i260 = phi ptr [ %i.xw, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i ], [ %i.xd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257 ] ; 5 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 56
  %i.xh = load ptr, ptr %i.xg, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i261 = icmp eq ptr %i.xh, null
  br i1 %.not.i.i.i.i.i.i.i261, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i259
  %i.xi = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 88
  %i.xj = load ptr, ptr %i.xi, align 8            ; 2 uses
  %i.xk = ptrtoint ptr %i.xj to i64
  %i.xl = ptrtoint ptr %i.xh to i64
  %i.xm = sub i64 %i.xk, %i.xl                    ; 2 uses
  %i.xn = ashr exact i64 %i.xm, 3
  %i.xo = sub nsw i64 0, %i.xn
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.xj, i64 %i.xo
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xm) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i:   ; preds = %bb.cy, %.lr.ph.i.i.i259
  %i.xq = load ptr, ptr %.05.i.i.i260, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.xq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i
  %i.xr = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 16
  %i.xs = load ptr, ptr %i.xr, align 8
  %i.xt = ptrtoint ptr %i.xs to i64
  %i.xu = ptrtoint ptr %i.xq to i64
  %i.xv = sub i64 %i.xt, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %i.xq, i64 noundef %i.xv) #26
  br label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i: ; preds = %bb.cz, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i
  %i.xw = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 104 ; 2 uses
  %.not.i.i.i262 = icmp eq ptr %i.xw, %i.xf
  br i1 %.not.i.i.i262, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i259, !llvm.loop !262

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i
  %.pr.i263 = load ptr, ptr %11, align 8
  br label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257
  %i.xx = phi ptr [ %.pr.i263, %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.xd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257 ] ; 3 uses
  %.not.i.i1.i264 = icmp eq ptr %i.xx, null
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_:bb.a
  %i.al = fcmp olt double %i.ai, %i.ah
  %.0.i5.i = select i1 %i.aj, i1 %i.ak, i1 %i.al  ; 2 uses
  %spec.select.i = select i1 %.0.i5.i, ptr null, ptr %.sroa.06.0.i
  %spec.select22.i = select i1 %.0.i5.i, ptr %.020.lcssa29.i, ptr null
  br label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load double, ptr %2, align 8            ; 15 uses
  %i.ao = load double, ptr %i.am, align 8         ; 3 uses
  %i.ap = fcmp oeq double %i.an, %i.ao            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load double, ptr %i.aq, align 8         ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load double, ptr %i.as, align 8         ; 2 uses
  %i.au = fcmp olt double %i.ar, %i.at
  %i.av = fcmp olt double %i.an, %i.ao
  %.0.i10 = select i1 %i.ap, i1 %i.au, i1 %i.av
  br i1 %.0.i10, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, %1
  br i1 %i.ay, label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load double, ptr %i.ba, align 8         ; 2 uses
  %i.bc = fcmp oeq double %i.bb, %i.an
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.be = load double, ptr %i.bd, align 8
  %i.bf = fcmp olt double %i.be, %i.ar
  %i.bg = fcmp olt double %i.bb, %i.an
  %.0.i11 = select i1 %i.bc, i1 %i.bf, i1 %i.bg
  br i1 %.0.i11, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %i.bi, null                 ; 2 uses
  %spec.select = select i1 %i.bj, ptr null, ptr %1
  %spec.select79 = select i1 %i.bj, ptr %i.az, ptr %1
  br label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02123.i12 = load ptr, ptr %i.bk, align 8      ; 2 uses
  %.not24.i13 = icmp eq ptr %.02123.i12, null
  br i1 %.not24.i13, label %._crit_edge.thread.i31, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.l, %.lr.ph.i14
  %.02125.i15 = phi ptr [ %.021.i19, %.lr.ph.i14 ], [ %.02123.i12, %bb.l ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02125.i15, i64 32
  %i.bm = load double, ptr %i.bl, align 8         ; 3 uses
  %i.bn = fcmp oeq double %i.an, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.02125.i15, i64 40
  %i.bp = load double, ptr %i.bo, align 8         ; 2 uses
  %i.bq = fcmp olt double %i.ar, %i.bp
  %i.br = fcmp olt double %i.an, %i.bm
  %.0.i.i16 = select i1 %i.bn, i1 %i.bq, i1 %i.br ; 2 uses
  %.in.v.i17 = select i1 %.0.i.i16, i64 16, i64 24
  %.in.i18 = getelementptr inbounds nuw i8, ptr %.02125.i15, i64 %.in.v.i17
  %.021.i19 = load ptr, ptr %.in.i18, align 8     ; 2 uses
  %.not.i20 = icmp eq ptr %.021.i19, null
  br i1 %.not.i20, label %._crit_edge.i21, label %.lr.ph.i14, !llvm.loop !497

._crit_edge.i21:                                  ; preds = %.lr.ph.i14
  br i1 %.0.i.i16, label %._crit_edge.thread.i31, label %bb.n

._crit_edge.thread.i31:                           ; preds = %._crit_edge.i21, %bb.l
  %.020.lcssa30.i32 = phi ptr [ %.02125.i15, %._crit_edge.i21 ], [ %i.a, %bb.l ] ; 4 uses
  %i.bs = icmp eq ptr %.020.lcssa30.i32, %i.ax
  br i1 %i.bs, label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i31
  %i.bt = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i32) #23 ; 3 uses
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.pre85 = load double, ptr %.phi.trans.insert84, align 8
  %.phi.trans.insert86 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %.pre87 = load double, ptr %.phi.trans.insert86, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i21
  %i.bu = phi double [ %.pre87, %bb.m ], [ %i.bp, %._crit_edge.i21 ]
  %i.bv = phi double [ %.pre85, %bb.m ], [ %i.bm, %._crit_edge.i21 ] ; 2 uses
  %.020.lcssa29.i22 = phi ptr [ %.020.lcssa30.i32, %bb.m ], [ %.02125.i15, %._crit_edge.i21 ]
  %.sroa.06.0.i23 = phi ptr [ %i.bt, %bb.m ], [ %.02125.i15, %._crit_edge.i21 ]
  %i.bw = fcmp oeq double %i.bv, %i.an
  %i.bx = fcmp olt double %i.bu, %i.ar
  %i.by = fcmp olt double %i.bv, %i.an
  %.0.i5.i24 = select i1 %i.bw, i1 %i.bx, i1 %i.by ; 2 uses
  %spec.select.i25 = select i1 %.0.i5.i24, ptr null, ptr %.sroa.06.0.i23
  %spec.select22.i26 = select i1 %.0.i5.i24, ptr %.020.lcssa29.i22, ptr null
  br label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.bz = fcmp olt double %i.at, %i.ar
  %i.ca = fcmp olt double %i.ao, %i.an
  %.0.i34 = select i1 %i.ap, i1 %i.bz, i1 %i.ca
  br i1 %.0.i34, label %bb.p, label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %1
  br i1 %i.cd, label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load double, ptr %i.cf, align 8         ; 2 uses
  %i.ch = fcmp oeq double %i.an, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cj = load double, ptr %i.ci, align 8
  %i.ck = fcmp olt double %i.ar, %i.cj
  %i.cl = fcmp olt double %i.an, %i.cg
  %.0.i35 = select i1 %i.ch, i1 %i.ck, i1 %i.cl
  br i1 %.0.i35, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp eq ptr %i.cn, null                 ; 2 uses
  %spec.select80 = select i1 %i.co, ptr null, ptr %i.ce
  %spec.select81 = select i1 %i.co, ptr %1, ptr %i.ce
  br label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02123.i36 = load ptr, ptr %i.cp, align 8      ; 2 uses
  %.not24.i37 = icmp eq ptr %.02123.i36, null
  br i1 %.not24.i37, label %._crit_edge.thread.i55, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.s, %.lr.ph.i38
  %.02125.i39 = phi ptr [ %.021.i43, %.lr.ph.i38 ], [ %.02123.i36, %bb.s ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02125.i39, i64 32
  %i.cr = load double, ptr %i.cq, align 8         ; 3 uses
  %i.cs = fcmp oeq double %i.an, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.02125.i39, i64 40
  %i.cu = load double, ptr %i.ct, align 8         ; 2 uses
  %i.cv = fcmp olt double %i.ar, %i.cu
  %i.cw = fcmp olt double %i.an, %i.cr
  %.0.i.i40 = select i1 %i.cs, i1 %i.cv, i1 %i.cw ; 2 uses
  %.in.v.i41 = select i1 %.0.i.i40, i64 16, i64 24
  %.in.i42 = getelementptr inbounds nuw i8, ptr %.02125.i39, i64 %.in.v.i41
  %.021.i43 = load ptr, ptr %.in.i42, align 8     ; 2 uses
  %.not.i44 = icmp eq ptr %.021.i43, null
  br i1 %.not.i44, label %._crit_edge.i45, label %.lr.ph.i38, !llvm.loop !497

._crit_edge.i45:                                  ; preds = %.lr.ph.i38
  br i1 %.0.i.i40, label %._crit_edge.thread.i55, label %bb.u

._crit_edge.thread.i55:                           ; preds = %._crit_edge.i45, %bb.s
  %.020.lcssa30.i56 = phi ptr [ %.02125.i39, %._crit_edge.i45 ], [ %i.a, %bb.s ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = icmp eq ptr %.020.lcssa30.i56, %i.cy
  br i1 %i.cz, label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i55
  %i.da = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i56) #23 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %.pre = load double, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %.pre83 = load double, ptr %.phi.trans.insert82, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i45
  %i.db = phi double [ %.pre83, %bb.t ], [ %i.cu, %._crit_edge.i45 ]
  %i.dc = phi double [ %.pre, %bb.t ], [ %i.cr, %._crit_edge.i45 ] ; 2 uses
  %.020.lcssa29.i46 = phi ptr [ %.020.lcssa30.i56, %bb.t ], [ %.02125.i39, %._crit_edge.i45 ]
  %.sroa.06.0.i47 = phi ptr [ %i.da, %bb.t ], [ %.02125.i39, %._crit_edge.i45 ]
  %i.dd = fcmp oeq double %i.dc, %i.an
  %i.de = fcmp olt double %i.db, %i.ar
  %i.df = fcmp olt double %i.dc, %i.an
  %.0.i5.i48 = select i1 %i.dd, i1 %i.de, i1 %i.df ; 2 uses
  %spec.select.i49 = select i1 %.0.i5.i48, ptr null, ptr %.sroa.06.0.i47
  %spec.select22.i50 = select i1 %.0.i5.i48, ptr %.020.lcssa29.i46, ptr null
  br label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.u, %._crit_edge.thread.i55, %bb.n, %._crit_edge.thread.i31, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.078.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select80, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ax, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i31 ], [ %spec.select.i, %bb.g ], [ %spec.select.i25, %bb.n ], [ %spec.select.i49, %bb.u ], [ null, %._crit_edge.thread.i55 ]
  %.sroa.12.2 = phi ptr [ %i.cc, %bb.p ], [ %spec.select79, %bb.k ], [ %i.f, %bb.c ], [ %spec.select81, %bb.r ], [ %.020.lcssa30.i, %._crit_edge.thread.i ], [ %i.ax, %bb.i ], [ null, %bb.o ], [ %.020.lcssa30.i32, %._crit_edge.thread.i31 ], [ %spec.select22.i, %bb.g ], [ %spec.select22.i26, %bb.n ], [ %spec.select22.i50, %bb.u ], [ %.020.lcssa30.i56, %._crit_edge.thread.i55 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 14 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !118

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4
  store i32 %i.s, ptr %i.d, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !118

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4
  store i32 %i.ac, ptr %i.ab, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec129 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec129, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.aj = shl i64 %index133, 2
  %next.gep134 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %broadcast.splat131, ptr %next.gep134, align 4
  store <4 x i32> %broadcast.splat131, ptr %i.ak, align 4
  %index.next135 = add nuw i64 %index133, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.al, label %middle.block136, label %vector.body132, !llvm.loop !498

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.ag, %n.vec129
  br i1 %cmp.n137, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block136
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block136 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !499

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -4                       ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !500

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !501

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !118

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %4 = ptrtoaddr ptr %i.d to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.bg = sub i64 %4, %5
  %i.bh = add i64 %i.bg, -4                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader153, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !502

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader153

.lr.ph.i.i.i71.preheader153:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader153, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader153 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !503

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4               ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %bb.t
  %n.vec143 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec143, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.cn = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep148, i64 16
  store <4 x i32> %broadcast.splat145, ptr %next.gep148, align 4
  store <4 x i32> %broadcast.splat145, ptr %i.co, align 4
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cp, label %middle.block150, label %vector.body146, !llvm.loop !504

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.ck, %n.vec143
  br i1 %cmp.n151, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block150
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !505

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block150
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !118

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4
  store i32 %i.ct, ptr %i.ce, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !118

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4
  store i32 %i.cy, ptr %i.cu, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #26
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp3IFC22ProjectedWindowContourEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i
  %.05.i = phi ptr [ %i.q, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 88
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i:       ; preds = %bb.b, %.lr.ph.i
  %i.k = load ptr, ptr %.05.i, align 8            ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
end_hunk_2
