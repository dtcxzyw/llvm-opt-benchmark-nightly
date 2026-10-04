Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCBoolean?download=true
inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = icmp ult i64 %i.df, %i.cx
  br i1 %i.dg, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.de
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #23
          to label %.noexc252 unwind label %bb.af ; 4 uses

.noexc252:                                        ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.dm = load ptr, ptr %1, align 8               ; 5 uses
  %i.dn = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dm, %i.dn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc252, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %i.dl, %.noexc252 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.dm, %.noexc252 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !191
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.dn
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc252
  %.not.i8.i = icmp eq ptr %i.dm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.dq = load ptr, ptr %i.da, align 8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dm to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dt) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.x, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.dl, ptr %1, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store ptr %i.du, ptr %i.dh, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.cx
  store ptr %i.dv, ptr %i.da, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.dz = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp ugt i64 %i.ec, 9223372036854775804
  br i1 %i.ed, label %.invoke, label %bb.y

.invoke:                                          ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit, %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
          to label %.cont unwind label %bb.af

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = load ptr, ptr %i.cr, align 8
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = icmp ult i64 %i.ej, %i.ec
  br i1 %i.ek, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.y
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %i.en, %i.ei
  %i.ep = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #23
          to label %.noexc255 unwind label %bb.af ; 4 uses

.noexc255:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.eq = load ptr, ptr %i.cr, align 8            ; 4 uses
  %i.er = load ptr, ptr %i.el, align 8
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.eu = sub i64 %i.es, %i.et                    ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, 0
  br i1 %i.ev, label %bb.z, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.z:                                             ; preds = %.noexc255
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr align 4 %i.eq, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.z, %.noexc255
  %.not.i8.i253 = icmp eq ptr %i.eq, null
  br i1 %.not.i8.i253, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ew = load ptr, ptr %i.ee, align 8
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = sub i64 %i.ex, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ey) #24
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.ep, ptr %i.cr, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo
  store ptr %i.ez, ptr %i.el, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ec
  store ptr %i.fa, ptr %i.ee, align 8
  %.pre1070 = load ptr, ptr %i.dw, align 8
  %.pre1071 = load ptr, ptr %i.dx, align 8
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.y
  %i.fb = phi ptr [ %.pre1071, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.dy, %bb.y ] ; 2 uses
  %i.fc = phi ptr [ %.pre1070, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.dz, %bb.y ] ; 2 uses
  %.not769976 = icmp eq ptr %i.fc, %i.fb
  br i1 %.not769976, label %._crit_edge980, label %.lr.ph979

.lr.ph979:                                        ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.gep711 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %.sroa.gep712 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 12 uses
  %.sroa.gep713 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %.sroa.gep714 = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 10 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 11 uses
  %.sroa.0547.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0547, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph979, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit406
  %.0194978 = phi i32 [ 0, %.lr.ph979 ], [ %i.asb, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit406 ] ; 2 uses
  %.sroa.0733.0977 = phi ptr [ %i.fc, %.lr.ph979 ], [ %i.arz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit406 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ge = zext i32 %.0194978 to i64
  %i.gf = load ptr, ptr %2, align 8
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %i.ge ; 7 uses
  %i.gh = load i32, ptr %.sroa.0733.0977, align 4 ; 2 uses
  %i.gi = zext i32 %i.gh to i64                   ; 3 uses
  %.not205 = icmp eq i32 %i.gh, 0
  br i1 %.not205, label %.critedge238thread-pre-split, label %bb.ag

bb.ac:                                            ; preds = %bb.r
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ad:                                            ; preds = %bb.t, %bb.s
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ae:                                            ; preds = %bb.u
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.af:                                            ; preds = %.invoke, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %12, ptr noundef nonnull %i.gg, i64 noundef %i.gi, i1 noundef zeroext true)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gn = load double, ptr %i.fd, align 16
  %i.go = load double, ptr %i.r, align 16         ; 2 uses
  %i.gp = load <2 x double>, ptr %i.gg, align 8, !noalias !13
  %i.gq = load <2 x double>, ptr %4, align 16, !noalias !13
  %i.gr = fsub <2 x double> %i.gp, %i.gq          ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gt = load double, ptr %i.gs, align 8, !noalias !13
  %i.gu = load double, ptr %i.fe, align 16, !noalias !13
  %i.gv = fsub double %i.gt, %i.gu
  %i.gw = load <2 x double>, ptr %12, align 16    ; 2 uses
  %i.gx = load <2 x double>, ptr %5, align 16     ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gz = shufflevector <2 x double> %i.gw, <2 x double> %i.gr, <2 x i32> <i32 1, i32 3>
  %i.ha = fmul <2 x double> %i.gy, %i.gz
  %i.hb = shufflevector <2 x double> %i.gw, <2 x double> %i.gr, <2 x i32> <i32 0, i32 2>
  %i.hc = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.hc, <2 x double> %i.ha) ; 2 uses
  %19 = extractelement <2 x double> %i.hd, i64 0
  %20 = call noundef double @llvm.fmuladd.f64(double %i.gn, double %i.go, double %19)
  %21 = call noundef double @llvm.fabs.f64(double %20)
  %22 = fcmp ogt double %21, 9.999000e-01
  %i.he = extractelement <2 x double> %i.hd, i64 1
  %23 = call noundef double @llvm.fmuladd.f64(double %i.gv, double %i.go, double %i.he)
  %i.hf = fcmp ogt double %23, f0xBEB0C6F7A0000000 ; 3 uses
  br i1 %22, label %bb.ai, label %.preheader

bb.ai:                                            ; preds = %bb.ah
  %i.hg = select i1 %i.hf, ptr %10, ptr %11       ; 2 uses
  %.sroa.gep711.val = load ptr, ptr %.sroa.gep711, align 8
  %.sroa.gep712.val = load ptr, ptr %.sroa.gep712, align 8
  %i.hh = select i1 %i.hf, ptr %.sroa.gep711.val, ptr %.sroa.gep712.val
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.gi
  %i.hj = load ptr, ptr %i.hg, align 8            ; 2 uses
  %i.hk = ptrtoint ptr %i.hh to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.hj, i64 %i.hm
  invoke void @_ZNSt6vectorI10aiVector3tIdESaIS1_EE15_M_range_insertIPKS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr %i.hn, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.hi)
          to label %.loopexit796 unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ak:                                            ; preds = %bb.ai
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.preheader:                                       ; preds = %bb.ah, %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread
  %.0191914 = phi i64 [ %i.hr, %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread ], [ 0, %bb.ah ] ; 2 uses
  %.0192913 = phi i1 [ %.1193, %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread ], [ %i.hf, %bb.ah ] ; 12 uses
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %.0191914 ; 4 uses
  %.sroa.8701.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %.sroa.8701.0.copyload = load double, ptr %.sroa.8701.0..sroa_idx, align 8 ; 4 uses
  %i.hr = add nuw nsw i64 %.0191914, 1            ; 3 uses
  %.not1181 = icmp eq i64 %i.hr, %i.gi            ; 2 uses
  %i.hs = select i1 %.not1181, i64 0, i64 %i.hr
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.hs ; 2 uses
  %i.hu = load <2 x double>, ptr %i.hq, align 8   ; 4 uses
  %i.hv = load <2 x double>, ptr %i.ht, align 8
  %.sroa.6698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %.sroa.6698.0.copyload = load double, ptr %.sroa.6698.0..sroa_idx, align 8
  %. = select i1 %.0192913, ptr %10, ptr %11      ; 4 uses
  %..sroa.sel = select i1 %.0192913, ptr %.sroa.gep711, ptr %.sroa.gep712 ; 6 uses
  %i.hw = load ptr, ptr %..sroa.sel, align 8      ; 5 uses
  %..sroa.sel715 = select i1 %.0192913, ptr %.sroa.gep713, ptr %.sroa.gep714 ; 6 uses
  %i.hx = load ptr, ptr %..sroa.sel715, align 8
  %.not.i = icmp eq ptr %i.hw, %i.hx
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %i.hq, i64 24, i1 false)
  %i.hy = load ptr, ptr %..sroa.sel, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24 ; 2 uses
  store ptr %i.hz, ptr %..sroa.sel, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit

bb.am:                                            ; preds = %.preheader
  %i.ia = load ptr, ptr %., align 8               ; 5 uses
  %i.ib = ptrtoint ptr %i.hw to i64
  %i.ic = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.id = sub i64 %i.ib, %i.ic                    ; 3 uses
  %i.ie = icmp eq i64 %i.id, 9223372036854775800
  br i1 %i.ie, label %bb.an, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc257 unwind label %.loopexit.split-lp798

.noexc257:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.am
  %i.if = sdiv exact i64 %i.id, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.if, i64 1)
  %i.ig = add nsw i64 %.sroa.speculated.i.i.i, %i.if ; 2 uses
  %i.ih = icmp ult i64 %i.ig, %i.if
  %i.ii = call i64 @llvm.umin.i64(i64 %i.ig, i64 384307168202282325)
  %i.ij = select i1 %i.ih, i64 384307168202282325, i64 %i.ii ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ij, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ik = mul nuw nsw i64 %i.ij, 24
  %i.il = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ik) #23
          to label %.noexc258 unwind label %.loopexit797 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, ptr noundef nonnull align 8 dereferenceable(24) %i.hq, i64 24, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ia, %i.hw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i ], [ %i.il, %.noexc258 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i ], [ %i.ia, %.noexc258 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !192
  %i.in = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.in, %i.hw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.il, %.noexc258 ], [ %i.io, %.lr.ph.i.i.i.i.i ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.iq = load ptr, ptr %..sroa.sel715, align 8
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = sub i64 %i.ir, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.is) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ao, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.il, ptr %., align 8
  store ptr %i.ip, ptr %..sroa.sel, align 8
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.il, i64 %i.ij
  store ptr %i.it, ptr %..sroa.sel715, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.al
  %i.iu = phi ptr [ %i.ip, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hz, %bb.al ] ; 10 uses
  %i.iv = load <2 x double>, ptr %4, align 16, !noalias !193
  %i.iw = fsub <2 x double> %i.hu, %i.iv          ; 2 uses
  %i.ix = load double, ptr %i.fe, align 16, !noalias !193
  %i.iy = fsub <2 x double> %i.hv, %i.hu          ; 3 uses
  %i.iz = insertelement <2 x double> poison, double %.sroa.6698.0.copyload, i64 0
  %i.ja = insertelement <2 x double> %i.iz, double %.sroa.8701.0.copyload, i64 1
  %i.jb = insertelement <2 x double> poison, double %.sroa.8701.0.copyload, i64 0
  %i.jc = insertelement <2 x double> %i.jb, double %i.ix, i64 1
  %i.jd = fsub <2 x double> %i.ja, %i.jc          ; 2 uses
  %i.je = load <3 x double>, ptr %5, align 16     ; 3 uses
  %i.jf = shufflevector <2 x double> %i.iy, <2 x double> %i.iw, <2 x i32> <i32 1, i32 3>
  %i.jg = shufflevector <3 x double> %i.je, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jh = fmul <2 x double> %i.jf, %i.jg
  %i.ji = shufflevector <3 x double> %i.je, <3 x double> poison, <2 x i32> zeroinitializer
  %i.jj = shufflevector <2 x double> %i.iy, <2 x double> %i.iw, <2 x i32> <i32 0, i32 2>
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.jj, <2 x double> %i.jh)
  %i.jl = shufflevector <3 x double> %i.je, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jd, <2 x double> %i.jk) ; 2 uses
  %i.jn = extractelement <2 x double> %i.jm, i64 1 ; 3 uses
  %i.jo = fneg double %i.jn
  %i.jp = extractelement <2 x double> %i.jm, i64 0 ; 3 uses
  %i.jq = fsub double %i.jp, %i.jn                ; 3 uses
  %i.jr = call noundef double @llvm.fabs.f64(double %i.jq)
  %i.js = fcmp olt double %i.jr, f0x3EB0C6F7A0000000
  br i1 %i.js, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit
  %i.jt = call double @llvm.fabs.f64(double %i.jn)
  %i.ju = fcmp olt double %i.jt, f0x3EB0C6F7A0000000
  br i1 %i.ju, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jv = fcmp uge double %i.jq, f0x3EB0C6F7A0000000
  %i.jw = fcmp ule double %i.jq, f0xBEB0C6F7A0000000
  %or.cond41.i = select i1 %.0192913, i1 %i.jv, i1 %i.jw
  br i1 %or.cond41.i, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.jx = call noundef double @llvm.fabs.f64(double %i.jp)
  %i.jy = fcmp olt double %i.jx, f0x3EB0C6F7A0000000
  br i1 %i.jy, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jz = fdiv double %i.jo, %i.jp                ; 4 uses
  %i.ka = fcmp ule double %i.jz, 1.000000e+00
  %i.kb = fcmp uge double %i.jz, 0.000000e+00
  %or.cond.not.i = and i1 %i.ka, %i.kb
  br i1 %or.cond.not.i, label %bb.at, label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.kc = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = fmul <2 x double> %i.iy, %i.kd
  %i.kf = extractelement <2 x double> %i.jd, i64 0
  %i.kg = fmul double %i.kf, %i.jz
  %i.kh = fadd <2 x double> %i.hu, %i.ke
  %i.ki = fadd double %.sroa.8701.0.copyload, %i.kg
  br label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit

_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit: ; preds = %bb.aq, %bb.at
  %.sroa.13687.0 = phi double [ %i.ki, %bb.at ], [ %.sroa.8701.0.copyload, %bb.aq ] ; 5 uses
  %i.kj = phi <2 x double> [ %i.kh, %bb.at ], [ %i.hu, %bb.aq ] ; 6 uses
  %i.kk = load ptr, ptr %., align 8               ; 5 uses
  %i.kl = icmp eq ptr %i.kk, %i.iu                ; 2 uses
  br i1 %i.kl, label %.critedge, label %bb.au

bb.au:                                            ; preds = %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit
  %i.km = getelementptr inbounds i8, ptr %i.iu, i64 -24
  %i.kn = load double, ptr %i.km, align 8, !noalias !194
  %i.ko = extractelement <2 x double> %i.kj, i64 0
  %i.kp = fsub double %i.kn, %i.ko                ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %i.iu, i64 -16
  %i.kr = load double, ptr %i.kq, align 8, !noalias !194
  %i.ks = extractelement <2 x double> %i.kj, i64 1
  %i.kt = fsub double %i.kr, %i.ks                ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %i.iu, i64 -8
  %i.kv = load double, ptr %i.ku, align 8, !noalias !194
  %i.kw = fsub double %i.kv, %.sroa.13687.0       ; 2 uses
  %i.kx = fmul double %i.kt, %i.kt
  %i.ky = call double @llvm.fmuladd.f64(double %i.kp, double %i.kp, double %i.kx)
  %i.kz = call noundef double @llvm.fmuladd.f64(double %i.kw, double %i.kw, double %i.ky)
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a
  %i.afg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aff) #23
          to label %.noexc357 unwind label %.loopexit781 ; 6 uses

.noexc357:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i344
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 %i.aey ; 2 uses
  store <2 x double> %i.acy, ptr %i.afh, align 8
  %.sroa.9542.8..sroa_idx543 = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  store double %.sroa.9542.0.copyload, ptr %.sroa.9542.8..sroa_idx543, align 8
  %.not10.i.i.i.i.i347 = icmp eq ptr %i.aeu, %.lcssa947
  br i1 %.not10.i.i.i.i.i347, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i352, label %.lr.ph.i.i.i.i.i348

.lr.ph.i.i.i.i.i348:                              ; preds = %.noexc357, %.lr.ph.i.i.i.i.i348
  %.012.i.i.i.i.i349 = phi ptr [ %i.afj, %.lr.ph.i.i.i.i.i348 ], [ %i.afg, %.noexc357 ] ; 2 uses
  %.0911.i.i.i.i.i350 = phi ptr [ %i.afi, %.lr.ph.i.i.i.i.i348 ], [ %i.aeu, %.noexc357 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i349, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i350, i64 24, i1 false), !alias.scope !210
  %i.afi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i350, i64 24 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i349, i64 24 ; 2 uses
  %.not.i.i.i.i.i351 = icmp eq ptr %i.afi, %.lcssa947
  br i1 %.not.i.i.i.i.i351, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i352, label %.lr.ph.i.i.i.i.i348, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i352: ; preds = %.lr.ph.i.i.i.i.i348, %.noexc357
  %.0.lcssa.i.i.i.i.i353 = phi ptr [ %i.afg, %.noexc357 ], [ %i.afj, %.lr.ph.i.i.i.i.i348 ]
  %i.afk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i353, i64 24 ; 2 uses
  %.not.i23.i.i354 = icmp eq ptr %i.aeu, null
  br i1 %.not.i23.i.i354, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i355, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i352
  call void @_ZdlPvm(ptr noundef nonnull %i.aeu, i64 noundef %i.aey) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i355

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i355: ; preds = %bb.cy, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i352
  store ptr %i.afg, ptr %18, align 8
  store ptr %i.afk, ptr %i.fz, align 8
  %i.afl = getelementptr inbounds nuw [24 x i8], ptr %i.afg, i64 %i.afe ; 2 uses
  store ptr %i.afl, ptr %i.ga, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358

bb.cz:                                            ; preds = %bb.cl
  %i.afm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.ei

.loopexit776:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i328
  %lpad.loopexit778 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp777:                            ; preds = %bb.cr
  %lpad.loopexit.split-lp779 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.lr.ph959:                                        ; preds = %bb.cu, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit374
  %.0142957 = phi i64 [ %i.agr, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit374 ], [ 1, %bb.cu ] ; 2 uses
  %i.afn = phi ptr [ %i.agq, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit374 ], [ %.promoted, %bb.cu ] ; 8 uses
  %i.afo = phi ptr [ %i.agp, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit374 ], [ %.promoted946, %bb.cu ] ; 4 uses
  %i.afp = phi ptr [ %i.ago, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit374 ], [ %.promoted952, %bb.cu ] ; 8 uses
  %i.afq = add i64 %.0142957, %.sroa.6549.0.copyload
  %i.afr = load ptr, ptr %.sroa.gep712, align 8
  %i.afs = load ptr, ptr %11, align 8             ; 2 uses
  %i.aft = ptrtoint ptr %i.afr to i64
  %i.afu = ptrtoint ptr %i.afs to i64
  %i.afv = sub i64 %i.aft, %i.afu
  %i.afw = sdiv exact i64 %i.afv, 24
  %i.afx = urem i64 %i.afq, %i.afw
  %i.afy = getelementptr inbounds nuw [24 x i8], ptr %i.afs, i64 %i.afx ; 2 uses
  %.not.i359 = icmp eq ptr %i.afn, %i.afo
  br i1 %.not.i359, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afn, ptr noundef nonnull align 8 dereferenceable(24) %i.afy, i64 24, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit374

bb.db:                                            ; preds = %.lr.ph959
  %i.afz = ptrtoint ptr %i.afn to i64
  %i.aga = ptrtoint ptr %i.afp to i64
  %i.agb = sub i64 %i.afz, %i.aga                 ; 4 uses
  %i.agc = icmp eq i64 %i.agb, 9223372036854775800
  br i1 %i.agc, label %bb.dc, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i360

bb.dc:                                            ; preds = %bb.db
  store ptr %i.afn, ptr %i.fz, align 8
  store ptr %i.afo, ptr %i.ga, align 8
  store ptr %i.afp, ptr %18, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc372 unwind label %.loopexit.split-lp771

.noexc372:                                        ; preds = %bb.dc
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i360: ; preds = %bb.db
  %i.agd = sdiv exact i64 %i.agb, 24              ; 3 uses
  %.sroa.speculated.i.i.i361 = call i64 @llvm.umax.i64(i64 %i.agd, i64 1)
  %i.age = add nsw i64 %.sroa.speculated.i.i.i361, %i.agd ; 2 uses
  %i.agf = icmp ult i64 %i.age, %i.agd
  %i.agg = call i64 @llvm.umin.i64(i64 %i.age, i64 384307168202282325)
  %i.agh = select i1 %i.agf, i64 384307168202282325, i64 %i.agg ; 3 uses
  %.not.i.i.i362 = icmp ne i64 %i.agh, 0
  call void @llvm.assume(i1 %.not.i.i.i362)
  %i.agi = mul nuw nsw i64 %i.agh, 24
  %i.agj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agi) #23
          to label %.noexc373 unwind label %.loopexit770 ; 5 uses

.noexc373:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i360
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 %i.agb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agk, ptr noundef nonnull align 8 dereferenceable(24) %i.afy, i64 24, i1 false)
  %.not10.i.i.i.i.i363 = icmp eq ptr %i.afp, %i.afn
  br i1 %.not10.i.i.i.i.i363, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i368, label %.lr.ph.i.i.i.i.i364

.lr.ph.i.i.i.i.i364:                              ; preds = %.noexc373, %.lr.ph.i.i.i.i.i364
  %.012.i.i.i.i.i365 = phi ptr [ %i.agm, %.lr.ph.i.i.i.i.i364 ], [ %i.agj, %.noexc373 ] ; 2 uses
  %.0911.i.i.i.i.i366 = phi ptr [ %i.agl, %.lr.ph.i.i.i.i.i364 ], [ %i.afp, %.noexc373 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i365, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i366, i64 24, i1 false), !alias.scope !211
  %i.agl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i366, i64 24 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i365, i64 24 ; 2 uses
  %.not.i.i.i.i.i367 = icmp eq ptr %i.agl, %i.afn
  br i1 %.not.i.i.i.i.i367, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i368, label %.lr.ph.i.i.i.i.i364, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i368: ; preds = %.lr.ph.i.i.i.i.i364, %.noexc373
  %.0.lcssa.i.i.i.i.i369 = phi ptr [ %i.agj, %.noexc373 ], [ %i.agm, %.lr.ph.i.i.i.i.i364 ]
  %.not.i23.i.i370 = icmp eq ptr %i.afp, null
  br i1 %.not.i23.i.i370, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i371, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i368
  call void @_ZdlPvm(ptr noundef nonnull %i.afp, i64 noundef %i.agb) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i371

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i371: ; preds = %bb.dd, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i368
  %i.agn = getelementptr inbounds nuw [24 x i8], ptr %i.agj, i64 %i.agh
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit374

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit374: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i371, %bb.da
  %i.ago = phi ptr [ %i.agj, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i371 ], [ %i.afp, %bb.da ] ; 2 uses
  %i.agp = phi ptr [ %i.agn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i371 ], [ %i.afo, %bb.da ] ; 2 uses
  %.0.lcssa.i.i.i.i.i369.pn = phi ptr [ %.0.lcssa.i.i.i.i.i369, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i371 ], [ %i.afn, %bb.da ]
  %i.agq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i369.pn, i64 24 ; 2 uses
  %i.agr = add i64 %.0142957, 1                   ; 2 uses
  %.not208 = icmp ugt i64 %i.agr, %i.aet
  br i1 %.not208, label %._crit_edge960, label %.lr.ph959, !llvm.loop !173

.loopexit770:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i360
  %lpad.loopexit772 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.afn, ptr %i.fz, align 8
  store ptr %i.afo, ptr %i.ga, align 8
  store ptr %i.afp, ptr %18, align 8
  br label %bb.dz

.loopexit.split-lp771:                            ; preds = %bb.dc
  %lpad.loopexit.split-lp773 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i355, %bb.cv
  %.promoted972 = phi ptr [ %i.afl, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i355 ], [ %.promoted972.pre, %bb.cv ]
  %.promoted971 = phi ptr [ %i.afk, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i355 ], [ %i.aev, %bb.cv ]
  %.promoted970 = phi ptr [ %i.afg, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i355 ], [ %.promoted970.pre, %bb.cv ]
  %i.ags = load <8 x double>, ptr %9, align 16, !noalias !212 ; 4 uses
  %i.agt = shufflevector <2 x double> %i.acy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.agu = shufflevector <8 x double> %i.ags, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.agv = fmul <2 x double> %i.agt, %i.agu
  %i.agw = shufflevector <8 x double> %i.ags, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.agx = shufflevector <2 x double> %i.acy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agw, <2 x double> %i.agx, <2 x double> %i.agv)
  %i.agz = shufflevector <8 x double> %i.ags, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.aha = insertelement <2 x double> poison, double %.sroa.9542.0.copyload, i64 0
  %i.ahb = shufflevector <2 x double> %i.aha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agz, <2 x double> %i.ahb, <2 x double> %i.agy)
  %i.ahd = shufflevector <8 x double> %i.ags, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ahe = fadd <2 x double> %i.ahd, %i.ahc
  %i.ahf = load double, ptr %i.fm, align 16, !noalias !212
  %i.ahg = load double, ptr %i.fn, align 8, !noalias !212
  %i.ahh = extractelement <2 x double> %i.acy, i64 1
  %i.ahi = fmul double %i.ahh, %i.ahg
  %i.ahj = extractelement <2 x double> %i.acy, i64 0
  %i.ahk = call double @llvm.fmuladd.f64(double %i.ahf, double %i.ahj, double %i.ahi)
  %i.ahl = load double, ptr %i.fo, align 16, !noalias !212
  %i.ahm = call double @llvm.fmuladd.f64(double %i.ahl, double %.sroa.9542.0.copyload, double %i.ahk)
  %i.ahn = load double, ptr %i.fp, align 8, !noalias !212
  %i.aho = fadd double %i.ahn, %i.ahm
  %i.ahp = add i64 %.sroa.0536.0.copyload, %i.ack
  %i.ahq = load ptr, ptr %i.cc, align 8           ; 2 uses
  %i.ahr = load ptr, ptr %i.bt, align 8           ; 2 uses
  %i.ahs = ptrtoint ptr %i.ahq to i64
  %i.aht = ptrtoint ptr %i.ahr to i64
  %i.ahu = sub i64 %i.ahs, %i.aht
  %i.ahv = sdiv exact i64 %i.ahu, 24
  %i.ahw = urem i64 %i.ahp, %i.ahv
  %i.ahx = ptrtoint ptr %spec.select768 to i64
  %i.ahy = sub i64 %i.ahx, %i.oj
  %i.ahz = sdiv exact i64 %i.ahy, 40              ; 3 uses
  %.not985 = icmp eq ptr %spec.select768, %.sroa.0611.0.lcssa ; 2 uses
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358
  %i.aia = phi ptr [ %i.ahr, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358 ], [ %i.apz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.aib = phi ptr [ %i.ahq, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358 ], [ %i.apy, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.aic = phi ptr [ %.promoted972, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358 ], [ %i.apk, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %i.aid = phi ptr [ %.promoted971, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358 ], [ %i.apl, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %i.aie = phi ptr [ %.promoted970, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358 ], [ %i.apm, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 9 uses
  %.sroa.17.0 = phi double [ %i.aho, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358 ], [ %.sroa.17.1, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %.0140 = phi i64 [ %i.ahw, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358 ], [ %.1141, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.0138 = phi i64 [ -1, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358 ], [ %.2139.lcssa, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.aif = phi <2 x double> [ %i.ahe, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit358 ], [ %i.apn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 9 uses
  %i.aig = icmp eq i64 %.0138, -1
  br i1 %i.aig, label %bb.de, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread

bb.de:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit
  br i1 %i.acj, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.aih = ptrtoint ptr %i.aib to i64
  %i.aii = ptrtoint ptr %i.aia to i64
  %i.aij = sub i64 %i.aih, %i.aii
  %i.aik = sdiv exact i64 %i.aij, 24              ; 2 uses
  %i.ail = add i64 %.0140, -1
  %i.aim = add i64 %i.ail, %i.aik
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.ain = add nuw i64 %.0140, 1
  %.pre1078 = ptrtoint ptr %i.aib to i64
  %.pre1079 = ptrtoint ptr %i.aia to i64
  %.pre1081 = sub i64 %.pre1078, %.pre1079
  %.pre1083 = sdiv exact i64 %.pre1081, 24
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pre-phi1084 = phi i64 [ %.pre1083, %bb.dg ], [ %i.aik, %bb.df ]
  %i.aio = phi i64 [ %i.ain, %bb.dg ], [ %i.aim, %bb.df ]
  %i.aip = urem i64 %i.aio, %.pre-phi1084         ; 3 uses
  %i.aiq = getelementptr inbounds nuw [24 x i8], ptr %i.aia, i64 %.0140 ; 2 uses
  %i.air = load <2 x double>, ptr %i.aiq, align 8 ; 3 uses
  %.sroa.8512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiq, i64 16
  %.sroa.8512.0.copyload = load double, ptr %.sroa.8512.0..sroa_idx, align 8
  %i.ais = getelementptr inbounds nuw [24 x i8], ptr %i.aia, i64 %i.aip ; 2 uses
  %i.ait = load <2 x double>, ptr %i.ais, align 8 ; 11 uses
  %.sroa.13503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %.sroa.13503.0.copyload = load double, ptr %.sroa.13503.0..sroa_idx, align 8
  %i.aiu = insertelement <2 x double> poison, double %.sroa.8512.0.copyload, i64 0
  %i.aiv = insertelement <2 x double> %i.aiu, double %.sroa.13503.0.copyload, i64 1
  br i1 %i.acm, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.aiw = shufflevector <2 x double> %i.air, <2 x double> %i.ait, <2 x i32> <i32 0, i32 2>
  %i.aix = shufflevector <2 x double> %i.aif, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aiy = fsub <2 x double> %i.aiw, %i.aix
  %i.aiz = fmul <2 x double> %i.aco, %i.aiy
  %i.aja = fdiv <2 x double> %i.aiz, %i.act
  %i.ajb = insertelement <2 x double> poison, double %.sroa.17.0, i64 0
  %i.ajc = shufflevector <2 x double> %i.ajb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajd = fadd <2 x double> %i.ajc, %i.aja
  %i.aje = shufflevector <2 x double> %i.air, <2 x double> %i.ait, <2 x i32> <i32 1, i32 3>
  %i.ajf = shufflevector <2 x double> %i.aif, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ajg = fsub <2 x double> %i.aje, %i.ajf
  %i.ajh = fmul <2 x double> %i.acu, %i.ajg
  %i.aji = fdiv <2 x double> %i.ajh, %i.act
  %i.ajj = fadd <2 x double> %i.ajd, %i.aji
  br label %bb.dj

.loopexit781:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i344
  %lpad.loopexit783 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp782:                            ; preds = %bb.cx
  %lpad.loopexit.split-lp784 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ajk = phi <2 x double> [ %i.ajj, %bb.di ], [ %i.aiv, %bb.dh ] ; 3 uses
  %i.ajl = fsub <2 x double> %i.ait, %i.air       ; 3 uses
  %i.ajm = extractelement <2 x double> %i.ajk, i64 0
  %i.ajn = extractelement <2 x double> %i.ajk, i64 1 ; 5 uses
  %i.ajo = fsub double %i.ajn, %i.ajm             ; 2 uses
  %i.ajp = load double, ptr %i.fy, align 16, !noalias !213
  %i.ajq = load <2 x double>, ptr %i.fx, align 8, !noalias !213
  %i.ajr = load <2 x double>, ptr %7, align 16, !noalias !213 ; 2 uses
  %i.ajs = fneg double %i.ajp
  %i.ajt = extractelement <2 x double> %i.ajl, i64 0
  %i.aju = fmul double %i.ajt, %i.ajs
  %i.ajv = extractelement <2 x double> %i.ajr, i64 0
  %i.ajw = call double @llvm.fmuladd.f64(double %i.ajo, double %i.ajv, double %i.aju) ; 4 uses
  %i.ajx = fneg <2 x double> %i.ajr
  %i.ajy = shufflevector <2 x double> %i.ajl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ajz = insertelement <2 x double> %i.ajy, double %i.ajo, i64 1
  %i.aka = fmul <2 x double> %i.ajz, %i.ajx
  %i.akb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajl, <2 x double> %i.ajq, <2 x double> %i.aka) ; 4 uses
  %i.akc = fmul double %i.ajw, %i.ajw
  %i.akd = extractelement <2 x double> %i.akb, i64 1 ; 2 uses
  %i.ake = call double @llvm.fmuladd.f64(double %i.akd, double %i.akd, double %i.akc)
  %i.akf = extractelement <2 x double> %i.akb, i64 0 ; 2 uses
  %i.akg = call noundef double @llvm.fmuladd.f64(double %i.akf, double %i.akf, double %i.ake) ; 2 uses
  %i.akh = fcmp oeq double %i.akg, 0.000000e+00
  br i1 %i.akh, label %bb.dk, label %_ZN10aiVector3tIdEdVEd.exit.i375

_ZN10aiVector3tIdEdVEd.exit.i375:                 ; preds = %bb.dj
  %sqrt.i.i376 = call noundef double @llvm.sqrt.f64(double %i.akg)
  %i.aki = fdiv double 1.000000e+00, %sqrt.i.i376 ; 2 uses
  %i.akj = fmul double %i.ajw, %i.aki
  %i.akk = insertelement <2 x double> poison, double %i.aki, i64 0
  %i.akl = shufflevector <2 x double> %i.akk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akm = fmul <2 x double> %i.akb, %i.akl
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZN10aiVector3tIdEdVEd.exit.i375
  %.sroa.7488.0 = phi double [ %i.ajw, %bb.dj ], [ %i.akj, %_ZN10aiVector3tIdEdVEd.exit.i375 ] ; 2 uses
  %i.akn = phi <2 x double> [ %i.akb, %bb.dj ], [ %i.akm, %_ZN10aiVector3tIdEdVEd.exit.i375 ] ; 3 uses
  %i.ako = extractelement <2 x double> %i.akn, i64 0
  %i.akp = fmul double %i.ako, %i.acn
  %i.akq = call double @llvm.fmuladd.f64(double %.sroa.7488.0, double %i.acf, double %i.akp) ; 4 uses
  %i.akr = shufflevector <2 x double> %i.akn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aks = insertelement <2 x double> %i.akr, double %.sroa.7488.0, i64 1
  %i.akt = fmul <2 x double> %i.aks, %i.acq
  %i.aku = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akn, <2 x double> %i.abt, <2 x double> %i.akt) ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.aku, %i.aku
  %i.akv = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.akw = call double @llvm.fmuladd.f64(double %i.akq, double %i.akq, double %i.akv)
  %i.akx = extractelement <2 x double> %i.aku, i64 1 ; 2 uses
  %i.aky = call noundef double @llvm.fmuladd.f64(double %i.akx, double %i.akx, double %i.akw) ; 2 uses
  %i.akz = fcmp oeq double %i.aky, 0.000000e+00
  br i1 %i.akz, label %bb.dl, label %_ZN10aiVector3tIdEdVEd.exit.i378

_ZN10aiVector3tIdEdVEd.exit.i378:                 ; preds = %bb.dk
  %sqrt.i.i379 = call noundef double @llvm.sqrt.f64(double %i.aky)
  %i.ala = fdiv double 1.000000e+00, %sqrt.i.i379 ; 2 uses
  %i.alb = fmul double %i.akq, %i.ala
  %i.alc = insertelement <2 x double> poison, double %i.ala, i64 0
  %i.ald = shufflevector <2 x double> %i.alc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ale = fmul <2 x double> %i.aku, %i.ald
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %_ZN10aiVector3tIdEdVEd.exit.i378
  %.sroa.0468.0 = phi double [ %i.akq, %bb.dk ], [ %i.alb, %_ZN10aiVector3tIdEdVEd.exit.i378 ]
  %i.alf = phi <2 x double> [ %i.aku, %bb.dk ], [ %i.ale, %_ZN10aiVector3tIdEdVEd.exit.i378 ] ; 2 uses
  %i.alg = fmul double %i.acr, %.sroa.0468.0      ; 4 uses
  %i.alh = extractelement <2 x double> %i.alf, i64 0
  %i.ali = fmul double %i.acr, %i.alh             ; 4 uses
  %i.alj = extractelement <2 x double> %i.alf, i64 1
  %i.alk = fmul double %i.acr, %i.alj             ; 4 uses
  br i1 %i.acm, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %foldExtExtBinop1362 = fsub <2 x double> %i.ait, %i.aif
  %i.all = extractelement <2 x double> %foldExtExtBinop1362, i64 0 ; 2 uses
  %foldExtExtBinop1364 = fsub <2 x double> %i.ait, %i.aif ; 2 uses
  %i.alm = fsub double %i.ajn, %.sroa.17.0        ; 2 uses
  %foldExtExtBinop1366 = fmul <2 x double> %foldExtExtBinop1364, %foldExtExtBinop1364
  %i.aln = extractelement <2 x double> %foldExtExtBinop1366, i64 1
  %i.alo = call double @llvm.fmuladd.f64(double %i.all, double %i.all, double %i.aln)
  %i.alp = call noundef double @llvm.fmuladd.f64(double %i.alm, double %i.alm, double %i.alo)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.alp) ; 2 uses
  %i.alq = fcmp olt double %sqrt.i, 1.000000e+10
  %.sroa.speculated = select i1 %i.alq, double %sqrt.i, double 1.000000e+10
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  %.0750 = phi double [ %.sroa.speculated, %bb.dm ], [ 1.000000e+10, %bb.dl ] ; 3 uses
  %24 = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.alr = getelementptr inbounds nuw i8, ptr %i.aie, i64 16
  %i.als = load double, ptr %i.alr, align 8, !noalias !214 ; 2 uses
  %i.alt = load <2 x double>, ptr %9, align 16, !noalias !214 ; 2 uses
  %i.alu = load <2 x double>, ptr %i.ff, align 8
  %i.alv = load <2 x double>, ptr %i.fi, align 16, !noalias !214 ; 2 uses
  %i.alw = load double, ptr %i.fj, align 8, !noalias !214
  %25 = load double, ptr %i.aie, align 8, !noalias !214 ; 2 uses
  %26 = load double, ptr %24, align 8, !noalias !214 ; 2 uses
  %i.alx = insertelement <2 x double> poison, double %26, i64 0
  %27 = shufflevector <2 x double> %i.alx, <2 x double> poison, <2 x i32> zeroinitializer
  %28 = insertelement <2 x double> %i.alu, double %i.alw, i64 1
  %29 = fmul <2 x double> %27, %28
  %30 = shufflevector <2 x double> %i.alt, <2 x double> %i.alv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aly = insertelement <2 x double> poison, double %25, i64 0
  %i.alz = shufflevector <2 x double> %i.aly, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %i.alz, <2 x double> %29)
  %i.ama = load <2 x double>, ptr %i.fg, align 16, !noalias !214 ; 3 uses
  %32 = load double, ptr %i.fh, align 8, !noalias !214
  %33 = load <2 x double>, ptr %i.fk, align 16, !noalias !214 ; 3 uses
  %i.amb = load double, ptr %i.fl, align 8, !noalias !214
  %34 = shufflevector <2 x double> %i.ama, <2 x double> %33, <2 x i32> <i32 0, i32 2>
  %35 = insertelement <2 x double> poison, double %i.als, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %37 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %36, <2 x double> %31)
  %38 = shufflevector <2 x double> %i.ama, <2 x double> %33, <2 x i32> <i32 1, i32 3>
  %39 = fadd <2 x double> %37, %38                ; 2 uses
  %40 = load double, ptr %i.fm, align 16, !noalias !214 ; 2 uses
  %41 = load double, ptr %i.fn, align 8, !noalias !214 ; 2 uses
  %42 = fmul double %26, %41
  %43 = call double @llvm.fmuladd.f64(double %40, double %25, double %42)
  %44 = load double, ptr %i.fo, align 16, !noalias !214 ; 2 uses
  %45 = call double @llvm.fmuladd.f64(double %44, double %i.als, double %43)
  %46 = load double, ptr %i.fp, align 8, !noalias !214 ; 2 uses
  %47 = fadd double %46, %45
  %48 = extractelement <2 x double> %i.aif, i64 0
  %foldExtExtBinop1368 = fsub <2 x double> %39, %i.aif
  %49 = extractelement <2 x double> %foldExtExtBinop1368, i64 0 ; 2 uses
  %i.amc = extractelement <2 x double> %i.aif, i64 1
  %foldExtExtBinop1370 = fsub <2 x double> %39, %i.aif
  %50 = extractelement <2 x double> %foldExtExtBinop1370, i64 1 ; 2 uses
  %i.amd = fsub double %47, %.sroa.17.0           ; 2 uses
  %51 = fmul double %i.ali, %50
  %52 = call double @llvm.fmuladd.f64(double %49, double %i.alg, double %51)
  %i.ame = call noundef double @llvm.fmuladd.f64(double %i.amd, double %i.alk, double %52) ; 6 uses
  %i.amf = fcmp ule double %i.ame, f0xBEB0C6F7A0B5ED8D
  %i.amg = fcmp ugt double %i.ame, %.0750
  %or.cond = or i1 %i.amf, %i.amg
  br i1 %or.cond, label %.critedge8, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.amh = fmul double %i.alg, %i.ame
  %i.ami = fmul double %i.ali, %i.ame
  %i.amj = fmul double %i.alk, %i.ame
  %i.amk = fsub double %49, %i.amh                ; 2 uses
  %i.aml = fsub double %50, %i.ami                ; 2 uses
  %i.amm = fsub double %i.amd, %i.amj             ; 2 uses
  %i.amn = fmul double %i.aml, %i.aml
  %i.amo = call double @llvm.fmuladd.f64(double %i.amk, double %i.amk, double %i.amn)
  %i.amp = call noundef double @llvm.fmuladd.f64(double %i.amm, double %i.amm, double %i.amo)
  %i.amq = fcmp olt double %i.amp, 1.000000e-10
  br i1 %i.amq, label %bb.dp, label %.critedge8

bb.dp:                                            ; preds = %bb.do
  br label %.critedge8

bb.dq:                                            ; preds = %.noexc388, %.noexc387, %bb.dy, %bb.dx
  %i.amr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.critedge8:                                       ; preds = %bb.dn, %bb.dp, %bb.do
  %.1751 = phi double [ %.0750, %bb.do ], [ %i.ame, %bb.dp ], [ %.0750, %bb.dn ]
  %.1 = phi i64 [ -1, %bb.do ], [ %i.ahz, %bb.dp ], [ -1, %bb.dn ] ; 2 uses
  br i1 %.not985, label %._crit_edge968, label %.lr.ph967.preheader

.lr.ph967.preheader:                              ; preds = %.critedge8
  %i.ams = shufflevector <2 x double> %i.alt, <2 x double> %i.alv, <2 x i32> <i32 1, i32 3>
  %53 = extractelement <2 x double> %i.ama, i64 0
  %54 = insertelement <2 x double> %33, double %40, i64 1
  %55 = insertelement <2 x double> poison, double %44, i64 0
  %i.amt = insertelement <2 x double> poison, double %i.alg, i64 1
  br label %.lr.ph967

._crit_edge968:                                   ; preds = %.critedge10, %.critedge8
  %.2139.lcssa = phi i64 [ %.1, %.critedge8 ], [ %.3, %.critedge10 ] ; 4 uses
  %i.amu = icmp eq i64 %.2139.lcssa, -1
  br i1 %i.amu, label %bb.dt, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

.lr.ph967:                                        ; preds = %.lr.ph967.preheader, %.critedge10
  %.0966 = phi i64 [ %i.anv, %.critedge10 ], [ 0, %.lr.ph967.preheader ] ; 3 uses
  %.2139965 = phi i64 [ %.3, %.critedge10 ], [ %.1, %.lr.ph967.preheader ] ; 2 uses
  %.2752964 = phi double [ %.3753, %.critedge10 ], [ %.1751, %.lr.ph967.preheader ] ; 3 uses
  %i.amv = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0611.0.lcssa, i64 %.0966 ; 3 uses
  %56 = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 16
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amv, i64 24
  %i.amy = load double, ptr %i.amx, align 8, !noalias !215 ; 3 uses
  %57 = load double, ptr %56, align 8, !noalias !215 ; 2 uses
  %58 = load double, ptr %i.amw, align 8, !noalias !215 ; 2 uses
  %59 = insertelement <2 x double> poison, double %58, i64 0
  %60 = shufflevector <2 x double> %59, <2 x double> poison, <2 x i32> zeroinitializer
  %i.amz = fmul <2 x double> %i.ams, %60
  %61 = insertelement <2 x double> poison, double %57, i64 0
  %i.ana = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %i.anb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %i.ana, <2 x double> %i.amz) ; 2 uses
  %62 = extractelement <2 x double> %i.anb, i64 0
  %63 = call double @llvm.fmuladd.f64(double %53, double %i.amy, double %62)
  %64 = fadd double %32, %63
  %65 = fmul double %41, %58
  %66 = insertelement <2 x double> poison, double %i.amy, i64 0
  %67 = insertelement <2 x double> %66, double %57, i64 1
  %68 = shufflevector <2 x double> %i.anb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.anc = insertelement <2 x double> %68, double %65, i64 1
  %i.and = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %54, <2 x double> %67, <2 x double> %i.anc) ; 2 uses
  %i.ane = extractelement <2 x double> %i.and, i64 0
  %69 = fadd double %i.amb, %i.ane
  %70 = fsub double %64, %48                      ; 2 uses
  %71 = fsub double %69, %i.amc                   ; 2 uses
  %72 = fmul double %i.ali, %71
  %73 = insertelement <2 x double> %55, double %70, i64 1
  %74 = insertelement <2 x double> %i.amt, double %i.amy, i64 0
  %75 = shufflevector <2 x double> %i.and, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %76 = insertelement <2 x double> %75, double %72, i64 1
  %77 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> %74, <2 x double> %76) ; 2 uses
  %78 = extractelement <2 x double> %77, i64 0
  %i.anf = fadd double %46, %78
  %i.ang = fsub double %i.anf, %.sroa.17.0        ; 2 uses
  %i.anh = extractelement <2 x double> %77, i64 1
  %i.ani = call noundef double @llvm.fmuladd.f64(double %i.ang, double %i.alk, double %i.anh) ; 6 uses
  %i.anj = fcmp ule double %i.ani, f0xBEB0C6F7A0B5ED8D
  %i.ank = fcmp ugt double %i.ani, %.2752964
  %or.cond241 = select i1 %i.anj, i1 true, i1 %i.ank
  br i1 %or.cond241, label %.critedge10, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph967
  %i.anl = fmul double %i.alg, %i.ani
  %i.anm = fmul double %i.ali, %i.ani
  %i.ann = fmul double %i.alk, %i.ani
  %i.ano = fsub double %70, %i.anl                ; 2 uses
  %i.anp = fsub double %71, %i.anm                ; 2 uses
  %i.anq = fsub double %i.ang, %i.ann             ; 2 uses
  %i.anr = fmul double %i.anp, %i.anp
  %i.ans = call double @llvm.fmuladd.f64(double %i.ano, double %i.ano, double %i.anr)
  %i.ant = call noundef double @llvm.fmuladd.f64(double %i.anq, double %i.anq, double %i.ans)
  %i.anu = fcmp olt double %i.ant, 1.000000e-10
  br i1 %i.anu, label %bb.ds, label %.critedge10

bb.ds:                                            ; preds = %bb.dr
  br label %.critedge10

.critedge10:                                      ; preds = %.lr.ph967, %bb.dr, %bb.ds
  %.3753 = phi double [ %.2752964, %bb.dr ], [ %i.ani, %bb.ds ], [ %.2752964, %.lr.ph967 ]
  %.3 = phi i64 [ %.2139965, %bb.dr ], [ %.0966, %bb.ds ], [ %.2139965, %.lr.ph967 ] ; 2 uses
  %i.anv = add nuw i64 %.0966, 2                  ; 2 uses
  %i.anw = icmp ult i64 %i.anv, %i.ahz
  br i1 %i.anw, label %.lr.ph967, label %._crit_edge968, !llvm.loop !182

bb.dt:                                            ; preds = %._crit_edge968
  %i.anx = extractelement <2 x double> %i.ait, i64 1
  %i.any = extractelement <2 x double> %i.ait, i64 0
  %i.anz = load <8 x double>, ptr %8, align 8, !noalias !216 ; 4 uses
  %i.aoa = shufflevector <2 x double> %i.ait, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aob = shufflevector <8 x double> %i.anz, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.aoc = fmul <2 x double> %i.aoa, %i.aob
  %i.aod = shufflevector <8 x double> %i.anz, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.aoe = shufflevector <2 x double> %i.ait, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aof = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aod, <2 x double> %i.aoe, <2 x double> %i.aoc)
  %i.aog = shufflevector <8 x double> %i.anz, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.aoh = shufflevector <2 x double> %i.ajk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aoi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aog, <2 x double> %i.aoh, <2 x double> %i.aof)
  %i.aoj = shufflevector <8 x double> %i.anz, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.aok = fadd <2 x double> %i.aoj, %i.aoi       ; 2 uses
  %i.aol = load double, ptr %i.fu, align 8, !noalias !216
  %i.aom = load double, ptr %i.fv, align 8, !noalias !216
  %i.aon = fmul double %i.anx, %i.aom
  %i.aoo = call double @llvm.fmuladd.f64(double %i.aol, double %i.any, double %i.aon)
  %i.aop = load double, ptr %i.cl, align 8, !noalias !216
  %i.aoq = call double @llvm.fmuladd.f64(double %i.aop, double %i.ajn, double %i.aoo)
  %i.aor = load double, ptr %i.cm, align 8, !noalias !216
  %i.aos = fadd double %i.aor, %i.aoq             ; 2 uses
  %.not.i.i381 = icmp eq ptr %i.aid, %i.aic
  br i1 %.not.i.i381, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store <2 x double> %i.aok, ptr %i.aid, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  store double %i.aos, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aid, i64 24 ; 2 uses
  store ptr %i.aot, ptr %i.fz, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

bb.dv:                                            ; preds = %bb.dt
  %i.aou = ptrtoint ptr %i.aic to i64
  %i.aov = ptrtoint ptr %i.aie to i64
  %i.aow = sub i64 %i.aou, %i.aov                 ; 4 uses
  %i.aox = icmp eq i64 %i.aow, 9223372036854775800
  br i1 %i.aox, label %bb.dw, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc384 unwind label %.loopexit.split-lp

.noexc384:                                        ; preds = %bb.dw
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dv
  %i.aoy = sdiv exact i64 %i.aow, 24              ; 3 uses
  %.sroa.speculated.i.i.i.i382 = call i64 @llvm.umax.i64(i64 %i.aoy, i64 1)
  %i.aoz = add nsw i64 %.sroa.speculated.i.i.i.i382, %i.aoy ; 2 uses
  %i.apa = icmp ult i64 %i.aoz, %i.aoy
  %i.apb = call i64 @llvm.umin.i64(i64 %i.aoz, i64 384307168202282325)
  %i.apc = select i1 %i.apa, i64 384307168202282325, i64 %i.apb ; 3 uses
  %.not.i.i.i.i383 = icmp ne i64 %i.apc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i383)
  %i.apd = mul nuw nsw i64 %i.apc, 24
  %i.ape = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apd) #23
          to label %.noexc385 unwind label %.loopexit ; 6 uses

.noexc385:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.aow ; 2 uses
  store <2 x double> %i.aok, ptr %i.apf, align 8
  %.sroa.7.0..sroa_idx434 = getelementptr inbounds nuw i8, ptr %i.apf, i64 16
  store double %i.aos, ptr %.sroa.7.0..sroa_idx434, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aie, %i.aic
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc385, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aph, %.lr.ph.i.i.i.i.i.i ], [ %i.ape, %.noexc385 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.apg, %.lr.ph.i.i.i.i.i.i ], [ %i.aie, %.noexc385 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !217
  %i.apg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.apg, %i.aic
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc385
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ape, %.noexc385 ], [ %i.aph, %.lr.ph.i.i.i.i.i.i ]
  %i.api = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.aie, i64 noundef %i.aow) #24
  store ptr %i.ape, ptr %18, align 8
  store ptr %i.api, ptr %i.fz, align 8
  %i.apj = getelementptr inbounds nuw [24 x i8], ptr %i.ape, i64 %i.apc ; 2 uses
  store ptr %i.apj, ptr %i.ga, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp:                               ; preds = %bb.dw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.du, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %._crit_edge968
  %i.apk = phi ptr [ %i.aic, %._crit_edge968 ], [ %i.apj, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aic, %bb.du ]
  %i.apl = phi ptr [ %i.aid, %._crit_edge968 ], [ %i.api, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aot, %bb.du ] ; 4 uses
  %i.apm = phi ptr [ %i.aie, %._crit_edge968 ], [ %i.ape, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aie, %bb.du ] ; 2 uses
  %.sroa.17.1 = phi double [ %.sroa.17.0, %._crit_edge968 ], [ %i.ajn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ajn, %bb.du ]
  %.1141 = phi i64 [ %.0140, %._crit_edge968 ], [ %i.aip, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aip, %bb.du ]
  %i.apn = phi <2 x double> [ %i.aif, %._crit_edge968 ], [ %i.ait, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ait, %bb.du ]
  %i.apo = ptrtoint ptr %i.apl to i64
  %i.app = ptrtoint ptr %i.apm to i64
  %i.apq = sub i64 %i.apo, %i.app
  %i.apr = sdiv exact i64 %i.apq, 24
  %i.aps = load ptr, ptr %.sroa.gep712, align 8
  %i.apt = load ptr, ptr %11, align 8
  %i.apu = ptrtoint ptr %i.aps to i64
  %i.apv = ptrtoint ptr %i.apt to i64
  %i.apw = sub i64 %i.apu, %i.apv
  %i.apx = sdiv exact i64 %i.apw, 24
  %i.apy = load ptr, ptr %i.cc, align 8           ; 2 uses
  %i.apz = load ptr, ptr %i.bt, align 8           ; 2 uses
  %i.aqa = ptrtoint ptr %i.apy to i64
  %i.aqb = ptrtoint ptr %i.apz to i64
  %i.aqc = sub i64 %i.aqa, %i.aqb
  %i.aqd = sdiv exact i64 %i.aqc, 24
  %i.aqe = add nsw i64 %i.aqd, %i.apx
  %i.aqf = icmp ugt i64 %i.apr, %i.aqe
  br i1 %i.aqf, label %bb.dx, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit

bb.dx:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %i.aqg = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc386 unwind label %bb.dq

.noexc386:                                        ; preds = %bb.dx
  br i1 %i.aqg, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %.noexc386
  %i.aqh = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc387 unwind label %bb.dq

.noexc387:                                        ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.aqi = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc388 unwind label %bb.dq

.noexc388:                                        ; preds = %.noexc387
  store ptr %i.aqi, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA81_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aqh, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(81) @.str.4)
          to label %.noexc389 unwind label %bb.dq

.noexc389:                                        ; preds = %.noexc388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit, %.noexc389, %.noexc386
  %i.aqj = phi ptr [ %i.apl, %.noexc389 ], [ %i.apl, %.noexc386 ], [ %i.aid, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit ]
  %.4 = phi i64 [ %.2139.lcssa, %.noexc389 ], [ %.2139.lcssa, %.noexc386 ], [ %.0138, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit ] ; 2 uses
  %.not209 = icmp ult i64 %.4, %i.ahz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0547)
  br i1 %.not209, label %bb.cn, label %bb.ea

bb.dz:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit781, %.loopexit.split-lp782, %.loopexit770, %.loopexit.split-lp771, %.loopexit776, %.loopexit.split-lp777, %bb.dq
  %.pn216.pn = phi { ptr, i32 } [ %i.amr, %bb.dq ], [ %lpad.loopexit.split-lp784, %.loopexit.split-lp782 ], [ %lpad.loopexit.split-lp779, %.loopexit.split-lp777 ], [ %lpad.loopexit.split-lp773, %.loopexit.split-lp771 ], [ %lpad.loopexit778, %.loopexit776 ], [ %lpad.loopexit772, %.loopexit770 ], [ %lpad.loopexit783, %.loopexit781 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0547)
  br label %bb.ee

bb.ea:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread
  invoke void @_ZN6Assimp3IFC12WritePolygonERSt6vectorI10aiVector3tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.aqk = load ptr, ptr %18, align 8             ; 3 uses
  %.not.i.i.i390 = icmp eq ptr %i.aqk, null
  br i1 %.not.i.i.i390, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aql = load ptr, ptr %i.ga, align 8
  %i.aqm = ptrtoint ptr %i.aql to i64
  %i.aqn = ptrtoint ptr %i.aqk to i64
  %i.aqo = sub i64 %i.aqm, %i.aqn
  call void @_ZdlPvm(ptr noundef nonnull %i.aqk, i64 noundef %i.aqo) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.not985, label %.critedge244, label %bb.cm, !llvm.loop !188

end_hunk_1
