inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZN6Assimp3IFC8QuadrifyERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERNS0_8TempMeshE:bb.a
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %i.n, align 8
  store ptr %i.q, ptr %i.i, align 8
  store ptr %i.r, ptr %2, align 8
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit, label %bb.l

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
  %i.bl = phi ptr [ %i.ef, %._crit_edge.loopexit ], [ %.pre175, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.bm = phi ptr [ %.pre174, %._crit_edge.loopexit ], [ %i.bd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 5 uses
  %i.bn = phi ptr [ %.pre173, %._crit_edge.loopexit ], [ %i.be, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bo = phi ptr [ %.pre172, %._crit_edge.loopexit ], [ %i.be, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %.0.lcssa = phi double [ %i.cw, %._crit_edge.loopexit ], [ 0.000000e+00, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bp = phi <2 x double> [ %i.dk, %._crit_edge.loopexit ], [ splat (double -1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bq = phi <2 x double> [ %i.di, %._crit_edge.loopexit ], [ splat (double 1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 5 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 24
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fsub <2 x double> %i.bp, %i.bq          ; 4 uses
  %.not136155 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not136155, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %._crit_edge
  %i.bx = ptrtoint ptr %i.bm to i64
  %i.by = ptrtoint ptr %i.bl to i64
  %i.bz = add i64 %i.by, -16
  %i.ca = sub i64 %i.bz, %i.bx
  %i.cb = lshr i64 %i.ca, 4                       ; 2 uses
  %6 = add nuw nsw i64 %i.cb, 1                   ; 2 uses
  %min.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.iters.check, label %.lr.ph158.preheader217, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph158.preheader
  %n.vec = and i64 %6, 2305843009213693950        ; 3 uses
  %7 = shl i64 %n.vec, 4
  %8 = getelementptr i8, ptr %i.bm, i64 %7
  %broadcast.splat = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat211 = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat213 = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat215 = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.cc ; 2 uses
  %wide.vec = load <4 x double>, ptr %next.gep, align 8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec216 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %9 = fsub <2 x double> %strided.vec, %broadcast.splat
  %10 = fdiv <2 x double> %9, %broadcast.splat211 ; 2 uses
  %i.cd = fsub <2 x double> %strided.vec216, %broadcast.splat213
  %i.ce = fdiv <2 x double> %i.cd, %broadcast.splat215 ; 2 uses
  %11 = fcmp olt <2 x double> %10, zeroinitializer
  %12 = select <2 x i1> %11, <2 x double> zeroinitializer, <2 x double> %10 ; 2 uses
  %i.cf = fcmp olt <2 x double> %i.ce, zeroinitializer
  %13 = select <2 x i1> %i.cf, <2 x double> zeroinitializer, <2 x double> %i.ce ; 2 uses
  %14 = fcmp ogt <2 x double> %12, splat (double 1.000000e+00)
  %i.cg = select <2 x i1> %14, <2 x double> splat (double 1.000000e+00), <2 x double> %12
  %i.ch = fcmp ogt <2 x double> %13, splat (double 1.000000e+00)
  %i.ci = select <2 x i1> %i.ch, <2 x double> splat (double 1.000000e+00), <2 x double> %13
  %interleaved.vec = shufflevector <2 x double> %i.cg, <2 x double> %i.ci, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %next.gep, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge159, label %.lr.ph158.preheader217

.lr.ph158.preheader217:                           ; preds = %.lr.ph158.preheader, %middle.block
  %.sroa.078.0156.ph = phi ptr [ %i.bm, %.lr.ph158.preheader ], [ %8, %middle.block ]
  br label %.lr.ph158

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %i.ck = phi ptr [ %i.ef, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %.pre175, %.lr.ph.preheader ] ; 5 uses
  %.0150 = phi double [ %i.cw, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.097.0143 = phi ptr [ %i.eg, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %i.bf, %.lr.ph.preheader ] ; 4 uses
  %i.cl = phi <2 x double> [ %i.dk, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double -1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.cm = phi <2 x double> [ %i.di, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double 1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.cn = load double, ptr %.sroa.097.0143, align 8, !noalias !225 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 8
  %i.cp = load double, ptr %i.co, align 8, !noalias !225 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 16
  %i.cr = load double, ptr %i.cq, align 8, !noalias !225 ; 2 uses
  %i.cs = fmul double %i.v, %i.cp
  %i.ct = call double @llvm.fmuladd.f64(double %i.bg, double %i.cn, double %i.cs)
  %i.cu = call double @llvm.fmuladd.f64(double %i.bh, double %i.cr, double %i.ct)
  %i.cv = fadd double %i.cu, 0.000000e+00
  %i.cw = fadd double %.0150, %i.cv               ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.bi, %i.cy
  %i.da = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.db, <2 x double> %i.cz)
  %i.dd = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.de, <2 x double> %i.dc) ; 3 uses
  %i.dg = fadd <2 x double> %i.df, zeroinitializer ; 4 uses
  %i.dh = fcmp olt <2 x double> %i.cm, %i.df
  %i.di = select <2 x i1> %i.dh, <2 x double> %i.cm, <2 x double> %i.dg ; 2 uses
  %i.dj = fcmp olt <2 x double> %i.df, %i.cl
  %i.dk = select <2 x i1> %i.dj, <2 x double> %i.cl, <2 x double> %i.dg ; 2 uses
  %i.dl = load ptr, ptr %i.al, align 8
  %.not.i = icmp eq ptr %i.ck, %i.dl
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store <2 x double> %i.dg, ptr %i.ck, align 8
  %i.dm = load ptr, ptr %.phi.trans.insert, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  store ptr %i.dn, ptr %.phi.trans.insert, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.do = load ptr, ptr %1, align 8               ; 5 uses
  %i.dp = ptrtoint ptr %i.ck to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 4 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775792
  br i1 %i.ds, label %bb.k, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.dt = ashr exact i64 %i.dr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = call i64 @llvm.umin.i64(i64 %i.du, i64 576460752303423487)
  %i.dx = select i1 %i.dv, i64 576460752303423487, i64 %i.dw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dy = shl nuw nsw i64 %i.dx, 4
  %i.dz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #25 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dr
  store <2 x double> %i.dg, ptr %i.ea, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.do, %i.ck
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %i.dz, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %i.do, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !228
  %i.eb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, %i.ck
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dz, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ec, %.lr.ph.i.i.i.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dr) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.dz, ptr %1, align 8
  store ptr %i.ed, ptr %.phi.trans.insert, align 8
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.ee, ptr %i.al, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ef = phi ptr [ %i.dn, %bb.i ], [ %i.ed, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.eg, %i.be
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge159:                                   ; preds = %.lr.ph158, %middle.block, %._crit_edge
  %i.eh = fdiv <2 x double> splat (double 1.000000e+00), %i.bw ; 4 uses
  %i.ei = fneg <2 x double> %i.bq
  %i.ej = fneg double %.0.lcssa
  %i.ek = fdiv double %i.ej, %i.bv                ; 4 uses
  %i.el = extractelement <2 x double> %i.eh, i64 0
  %i.em = call double @llvm.fmuladd.f64(double %i.el, double 0.000000e+00, double 0.000000e+00)
  %i.en = extractelement <2 x double> %i.eh, i64 1
  %i.eo = fmul double %i.en, 0.000000e+00
  %i.ep = fmul <2 x double> %i.eh, %i.ei          ; 2 uses
  %i.eq = shufflevector <2 x double> %i.eh, <2 x double> poison, <6 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.er = shufflevector <6 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double poison, double poison, double poison>, <6 x double> %i.eq, <6 x i32> <i32 0, i32 1, i32 2, i32 9, i32 10, i32 11>
  %i.es = fmul <6 x double> %i.s, %i.er           ; 4 uses
  %i.et = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.eo, i64 1
  %i.ev = fadd <2 x double> %i.eu, zeroinitializer
  %i.ew = fadd <2 x double> %i.ep, %i.ev
  %i.ex = shufflevector <2 x double> %i.ep, <2 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 poison, i32 poison>
  %i.ey = shufflevector <6 x double> %i.u, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.ez = shufflevector <6 x double> %i.p, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fa = shufflevector <6 x double> %i.eq, <6 x double> <double poison, double poison, double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.fb = shufflevector <6 x double> %i.es, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fc = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ez, <8 x double> %i.fa, <8 x double> %i.fb)
  %i.fd = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ey, <8 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double undef, double undef>, <8 x double> %i.fc)
  %i.fe = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ex, <8 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double undef, double undef>, <8 x double> %i.fd)
  %i.ff = shufflevector <2 x double> %i.ew, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = extractelement <3 x double> %i.o, i64 0
  %i.fh = extractelement <6 x double> %i.es, i64 0
  %i.fi = call double @llvm.fmuladd.f64(double %i.fg, double 0.000000e+00, double %i.fh) ; 2 uses
  %i.fj = extractelement <3 x double> %i.t, i64 0 ; 2 uses
  %i.fk = fadd double %i.fi, %i.fj
  %i.fl = call double @llvm.fmuladd.f64(double %i.ek, double 0.000000e+00, double %i.fk)
  %i.fm = extractelement <6 x double> %i.es, i64 1
  %i.fn = call double @llvm.fmuladd.f64(double %i.q, double 0.000000e+00, double %i.fm) ; 2 uses
  %i.fo = fadd double %i.fn, %i.v
  %i.fp = call double @llvm.fmuladd.f64(double %i.ek, double 0.000000e+00, double %i.fo)
  %i.fq = extractelement <3 x double> %i.o, i64 2
  %i.fr = extractelement <6 x double> %i.es, i64 2
  %i.fs = call double @llvm.fmuladd.f64(double %i.fq, double 0.000000e+00, double %i.fr) ; 2 uses
  %i.ft = extractelement <3 x double> %i.t, i64 2 ; 2 uses
  %i.fu = fadd double %i.fs, %i.ft
  %i.fv = call double @llvm.fmuladd.f64(double %i.ek, double 0.000000e+00, double %i.fu)
  %i.fw = call double @llvm.fmuladd.f64(double %i.fj, double 0.000000e+00, double %i.fi)
  %i.fx = call double @llvm.fmuladd.f64(double %i.v, double 0.000000e+00, double %i.fn)
  %i.fy = fadd double %i.fx, 0.000000e+00
  %i.fz = call double @llvm.fmuladd.f64(double %i.ft, double 0.000000e+00, double %i.fs)
  %i.ga = fadd double %i.fz, 0.000000e+00
  %i.gb = shufflevector <8 x double> %i.fe, <8 x double> %i.ff, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 3, i32 4, i32 5, i32 9>
  store <8 x double> %i.gb, ptr %0, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.fl, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.fp, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.fv, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gc = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.fw, i64 1
  %i.ge = fadd <2 x double> %i.gd, zeroinitializer
  store <2 x double> %i.ge, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.fy, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ga, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.m

.lr.ph158:                                        ; preds = %.lr.ph158.preheader217, %.lr.ph158
  %.sroa.078.0156 = phi ptr [ %i.gm, %.lr.ph158 ], [ %.sroa.078.0156.ph, %.lr.ph158.preheader217 ] ; 3 uses
  %i.gf = load <2 x double>, ptr %.sroa.078.0156, align 8
  %i.gg = fsub <2 x double> %i.gf, %i.bq
  %i.gh = fdiv <2 x double> %i.gg, %i.bw          ; 2 uses
  %i.gi = fcmp olt <2 x double> %i.gh, zeroinitializer
  %i.gj = select <2 x i1> %i.gi, <2 x double> zeroinitializer, <2 x double> %i.gh ; 2 uses
  %i.gk = fcmp ogt <2 x double> %i.gj, splat (double 1.000000e+00)
  %i.gl = select <2 x i1> %i.gk, <2 x double> splat (double 1.000000e+00), <2 x double> %i.gj
  store <2 x double> %i.gl, ptr %.sroa.078.0156, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.078.0156, i64 16 ; 2 uses
  %.not136 = icmp eq ptr %i.gm, %i.bl
  br i1 %.not136, label %._crit_edge159, label %.lr.ph158, !llvm.loop !232

bb.m:                                             ; preds = %bb.d, %._crit_edge159, %bb.b
  ret void
}

declare void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind writable sret(%class.aiMatrix3x3t) align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.91", align 8    ; 14 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 10 uses
  %7 = alloca %class.aiVector3t, align 8          ; 9 uses
  %8 = alloca %class.aiMatrix4x4t, align 8        ; 10 uses
  %9 = alloca %class.aiMatrix4x4t, align 8        ; 17 uses
  %10 = alloca %class.aiMatrix4x4t, align 8       ; 5 uses
  %11 = alloca %"class.std::vector.15", align 8   ; 22 uses
  %12 = alloca %"class.std::vector.5", align 8    ; 21 uses
  %.sroa.0419 = alloca ptr, align 8               ; 10 uses
  %.sroa.11424 = alloca ptr, align 8              ; 9 uses
  %.sroa.18 = alloca ptr, align 8                 ; 9 uses
  %13 = alloca %"struct.std::pair.3", align 16    ; 13 uses
  %14 = alloca %"class.std::vector.96", align 8   ; 11 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %15 = alloca %"class.std::vector.43", align 8   ; 19 uses
  %16 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i8 1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %..sroa.gep412 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 10 uses
  %..sroa.gep418 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  invoke void @_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !range !143, !noundef !144
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.de

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(128) %8, i64 128, i1 false)
  %i.h = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN12aiMatrix4x4tIdE7InverseEv(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %_ZN10aiVector3tIdE9NormalizeEv.exit unwind label %bb.e

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  store ptr null, ptr %.sroa.0419, align 8
  store ptr null, ptr %.sroa.11424, align 8
  store ptr null, ptr %.sroa.18, align 8
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not456651 = icmp eq ptr %i.i, %i.k
  br i1 %.not456651, label %.loopexit482, label %.lr.ph654

.lr.ph654:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.sroa.11360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %.sroa.11354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.dd

bb.f:                                             ; preds = %bb.cv, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

bb.g:                                             ; preds = %.lr.ph654, %bb.cj
  %.0653 = phi i1 [ undef, %.lr.ph654 ], [ %.8, %bb.cj ] ; 6 uses
  %.sroa.0406.0652 = phi ptr [ %i.i, %.lr.ph654 ], [ %i.tn, %bb.cj ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 8
  %.sroa.0385.0.copyload = load double, ptr %i.ab, align 8 ; 3 uses
  %.sroa.10390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 16
  %.sroa.10390.0.copyload = load double, ptr %.sroa.10390.0..sroa_idx, align 8 ; 3 uses
  %.sroa.15396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 24
  %.sroa.15396.0.copyload = load double, ptr %.sroa.15396.0..sroa_idx, align 8 ; 3 uses
  %i.ac = fmul double %.sroa.10390.0.copyload, %.sroa.10390.0.copyload
  %i.ad = call double @llvm.fmuladd.f64(double %.sroa.0385.0.copyload, double %.sroa.0385.0.copyload, double %i.ac)
  %i.ae = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0.copyload, double %.sroa.15396.0.copyload, double %i.ad) ; 2 uses
  %i.af = fcmp ogt double %i.ae, 1.000000e-10
  br i1 %i.af, label %_ZN10aiVector3tIdEdVEd.exit.i180, label %_ZN10aiVector3tIdE9NormalizeEv.exit182

_ZN10aiVector3tIdEdVEd.exit.i180:                 ; preds = %bb.g
  %sqrt.i.i181 = call noundef double @llvm.sqrt.f64(double %i.ae)
  %i.ag = fdiv double 1.000000e+00, %sqrt.i.i181  ; 3 uses
  %i.ah = fmul double %.sroa.0385.0.copyload, %i.ag
  %i.ai = fmul double %.sroa.10390.0.copyload, %i.ag
  %i.aj = fmul double %.sroa.15396.0.copyload, %i.ag
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit182

_ZN10aiVector3tIdE9NormalizeEv.exit182:           ; preds = %bb.g, %_ZN10aiVector3tIdEdVEd.exit.i180
  %.sroa.0385.0 = phi double [ %i.ah, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.10390.0 = phi double [ %i.ai, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.15396.0 = phi double [ %i.aj, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not457 = icmp eq ptr %i.an, null
  br i1 %.not457, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %i.ao = fmul double %.sroa.10390.0, %.sroa.10390.0
  %i.ap = call double @llvm.fmuladd.f64(double %.sroa.0385.0, double %.sroa.0385.0, double %i.ao)
  %i.aq = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0, double %.sroa.15396.0, double %i.ap)
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.as = load double, ptr %7, align 8
  %i.at = load double, ptr %i.l, align 8
  %i.au = fmul double %.sroa.10390.0, %i.at
  %i.av = call double @llvm.fmuladd.f64(double %.sroa.0385.0, double %i.as, double %i.au)
  %i.aw = load double, ptr %i.m, align 8
  %i.ax = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0, double %i.aw, double %i.av)
  %i.ay = call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp ogt double %i.ay, 9.000000e-01
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %.0144 = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 2 uses
  %.0143 = phi ptr [ %i.an, %bb.j ], [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0143, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = load ptr, ptr %.0143, align 8           ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i, label %.noexc183, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = sdiv exact i64 %i.bf, 24
  %i.bh = icmp ugt i64 %i.bg, 384307168202282325
  br i1 %i.bh, label %.noexc.i.i, label %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i, !prof !233

.noexc.i.i:                                       ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %.loopexit.split-lp468

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

end_hunk_0
