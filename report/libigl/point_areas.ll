Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_areas?download=true
inline.NumInlined: 12872
inline.NumDeleted: 5810
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZZN3igl8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_NS4_IdLin1ELi1ELi0ELin1ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EERNSL_IT3_EEENKUliE_clEi:bb.a
  %i.aex = fneg <2 x double> %i.aew
  %i.aey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aex, <2 x double> %i.aew, <2 x double> %i.aev)
  %i.aez = fmul <2 x double> %i.aep, %i.aeu
  %i.afa = fdiv <2 x double> %i.aey, %i.aez       ; 3 uses
  %i.afb = fmul double %i.aeg, %i.aes
  %i.afc = extractelement <2 x double> %i.afa, i64 1
  %i.afd = fmul double %i.aef, %i.afc             ; 2 uses
  %i.afe = extractelement <2 x double> %i.afa, i64 0
  %i.aff = fmul double %i.aeh, %i.afe             ; 2 uses
  %i.afg = fadd double %i.afb, %i.afd
  %i.afh = fadd double %i.aff, %i.afg             ; 2 uses
  %i.afi = fdiv double %i.aff, %i.afh
  %i.afj = fadd double %i.aef, %i.aeh
  %i.afk = fadd double %i.aeg, %i.afj
  %i.afl = fsub double %i.aeg, %i.aef             ; 2 uses
  %i.afm = fsub double %i.aeh, %i.afl
  %i.afn = fmul double %i.afm, %i.afk
  %i.afo = fadd double %i.afl, %i.aeh
  %i.afp = fmul double %i.afo, %i.afn
  %i.afq = fsub double %i.aef, %i.aeh
  %i.afr = fadd double %i.aeg, %i.afq
  %i.afs = fmul double %i.afr, %i.afp
  %i.aft = call double @sqrt(double noundef %i.afs) #32
  %i.afu = fmul double %i.aft, 2.500000e-01       ; 4 uses
  %i.afv = fmul double %i.afi, %i.afu
  %i.afw = fcmp olt double %i.aes, 0.000000e+00
  br i1 %i.afw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.loopexit
  %i.afx = call double @llvm.fmuladd.f64(double %i.afu, double 5.000000e-01, double %.089858)
  br label %bb.by

bb.bv:                                            ; preds = %.loopexit
  %i.afy = fcmp olt <2 x double> %i.afa, zeroinitializer
  %i.afz = bitcast <2 x i1> %i.afy to i2
  %.not1075 = icmp eq i2 %i.afz, 0
  br i1 %.not1075, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aga = call double @llvm.fmuladd.f64(double %i.afu, double 2.500000e-01, double %.089858)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.agb = fdiv double %i.afd, %i.afh
  %.sroa.0365.8.vec.extract = fmul double %i.afu, %i.agb
  %i.agc = fadd double %i.afv, %.sroa.0365.8.vec.extract
  %i.agd = fmul double %i.agc, 5.000000e-01
  %i.age = fadd double %.089858, %i.agd
  br label %bb.by

bb.by:                                            ; preds = %bb.bu, %bb.bx, %bb.bw, %.preheader
  %.2 = phi double [ %.089858, %.preheader ], [ %i.afx, %bb.bu ], [ %i.aga, %bb.bw ], [ %i.age, %bb.bx ] ; 2 uses
  %indvars.iv.next885 = add nuw nsw i64 %indvars.iv884, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next885, %.1.i
  br i1 %exitcond.not, label %._crit_edge860, label %.preheader, !llvm.loop !421

bb.bz:                                            ; preds = %._crit_edge860
  %i.agf = landingpad { ptr, i32 }
          catch ptr null
  %i.agg = extractvalue { ptr, i32 } %i.agf, 0
  call void @__clang_call_terminate(ptr %i.agg) #38
  unreachable

_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev.exit: ; preds = %._crit_edge860
  %i.agh = getelementptr inbounds nuw i8, ptr %20, i64 104
  call void @_ZN4CGAL17Compact_containerINS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS1_IjS2_NS3_IS2_NS4_IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_7DefaultESF_SF_ED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.agh) #32
  %i.agi = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_ED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.agi) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %.not.i.i.i315 = icmp eq ptr %.sroa.0495.0.lcssa, null
  br i1 %.not.i.i.i315, label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev.exit
  %i.agj = ptrtoint ptr %.sroa.14502.0.lcssa to i64
  %i.agk = ptrtoint ptr %.sroa.0495.0.lcssa to i64
  %i.agl = sub i64 %i.agj, %i.agk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0495.0.lcssa, i64 noundef %i.agl) #40
  br label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit: ; preds = %_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev.exit, %bb.ca
  %i.agm = load ptr, ptr %18, align 8, !tbaa !46
  call void @free(ptr noundef %i.agm) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.agn = load ptr, ptr %16, align 8, !tbaa !46
  call void @free(ptr noundef %i.agn) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.ago = load ptr, ptr %13, align 8, !tbaa !46
  call void @free(ptr noundef %i.ago) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ch

.body262:                                         ; preds = %bb.bj, %bb.bp
  %.pn184.pn.pn.pn = phi { ptr, i32 } [ %i.ye, %bb.bp ], [ %i.wf, %bb.bj ]
  call void @_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %20) #32
  br label %.body253

.body253:                                         ; preds = %bb.az, %.body262
  %.pn184.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn184.pn.pn.pn, %.body262 ], [ %i.tz, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit813, %.loopexit.split-lp, %.body253
  %.sroa.0495.0841 = phi ptr [ %.sroa.0495.0.lcssa, %.body253 ], [ %.sroa.0495.0846, %.loopexit813 ], [ %.sroa.0495.0846, %.loopexit.split-lp ] ; 3 uses
  %.sroa.14502.0833 = phi ptr [ %.sroa.14502.0.lcssa, %.body253 ], [ %.sroa.14502.0848, %.loopexit813 ], [ %.sroa.14502.0848, %.loopexit.split-lp ]
  %.pn190 = phi { ptr, i32 } [ %.pn184.pn.pn.pn.pn, %.body253 ], [ %lpad.loopexit, %.loopexit813 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i316 = icmp eq ptr %.sroa.0495.0841, null
  br i1 %.not.i.i.i316, label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit317, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.agp = ptrtoint ptr %.sroa.14502.0833 to i64
  %i.agq = ptrtoint ptr %.sroa.0495.0841 to i64
  %i.agr = sub i64 %i.agp, %i.agq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0495.0841, i64 noundef %i.agr) #40
  br label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit317

_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit317: ; preds = %bb.cb, %bb.cc
  %i.ags = load ptr, ptr %18, align 8, !tbaa !46
  call void @free(ptr noundef %i.ags) #32
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit317, %bb.ba
  %.pn190.pn = phi { ptr, i32 } [ %.pn190, %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit317 ], [ %i.ua, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.agt = load ptr, ptr %16, align 8, !tbaa !46
  call void @free(ptr noundef %i.agt) #32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.body250
  %.pn190.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn, %bb.cd ], [ %i.oi, %.body250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %15) #32
  br label %.body247

.body247:                                         ; preds = %bb.aq, %bb.ce
  %.pn190.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn, %bb.ce ], [ %i.nj, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.agu = load ptr, ptr %13, align 8, !tbaa !46
  call void @free(ptr noundef %i.agu) #32
  br label %bb.cf

bb.cf:                                            ; preds = %.body247, %bb.ay
  %.pn190.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn.pn, %.body247 ], [ %i.tg, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ax
  %.pn190.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn.pn.pn, %bb.cf ], [ %i.tf, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ci

bb.ch:                                            ; preds = %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit, %.thread
  %i.agv = load ptr, ptr %7, align 8, !tbaa !46
  call void @free(ptr noundef %i.agv) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  ret void

bb.ci:                                            ; preds = %bb.am, %bb.cg, %bb.af
  %.pn198 = phi { ptr, i32 } [ %.pn147.pn.pn.pn.pn.pn.pn, %bb.am ], [ %.pn190.pn.pn.pn.pn.pn.pn, %bb.cg ], [ %i.lw, %bb.af ]
  %i.agw = load ptr, ptr %7, align 8, !tbaa !46
  call void @free(ptr noundef %i.agw) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  resume { ptr, i32 } %.pn198
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.206") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94, !noalias !461 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !95, !noalias !461 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !145

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37, !noalias !461
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #39, !noalias !461
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !114, !noalias !461 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !114, !noalias !461
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.k = sub i64 %.pre-phi.i, %.pre-phi5.i        ; 10 uses
  %i.l = icmp sgt i64 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.e, !prof !146

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.k, i1 false), !noalias !461
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.k, 4
  br i1 %i.m, label %.thread23, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  store ptr %1, ptr %0, align 8, !tbaa !98
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i4 = icmp eq i64 %.pre-phi.i, %.pre-phi5.i
  br i1 %.not.i.i.i.i.i4, label %.thread, label %bb.g

.thread23:                                        ; preds = %bb.e
  %i.q = load i32, ptr %i.i, align 4, !tbaa !60, !noalias !461
  store i32 %i.q, ptr %i.j, align 4, !tbaa !60, !noalias !461
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  store ptr %1, ptr %0, align 8, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5

.thread:                                          ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds i8, ptr null, i64 %i.k ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !97
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.x, label %.noexc.i.i.i6, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, !prof !462

.noexc.i.i.i6:                                    ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i6
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5: ; preds = %.thread23, %bb.g
  %i.y = phi i64 [ %i.s, %.thread23 ], [ %i.o, %bb.g ] ; 3 uses
  %i.z = phi ptr [ %i.t, %.thread23 ], [ %i.p, %bb.g ]
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #39
          to label %.noexc7 unwind label %bb.l    ; 4 uses

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.k ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !97
  %4 = icmp samesign ugt i64 %i.k, 4
  br i1 %4, label %bb.h, label %bb.i, !prof !463

bb.h:                                             ; preds = %.noexc7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.j, i64 %i.k, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.noexc7
  %i.ae = icmp eq i64 %i.k, 4
  br i1 %i.ae, label %.thread16, label %bb.j

.thread16:                                        ; preds = %bb.i
  %i.af = load i32, ptr %i.j, align 4, !tbaa !60
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !60
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.y, ptr %i.ag, align 8, !tbaa !61
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread
  %i.ah = phi i64 [ %i.y, %bb.h ], [ %i.y, %bb.i ], [ %i.o, %.thread ]
  %i.ai = phi ptr [ %i.ac, %bb.h ], [ %i.ac, %bb.i ], [ %i.v, %.thread ]
  %i.aj = phi ptr [ %i.ab, %bb.h ], [ %i.ab, %bb.i ], [ %i.u, %.thread ]
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !61
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread16, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i5, %.noexc.i.i.i6
  %i.al = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.al
}

declare void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind writable sret(%"class.std::vector.213") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4CGAL30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(184) %i.a)
          to label %_ZN4CGAL30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #38
  unreachable

_ZN4CGAL30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEED2Ev.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4CGAL17Compact_containerINS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS1_IjS2_NS3_IS2_NS4_IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_7DefaultESF_SF_ED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_ED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.e) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.b) #32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.e) #32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !148
  tail call void @free(ptr noundef %i.g) #32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148
  tail call void @free(ptr noundef %i.i) #32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  tail call void @free(ptr noundef %i.k) #32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151
  tail call void @free(ptr noundef %i.m) #32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !153
  tail call void @free(ptr noundef %i.o) #32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.q) #32
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.r) #32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !148
  tail call void @free(ptr noundef %i.u) #32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.w) #32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !148
  tail call void @free(ptr noundef %i.y) #32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !148
  tail call void @free(ptr noundef %i.aa) #32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148
  tail call void @free(ptr noundef %i.ac) #32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !151
  tail call void @free(ptr noundef %i.ae) #32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !153
  tail call void @free(ptr noundef %i.ag) #32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.ai) #32
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.aj) #32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.al) #32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.an) #32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.ap) #32
  %i.aq = load ptr, ptr %0, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.aq) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !477, !nonnull !64, !align !65
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !479  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !480, !nonnull !64, !align !65 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !483, !nonnull !64, !align !65 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46, !noalias !484 ; 27 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39, !noalias !484 ; 25 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  %i.l = icmp sgt i64 %i.i, 1                     ; 3 uses
  br i1 %i.j, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.m = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.n = and i64 %i.m, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader: ; preds = %bb.a
  %i.o = load double, ptr %i.k, align 8, !tbaa !100
  %i.p = fdiv double 0.000000e+00, %i.o
  store double %i.p, ptr %i.b, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load double, ptr %i.k, align 8, !tbaa !100
  %i.s = fdiv double 0.000000e+00, %i.r
  store double %i.s, ptr %i.q, align 8, !tbaa !44
  br label %.split12.us

.split12.us.loopexit.unr-lcssa:                   ; preds = %.lr.ph96.i.i.i.i.i.i.i.2
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %.split12.us, label %.lr.ph96.i.i.i.i.i.i.i.2.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.2.epil.preheader:          ; preds = %.split12.us.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.2.preheader
  %.094.i.i.i.i.i.i.i.2.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.2.preheader ], [ %i.nk, %.split12.us.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.2.epil.init = phi double [ %i.mb, %.lr.ph96.i.i.i.i.i.i.i.2.preheader ], [ %i.nj, %.split12.us.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter124, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph96.i.i.i.i.i.i.i.2.epil

.lr.ph96.i.i.i.i.i.i.i.2.epil:                    ; preds = %.lr.ph96.i.i.i.i.i.i.i.2.epil, %.lr.ph96.i.i.i.i.i.i.i.2.epil.preheader
  %.094.i.i.i.i.i.i.i.2.epil = phi i64 [ %i.w, %.lr.ph96.i.i.i.i.i.i.i.2.epil ], [ %.094.i.i.i.i.i.i.i.2.epil.init, %.lr.ph96.i.i.i.i.i.i.i.2.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.2.epil = phi double [ %i.v, %.lr.ph96.i.i.i.i.i.i.i.2.epil ], [ %.293.i.i.i.i.i.i.i.2.epil.init, %.lr.ph96.i.i.i.i.i.i.i.2.epil.preheader ]
  %epil.iter125 = phi i64 [ %epil.iter125.next, %.lr.ph96.i.i.i.i.i.i.i.2.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.2.epil.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.094.i.i.i.i.i.i.i.2.epil
  %i.u = load double, ptr %i.t, align 8, !tbaa !44
  %i.v = fadd double %.293.i.i.i.i.i.i.i.2.epil, %i.u ; 2 uses
  %i.w = add nuw nsw i64 %.094.i.i.i.i.i.i.i.2.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
end_hunk_0
