Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 951
begin_hunk_0_@_ZN7openvdb5v13_05tools26point_partitioner_internal9partitionIjsNS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEEEvRKT1_RKNS6_9TransformEjRSt10unique_ptrIA_T_St14default_deleteISI_EESM_RSG_IA_NS6_5CoordESJ_ISO_EERSH_RSG_IA_T0_SJ_ISU_EEbb:bb.a
  %lcmp.mod270 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod270)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader
  %.050175.epil = phi i64 [ %.050175.epil.init, %.epil.preheader ], [ %i.et, %bb.aa ] ; 2 uses
  %.1174.epil = phi i64 [ %.1174.epil.init, %.epil.preheader ], [ %i.eo, %bb.aa ] ; 2 uses
  %.154173.epil = phi i32 [ %.154173.epil.init, %.epil.preheader ], [ %i.es, %bb.aa ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.eo = add i64 %.1174.epil, 1                  ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.1174.epil
  store i32 %.154173.epil, ptr %i.ep, align 4, !tbaa !741
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.050175.epil
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !741
  %i.es = add i32 %i.er, %.154173.epil            ; 2 uses
  %i.et = add nuw nsw i64 %.050175.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge178, label %bb.aa, !llvm.loop !6210

._crit_edge178:                                   ; preds = %._crit_edge178.loopexit.unr-lcssa, %bb.aa, %bb.z
  %.154.lcssa = phi i32 [ %.053180, %bb.z ], [ %i.fr, %._crit_edge178.loopexit.unr-lcssa ], [ %i.es, %bb.aa ] ; 2 uses
  %.1.lcssa = phi i64 [ %.051182, %bb.z ], [ %i.fl, %._crit_edge178.loopexit.unr-lcssa ], [ %i.eo, %bb.aa ]
  %i.eu = add nuw nsw i64 %.052181, 1             ; 2 uses
  %exitcond205.not = icmp eq i64 %i.eu, %i.v
  br i1 %exitcond205.not, label %._crit_edge184, label %bb.z, !llvm.loop !6211

bb.ab:                                            ; preds = %bb.ab, %.lr.ph177.new
  %.050175 = phi i64 [ 1, %.lr.ph177.new ], [ %i.fs, %bb.ab ] ; 5 uses
  %.1174 = phi i64 [ %.051182, %.lr.ph177.new ], [ %i.fl, %bb.ab ] ; 5 uses
  %.154173 = phi i32 [ %.053180, %.lr.ph177.new ], [ %i.fr, %bb.ab ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph177.new ], [ %niter.next.3, %bb.ab ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.1174
  store i32 %.154173, ptr %i.ev, align 4, !tbaa !741
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.050175
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !741
  %i.ey = add i32 %i.ex, %.154173                 ; 2 uses
  %i.ez = getelementptr [4 x i8], ptr %i.ek, i64 %.1174
  %i.fa = getelementptr i8, ptr %i.ez, i64 4
  store i32 %i.ey, ptr %i.fa, align 4, !tbaa !741
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.050175
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !741
  %i.fe = add i32 %i.fd, %i.ey                    ; 2 uses
  %i.ff = getelementptr [4 x i8], ptr %i.ek, i64 %.1174
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  store i32 %i.fe, ptr %i.fg, align 4, !tbaa !741
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.050175
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !741
  %i.fk = add i32 %i.fj, %i.fe                    ; 2 uses
  %i.fl = add i64 %.1174, 4                       ; 3 uses
  %i.fm = getelementptr [4 x i8], ptr %i.ek, i64 %.1174
  %i.fn = getelementptr i8, ptr %i.fm, i64 12
  store i32 %i.fk, ptr %i.fn, align 4, !tbaa !741
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.050175
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !741
  %i.fr = add i32 %i.fq, %i.fk                    ; 3 uses
  %i.fs = add nuw nsw i64 %.050175, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge178.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !6212

bb.ac:                                            ; preds = %._crit_edge184
  %i.ft = load ptr, ptr %3, align 8, !tbaa !1971  ; 2 uses
  store ptr %i.ee, ptr %3, align 8, !tbaa !1971
  %.not.i.i85 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i85, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i86

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i86: ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.ft) #31
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i86, %bb.ac
  br i1 %i.ah, label %._crit_edge192, label %_ZNSt12_Vector_baseIPjSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPjSaIS0_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #30
          to label %.lr.ph191.preheader unwind label %.thread ; 3 uses

.lr.ph191.preheader:                              ; preds = %_ZNSt12_Vector_baseIPjSaIS0_EE11_M_allocateEm.exit.i
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.v
  %i.fw = load ptr, ptr %3, align 8, !tbaa !1971
  br label %.lr.ph191

._crit_edge192:                                   ; preds = %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87 ], [ %.sroa.0.3, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ] ; 7 uses
  %.sroa.18.0.lcssa = phi ptr [ null, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit87 ], [ %.sroa.18.3, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %i.fx = load i32, ptr %6, align 4, !tbaa !741   ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = mul nuw nsw i64 %i.fy, 12               ; 2 uses
  %i.ga = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fz) #30
          to label %bb.aj unwind label %bb.av     ; 2 uses

bb.ad:                                            ; preds = %._crit_edge184
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131

.thread:                                          ; preds = %_ZNSt12_Vector_baseIPjSaIS0_EE11_M_allocateEm.exit.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit131

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit
  %.0190 = phi i64 [ %i.gw, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ], [ 0, %.lr.ph191.preheader ] ; 2 uses
  %.0150189 = phi ptr [ %i.gv, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ], [ %i.fw, %.lr.ph191.preheader ] ; 3 uses
  %.sroa.18.0188 = phi ptr [ %.sroa.18.3, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ], [ %i.fv, %.lr.ph191.preheader ] ; 5 uses
  %.sroa.12.0187 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ], [ %i.fu, %.lr.ph191.preheader ] ; 3 uses
  %.sroa.0.0186 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit ], [ %i.fu, %.lr.ph191.preheader ] ; 7 uses
  %.not.i91 = icmp eq ptr %.sroa.12.0187, %.sroa.18.0188
  br i1 %.not.i91, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph191
  store ptr %.0150189, ptr %.sroa.12.0187, align 8, !tbaa !1971
  br label %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit

bb.af:                                            ; preds = %.lr.ph191
  %i.gd = ptrtoint ptr %.sroa.18.0188 to i64
  %i.ge = ptrtoint ptr %.sroa.0.0186 to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 6 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775800
  br i1 %i.gg, label %bb.ag, label %_ZNKSt6vectorIPjSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #29
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIPjSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.af
  %i.gh = ashr exact i64 %i.gf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i92 = call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i92, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 1152921504606846975)
  %i.gl = select i1 %i.gj, i64 1152921504606846975, i64 %i.gk ; 3 uses
  %.not.i.i.i93 = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i93)
  %i.gm = shl nuw nsw i64 %i.gl, 3
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #30
          to label %.noexc96 unwind label %.loopexit156 ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIPjSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gf ; 2 uses
  store ptr %.0150189, ptr %i.go, align 8, !tbaa !1971
  %i.gp = icmp sgt i64 %i.gf, 0
  br i1 %i.gp, label %bb.ah, label %_ZNSt6vectorIPjSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.ah:                                            ; preds = %.noexc96
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr align 8 %.sroa.0.0186, i64 %i.gf, i1 false)
  br label %_ZNSt6vectorIPjSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPjSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.ah, %.noexc96
  %.not.i17.i.i94 = icmp eq ptr %.sroa.0.0186, null
  br i1 %.not.i17.i.i94, label %_ZNSt6vectorIPjSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPjSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0186, i64 noundef %i.gf) #31
  br label %_ZNSt6vectorIPjSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPjSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIPjSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gl
  br label %_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPjSaIS0_EE9push_backERKS0_.exit:     ; preds = %_ZNSt6vectorIPjSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.ae
  %.sroa.0.3 = phi ptr [ %i.gn, %_ZNSt6vectorIPjSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0.0186, %bb.ae ] ; 2 uses
  %.pn = phi ptr [ %i.go, %_ZNSt6vectorIPjSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.12.0187, %bb.ae ]
  %.sroa.18.3 = phi ptr [ %i.gq, %_ZNSt6vectorIPjSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.18.0188, %bb.ae ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.gr = load ptr, ptr %15, align 8, !tbaa !2049
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %.0190
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !2057
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !2059
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.0150189, i64 %i.gu
  %i.gw = add nuw i64 %.0190, 1                   ; 2 uses
  %exitcond207.not = icmp eq i64 %i.gw, %i.v
  br i1 %exitcond207.not, label %._crit_edge192, label %.lr.ph191, !llvm.loop !6213

.loopexit156:                                     ; preds = %_ZNKSt6vectorIPjSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp:                               ; preds = %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aj:                                            ; preds = %._crit_edge192
  %i.gx = icmp eq i32 %i.fx, 0
  br i1 %i.gx, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.aj
  %i.gy = add nsw i64 %i.fz, -12                  ; 2 uses
  %i.gz = urem i64 %i.gy, 12
  %i.ha = sub nuw nsw i64 %i.gy, %i.gz
  %i.hb = add nsw i64 %i.ha, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ga, i8 0, i64 %i.hb, i1 false), !tbaa !741
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.aj
  %i.hc = load ptr, ptr %5, align 8, !tbaa !2040  ; 2 uses
  store ptr %i.ga, ptr %5, align 8, !tbaa !2040
  %.not.i.i97 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i97, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math5CoordEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math5CoordEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.hc) #31
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math5CoordEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  store ptr %20, ptr %21, align 8, !tbaa !2061
  %i.hd = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %18, ptr %i.hd, align 8, !tbaa !2063
  %i.he = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %13, ptr %i.he, align 8, !tbaa !2065
  %i.hf = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %17, ptr %i.hf, align 8, !tbaa !2063
  %i.hg = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %5, ptr %i.hg, align 8, !tbaa !2067
  %i.hh = getelementptr inbounds nuw i8, ptr %21, i64 40
  store ptr %i.a, ptr %i.hh, align 8, !tbaa !1971
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_05tools26point_partitioner_internal9partitionIjsNS7_6lvlset10PointArrayINS6_4math4Vec3IfEEEEEEvRKT1_RKNSC_9TransformEjRSt10unique_ptrIA_T_St14default_deleteISO_EESS_RSM_IA_NSC_5CoordESP_ISU_EERSN_RSM_IA_T0_SP_IS10_EEbbEUlRS4_E_KNS1_16auto_partitionerEE3runERKS4_RKS15_RS17_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ak unwind label %bb.aw

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EE5resetIPS3_vEEvT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.hi = load ptr, ptr %15, align 8, !tbaa !2049
  store ptr %.sroa.0.0.lcssa, ptr %22, align 8, !tbaa !2070
  %i.hj = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !2071
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools26point_partitioner_internal17MoveSegmentDataOpIjEEKNS1_16auto_partitionerEE3runERKS4_RKSA_RSC_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.al unwind label %bb.ax

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %.not.i.i.i100 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hk = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.hl = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.hm) #31
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit

_ZNSt6vectorIPjSaIS0_EED2Ev.exit:                 ; preds = %bb.al, %bb.am
  %i.hn = load ptr, ptr %20, align 8, !tbaa !1953 ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIPjSaIS0_EED2Ev.exit
  %i.ho = load ptr, ptr %i.bd, align 8, !tbaa !1954
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hr) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIPjSaIS0_EED2Ev.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.hs = load ptr, ptr %18, align 8, !tbaa !2048 ; 4 uses
  %.not.i102 = icmp eq ptr %i.hs, null
  br i1 %.not.i102, label %_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -8 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8            ; 2 uses
  %.idx.i.i = shl i64 %i.hu, 3                    ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %_ZNKSt14default_deleteIA_St10unique_ptrIA_jS_IS1_EEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.ao
  %i.hw = getelementptr inbounds i8, ptr %i.hs, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.hx = phi ptr [ %i.hy, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i ], [ %i.hw, %.preheader.preheader.i.i ]
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -8 ; 3 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !1971 ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i103, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %.preheader.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.hz) #31
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %.preheader.i.i
  %i.ia = icmp eq ptr %i.hy, %i.hs
  br i1 %i.ia, label %_ZNKSt14default_deleteIA_St10unique_ptrIA_jS_IS1_EEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_St10unique_ptrIA_jS_IS1_EEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i, %bb.ao
  %i.ib = add i64 %.idx.i.i, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.ht, i64 noundef %i.ib) #31
  br label %_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit

_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNKSt14default_deleteIA_St10unique_ptrIA_jS_IS1_EEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.ic = load ptr, ptr %17, align 8, !tbaa !2048 ; 4 uses
  %.not.i104 = icmp eq ptr %i.ic, null
  br i1 %.not.i104, label %_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit112, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 -8 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8            ; 2 uses
  %.idx.i.i105 = shl i64 %i.ie, 3                 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %_ZNKSt14default_deleteIA_St10unique_ptrIA_jS_IS1_EEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i111, label %.preheader.preheader.i.i106

.preheader.preheader.i.i106:                      ; preds = %bb.ap
  %i.ig = getelementptr inbounds i8, ptr %i.ic, i64 %.idx.i.i105
  br label %.preheader.i.i107

.preheader.i.i107:                                ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i110, %.preheader.preheader.i.i106
  %i.ih = phi ptr [ %i.ii, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i110 ], [ %i.ig, %.preheader.preheader.i.i106 ]
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -8 ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !1971 ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i108, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i110, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i109

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i109: ; preds = %.preheader.i.i107
  call void @_ZdaPv(ptr noundef nonnull %i.ij) #31
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i110

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i110: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i109, %.preheader.i.i107
  %i.ik = icmp eq ptr %i.ii, %i.ic
  br i1 %i.ik, label %_ZNKSt14default_deleteIA_St10unique_ptrIA_jS_IS1_EEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i111, label %.preheader.i.i107

_ZNKSt14default_deleteIA_St10unique_ptrIA_jS_IS1_EEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i111: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i110, %bb.ap
  %i.il = add i64 %.idx.i.i105, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.id, i64 noundef %i.il) #31
  br label %_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit112

_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit112: ; preds = %_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit, %_ZNKSt14default_deleteIA_St10unique_ptrIA_jS_IS1_EEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.im = load ptr, ptr %15, align 8, !tbaa !2049 ; 4 uses
  %.not.i113 = icmp eq ptr %i.im, null
  br i1 %.not.i113, label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit112
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -8 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8            ; 2 uses
  %.idx.i.i114 = shl i64 %i.io, 3                 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i, label %.preheader.preheader.i.i115

.preheader.preheader.i.i115:                      ; preds = %bb.aq
  %i.iq = getelementptr inbounds i8, ptr %i.im, i64 %.idx.i.i114
  br label %.preheader.i.i116

.preheader.i.i116:                                ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i, %.preheader.preheader.i.i115
  %i.ir = phi ptr [ %i.is, %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i ], [ %i.iq, %.preheader.preheader.i.i115 ]
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -8 ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !2057 ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i117, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader.i.i116
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !1971 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %bb.ar
  call void @_ZdaPv(ptr noundef nonnull %i.iv) #31
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %bb.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 16) #31
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEEEclEPS5_.exit.i.i.i, %.preheader.i.i116
  %i.iw = icmp eq ptr %i.is, %i.im
  br i1 %i.iw, label %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i, label %.preheader.i.i116

_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i: ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EED2Ev.exit.i.i, %bb.aq
  %i.ix = add i64 %.idx.i.i114, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.in, i64 noundef %i.ix) #31
  br label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit

_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_S_IA_jSt14default_deleteIS0_EES1_IS4_EED2Ev.exit112, %_ZNKSt14default_deleteIA_St10unique_ptrIN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEES_IS6_EEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.iy = load ptr, ptr %14, align 8, !tbaa !2049 ; 4 uses
  %.not.i118 = icmp eq ptr %i.iy, null
  br i1 %.not.i118, label %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit128, label %bb.as

bb.as:                                            ; preds = %_ZNSt10unique_ptrIA_S_IN7openvdb5v13_05tools26point_partitioner_internal5ArrayIjEESt14default_deleteIS5_EES6_IS9_EED2Ev.exit
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -8 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8            ; 2 uses
  %.idx.i.i119 = shl i64 %i.ja, 3                 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
end_hunk_0
