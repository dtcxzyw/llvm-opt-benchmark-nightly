Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCBoolean?download=true
inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a
  br i1 %.not.i23.i.i270, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i271, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i268
  %i.mb = load ptr, ptr %..sroa.sel715, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = sub i64 %i.mc, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.md) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i271

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i271: ; preds = %bb.ay, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i268
  store ptr %i.lw, ptr %., align 8
  store ptr %i.ma, ptr %..sroa.sel, align 8
  %i.me = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %i.lu
  store ptr %i.me, ptr %..sroa.sel715, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit274

.loopexit797:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit799 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp798:                            ; preds = %bb.an
  %lpad.loopexit.split-lp800 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit802:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i260
  %lpad.loopexit804 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp803:                            ; preds = %bb.ax
  %lpad.loopexit.split-lp805 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit274: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i271, %bb.av, %bb.au
  %.2 = select i1 %.0192913, ptr %11, ptr %10     ; 2 uses
  %.2.sroa.sel = select i1 %.0192913, ptr %.sroa.gep712, ptr %.sroa.gep711 ; 4 uses
  %i.mf = load ptr, ptr %.2.sroa.sel, align 8     ; 6 uses
  %.2.sroa.sel732 = select i1 %.0192913, ptr %.sroa.gep714, ptr %.sroa.gep713 ; 3 uses
  %i.mg = load ptr, ptr %.2.sroa.sel732, align 8
  %.not.i275 = icmp eq ptr %i.mf, %i.mg
  br i1 %.not.i275, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit274
  store <2 x double> %i.ks, ptr %i.mf, align 8
  %.sroa.13687.0..sroa_idx692 = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store double %.sroa.13687.0, ptr %.sroa.13687.0..sroa_idx692, align 8
  %i.mh = load ptr, ptr %.2.sroa.sel, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  store ptr %i.mi, ptr %.2.sroa.sel, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290

bb.ba:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit274
  %i.mj = load ptr, ptr %.2, align 8              ; 5 uses
  %i.mk = ptrtoint ptr %i.mf to i64
  %i.ml = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mm = sub i64 %i.mk, %i.ml                    ; 3 uses
  %i.mn = icmp eq i64 %i.mm, 9223372036854775800
  br i1 %i.mn, label %bb.bb, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i276

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc288 unwind label %.loopexit.split-lp808

.noexc288:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i276: ; preds = %bb.ba
  %i.mo = sdiv exact i64 %i.mm, 24                ; 3 uses
  %.sroa.speculated.i.i.i277 = call i64 @llvm.umax.i64(i64 %i.mo, i64 1)
  %i.mp = add nsw i64 %.sroa.speculated.i.i.i277, %i.mo ; 2 uses
  %i.mq = icmp ult i64 %i.mp, %i.mo
  %i.mr = call i64 @llvm.umin.i64(i64 %i.mp, i64 384307168202282325)
  %i.ms = select i1 %i.mq, i64 384307168202282325, i64 %i.mr ; 3 uses
  %.not.i.i.i278 = icmp ne i64 %i.ms, 0
  call void @llvm.assume(i1 %.not.i.i.i278)
  %i.mt = mul nuw nsw i64 %i.ms, 24
  %i.mu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mt) #23
          to label %.noexc289 unwind label %.loopexit807 ; 5 uses

.noexc289:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i276
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mm ; 2 uses
  store <2 x double> %i.ks, ptr %i.mv, align 8
  %.sroa.13687.0..sroa_idx694 = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store double %.sroa.13687.0, ptr %.sroa.13687.0..sroa_idx694, align 8
  %.not10.i.i.i.i.i279 = icmp eq ptr %i.mj, %i.mf
  br i1 %.not10.i.i.i.i.i279, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i284, label %.lr.ph.i.i.i.i.i280

.lr.ph.i.i.i.i.i280:                              ; preds = %.noexc289, %.lr.ph.i.i.i.i.i280
  %.012.i.i.i.i.i281 = phi ptr [ %i.mx, %.lr.ph.i.i.i.i.i280 ], [ %i.mu, %.noexc289 ] ; 2 uses
  %.0911.i.i.i.i.i282 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i280 ], [ %i.mj, %.noexc289 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i281, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i282, i64 24, i1 false), !alias.scope !196
  %i.mw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i282, i64 24 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i281, i64 24 ; 2 uses
  %.not.i.i.i.i.i283 = icmp eq ptr %i.mw, %i.mf
  br i1 %.not.i.i.i.i.i283, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i284, label %.lr.ph.i.i.i.i.i280, !llvm.loop !3

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i284: ; preds = %.lr.ph.i.i.i.i.i280, %.noexc289
  %.0.lcssa.i.i.i.i.i285 = phi ptr [ %i.mu, %.noexc289 ], [ %i.mx, %.lr.ph.i.i.i.i.i280 ]
  %i.my = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i285, i64 24
  %.not.i23.i.i286 = icmp eq ptr %i.mj, null
  br i1 %.not.i23.i.i286, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i287, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i284
  %i.mz = load ptr, ptr %.2.sroa.sel732, align 8
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = sub i64 %i.na, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef %i.nb) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i287

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i287: ; preds = %bb.bc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i284
  store ptr %i.mu, ptr %.2, align 8
  store ptr %i.my, ptr %.2.sroa.sel, align 8
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %i.mu, i64 %i.ms
  store ptr %i.nc, ptr %.2.sroa.sel732, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i287, %bb.az
  %i.nd = xor i1 %.0192913, true
  br label %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread

.loopexit807:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i276
  %lpad.loopexit809 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp808:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp810 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread: ; preds = %bb.as, %bb.aq, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit, %bb.ar, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290
  %.1193 = phi i1 [ %i.nd, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit290 ], [ %.0192913, %bb.ar ], [ %.0192913, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit ], [ %.0192913, %bb.aq ], [ %.0192913, %bb.as ]
  %exitcond.not = icmp eq i64 %i.hw, %i.gi
  br i1 %exitcond.not, label %.loopexit796, label %.preheader, !llvm.loop !135

.loopexit796:                                     ; preds = %_ZN6Assimp3IFC21IntersectSegmentPlaneERK10aiVector3tIdES4_S4_S4_bRS2_.exit.thread, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  invoke void @_ZN6Assimp3IFC12WritePolygonERSt6vectorI10aiVector3tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %.loopexit796
  call void @_ZN6Assimp3IFC13FilterPolygonERSt6vectorI10aiVector3tIdESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %11)
  %i.ne = load ptr, ptr %11, align 8              ; 5 uses
  %i.nf = load ptr, ptr %.sroa.gep712, align 8
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %.critedge238, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.nj = load double, ptr %i.nh, align 8, !noalias !197 ; 2 uses
  %i.nk = load double, ptr %i.ne, align 8, !noalias !197 ; 2 uses
  %i.nl = load double, ptr %i.ni, align 8, !noalias !197 ; 2 uses
  %i.nm = load <8 x double>, ptr %9, align 16, !noalias !197 ; 4 uses
  %i.nn = insertelement <2 x double> poison, double %i.nj, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = shufflevector <8 x double> %i.nm, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.nq = fmul <2 x double> %i.no, %i.np
  %i.nr = shufflevector <8 x double> %i.nm, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ns = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> %i.nt, <2 x double> %i.nq)
  %i.nv = shufflevector <8 x double> %i.nm, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.nw = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> %i.nx, <2 x double> %i.nu)
  %i.nz = shufflevector <8 x double> %i.nm, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.oa = fadd <2 x double> %i.ny, %i.nz
  store <2 x double> %i.oa, ptr %13, align 16, !alias.scope !197
  %i.ob = load double, ptr %i.fm, align 16, !noalias !197
  %i.oc = load double, ptr %i.fn, align 8, !noalias !197
  %i.od = fmul double %i.nj, %i.oc
  %i.oe = call double @llvm.fmuladd.f64(double %i.ob, double %i.nk, double %i.od)
  %i.of = load double, ptr %i.fo, align 16, !noalias !197
  %i.og = call double @llvm.fmuladd.f64(double %i.of, double %i.nl, double %i.oe)
  %i.oh = load double, ptr %i.fp, align 8, !noalias !197
  %i.oi = fadd double %i.oh, %i.og
  store double %i.oi, ptr %i.fq, align 16, !alias.scope !197
  %i.oj = invoke noundef zeroext i1 @_ZN6Assimp3IFC11PointInPolyERK10aiVector3tIdERKSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %bb.bf unwind label %.thread   ; 3 uses

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ok = load ptr, ptr %.sroa.gep712, align 8    ; 2 uses
  %i.ol = load ptr, ptr %11, align 8              ; 3 uses
  %.not981 = icmp eq ptr %i.ok, %i.ol
  br i1 %.not981, label %._crit_edge929, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader: ; preds = %bb.bf
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = sub i64 %i.om, %i.on
  %i.op = sdiv exact i64 %i.oo, 24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit

._crit_edge929:                                   ; preds = %._crit_edge, %bb.bf
  %.sroa.0611.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.0611.1.lcssa, %._crit_edge ] ; 27 uses
  %.sroa.40.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.40.1.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.72.0.lcssa = phi ptr [ null, %bb.bf ], [ %.sroa.72.1.lcssa, %._crit_edge ] ; 7 uses
  %i.oq = ptrtoint ptr %.sroa.40.0.lcssa to i64
  %i.or = ptrtoint ptr %.sroa.0611.0.lcssa to i64 ; 4 uses
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = sdiv exact i64 %i.os, 40                ; 4 uses
  %i.ou = and i64 %i.ot, 1
  %.not206 = icmp eq i64 %i.ou, 0
  br i1 %.not206, label %bb.bu, label %bb.br

bb.bg:                                            ; preds = %.loopexit807, %.loopexit.split-lp808, %.loopexit802, %.loopexit.split-lp803, %.loopexit797, %.loopexit.split-lp798, %bb.ak, %bb.aj
  %.pn202.pn = phi { ptr, i32 } [ %i.ht, %bb.aj ], [ %lpad.loopexit.split-lp805, %.loopexit.split-lp803 ], [ %i.hu, %bb.ak ], [ %lpad.loopexit.split-lp800, %.loopexit.split-lp798 ], [ %lpad.loopexit799, %.loopexit797 ], [ %lpad.loopexit804, %.loopexit802 ], [ %lpad.loopexit809, %.loopexit807 ], [ %lpad.loopexit.split-lp810, %.loopexit.split-lp808 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

bb.bh:                                            ; preds = %.loopexit796
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

.thread:                                          ; preds = %bb.be
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EED2Ev.exit402

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit: ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader, %._crit_edge
  %i.ox = phi ptr [ %i.su, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %i.oy = phi ptr [ %i.sv, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %i.oz = phi i64 [ %i.tb, %._crit_edge ], [ %i.op, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ]
  %i.pa = phi ptr [ %i.sx, %._crit_edge ], [ %i.ol, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %.0189928 = phi i1 [ %.lcssa820, %._crit_edge ], [ %i.oj, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  %storemerge927 = phi i64 [ %i.qe, %._crit_edge ], [ 0, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 4 uses
  %.sroa.72.0926 = phi ptr [ %.sroa.72.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  %.sroa.40.0925 = phi ptr [ %.sroa.40.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 2 uses
  %.sroa.0611.0924 = phi ptr [ %.sroa.0611.1.lcssa, %._crit_edge ], [ null, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.pb = getelementptr inbounds nuw [24 x i8], ptr %i.pa, i64 %storemerge927 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.pc = load double, ptr %i.pb, align 8, !noalias !198
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pe = load double, ptr %i.pd, align 8, !noalias !198
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pg = load double, ptr %i.pf, align 8, !noalias !198
  %i.ph = load <12 x double>, ptr %9, align 16, !noalias !198 ; 8 uses
  %i.pi = load double, ptr %i.fp, align 8, !noalias !198
  %i.pj = load double, ptr %i.fn, align 8, !noalias !198
  %i.pk = load double, ptr %i.fl, align 8, !noalias !198
  %i.pl = load double, ptr %i.fj, align 8, !noalias !198
  %i.pm = load <2 x double>, ptr %i.fh, align 8
  %i.pn = load <2 x double>, ptr %i.ff, align 8
  %i.po = insertelement <3 x double> poison, double %i.pe, i64 0
  %i.pp = shufflevector <3 x double> %i.po, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pq = shufflevector <12 x double> %i.ph, <12 x double> poison, <3 x i32> <i32 9, i32 1, i32 5>
  %i.pr = fmul <3 x double> %i.pp, %i.pq
  %i.ps = shufflevector <12 x double> %i.ph, <12 x double> poison, <3 x i32> <i32 8, i32 0, i32 4>
  %i.pt = insertelement <3 x double> poison, double %i.pc, i64 0
  %i.pu = shufflevector <3 x double> %i.pt, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pv = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ps, <3 x double> %i.pu, <3 x double> %i.pr)
  %i.pw = shufflevector <12 x double> %i.ph, <12 x double> poison, <3 x i32> <i32 10, i32 2, i32 6>
  %i.px = insertelement <3 x double> poison, double %i.pg, i64 0
  %i.py = shufflevector <3 x double> %i.px, <3 x double> poison, <3 x i32> zeroinitializer
  %i.pz = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pw, <3 x double> %i.py, <3 x double> %i.pv)
  %i.qa = shufflevector <12 x double> %i.ph, <12 x double> poison, <3 x i32> <i32 11, i32 3, i32 7>
  %i.qb = fadd <3 x double> %i.pz, %i.qa          ; 5 uses
  %i.qc = shufflevector <3 x double> %i.qb, <3 x double> poison, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.qc, ptr %15, align 16, !alias.scope !198
  %i.qd = extractelement <3 x double> %i.qb, i64 0
  store double %i.qd, ptr %i.fr, align 16, !alias.scope !198
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.qe = add nuw i64 %storemerge927, 1           ; 4 uses
  %i.qf = icmp eq i64 %i.qe, %i.oz
  %i.qg = select i1 %i.qf, i64 0, i64 %i.qe
  %i.qh = getelementptr inbounds nuw [24 x i8], ptr %i.pa, i64 %i.qg ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qk = load double, ptr %i.qi, align 8, !noalias !199 ; 2 uses
  %i.ql = load double, ptr %i.qh, align 8, !noalias !199 ; 2 uses
  %i.qm = load double, ptr %i.qj, align 8, !noalias !199 ; 2 uses
  %i.qn = insertelement <2 x double> %i.pn, double %i.pl, i64 1
  %i.qo = insertelement <2 x double> poison, double %i.qk, i64 0
  %i.qp = shufflevector <2 x double> %i.qo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qq = fmul <2 x double> %i.qn, %i.qp
  %i.qr = shufflevector <12 x double> %i.ph, <12 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.qs = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qt = shufflevector <2 x double> %i.qs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qr, <2 x double> %i.qt, <2 x double> %i.qq)
  %i.qv = shufflevector <12 x double> %i.ph, <12 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.qw = insertelement <2 x double> poison, double %i.qm, i64 0
  %i.qx = shufflevector <2 x double> %i.qw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qv, <2 x double> %i.qx, <2 x double> %i.qu)
  %i.qz = insertelement <2 x double> %i.pm, double %i.pk, i64 1
  %i.ra = fadd <2 x double> %i.qz, %i.qy
  store <2 x double> %i.ra, ptr %16, align 16, !alias.scope !199
  %i.rb = fmul double %i.pj, %i.qk
  %i.rc = extractelement <12 x double> %i.ph, i64 8
  %i.rd = call double @llvm.fmuladd.f64(double %i.rc, double %i.ql, double %i.rb)
  %i.re = extractelement <12 x double> %i.ph, i64 10
  %i.rf = call double @llvm.fmuladd.f64(double %i.re, double %i.qm, double %i.rd)
  %i.rg = fadd double %i.pi, %i.rf
  store double %i.rg, ptr %i.fs, align 16, !alias.scope !199
  %.not.i.i = icmp eq ptr %i.ox, %i.oy
  %spec.store.select = select i1 %.not.i.i, ptr %i.ox, ptr %i.oy
  store ptr %spec.store.select, ptr %i.ft, align 8
  %i.rh = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i1 noundef zeroext %.0189928, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.bl     ; 0 uses

bb.bi:                                            ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit
  %i.ri = load ptr, ptr %i.ft, align 8            ; 3 uses
  %i.rj = load ptr, ptr %14, align 8              ; 6 uses
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = ashr exact i64 %i.rm, 5                 ; 2 uses
  %i.ro = icmp ugt i64 %i.rn, 1
  br i1 %i.ro, label %.preheader791, label %.loopexit792

.preheader791:                                    ; preds = %bb.bi
  %i.rp = add nsw i64 %i.rn, -1                   ; 2 uses
  %.not982 = icmp eq i64 %i.rp, 0
  br i1 %.not982, label %.loopexit792, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader791
  %i.rq = shufflevector <3 x double> %i.qb, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rr = shufflevector <3 x double> %i.qb, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.rs = shufflevector <3 x double> %i.qb, <3 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.bk
  %.0185916.us = phi i64 [ %.mux, %bb.bk ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.1187915.us = phi i1 [ %.2188.us.mux, %bb.bk ], [ false, %.preheader.us.preheader ]
  %i.rt = add nuw i64 %.0185916.us, 1             ; 3 uses
  %i.ru = getelementptr inbounds nuw [32 x i8], ptr %i.rj, i64 %i.rt ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  %i.rx = load double, ptr %i.rw, align 8, !noalias !200
  %i.ry = getelementptr inbounds nuw [32 x i8], ptr %i.rj, i64 %.0185916.us ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sb = load double, ptr %i.sa, align 8, !noalias !201
  %i.sc = load <2 x double>, ptr %i.rv, align 8, !noalias !200 ; 2 uses
  %i.sd = load <2 x double>, ptr %i.rz, align 8, !noalias !201 ; 2 uses
  %i.se = shufflevector <2 x double> %i.sc, <2 x double> %i.sd, <2 x i32> <i32 0, i32 2>
  %i.sf = fsub <2 x double> %i.se, %i.rq          ; 2 uses
  %i.sg = shufflevector <2 x double> %i.sc, <2 x double> %i.sd, <2 x i32> <i32 1, i32 3>
  %i.sh = fsub <2 x double> %i.sg, %i.rr          ; 2 uses
  %i.si = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.sj = insertelement <2 x double> %i.si, double %i.sb, i64 1
  %i.sk = fsub <2 x double> %i.sj, %i.rs          ; 2 uses
  %i.sl = fmul <2 x double> %i.sh, %i.sh
  %i.sm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %i.sf, <2 x double> %i.sl)
  %i.sn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.sk, <2 x double> %i.sm) ; 2 uses
  %i.so = extractelement <2 x double> %i.sn, i64 0
  %i.sp = extractelement <2 x double> %i.sn, i64 1
  %i.sq = fcmp olt double %i.so, %i.sp
  br i1 %i.sq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.preheader.us
  %i.sr = load i64, ptr %i.ru, align 8
  %i.ss = load i64, ptr %i.ry, align 8
  store i64 %i.ss, ptr %i.ru, align 8
  store i64 %i.sr, ptr %i.ry, align 8
  %.sroa.0.0.copyload = load <3 x double>, ptr %i.rv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rv, ptr noundef nonnull align 8 dereferenceable(24) %i.rz, i64 24, i1 false)
  store <3 x double> %.sroa.0.0.copyload, ptr %i.rz, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.preheader.us
  %.2188.us = phi i1 [ true, %bb.bj ], [ %.1187915.us, %.preheader.us ] ; 2 uses
  %exitcond1065.not = icmp ne i64 %i.rt, %i.rp    ; 3 uses
  %brmerge = select i1 %exitcond1065.not, i1 true, i1 %.2188.us
  %.mux = select i1 %exitcond1065.not, i64 %i.rt, i64 0
  %.2188.us.mux = select i1 %exitcond1065.not, i1 %.2188.us, i1 false
  br i1 %brmerge, label %.preheader.us, label %.loopexit792, !llvm.loop !146

bb.bl:                                            ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit792:                                     ; preds = %bb.bk, %.preheader791, %bb.bi
  %.not983 = icmp eq ptr %i.ri, %i.rj
  br i1 %.not983, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit
  %19 = and i64 %i.vo, 32
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %.0189928, %20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit792
  %i.su = phi ptr [ %i.ri, %.loopexit792 ], [ %i.vk, %._crit_edge.loopexit ]
  %i.sv = phi ptr [ %i.rj, %.loopexit792 ], [ %i.vl, %._crit_edge.loopexit ]
  %.sroa.0611.1.lcssa = phi ptr [ %.sroa.0611.0924, %.loopexit792 ], [ %.sroa.0611.5, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.40.1.lcssa = phi ptr [ %.sroa.40.0925, %.loopexit792 ], [ %.sroa.40.7, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.72.1.lcssa = phi ptr [ %.sroa.72.0926, %.loopexit792 ], [ %.sroa.72.5, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa820 = phi i1 [ %.0189928, %.loopexit792 ], [ %21, %._crit_edge.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.sw = load ptr, ptr %.sroa.gep712, align 8
  %i.sx = load ptr, ptr %11, align 8              ; 2 uses
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = sub i64 %i.sy, %i.sz
  %i.tb = sdiv exact i64 %i.ta, 24                ; 2 uses
  %i.tc = icmp ult i64 %i.qe, %i.tb
  br i1 %i.tc, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE5clearEv.exit, label %._crit_edge929, !llvm.loop !147

.lr.ph:                                           ; preds = %.loopexit792, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit
  %i.td = phi ptr [ %i.vl, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %i.rj, %.loopexit792 ]
  %.0184920 = phi i64 [ %i.vj, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ 0, %.loopexit792 ] ; 2 uses
  %.sroa.72.1919 = phi ptr [ %.sroa.72.5, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.72.0926, %.loopexit792 ] ; 7 uses
  %.sroa.40.1918 = phi ptr [ %.sroa.40.7, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.40.0925, %.loopexit792 ] ; 6 uses
  %.sroa.0611.1917 = phi ptr [ %.sroa.0611.5, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit ], [ %.sroa.0611.0924, %.loopexit792 ] ; 8 uses
  %i.te = getelementptr inbounds nuw [32 x i8], ptr %i.td, i64 %.0184920 ; 5 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.ti = load double, ptr %i.tg, align 8, !noalias !202 ; 2 uses
  %i.tj = load double, ptr %i.tf, align 8, !noalias !202 ; 2 uses
  %i.tk = load double, ptr %i.th, align 8, !noalias !202 ; 2 uses
  %i.tl = load <8 x double>, ptr %8, align 8, !noalias !202 ; 4 uses
  %i.tm = insertelement <2 x double> poison, double %i.ti, i64 0
  %i.tn = shufflevector <2 x double> %i.tm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.to = shufflevector <8 x double> %i.tl, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.tp = fmul <2 x double> %i.tn, %i.to
  %i.tq = shufflevector <8 x double> %i.tl, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.tr = insertelement <2 x double> poison, double %i.tj, i64 0
  %i.ts = shufflevector <2 x double> %i.tr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tq, <2 x double> %i.ts, <2 x double> %i.tp)
  %i.tu = shufflevector <8 x double> %i.tl, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.tv = insertelement <2 x double> poison, double %i.tk, i64 0
  %i.tw = shufflevector <2 x double> %i.tv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tu, <2 x double> %i.tw, <2 x double> %i.tt)
  %i.ty = shufflevector <8 x double> %i.tl, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.tz = fadd <2 x double> %i.tx, %i.ty          ; 2 uses
  %i.ua = load double, ptr %i.fu, align 8, !noalias !202
  %i.ub = load double, ptr %i.fv, align 8, !noalias !202
  %i.uc = fmul double %i.ti, %i.ub
  %i.ud = call double @llvm.fmuladd.f64(double %i.ua, double %i.tj, double %i.uc)
  %i.ue = load double, ptr %i.cl, align 8, !noalias !202
  %i.uf = call double @llvm.fmuladd.f64(double %i.ue, double %i.tk, double %i.ud)
  %i.ug = load double, ptr %i.cm, align 8, !noalias !202
  %i.uh = fadd double %i.ug, %i.uf                ; 2 uses
  %.not.i291 = icmp eq ptr %.sroa.40.1918, %.sroa.72.1919
  br i1 %.not.i291, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph
  %i.ui = load i64, ptr %i.te, align 8
  store i64 %i.ui, ptr %.sroa.40.1918, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 8
  store <2 x double> %i.tz, ptr %i.uj, align 8
  %.sroa.7597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 24
  store double %i.uh, ptr %.sroa.7597.0..sroa_idx, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.40.1918, i64 32
  store i64 %storemerge927, ptr %i.uk, align 8
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit

bb.bn:                                            ; preds = %.lr.ph
  %i.ul = ptrtoint ptr %.sroa.72.1919 to i64
  %i.um = ptrtoint ptr %.sroa.0611.1917 to i64
  %i.un = sub i64 %i.ul, %i.um                    ; 4 uses
  %i.uo = icmp eq i64 %i.un, 9223372036854775800
  br i1 %i.uo, label %bb.bo, label %_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc428 unwind label %.loopexit.split-lp787

.noexc428:                                        ; preds = %bb.bo
  unreachable

_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bn
  %i.up = sdiv exact i64 %i.un, 40                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.up, i64 1)
  %i.uq = add nsw i64 %.sroa.speculated.i.i, %i.up ; 2 uses
  %i.ur = icmp ult i64 %i.uq, %i.up
  %i.us = call i64 @llvm.umin.i64(i64 %i.uq, i64 230584300921369395)
  %i.ut = select i1 %i.ur, i64 230584300921369395, i64 %i.us ; 3 uses
  %.not.i.i422 = icmp ne i64 %i.ut, 0
  call void @llvm.assume(i1 %.not.i.i422)
  %i.uu = mul nuw nsw i64 %i.ut, 40
  %i.uv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uu) #23
          to label %.noexc429 unwind label %.loopexit786 ; 5 uses

.noexc429:                                        ; preds = %_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.un ; 4 uses
  %i.ux = load i64, ptr %i.te, align 8
  store i64 %i.ux, ptr %i.uw, align 8
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  store <2 x double> %i.tz, ptr %i.uy, align 8
  %.sroa.7597.0..sroa_idx598 = getelementptr inbounds nuw i8, ptr %i.uw, i64 24
  store double %i.uh, ptr %.sroa.7597.0..sroa_idx598, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 32
  store i64 %storemerge927, ptr %i.uz, align 8
  %.not10.i.i.i.i423 = icmp eq ptr %.sroa.0611.1917, %.sroa.72.1919
  br i1 %.not10.i.i.i.i423, label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i, label %.lr.ph.i.i.i.i424

.lr.ph.i.i.i.i424:                                ; preds = %.noexc429, %.lr.ph.i.i.i.i424
  %.012.i.i.i.i425 = phi ptr [ %i.vh, %.lr.ph.i.i.i.i424 ], [ %i.uv, %.noexc429 ] ; 4 uses
  %.0911.i.i.i.i426 = phi ptr [ %i.vg, %.lr.ph.i.i.i.i424 ], [ %.sroa.0611.1917, %.noexc429 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.va = load i64, ptr %.0911.i.i.i.i426, align 8, !alias.scope !204, !noalias !203
  store i64 %i.va, ptr %.012.i.i.i.i425, align 8, !alias.scope !203, !noalias !204
  %i.vb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i425, i64 8
  %i.vc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i426, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vb, ptr noundef nonnull align 8 dereferenceable(24) %i.vc, i64 24, i1 false), !alias.scope !205
  %i.vd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i425, i64 32
  %i.ve = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i426, i64 32
  %i.vf = load i64, ptr %i.ve, align 8, !alias.scope !204, !noalias !203
  store i64 %i.vf, ptr %i.vd, align 8, !alias.scope !203, !noalias !204
  %i.vg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i426, i64 40 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i425, i64 40 ; 2 uses
  %.not.i.i.i.i427 = icmp eq ptr %i.vg, %.sroa.72.1919
  br i1 %.not.i.i.i.i427, label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i, label %.lr.ph.i.i.i.i424, !llvm.loop !153

_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i: ; preds = %.lr.ph.i.i.i.i424, %.noexc429
  %.0.lcssa.i.i.i.i = phi ptr [ %i.uv, %.noexc429 ], [ %i.vh, %.lr.ph.i.i.i.i424 ]
  %.not.i25.i = icmp eq ptr %.sroa.0611.1917, null
  br i1 %.not.i25.i, label %.noexc292, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0611.1917, i64 noundef %i.un) #24
  br label %.noexc292

.noexc292:                                        ; preds = %bb.bp, %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i
  %i.vi = getelementptr inbounds nuw [40 x i8], ptr %i.uv, i64 %i.ut
  br label %_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit

_ZNSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12emplace_backIJRmS2_S7_EEERS3_DpOT_.exit: ; preds = %.noexc292, %bb.bm
  %.sroa.0611.5 = phi ptr [ %i.uv, %.noexc292 ], [ %.sroa.0611.1917, %bb.bm ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %.noexc292 ], [ %.sroa.40.1918, %bb.bm ]
  %.sroa.72.5 = phi ptr [ %i.vi, %.noexc292 ], [ %.sroa.72.1919, %bb.bm ] ; 2 uses
  %.sroa.40.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 40 ; 2 uses
  %i.vj = add nuw i64 %.0184920, 1                ; 2 uses
  %i.vk = load ptr, ptr %i.ft, align 8            ; 2 uses
  %i.vl = load ptr, ptr %14, align 8              ; 3 uses
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = sub i64 %i.vm, %i.vn                    ; 2 uses
  %i.vp = ashr exact i64 %i.vo, 5
  %i.vq = icmp ult i64 %i.vj, %i.vp
  br i1 %i.vq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !154

.loopexit786:                                     ; preds = %_ZNKSt6vectorISt5tupleIJm10aiVector3tIdEmEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit788 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp787:                            ; preds = %bb.bo
  %lpad.loopexit.split-lp789 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit786, %.loopexit.split-lp787, %bb.bl
  %.sroa.0611.2 = phi ptr [ %.sroa.0611.0924, %bb.bl ], [ %.sroa.0611.1917, %.loopexit786 ], [ %.sroa.0611.1917, %.loopexit.split-lp787 ]
  %.sroa.72.2 = phi ptr [ %.sroa.72.0926, %bb.bl ], [ %.sroa.72.1919, %.loopexit786 ], [ %.sroa.72.1919, %.loopexit.split-lp787 ]
  %.pn224.pn = phi { ptr, i32 } [ %i.st, %bb.bl ], [ %lpad.loopexit788, %.loopexit786 ], [ %lpad.loopexit.split-lp789, %.loopexit.split-lp787 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ei

bb.br:                                            ; preds = %._crit_edge929
  %i.vr = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc293 unwind label %bb.bt

.noexc293:                                        ; preds = %bb.br
  br i1 %i.vr, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA87_KcEEEvDpOT_.exit, label %bb.bs

bb.bs:                                            ; preds = %.noexc293
  %i.vs = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc294 unwind label %bb.bt

.noexc294:                                        ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.vt = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc295 unwind label %bb.bt

.noexc295:                                        ; preds = %.noexc294
  store ptr %i.vt, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA87_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.vs, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(87) @.str.3)
          to label %.noexc296 unwind label %bb.bt

.noexc296:                                        ; preds = %.noexc295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA87_KcEEEvDpOT_.exit

bb.bt:                                            ; preds = %.noexc295, %.noexc294, %bb.bs, %bb.br
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.bu:                                            ; preds = %._crit_edge929
  %i.vv = icmp ugt i64 %i.ot, 1
  br i1 %i.vv, label %bb.bv, label %.critedge6

end_hunk_0
