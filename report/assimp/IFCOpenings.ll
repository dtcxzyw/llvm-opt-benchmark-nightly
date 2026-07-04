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
  %5 = alloca %class.aiMatrix3x3t, align 8        ; 8 uses
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
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.o = load <3 x double>, ptr %5, align 8       ; 6 uses
  %i.p = shufflevector <3 x double> %i.o, <3 x double> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2>
  %i.q = load double, ptr %i.k, align 8
  %i.r = load <3 x double>, ptr %i.l, align 8     ; 4 uses
  %i.s = shufflevector <3 x double> %i.r, <3 x double> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2>
  %i.t = load <3 x double>, ptr %i.m, align 8     ; 5 uses
  %i.u = shufflevector <3 x double> %i.t, <3 x double> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2>
  %i.v = load double, ptr %i.n, align 8           ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.w = load i8, ptr %3, align 1, !range !143, !noundef !144
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ad, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.af = load ptr, ptr %2, align 8               ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24                ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, 576460752303423487
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %1, align 8               ; 6 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 4
  %i.as = icmp ult i64 %i.ar, %i.aj
  br i1 %i.as, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ap
  %i.ax = shl nuw nsw i64 %i.aj, 4
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #25 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.an, %i.au
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.ay, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.an, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !220
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.au
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.an, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #26
  br label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ay, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store ptr %i.bb, ptr %i.at, align 8
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.aj
  store ptr %i.bc, ptr %i.al, align 8
  %.pre = load ptr, ptr %2, align 8
  %.pre170 = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.bd = phi ptr [ %i.an, %bb.g ], [ %i.ay, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.be = phi ptr [ %i.ae, %bb.g ], [ %.pre170, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  %i.bf = phi ptr [ %i.af, %bb.g ], [ %.pre, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %.not142 = icmp eq ptr %i.bf, %i.be
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre175 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit
  %i.bg = extractelement <3 x double> %i.t, i64 0
  %i.bh = extractelement <3 x double> %i.t, i64 2
  %i.bi = shufflevector <3 x double> %i.o, <3 x double> %i.r, <2 x i32> <i32 1, i32 4>
  %i.bj = shufflevector <3 x double> %i.o, <3 x double> %i.r, <2 x i32> <i32 0, i32 3>
  %i.bk = shufflevector <3 x double> %i.o, <3 x double> %i.r, <2 x i32> <i32 2, i32 5>
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %.pre172 = load ptr, ptr %i.b, align 8
  %.pre173 = load ptr, ptr %2, align 8
  %.pre174 = load ptr, ptr %1, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit, %._crit_edge.loopexit
  %i.bl = phi ptr [ %i.ed, %._crit_edge.loopexit ], [ %.pre175, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.bm = phi ptr [ %.pre174, %._crit_edge.loopexit ], [ %i.bd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.bn = phi ptr [ %.pre173, %._crit_edge.loopexit ], [ %i.be, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bo = phi ptr [ %.pre172, %._crit_edge.loopexit ], [ %i.be, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %.0.lcssa = phi double [ %i.cu, %._crit_edge.loopexit ], [ 0.000000e+00, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bp = phi <2 x double> [ %i.di, %._crit_edge.loopexit ], [ splat (double -1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bq = phi <2 x double> [ %i.dg, %._crit_edge.loopexit ], [ splat (double 1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 24
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fsub <2 x double> %i.bp, %i.bq          ; 3 uses
  %.not136155 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not136155, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %._crit_edge
  %6 = ptrtoaddr ptr %i.bm to i64
  %7 = ptrtoaddr ptr %i.bl to i64
  %i.bx = add i64 %7, -16
  %i.by = sub i64 %i.bx, %6
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
  %.sroa.097.0143 = phi ptr [ %i.ee, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %i.bf, %.lr.ph.preheader ] ; 4 uses
  %i.cj = phi <2 x double> [ %i.di, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double -1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.ck = phi <2 x double> [ %i.dg, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double 1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.cl = load double, ptr %.sroa.097.0143, align 8, !noalias !225 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 8
  %i.cn = load double, ptr %i.cm, align 8, !noalias !225 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 16
  %i.cp = load double, ptr %i.co, align 8, !noalias !225 ; 2 uses
  %i.cq = fmul double %i.v, %i.cn
  %i.cr = call double @llvm.fmuladd.f64(double %i.bg, double %i.cl, double %i.cq)
  %i.cs = call double @llvm.fmuladd.f64(double %i.bh, double %i.cp, double %i.cr)
  %i.ct = fadd double %i.cs, 0.000000e+00
  %i.cu = fadd double %.0150, %i.ct               ; 2 uses
  %i.cv = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.bi, %i.cw
  %i.cy = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.cz, <2 x double> %i.cx)
  %i.db = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.dc, <2 x double> %i.da) ; 3 uses
  %i.de = fadd <2 x double> %i.dd, zeroinitializer ; 4 uses
  %i.df = fcmp olt <2 x double> %i.ck, %i.dd
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.ck, <2 x double> %i.de ; 2 uses
  %i.dh = fcmp olt <2 x double> %i.dd, %i.cj
  %i.di = select <2 x i1> %i.dh, <2 x double> %i.cj, <2 x double> %i.de ; 2 uses
  %i.dj = load ptr, ptr %i.al, align 8
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
  store ptr %i.ec, ptr %i.al, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ed = phi ptr [ %i.dl, %bb.i ], [ %i.eb, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ee, %i.be
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge159:                                   ; preds = %vector.body, %.lr.ph158, %._crit_edge
  %i.ef = fdiv <2 x double> splat (double 1.000000e+00), %i.bw ; 4 uses
  %i.eg = fneg <2 x double> %i.bq
  %i.eh = fneg double %.0.lcssa
  %i.ei = fdiv double %i.eh, %i.bv                ; 4 uses
  %i.ej = extractelement <2 x double> %i.ef, i64 0
  %i.ek = call double @llvm.fmuladd.f64(double %i.ej, double 0.000000e+00, double 0.000000e+00)
  %i.el = extractelement <2 x double> %i.ef, i64 1
  %i.em = fmul double %i.el, 0.000000e+00
  %i.en = fmul <2 x double> %i.ef, %i.eg          ; 2 uses
  %i.eo = shufflevector <2 x double> %i.ef, <2 x double> poison, <6 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.ep = shufflevector <6 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double poison, double poison, double poison>, <6 x double> %i.eo, <6 x i32> <i32 0, i32 1, i32 2, i32 9, i32 10, i32 11>
  %i.eq = fmul <6 x double> %i.s, %i.ep           ; 4 uses
  %i.er = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.em, i64 1
  %i.et = fadd <2 x double> %i.es, zeroinitializer
  %i.eu = fadd <2 x double> %i.en, %i.et
  %i.ev = shufflevector <2 x double> %i.en, <2 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 poison, i32 poison>
  %i.ew = shufflevector <6 x double> %i.u, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.ex = shufflevector <6 x double> %i.p, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.ey = shufflevector <6 x double> %i.eo, <6 x double> <double poison, double poison, double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.ez = shufflevector <6 x double> %i.eq, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fa = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ex, <8 x double> %i.ey, <8 x double> %i.ez)
  %i.fb = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ew, <8 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double undef, double undef>, <8 x double> %i.fa)
  %i.fc = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ev, <8 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double undef, double undef>, <8 x double> %i.fb)
  %i.fd = shufflevector <2 x double> %i.eu, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fe = extractelement <3 x double> %i.o, i64 0
  %i.ff = extractelement <6 x double> %i.eq, i64 0
  %i.fg = call double @llvm.fmuladd.f64(double %i.fe, double 0.000000e+00, double %i.ff) ; 2 uses
  %i.fh = extractelement <3 x double> %i.t, i64 0 ; 2 uses
  %i.fi = fadd double %i.fg, %i.fh
  %i.fj = call double @llvm.fmuladd.f64(double %i.ei, double 0.000000e+00, double %i.fi)
  %i.fk = extractelement <6 x double> %i.eq, i64 1
  %i.fl = call double @llvm.fmuladd.f64(double %i.q, double 0.000000e+00, double %i.fk) ; 2 uses
  %i.fm = fadd double %i.fl, %i.v
  %i.fn = call double @llvm.fmuladd.f64(double %i.ei, double 0.000000e+00, double %i.fm)
  %i.fo = extractelement <3 x double> %i.o, i64 2
  %i.fp = extractelement <6 x double> %i.eq, i64 2
  %i.fq = call double @llvm.fmuladd.f64(double %i.fo, double 0.000000e+00, double %i.fp) ; 2 uses
  %i.fr = extractelement <3 x double> %i.t, i64 2 ; 2 uses
  %i.fs = fadd double %i.fq, %i.fr
  %i.ft = call double @llvm.fmuladd.f64(double %i.ei, double 0.000000e+00, double %i.fs)
  %i.fu = call double @llvm.fmuladd.f64(double %i.fh, double 0.000000e+00, double %i.fg)
  %i.fv = call double @llvm.fmuladd.f64(double %i.v, double 0.000000e+00, double %i.fl)
  %i.fw = fadd double %i.fv, 0.000000e+00
  %i.fx = call double @llvm.fmuladd.f64(double %i.fr, double 0.000000e+00, double %i.fq)
  %i.fy = fadd double %i.fx, 0.000000e+00
  %i.fz = shufflevector <8 x double> %i.fc, <8 x double> %i.fd, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 3, i32 4, i32 5, i32 9>
  store <8 x double> %i.fz, ptr %0, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.fj, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.fn, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.ft, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ga = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fu, i64 1
  %i.gc = fadd <2 x double> %i.gb, zeroinitializer
  store <2 x double> %i.gc, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.fw, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.fy, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.m

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %.sroa.078.0156 = phi ptr [ %i.gk, %.lr.ph158 ], [ %i.bm, %.lr.ph158.preheader ] ; 3 uses
  %i.gd = load <2 x double>, ptr %.sroa.078.0156, align 8
  %i.ge = fsub <2 x double> %i.gd, %i.bq
  %i.gf = fdiv <2 x double> %i.ge, %i.bw          ; 2 uses
  %i.gg = fcmp olt <2 x double> %i.gf, zeroinitializer
  %i.gh = select <2 x i1> %i.gg, <2 x double> zeroinitializer, <2 x double> %i.gf ; 2 uses
  %i.gi = fcmp ogt <2 x double> %i.gh, splat (double 1.000000e+00)
  %i.gj = select <2 x i1> %i.gi, <2 x double> splat (double 1.000000e+00), <2 x double> %i.gh
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE:bb.a
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc243 unwind label %.loopexit.split-lp478

.noexc243:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.cc
  %i.sq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.so) #25
          to label %.noexc244 unwind label %.loopexit477

.noexc244:                                        ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.cb
  %i.sr = phi ptr [ null, %bb.cb ], [ %i.sq, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.sr, ptr %i.sh, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sh, i64 8 ; 2 uses
  store ptr %i.sr, ptr %i.ss, align 8
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.so
  %i.su = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  store ptr %i.st, ptr %i.su, align 8
  %i.sv = load ptr, ptr %12, align 8              ; 2 uses
  %i.sw = load ptr, ptr %..sroa.gep412, align 8   ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.sv, %i.sw
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, label %.lr.ph.i.i.i.i.i.i.i241

.lr.ph.i.i.i.i.i.i.i241:                          ; preds = %.noexc244, %.lr.ph.i.i.i.i.i.i.i241
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.sy, %.lr.ph.i.i.i.i.i.i.i241 ], [ %i.sr, %.noexc244 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.sx, %.lr.ph.i.i.i.i.i.i.i241 ], [ %i.sv, %.noexc244 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i242 = icmp eq ptr %i.sx, %i.sw
  br i1 %.not.i.i.i.i.i.i.i242, label %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, label %.lr.ph.i.i.i.i.i.i.i241, !llvm.loop !256

_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i241, %.noexc244
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.sr, %.noexc244 ], [ %i.sy, %.lr.ph.i.i.i.i.i.i.i241 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ss, align 8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sz, ptr noundef nonnull align 16 dereferenceable(32) %13, i64 32, i1 false)
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sh, i64 56
  store ptr null, ptr %i.ta, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sh, i64 64
  store i32 0, ptr %i.tb, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sh, i64 72
  store ptr null, ptr %i.tc, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.sh, i64 80
  store i32 0, ptr %i.td, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.sh, i64 88
  store ptr null, ptr %i.te, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sh, i64 96
  store i8 %i.sj, ptr %i.tf, align 8
  %i.tg = load ptr, ptr %i.u, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 104
  store ptr %i.th, ptr %i.u, align 8
  br label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit

bb.cd:                                            ; preds = %bb.ca
  invoke void @_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE17_M_realloc_insertIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.sh, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
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
  %.4450 = phi i1 [ %.4451, %bb.cd ], [ %.4451, %.thread446 ], [ %.4451, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i ], [ %i.mf, %bb.bv ], [ %.2861, %bb.bt ]
  %.5137 = phi i32 [ 0, %bb.cd ], [ 0, %.thread446 ], [ 0, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i ], [ 1, %bb.bv ], [ %.2134860, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.ti = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i.i246 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i246, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit
  %i.tj = load ptr, ptr %i.t, align 8
  %i.tk = ptrtoint ptr %i.tj to i64
  %i.tl = ptrtoint ptr %i.ti to i64
  %i.tm = sub i64 %i.tk, %i.tl
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.tm) #26
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
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 88 ; 2 uses
  %.not456 = icmp eq ptr %i.tn, %i.k
  br i1 %.not456, label %.thread452, label %bb.g

bb.ck:                                            ; preds = %.loopexit477, %.loopexit.split-lp478, %bb.bz, %bb.bs
  %.pn159 = phi { ptr, i32 } [ %.pn157, %bb.bs ], [ %i.sg, %bb.bz ], [ %lpad.loopexit479, %.loopexit477 ], [ %lpad.loopexit.split-lp480, %.loopexit.split-lp478 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.to = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i.i249 = icmp eq ptr %i.to, null
  br i1 %.not.i.i.i249, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tp = load ptr, ptr %i.t, align 8
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = ptrtoint ptr %i.to to i64
  %i.ts = sub i64 %i.tq, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %i.to, i64 noundef %i.ts) #26
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250: ; preds = %bb.cl, %bb.ck, %bb.al
  %.pn159.pn = phi { ptr, i32 } [ %i.ju, %bb.al ], [ %.pn159, %bb.ck ], [ %.pn159, %bb.cl ]
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
  %i.tt = icmp eq ptr %.pre767, %.pre768
  br i1 %i.tt, label %.loopexit482, label %bb.cp

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
  %i.tu = load ptr, ptr %1, align 8               ; 6 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8            ; 3 uses
  %.not459655 = icmp eq ptr %i.tu, %i.tw
  br i1 %.not459655, label %._crit_edge659, label %.lr.ph658

.lr.ph658:                                        ; preds = %bb.cu
  %18 = ptrtoaddr ptr %i.tw to i64
  %19 = ptrtoaddr ptr %i.tu to i64
  %i.tx = load double, ptr %9, align 8, !noalias !257 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.tz = load double, ptr %i.ty, align 8, !noalias !257 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ub = load double, ptr %i.ua, align 8, !noalias !257 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ud = load double, ptr %i.uc, align 8, !noalias !257 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.uf = load double, ptr %i.ue, align 8, !noalias !257 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.uh = load double, ptr %i.ug, align 8, !noalias !257 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.uj = load double, ptr %i.ui, align 8, !noalias !257 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ul = load double, ptr %i.uk, align 8, !noalias !257 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.un = load double, ptr %i.um, align 8, !noalias !257 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.up = load double, ptr %i.uo, align 8, !noalias !257 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ur = load double, ptr %i.uq, align 8, !noalias !257 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.ut = load double, ptr %i.us, align 8, !noalias !257 ; 2 uses
  %i.uu = add i64 %18, -24
  %i.uv = sub i64 %i.uu, %19                      ; 2 uses
  %i.uw = udiv i64 %i.uv, 24
  %i.ux = add nuw nsw i64 %i.uw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.uv, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph658
  %n.vec = and i64 %i.ux, 2305843009213693950     ; 3 uses
  %i.uy = mul i64 %n.vec, 24
  %i.uz = getelementptr i8, ptr %i.tu, i64 %i.uy
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.tx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1098 = insertelement <2 x double> poison, double %i.tz, i64 0
  %broadcast.splat1099 = shufflevector <2 x double> %broadcast.splatinsert1098, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1100 = insertelement <2 x double> poison, double %i.ub, i64 0
  %broadcast.splat1101 = shufflevector <2 x double> %broadcast.splatinsert1100, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1102 = insertelement <2 x double> poison, double %i.ud, i64 0
  %broadcast.splatinsert1104 = insertelement <2 x double> poison, double %i.uf, i64 0
  %broadcast.splat1105 = shufflevector <2 x double> %broadcast.splatinsert1104, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1106 = insertelement <2 x double> poison, double %i.uh, i64 0
  %broadcast.splat1107 = shufflevector <2 x double> %broadcast.splatinsert1106, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1108 = insertelement <2 x double> poison, double %i.uj, i64 0
  %broadcast.splat1109 = shufflevector <2 x double> %broadcast.splatinsert1108, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1110 = insertelement <2 x double> poison, double %i.ul, i64 0
  %broadcast.splatinsert1112 = insertelement <2 x double> poison, double %i.un, i64 0
  %broadcast.splat1113 = shufflevector <2 x double> %broadcast.splatinsert1112, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1114 = insertelement <2 x double> poison, double %i.up, i64 0
  %broadcast.splat1115 = shufflevector <2 x double> %broadcast.splatinsert1114, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1116 = insertelement <2 x double> poison, double %i.ur, i64 0
  %broadcast.splat1117 = shufflevector <2 x double> %broadcast.splatinsert1116, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1118 = insertelement <2 x double> poison, double %i.ut, i64 0
  %broadcast.splat1119 = shufflevector <2 x double> %broadcast.splatinsert1118, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.va = mul i64 %index, 24                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.tu, i64 %i.va ; 4 uses
  %i.vb = getelementptr i8, ptr %i.tu, i64 %i.va  ; 3 uses
  %next.gep1120 = getelementptr i8, ptr %i.vb, i64 24
  %i.vc = load double, ptr %next.gep, align 8, !noalias !257
  %i.vd = load double, ptr %next.gep1120, align 8, !noalias !257
  %i.ve = insertelement <2 x double> poison, double %i.vc, i64 0
  %i.vf = insertelement <2 x double> %i.ve, double %i.vd, i64 1 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.vh = getelementptr i8, ptr %i.vb, i64 32
  %i.vi = load double, ptr %i.vg, align 8, !noalias !257
  %i.vj = load double, ptr %i.vh, align 8, !noalias !257
  %i.vk = insertelement <2 x double> poison, double %i.vi, i64 0
  %i.vl = insertelement <2 x double> %i.vk, double %i.vj, i64 1 ; 3 uses
  %i.vm = fmul <2 x double> %broadcast.splat1099, %i.vl
  %i.vn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.vf, <2 x double> %i.vm)
  %i.vo = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.vp = getelementptr i8, ptr %i.vb, i64 40
  %i.vq = load double, ptr %i.vo, align 8, !noalias !257
  %i.vr = load double, ptr %i.vp, align 8, !noalias !257
  %i.vs = insertelement <2 x double> poison, double %i.vq, i64 0
  %i.vt = insertelement <2 x double> %i.vs, double %i.vr, i64 1 ; 3 uses
  %i.vu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1101, <2 x double> %i.vt, <2 x double> %i.vn)
  %i.vv = fmul <2 x double> %i.vl, %broadcast.splat1107
  %i.vw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1105, <2 x double> %i.vf, <2 x double> %i.vv)
  %i.vx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1109, <2 x double> %i.vt, <2 x double> %i.vw)
  %i.vy = fmul <2 x double> %i.vl, %broadcast.splat1115
  %i.vz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1113, <2 x double> %i.vf, <2 x double> %i.vy)
  %i.wa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1117, <2 x double> %i.vt, <2 x double> %i.vz)
  %i.wb = fadd <2 x double> %broadcast.splat1119, %i.wa
  %i.wc = shufflevector <2 x double> %i.vu, <2 x double> %broadcast.splatinsert1110, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.wd = shufflevector <2 x double> %broadcast.splatinsert1102, <2 x double> %i.vx, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.we = fadd <4 x double> %i.wc, %i.wd
  %i.wf = shufflevector <2 x double> %i.wb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.we, <4 x double> %i.wf, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %next.gep, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.wg = icmp eq i64 %index.next, %n.vec
  br i1 %i.wg, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ux, %n.vec
  br i1 %cmp.n, label %._crit_edge659, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph658, %middle.block
  %.sroa.0288.0656.ph = phi ptr [ %i.tu, %.lr.ph658 ], [ %i.uz, %middle.block ]
  br label %scalar.ph

._crit_edge659:                                   ; preds = %scalar.ph, %middle.block, %bb.cu
  br i1 %3, label %bb.cv, label %.loopexit482

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0288.0656 = phi ptr [ %i.wy, %scalar.ph ], [ %.sroa.0288.0656.ph, %scalar.ph.preheader ] ; 5 uses
  %i.wh = load double, ptr %.sroa.0288.0656, align 8, !noalias !257 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.0288.0656, i64 8 ; 2 uses
  %i.wj = load double, ptr %i.wi, align 8, !noalias !257 ; 3 uses
  %i.wk = fmul double %i.tz, %i.wj
  %i.wl = call double @llvm.fmuladd.f64(double %i.tx, double %i.wh, double %i.wk)
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0288.0656, i64 16 ; 2 uses
  %i.wn = load double, ptr %i.wm, align 8, !noalias !257 ; 3 uses
  %i.wo = call double @llvm.fmuladd.f64(double %i.ub, double %i.wn, double %i.wl)
  %i.wp = fadd double %i.wo, %i.ud
  %i.wq = fmul double %i.wj, %i.uh
  %i.wr = call double @llvm.fmuladd.f64(double %i.uf, double %i.wh, double %i.wq)
  %i.ws = call double @llvm.fmuladd.f64(double %i.uj, double %i.wn, double %i.wr)
  %i.wt = fadd double %i.ul, %i.ws
  %i.wu = fmul double %i.wj, %i.up
  %i.wv = call double @llvm.fmuladd.f64(double %i.un, double %i.wh, double %i.wu)
  %i.ww = call double @llvm.fmuladd.f64(double %i.ur, double %i.wn, double %i.wv)
  %i.wx = fadd double %i.ut, %i.ww
  store double %i.wp, ptr %.sroa.0288.0656, align 8
  store double %i.wt, ptr %i.wi, align 8
  store double %i.wx, ptr %i.wm, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.0288.0656, i64 24 ; 2 uses
  %.not459 = icmp eq ptr %i.wy, %i.tw
  br i1 %.not459, label %._crit_edge659, label %scalar.ph, !llvm.loop !261

bb.cv:                                            ; preds = %._crit_edge659
  %i.wz = invoke noundef i64 @_ZN6Assimp3IFC12CloseWindowsERSt6vectorINS0_22ProjectedWindowContourESaIS2_EERK12aiMatrix4x4tIdERS1_IS1_IPNS0_11TempOpeningESaISB_EESaISD_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.loopexit482 unwind label %bb.f ; 0 uses

.loopexit482:                                     ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, %._crit_edge659, %bb.cv, %.thread452
  %.10 = phi i1 [ true, %._crit_edge659 ], [ false, %.thread452 ], [ true, %bb.cv ], [ %.8, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760, null
  br i1 %.not.i.i.i255, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %.loopexit482
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.427 = load ptr, ptr %.sroa.18, align 8
  %i.xa = ptrtoint ptr %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.427 to i64
  %i.xb = ptrtoint ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760 to i64
  %i.xc = sub i64 %i.xa, %i.xb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760, i64 noundef %i.xc) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit, %.loopexit482, %bb.cw
  %.10905 = phi i1 [ %.10, %bb.cw ], [ %.10, %.loopexit482 ], [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  %i.xd = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i256 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit
  %i.xe = load ptr, ptr %..sroa.gep418, align 8
  %i.xf = ptrtoint ptr %i.xe to i64
  %i.xg = ptrtoint ptr %i.xd to i64
  %i.xh = sub i64 %i.xf, %i.xg
  call void @_ZdlPvm(ptr noundef nonnull %i.xd, i64 noundef %i.xh) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.xi = load ptr, ptr %11, align 8              ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8            ; 2 uses
  %.not4.i.i.i258 = icmp eq ptr %i.xi, %i.xk
  br i1 %.not4.i.i.i258, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i259

.lr.ph.i.i.i259:                                  ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i
  %.05.i.i.i260 = phi ptr [ %i.yb, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i ], [ %i.xi, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257 ] ; 5 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 56
  %i.xm = load ptr, ptr %i.xl, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i261 = icmp eq ptr %i.xm, null
  br i1 %.not.i.i.i.i.i.i.i261, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i259
  %i.xn = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 88
  %i.xo = load ptr, ptr %i.xn, align 8            ; 2 uses
  %i.xp = ptrtoint ptr %i.xo to i64
  %i.xq = ptrtoint ptr %i.xm to i64
  %i.xr = sub i64 %i.xp, %i.xq                    ; 2 uses
  %i.xs = ashr exact i64 %i.xr, 3
  %i.xt = sub nsw i64 0, %i.xs
  %i.xu = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.xt
  call void @_ZdlPvm(ptr noundef %i.xu, i64 noundef %i.xr) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i:   ; preds = %bb.cy, %.lr.ph.i.i.i259
  %i.xv = load ptr, ptr %.05.i.i.i260, align 8    ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_:bb.a
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
  %i.d = load ptr, ptr %i.c, align 8              ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
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
  %4 = add i64 %i.f, -4
  %5 = sub i64 %4, %i.j                           ; 2 uses
  %i.bg = lshr i64 %5, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %5, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader153, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bh, 9223372036854775800  ; 3 uses
  %i.bi = shl i64 %n.vec115, 2
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bk = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4
  store <4 x i32> %broadcast.splat117, ptr %i.bl, align 4
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bm, label %middle.block122, label %vector.body118, !llvm.loop !502

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bh, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader153

.lr.ph.i.i.i71.preheader153:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bj, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader153, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bn, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader153 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bn, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !503

bb.q:                                             ; preds = %bb.b
  %i.bo = load ptr, ptr %0, align 8               ; 5 uses
  %i.bp = ptrtoint ptr %i.bo to i64               ; 3 uses
  %i.bq = sub i64 %i.f, %i.bp
  %i.br = ashr exact i64 %i.bq, 2                 ; 4 uses
  %i.bs = sub nsw i64 2305843009213693951, %i.br
  %i.bt = icmp ult i64 %i.bs, %2
  br i1 %i.bt, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %2)
  %i.bu = add nsw i64 %.sroa.speculated.i, %i.br  ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.br
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 2305843009213693951)
  %i.bx = select i1 %i.bv, i64 2305843009213693951, i64 %i.bw ; 3 uses
  %i.by = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bz = sub i64 %i.by, %i.bp                    ; 4 uses
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ca = shl nuw nsw i64 %i.bx, 2
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = phi ptr [ %i.cb, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bz ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i75
  %i.cf = load i32, ptr %3, align 4               ; 2 uses
  %i.cg = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.cg, 28
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %bb.t
  %n.vec143 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cj = shl i64 %n.vec143, 2
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.cj
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.cl = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %i.cd, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep148, i64 16
  store <4 x i32> %broadcast.splat145, ptr %next.gep148, align 4
  store <4 x i32> %broadcast.splat145, ptr %i.cm, align 4
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cn, label %middle.block150, label %vector.body146, !llvm.loop !504

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.ci, %n.vec143
  br i1 %cmp.n151, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block150
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cd, %bb.t ], [ %i.ck, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.cf, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.co, %i.ce
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !505

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block150
  %i.cp = icmp sgt i64 %i.bz, 4
  br i1 %i.cp, label %bb.u, label %bb.v, !prof !118

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cc, ptr align 4 %i.bo, i64 %i.bz, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cq = icmp eq i64 %i.bz, 4
  br i1 %i.cq, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cr = load i32, ptr %i.bo, align 4
  store i32 %i.cr, ptr %i.cc, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %2 ; 3 uses
  %i.ct = sub i64 %i.f, %i.by                     ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, 4
  br i1 %i.cu, label %bb.x, label %bb.y, !prof !118

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr align 4 %1, i64 %i.ct, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cv = icmp eq i64 %i.ct, 4
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = load i32, ptr %1, align 4
  store i32 %i.cw, ptr %i.cs, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %.not.i82 = icmp eq ptr %i.bo, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = sub i64 %i.e, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cy) #26
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.cc, ptr %0, align 8
  store ptr %i.cx, ptr %i.c, align 8
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bx
  store ptr %i.cz, ptr %i.a, align 8
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
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i, label %bb.c
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag:bb.a
bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN6Assimp3IFC11TempOpeningES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPPN6Assimp3IFC11TempOpeningES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load ptr, ptr %1, align 8
  store ptr %i.ae, ptr %i.ad, align 8
  br label %_ZSt13move_backwardIPPN6Assimp3IFC11TempOpeningES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPPN6Assimp3IFC11TempOpeningES4_ET0_T_S6_S5_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !118

bb.k:                                             ; preds = %_ZSt13move_backwardIPPN6Assimp3IFC11TempOpeningES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPPN6Assimp3IFC11TempOpeningES4_ET0_T_S6_S5_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %2, align 8
  store ptr %i.ag, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !118

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.ai, align 8
  store ptr %i.an, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = sub nuw nsw i64 %i.d, %i.n
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao ; 3 uses
  store ptr %i.aq, ptr %i.g, align 8
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !118

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPPN6Assimp3IFC11TempOpeningES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPPN6Assimp3IFC11TempOpeningES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %1, align 8
  store ptr %i.as, ptr %i.aq, align 8
  br label %_ZSt22__uninitialized_move_aIPPN6Assimp3IFC11TempOpeningES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

_ZSt22__uninitialized_move_aIPPN6Assimp3IFC11TempOpeningES4_SaIS3_EET0_T_S7_S6_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = load ptr, ptr %i.g, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !118

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN6Assimp3IFC11TempOpeningES4_SaIS3_EET0_T_S7_S6_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN6Assimp3IFC11TempOpeningES4_SaIS3_EET0_T_S7_S6_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load ptr, ptr %2, align 8
  store ptr %i.ax, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8               ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #24
  unreachable

_ZNKSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #25
  br label %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !118

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8
  store ptr %i.bp, ptr %i.bk, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !118

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %2, align 8
  store ptr %i.bt, ptr %i.bq, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !118

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load ptr, ptr %1, align 8
  store ptr %i.by, ptr %i.bu, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #26
  br label %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8
  store ptr %i.bz, ptr %i.g, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPN6Assimp3IFC11TempOpeningESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector2tIdESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = ptrtoaddr ptr %i.c to i64
  %3 = ptrtoaddr ptr %i.b to i64
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i, !prof !233

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %3, -16
  %i.q = sub i64 %i.p, %2
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #26
  br label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector2tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 16
  br i1 %i.y, label %bb.h, label %bb.i, !prof !118

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector2tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 16
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector2tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector2tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.x, 16
  br i1 %i.aa, label %bb.l, label %bb.m, !prof !118

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIP10aiVector2tIdES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %i.x, 16
  br i1 %i.ab, label %bb.n, label %_ZSt4copyIP10aiVector2tIdES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %_ZSt4copyIP10aiVector2tIdES2_ET0_T_S4_S3_.exit

_ZSt4copyIP10aiVector2tIdES2_ET0_T_S4_S3_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ae = load ptr, ptr %0, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector2tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP10aiVector2tIdES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ad, %_ZSt4copyIP10aiVector2tIdES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIP10aiVector2tIdES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector2tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !532

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector2tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIP10aiVector2tIdES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector2tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext i32 %i.e to i64
  %i.l = add nsw i64 %i.j, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = shl nsw i64 %i.r, 3
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %bb.c, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %bb.c
  %i.u = ashr exact i64 %i.r, 3
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.v
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.r) #26
  store ptr null, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.51.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  store ptr null, ptr %i.m, align 8
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  %.pre32 = load i32, ptr %i.d, align 8           ; 2 uses
  %.pre33 = load ptr, ptr %1, align 8             ; 2 uses
  %.pre37 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre38 = ptrtoint ptr %.pre33 to i64           ; 2 uses
  %.pre40 = sub i64 %.pre37, %.pre38
  %.pre42 = shl nsw i64 %.pre40, 3
  %.pre44 = zext i32 %.pre32 to i64
  %.pre46 = add nsw i64 %.pre42, %.pre44          ; 2 uses
  %.not.i25 = icmp eq i64 %.pre46, 0
  br i1 %.not.i25, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread: ; preds = %bb.c, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.pre-phi4760 = phi i64 [ %.pre46, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.l, %bb.c ] ; 4 uses
  %i.x = add i64 %.pre-phi4760, 63                ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 2305843009213693944
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #25 ; 4 uses
  %i.ab = lshr i64 %i.x, 6
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  store ptr %i.ac, ptr %i.m, align 8
  store ptr %i.aa, ptr %0, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.ad = sdiv i64 %.pre-phi4760, 64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  %i.af = and i64 %.pre-phi4760, -9223372036854775745
  %i.ag = icmp ugt i64 %i.af, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.ag, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.ae, i64 %storemerge.idx.i.i.i.i
  %i.ah = trunc i64 %.pre-phi4760 to i32
  %i.ai = and i32 %i.ah, 63
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %storemerge.i.i.i.i, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ai, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.pre34 = load ptr, ptr %1, align 8             ; 2 uses
  %.pre35 = load ptr, ptr %i.b, align 8           ; 2 uses
  %.pre36 = load i32, ptr %i.d, align 8
  %.pre48 = ptrtoint ptr %.pre35 to i64
  %.pre50 = ptrtoint ptr %.pre34 to i64
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit:       ; preds = %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, %bb.b
  %.pre-phi51 = phi i64 [ %.pre50, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre38, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.h, %bb.b ]
  %.pre-phi49 = phi i64 [ %.pre48, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre37, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.g, %bb.b ]
  %i.ak = phi ptr [ %i.aa, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ null, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.o, %bb.b ] ; 3 uses
  %i.al = phi i32 [ %.pre36, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre32, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.e, %bb.b ] ; 2 uses
  %i.am = phi ptr [ %.pre35, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.c, %bb.b ]
  %i.an = phi ptr [ %.pre34, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre33, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.f, %bb.b ] ; 2 uses
  %i.ao = sub i64 %.pre-phi49, %.pre-phi51        ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 8
  br i1 %i.ap, label %bb.d, label %bb.e, !prof !118

bb.d:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ak, ptr align 8 %i.an, i64 %i.ao, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.e:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  %i.aq = icmp eq i64 %i.ao, 8
  br i1 %i.aq, label %bb.f, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load i64, ptr %i.an, align 8
end_hunk_3
