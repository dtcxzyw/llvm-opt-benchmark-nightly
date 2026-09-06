Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/intersect_other?download=true
inline.NumInlined: 13173
inline.NumDeleted: 5390
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN3igl8copyleft4cgal15intersect_otherIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_S6_NS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT3_EERNS19_IT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EE:bb.a
  store i64 %i.et, ptr %i.fg, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  store ptr %46, ptr %47, align 8, !tbaa !153
  %i.fh = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %45, ptr %i.fh, align 8, !tbaa !163
  %i.fi = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %48, ptr %i.fi, align 8, !tbaa !157
  %i.fj = getelementptr inbounds nuw i8, ptr %47, i64 24
  store ptr %49, ptr %i.fj, align 8, !tbaa !159
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSS_(ptr noundef nonnull align 8 dereferenceable(32) %47)
          to label %bb.af unwind label %bb.ao

bb.af:                                            ; preds = %._crit_edge11.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %75, i8 0, i64 24, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !166 ; 2 uses
  %i.fm = load ptr, ptr %66, align 8, !tbaa !167  ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 2 uses
  %i.fq = sdiv exact i64 %i.fp, 72
  %i.fr = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !166
  %i.ft = load ptr, ptr %67, align 8, !tbaa !167
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 2 uses
  %i.fx = sdiv exact i64 %i.fw, 72
  %i.fy = add nsw i64 %i.fx, %i.fq                ; 3 uses
  %i.fz = icmp ugt i64 %i.fy, 128102389400760775
  br i1 %i.fz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc114.i unwind label %bb.ap

.noexc114.i:                                      ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 3 uses
  %.not362.i = icmp eq i64 %i.fy, 0
  br i1 %.not362.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.ah
  %i.gb = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.gc = add i64 %i.fw, %i.fp
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #45
          to label %.noexc115.i unwind label %bb.ap ; 5 uses

.noexc115.i:                                      ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.ge = load ptr, ptr %75, align 8, !tbaa !167  ; 5 uses
  %i.gf = load ptr, ptr %i.gb, align 8, !tbaa !166 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ge, %i.gf
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc115.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i ], [ %i.gd, %.noexc115.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i ], [ %i.ge, %.noexc115.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i.i, i64 72, i1 false), !alias.scope !566
  %i.gg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 72 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 72
  %.not.i.i.i.i.i = icmp eq ptr %i.gg, %i.gf
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !521

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc115.i
  %.not.i8.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  %i.gi = load ptr, ptr %i.ga, align 8, !tbaa !168
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.ge to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gl) #40
  br label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  store ptr %i.gd, ptr %75, align 8, !tbaa !167
  store ptr %i.gd, ptr %i.gb, align 8, !tbaa !166
  %i.gm = getelementptr inbounds nuw [72 x i8], ptr %i.gd, i64 %i.fy
  store ptr %i.gm, ptr %i.ga, align 8, !tbaa !168
  %.pre.i = load ptr, ptr %66, align 8, !tbaa !169
  %.pre282.i = load ptr, ptr %i.fk, align 8, !tbaa !169
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, %bb.ah
  %i.gn = phi ptr [ %.pre282.i, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ %i.fl, %bb.ah ]
  %i.go = phi ptr [ %.pre.i, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ %i.fm, %bb.ah ]
  %i.gp = phi ptr [ %i.gd, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ null, %bb.ah ]
  invoke void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %75, ptr %i.gp, ptr %i.go, ptr %i.gn)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE7reserveEm.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.gr = load ptr, ptr %75, align 8, !tbaa !169  ; 2 uses
  %i.gs = load ptr, ptr %i.gq, align 8, !tbaa !169
  %i.gt = load ptr, ptr %67, align 8, !tbaa !169
  %i.gu = load ptr, ptr %i.fr, align 8, !tbaa !169
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = ptrtoint ptr %i.gr to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds i8, ptr %i.gr, i64 %i.gx
  invoke void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %75, ptr %i.gy, ptr %i.gt, ptr %i.gu)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #22
  %i.gz = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 3 uses
  store i32 0, ptr %i.gz, align 8, !tbaa !95
  %i.ha = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  store ptr null, ptr %i.ha, align 8, !tbaa !96
  %i.hb = getelementptr inbounds nuw i8, ptr %76, i64 24
  store ptr %i.gz, ptr %i.hb, align 8, !tbaa !97
  %i.hc = getelementptr inbounds nuw i8, ptr %76, i64 32
  store ptr %i.gz, ptr %i.hc, align 8, !tbaa !98
  %i.hd = getelementptr inbounds nuw i8, ptr %76, i64 40
  store i64 0, ptr %i.hd, align 8, !tbaa !99
  %i.he = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %.not243269.i = icmp eq ptr %i.he, %i.e
  br i1 %.not243269.i, label %._crit_edge273.i, label %.lr.ph272.i

.lr.ph272.i:                                      ; preds = %bb.ak
  %i.hf = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %77, i64 24 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 3 uses
  br label %bb.as

._crit_edge273.i:                                 ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i, %bb.ak
  %i.hk = load ptr, ptr %i.l, align 8, !tbaa !97  ; 2 uses
  %.not244274.i = icmp eq ptr %i.hk, %i.j
  br i1 %.not244274.i, label %._crit_edge278.i, label %.lr.ph277.i

.lr.ph277.i:                                      ; preds = %._crit_edge273.i
  %i.hl = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %79, i64 24 ; 2 uses
  br label %bb.bv

bb.al:                                            ; preds = %bb.u
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.an:                                            ; preds = %bb.ac
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i

bb.ao:                                            ; preds = %._crit_edge11.i101.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i

bb.ap:                                            ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_M_allocateEm.exit.i.i, %bb.ag
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE7reserveEm.exit.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ar:                                            ; preds = %bb.aj
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.as:                                            ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i, %.lr.ph272.i
  %.sroa.0199.0270.i = phi ptr [ %i.he, %.lr.ph272.i ], [ %i.lu, %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #22
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0199.0270.i, i64 32
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !176
  store i64 %i.hw, ptr %77, align 8, !tbaa !176
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0199.0270.i, i64 40 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0199.0270.i, i64 48 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !177 ; 3 uses
  %i.ia = load ptr, ptr %i.hx, align 8, !tbaa !178 ; 3 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i.i.i.i.i.i, label %.noexc120.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ie = icmp ugt i64 %i.id, 9223372036854775800
  br i1 %i.ie, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !179

.noexc.i.i.i.i:                                   ; preds = %bb.at
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc119.i unwind label %.loopexit.split-lp251.i

.noexc119.i:                                      ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.at
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #45
          to label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i unwind label %.loopexit250.i

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i: ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre283.i = load ptr, ptr %i.hx, align 8, !tbaa !180
  %.pre284.i = load ptr, ptr %i.hy, align 8, !tbaa !180
  br label %.noexc120.i

.noexc120.i:                                      ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i, %bb.as
  %i.ig = phi ptr [ %i.hz, %bb.as ], [ %.pre284.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i ] ; 2 uses
  %i.ih = phi ptr [ %i.ia, %bb.as ], [ %.pre283.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i ] ; 2 uses
  %i.ii = phi ptr [ null, %bb.as ], [ %i.if, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i ] ; 4 uses
  store ptr %i.ii, ptr %i.hf, align 8, !tbaa !178
  store ptr %i.ii, ptr %i.hg, align 8, !tbaa !177
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.id
  store ptr %i.ij, ptr %i.hh, align 8, !tbaa !181
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.ih, %i.ig
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit249.thread.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit249.thread.i:                            ; preds = %.noexc120.i
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #22
  br label %.noexc125.thread.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc120.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.iw, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.ii, %.noexc120.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.iv, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.ih, %.noexc120.i ] ; 4 uses
  %i.ik = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.ik, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !189
  %i.il = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !190 ; 2 uses
  %i.ip = load <2 x ptr>, ptr %i.im, align 8, !tbaa !80
  store <2 x ptr> %i.ip, ptr %i.il, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 3 uses
  %i.ir = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !109
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.iq, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.iu = atomicrmw volatile add ptr %i.iq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.aw, %bb.av, %.lr.ph.i.i.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.iv, %i.ig
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit249.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

.loopexit249.i:                                   ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.pre285.i = load ptr, ptr %i.hf, align 8, !tbaa !178 ; 2 uses
  store ptr %i.iw, ptr %i.hg, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #22
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %.pre285.i to i64
  %i.iz = sub i64 %i.ix, %i.iy                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %78, i8 0, i64 24, i1 false)
  %.not.i.i.i.i121.i = icmp eq ptr %i.iw, %.pre285.i
  br i1 %.not.i.i.i.i121.i, label %.noexc125.thread.i, label %bb.ax

bb.ax:                                            ; preds = %.loopexit249.i
  %i.ja = icmp ugt i64 %i.iz, 9223372036854775800
  br i1 %i.ja, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !179

.noexc.i.i.i:                                     ; preds = %bb.ax
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc124.i unwind label %.loopexit.split-lp256.i

.noexc124.i:                                      ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ax
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #45
          to label %.noexc125.i unwind label %.loopexit255.i ; 5 uses

.noexc125.thread.i:                               ; preds = %.loopexit249.i, %.loopexit249.thread.i
  store i64 0, ptr %78, align 8
  store ptr null, ptr %i.hj, align 8, !tbaa !181
  br label %.loopexit248.thread.i

.noexc125.i:                                      ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre286.i = load ptr, ptr %i.hf, align 8, !tbaa !180 ; 2 uses
  %.pre287.i = load ptr, ptr %i.hg, align 8, !tbaa !180 ; 2 uses
  store ptr %i.jb, ptr %78, align 8, !tbaa !178
  store ptr %i.jb, ptr %i.hi, align 8, !tbaa !177
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.iz
  store ptr %i.jc, ptr %i.hj, align 8, !tbaa !181
  %.not7.i.i.i.i.i.i = icmp eq ptr %.pre286.i, %.pre287.i
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit248.thread.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc125.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.jp, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.jb, %.noexc125.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.jo, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %.pre286.i, %.noexc125.i ] ; 4 uses
  %i.jd = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.jd, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !189
  %i.je = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !190 ; 2 uses
  %i.ji = load <2 x ptr>, ptr %i.jf, align 8, !tbaa !80
  store <2 x ptr> %i.ji, ptr %i.je, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 3 uses
  %i.jk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i122.i = icmp eq i8 %i.jk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i122.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !109
  %i.jm = add nsw i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jj, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.jn = atomicrmw volatile add ptr %i.jj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.ba, %bb.az, %.lr.ph.i.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 3 uses
  %.not.i.i.i.i.i123.i = icmp eq ptr %i.jo, %.pre287.i
  br i1 %.not.i.i.i.i.i123.i, label %.loopexit248.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit248.thread.i:                            ; preds = %.noexc125.i, %.noexc125.thread.i
  %.0.lcssa.i.i.i.i.i.ph.i = phi ptr [ null, %.noexc125.thread.i ], [ %i.jb, %.noexc125.i ]
  store ptr %.0.lcssa.i.i.i.i.i.ph.i, ptr %i.hi, align 8, !tbaa !177
  br label %._crit_edge.i

.loopexit248.i:                                   ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre288.i = load ptr, ptr %78, align 8, !tbaa !180 ; 2 uses
  store ptr %i.jp, ptr %i.hi, align 8, !tbaa !177
  %.not245266.i = icmp eq ptr %.pre288.i, %i.jp
  br i1 %.not245266.i, label %._crit_edge.i, label %.lr.ph268.i

.lr.ph268.i:                                      ; preds = %.loopexit248.i
  %i.jq = load i64, ptr %i.df, align 8, !tbaa !118
  br label %bb.bb

._crit_edge.i:                                    ; preds = %bb.bb, %.loopexit248.i, %.loopexit248.thread.i
  %i.jr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %76, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.bc unwind label %bb.bs

.loopexit250.i:                                   ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit252.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp251.i:                          ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp253.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit255.i:                                   ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit257.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp256.i:                          ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp258.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bb:                                            ; preds = %bb.bb, %.lr.ph268.i
  %.sroa.0195.0267.i = phi ptr [ %.pre288.i, %.lr.ph268.i ], [ %i.ju, %bb.bb ] ; 4 uses
  %i.js = load i64, ptr %.sroa.0195.0267.i, align 8, !tbaa !189
  %i.jt = add nsw i64 %i.js, %i.jq
  store i64 %i.jt, ptr %.sroa.0195.0267.i, align 8, !tbaa !189
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0195.0267.i, i64 24
  %.not245.i = icmp eq ptr %.sroa.0195.0267.i, %.09.i.i.i.i.i.i
  br i1 %.not245.i, label %._crit_edge.i, label %bb.bb

bb.bc:                                            ; preds = %._crit_edge.i
  %i.jv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %78)
          to label %bb.bd unwind label %bb.bs     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.jw = load ptr, ptr %78, align 8, !tbaa !178  ; 3 uses
  %i.jx = load ptr, ptr %i.hi, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.jw, %i.jx
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bd, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.kp, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i ], [ %i.jw, %bb.bd ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %i.kb = load atomic i64, ptr %i.ka acquire, align 8 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 4294967297
  %i.kd = trunc i64 %i.kb to i32                  ; 2 uses
  br i1 %i.kc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.ka, align 8, !tbaa !192
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 0, ptr %i.ke, align 4, !tbaa !193
  %i.kf = load ptr, ptr %i.jz, align 8, !tbaa !114
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #22, !inline_history !522
  %i.ki = load ptr, ptr %i.jz, align 8, !tbaa !114
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #22, !inline_history !522
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.km = add nsw i32 %i.kd, -1
  store i32 %i.km, ptr %i.ka, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.kn = atomicrmw volatile add ptr %i.ka, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kd, %bb.bh ], [ %i.kn, %bb.bi ]
  %i.ko = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ko, label %bb.bj, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i, !prof !179

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.bf, %.lr.ph.i.i.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kp, %i.jx
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %78, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.bd
  %i.kq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.jw, %bb.bd ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.kq, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.kr = load ptr, ptr %i.hj, align 8, !tbaa !181
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kq to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.ku) #40
  br label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i: ; preds = %bb.bk, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  %i.kv = load ptr, ptr %i.hf, align 8, !tbaa !178 ; 3 uses
  %i.kw = load ptr, ptr %i.hg, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.kv, %i.kw
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i126.i

.lr.ph.i.i.i.i126.i:                              ; preds = %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.lo, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i ], [ %i.kv, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i127.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i.i.i.i.i127.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i126.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 4 uses
  %i.la = load atomic i64, ptr %i.kz acquire, align 8 ; 2 uses
  %i.lb = icmp eq i64 %i.la, 4294967297
  %i.lc = trunc i64 %i.la to i32                  ; 2 uses
  br i1 %i.lb, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.kz, align 8, !tbaa !192
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i32 0, ptr %i.ld, align 4, !tbaa !193
  %i.le = load ptr, ptr %i.ky, align 8, !tbaa !114
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #22, !inline_history !523
  %i.lh = load ptr, ptr %i.ky, align 8, !tbaa !114
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #22, !inline_history !523
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.lk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ll = add nsw i32 %i.lc, -1
  store i32 %i.ll, ptr %i.kz, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.lm = atomicrmw volatile add ptr %i.kz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lc, %bb.bo ], [ %i.lm, %bb.bp ]
  %i.ln = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ln, label %bb.bq, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i, !prof !179

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bm, %.lr.ph.i.i.i.i126.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i128.i = icmp eq ptr %i.lo, %i.kw
  br i1 %.not.i.i.i.i128.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i126.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.hf, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i
  %i.lp = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.kv, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.lp, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.lq = load ptr, ptr %i.hh, align 8, !tbaa !181
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lp to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef %i.lt) #40
  br label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i

_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i: ; preds = %bb.br, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #22
  %i.lu = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0199.0270.i) #46 ; 2 uses
  %.not243.i = icmp eq ptr %i.lu, %i.e
  br i1 %.not243.i, label %._crit_edge273.i, label %bb.as

bb.bs:                                            ; preds = %bb.bc, %._crit_edge.i
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %78) #22
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.loopexit.split-lp256.i, %.loopexit255.i
  %.pn79.i = phi { ptr, i32 } [ %i.lv, %bb.bs ], [ %lpad.loopexit257.i, %.loopexit255.i ], [ %lpad.loopexit.split-lp258.i, %.loopexit.split-lp256.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  call void @_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %77) #22
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.loopexit.split-lp251.i, %.loopexit250.i
  %.pn79.pn.i = phi { ptr, i32 } [ %.pn79.i, %bb.bt ], [ %lpad.loopexit252.i, %.loopexit250.i ], [ %lpad.loopexit.split-lp253.i, %.loopexit.split-lp251.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #22
  br label %bb.cp

._crit_edge278.i:                                 ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i, %._crit_edge273.i
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.lx = load i8, ptr %i.lw, align 2, !tbaa !194, !range !77, !noundef !78
  %i.ly = trunc nuw i8 %i.lx to i1
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !195, !range !77, !noundef !78
  %i.mb = trunc nuw i8 %i.ma to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %73, ptr noundef nonnull align 1 dereferenceable(1) %74, ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef nonnull align 8 dereferenceable(48) %76, i1 noundef zeroext %i.ly, i1 noundef zeroext %i.mb, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.cl unwind label %bb.co

bb.bv:                                            ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i, %.lr.ph277.i
  %.sroa.0191.0275.i = phi ptr [ %i.hk, %.lr.ph277.i ], [ %i.oi, %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #22
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0191.0275.i, i64 32
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !176
  store i64 %i.md, ptr %79, align 8, !tbaa !176
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0191.0275.i, i64 40 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0191.0275.i, i64 48 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !177 ; 3 uses
  %i.mh = load ptr, ptr %i.me, align 8, !tbaa !178 ; 3 uses
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i129.i = icmp eq ptr %i.mg, %i.mh
  br i1 %.not.i.i.i.i.i129.i, label %.noexc142.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ml = icmp ugt i64 %i.mk, 9223372036854775800
  br i1 %i.ml, label %.noexc.i.i.i140.i, label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130.i, !prof !179

.noexc.i.i.i140.i:                                ; preds = %bb.bw
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc141.i unwind label %.loopexit.split-lp.i

.noexc141.i:                                      ; preds = %.noexc.i.i.i140.i
  unreachable

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130.i: ; preds = %bb.bw
  %i.mm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #45
          to label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i unwind label %.loopexit247.i

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i: ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130.i
  %.pre289.i = load ptr, ptr %i.me, align 8, !tbaa !180
  %.pre290.i = load ptr, ptr %i.mf, align 8, !tbaa !180
  br label %.noexc142.i

.noexc142.i:                                      ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i, %bb.bv
  %i.mn = phi ptr [ %i.mg, %bb.bv ], [ %.pre290.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i ] ; 2 uses
  %i.mo = phi ptr [ %i.mh, %bb.bv ], [ %.pre289.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i ] ; 2 uses
  %i.mp = phi ptr [ null, %bb.bv ], [ %i.mm, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i ] ; 5 uses
  store ptr %i.mp, ptr %i.hl, align 8, !tbaa !178
  store ptr %i.mp, ptr %i.hm, align 8, !tbaa !177
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mk
  store ptr %i.mq, ptr %i.hn, align 8, !tbaa !181
  %.not7.i.i.i.i.i.i131.i = icmp eq ptr %i.mo, %i.mn
  br i1 %.not7.i.i.i.i.i.i131.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i132.i

.lr.ph.i.i.i.i.i.i132.i:                          ; preds = %.noexc142.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i
  %.09.i.i.i.i.i.i133.i = phi ptr [ %i.nd, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i ], [ %i.mp, %.noexc142.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i134.i = phi ptr [ %i.nc, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i ], [ %i.mo, %.noexc142.i ] ; 4 uses
  %i.mr = load i64, ptr %.sroa.04.08.i.i.i.i.i.i134.i, align 8, !tbaa !189
  store i64 %i.mr, ptr %.09.i.i.i.i.i.i133.i, align 8, !tbaa !189
  %i.ms = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i133.i, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i134.i, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i134.i, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !190 ; 2 uses
  %i.mw = load <2 x ptr>, ptr %i.mt, align 8, !tbaa !80
  store <2 x ptr> %i.mw, ptr %i.ms, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i.i135.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i135.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i.i.i132.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 3 uses
  %i.my = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i136.i = icmp eq i8 %i.my, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i136.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mz = load i32, ptr %i.mx, align 4, !tbaa !109
  %i.na = add nsw i32 %i.mz, 1
  store i32 %i.na, ptr %i.mx, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i

bb.bz:                                            ; preds = %bb.bx
  %i.nb = atomicrmw volatile add ptr %i.mx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i: ; preds = %bb.bz, %bb.by, %.lr.ph.i.i.i.i.i.i132.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i134.i, i64 24 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i133.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i138.i = icmp eq ptr %i.nc, %i.mn
  br i1 %.not.i.i.i.i.i.i138.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i132.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i, %.noexc142.i
  %.0.lcssa.i.i.i.i.i.i139.i = phi ptr [ %i.mp, %.noexc142.i ], [ %i.nd, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i139.i, ptr %i.hm, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ne = load i64, ptr %i.df, align 8, !tbaa !118
  %i.nf = load i64, ptr %79, align 8, !tbaa !176
  %i.ng = add nsw i64 %i.nf, %i.ne
  store i64 %i.ng, ptr %i.b, align 8, !tbaa !87
  %i.nh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixEOl(ptr noundef nonnull align 8 dereferenceable(48) %76, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ca unwind label %bb.cj

bb.ca:                                            ; preds = %.loopexit.i
  %i.ni = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.nh, ptr noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %bb.cb unwind label %bb.cj     ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.nj = load ptr, ptr %i.hl, align 8, !tbaa !178 ; 3 uses
  %i.nk = load ptr, ptr %i.hm, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i.i.i144.i = icmp eq ptr %i.nj, %i.nk
  br i1 %.not4.i.i.i.i144.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i155.i, label %.lr.ph.i.i.i.i145.i

.lr.ph.i.i.i.i145.i:                              ; preds = %bb.cb, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i
  %.05.i.i.i.i146.i = phi ptr [ %i.oc, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i ], [ %i.nj, %bb.cb ] ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i146.i, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i147.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i147.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i145.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 4 uses
  %i.no = load atomic i64, ptr %i.nn acquire, align 8 ; 2 uses
  %i.np = icmp eq i64 %i.no, 4294967297
  %i.nq = trunc i64 %i.no to i32                  ; 2 uses
  br i1 %i.np, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.nn, align 8, !tbaa !192
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  store i32 0, ptr %i.nr, align 4, !tbaa !193
  %i.ns = load ptr, ptr %i.nm, align 8, !tbaa !114
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  call void %i.nu(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #22, !inline_history !523
  %i.nv = load ptr, ptr %i.nm, align 8, !tbaa !114
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #22, !inline_history !523
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i

bb.ce:                                            ; preds = %bb.cc
  %i.ny = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i148.i = icmp eq i8 %i.ny, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i148.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nz = add nsw i32 %i.nq, -1
  store i32 %i.nz, ptr %i.nn, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i149.i

bb.cg:                                            ; preds = %bb.ce
  %i.oa = atomicrmw volatile add ptr %i.nn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i149.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i149.i: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i.i.i.i.i.i.i150.i = phi i32 [ %i.nq, %bb.cf ], [ %i.oa, %bb.cg ]
  %i.ob = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i150.i, 1
  br i1 %i.ob, label %bb.ch, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i, !prof !179

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i149.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i: ; preds = %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i149.i, %bb.cd, %.lr.ph.i.i.i.i145.i
  %i.oc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i146.i, i64 24 ; 2 uses
  %.not.i.i.i.i152.i = icmp eq ptr %i.oc, %i.nk
  br i1 %.not.i.i.i.i152.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i153.i, label %.lr.ph.i.i.i.i145.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i153.i: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i
  %.pr.i.i154.i = load ptr, ptr %i.hl, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i155.i

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i155.i: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i153.i, %bb.cb
  %i.od = phi ptr [ %.pr.i.i154.i, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i153.i ], [ %i.nj, %bb.cb ] ; 3 uses
  %.not.i.i1.i.i156.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i1.i.i156.i, label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i, label %bb.ci

bb.ci:                                            ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i155.i
  %i.oe = load ptr, ptr %i.hn, align 8, !tbaa !181
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = ptrtoint ptr %i.od to i64
  %i.oh = sub i64 %i.of, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef %i.oh) #40
  br label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i

_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i: ; preds = %bb.ci, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i155.i
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  %i.oi = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0191.0275.i) #46 ; 2 uses
  %.not244.i = icmp eq ptr %i.oi, %i.j
  br i1 %.not244.i, label %._crit_edge278.i, label %bb.bv

.loopexit247.i:                                   ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp.i:                             ; preds = %.noexc.i.i.i140.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ca, %.loopexit.i
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %79) #22
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.loopexit.split-lp.i, %.loopexit247.i
  %.pn77.i = phi { ptr, i32 } [ %i.oj, %bb.cj ], [ %lpad.loopexit.i, %.loopexit247.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  br label %bb.cp

bb.cl:                                            ; preds = %._crit_edge278.i
  %i.ok = load ptr, ptr %i.ha, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %76, ptr noundef %i.ok)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ol = landingpad { ptr, i32 }
          catch ptr null
  %i.om = extractvalue { ptr, i32 } %i.ol, 0
  call void @__clang_call_terminate(ptr %i.om) #41
  unreachable

end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal15intersect_otherIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_S6_NS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT3_EERNS19_IT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EE:bb.a
  %.not10.i.i.i.i.i53 = icmp eq ptr %i.yl, %i.yn
  br i1 %.not10.i.i.i.i.i53, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %.noexc115.i52
  %i.yp = add i64 %i.yo, -8
  %i.yq = sub i64 %i.yp, %i.ym                    ; 2 uses
  %i.yr = lshr i64 %i.yq, 3
  %i.ys = add nuw nsw i64 %i.yr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.yq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i54.preheader354, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %i.yt = add i64 %i.yo, -8
  %i.yu = sub i64 %i.yt, %i.ym
  %i.yv = and i64 %i.yu, -8
  %i.yw = add i64 %i.yv, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.yk, i64 %i.yw
  %scevgep345 = getelementptr i8, ptr %i.yl, i64 %i.yw
  %bound0 = icmp ult ptr %i.yk, %scevgep345
  %bound1 = icmp ult ptr %i.yl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i54.preheader354, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ys, 4611686018427387900     ; 3 uses
  %i.yx = shl i64 %n.vec, 3                       ; 2 uses
  %i.yy = getelementptr i8, ptr %i.yk, i64 %i.yx
  %i.yz = getelementptr i8, ptr %i.yl, i64 %i.yx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.za = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.yk, i64 %i.za ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.yl, i64 %i.za ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.zb = getelementptr i8, ptr %next.gep346, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep346, align 8, !tbaa !207, !alias.scope !576, !noalias !574
  %wide.load347 = load <2 x ptr>, ptr %i.zb, align 8, !tbaa !207, !alias.scope !576, !noalias !574
  %i.zc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !207, !alias.scope !577, !noalias !576
  store <2 x ptr> %wide.load347, ptr %i.zc, align 8, !tbaa !207, !alias.scope !577, !noalias !576
  store <2 x ptr> splat (ptr null), ptr %next.gep346, align 8, !tbaa !207, !alias.scope !576, !noalias !574
  store <2 x ptr> splat (ptr null), ptr %i.zb, align 8, !tbaa !207, !alias.scope !576, !noalias !574
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.zd = icmp eq i64 %index.next, %n.vec
  br i1 %i.zd, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ys, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i54.preheader354

.lr.ph.i.i.i.i.i54.preheader354:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i54.preheader, %middle.block
  %.012.i.i.i.i.i55.ph = phi ptr [ %i.yk, %vector.memcheck ], [ %i.yk, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.yy, %middle.block ]
  %.0911.i.i.i.i.i56.ph = phi ptr [ %i.yl, %vector.memcheck ], [ %i.yl, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.yz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader354, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi ptr [ %i.zg, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader354 ] ; 2 uses
  %.0911.i.i.i.i.i56 = phi ptr [ %i.zf, %.lr.ph.i.i.i.i.i54 ], [ %.0911.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader354 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.ze = load ptr, ptr %.0911.i.i.i.i.i56, align 8, !tbaa !207, !alias.scope !575, !noalias !574
  store ptr %i.ze, ptr %.012.i.i.i.i.i55, align 8, !tbaa !207, !alias.scope !574, !noalias !575
  store ptr null, ptr %.0911.i.i.i.i.i56, align 8, !tbaa !207, !alias.scope !575, !noalias !574
  %i.zf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i56, i64 8 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i55, i64 8
  %.not.i.i.i.i.i57 = icmp eq ptr %i.zf, %i.yn
  br i1 %.not.i.i.i.i.i57, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i54, !llvm.loop !546

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i54, %middle.block, %.noexc115.i52
  %.not.i8.i.i58 = icmp eq ptr %i.yl, null
  br i1 %.not.i8.i.i58, label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  %i.zh = load ptr, ptr %i.yh, align 8, !tbaa !210
  %i.zi = ptrtoint ptr %i.zh to i64
  %i.zj = ptrtoint ptr %i.yl to i64
  %i.zk = sub i64 %i.zi, %i.zj
  call void @_ZdlPvm(ptr noundef nonnull %i.yl, i64 noundef %i.zk) #40
  br label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i: ; preds = %bb.eo, %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  store ptr %i.yk, ptr %40, align 8, !tbaa !204
  store ptr %i.yk, ptr %i.yi, align 8, !tbaa !203
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %i.yf
  store ptr %i.zl, ptr %i.yh, align 8, !tbaa !210
  %.pre.i59 = load ptr, ptr %31, align 8, !tbaa !211
  %.pre302.i = load ptr, ptr %i.xr, align 8, !tbaa !211
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, %bb.en
  %i.zm = phi ptr [ %.pre302.i, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ %i.xs, %bb.en ]
  %i.zn = phi ptr [ %.pre.i59, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ %i.xt, %bb.en ]
  %i.zo = phi ptr [ %i.yk, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ null, %bb.en ]
  %i.zp = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  invoke void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr %i.zo, ptr %i.zn, ptr %i.zm)
          to label %bb.ep unwind label %bb.ew

bb.ep:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i
  %i.zq = load ptr, ptr %40, align 8, !tbaa !211  ; 2 uses
  %i.zr = load ptr, ptr %i.zp, align 8, !tbaa !211
  %i.zs = load ptr, ptr %32, align 8, !tbaa !211
  %i.zt = load ptr, ptr %i.xy, align 8, !tbaa !211
  %i.zu = ptrtoint ptr %i.zr to i64
  %i.zv = ptrtoint ptr %i.zq to i64
  %i.zw = sub i64 %i.zu, %i.zv
  %i.zx = getelementptr inbounds i8, ptr %i.zq, i64 %i.zw
  invoke void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr %i.zx, ptr %i.zs, ptr %i.zt)
          to label %bb.eq unwind label %bb.ex

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  %i.zy = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  store i32 0, ptr %i.zy, align 8, !tbaa !95
  %i.zz = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  store ptr null, ptr %i.zz, align 8, !tbaa !96
  %i.aaa = getelementptr inbounds nuw i8, ptr %41, i64 24
  store ptr %i.zy, ptr %i.aaa, align 8, !tbaa !97
  %i.aab = getelementptr inbounds nuw i8, ptr %41, i64 32
  store ptr %i.zy, ptr %i.aab, align 8, !tbaa !98
  %i.aac = getelementptr inbounds nuw i8, ptr %41, i64 40
  store i64 0, ptr %i.aac, align 8, !tbaa !99
  %i.aad = load ptr, ptr %i.rn, align 8, !tbaa !97 ; 2 uses
  %.not263289.i = icmp eq ptr %i.aad, %i.rl
  br i1 %.not263289.i, label %._crit_edge293.i, label %.lr.ph292.i

.lr.ph292.i:                                      ; preds = %bb.eq
  %i.aae = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 6 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 3 uses
  br label %bb.ey

._crit_edge293.i:                                 ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i114, %bb.eq
  %i.aaj = load ptr, ptr %i.rs, align 8, !tbaa !97 ; 2 uses
  %.not264294.i = icmp eq ptr %i.aaj, %i.rq
  br i1 %.not264294.i, label %._crit_edge298.i, label %.lr.ph297.i

.lr.ph297.i:                                      ; preds = %._crit_edge293.i
  %i.aak = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 5 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %44, i64 24 ; 2 uses
  br label %bb.gb

bb.er:                                            ; preds = %bb.ea
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %.body.i40

bb.es:                                            ; preds = %._crit_edge.i.i46
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i40

bb.et:                                            ; preds = %bb.ei
  %i.aap = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i48

bb.eu:                                            ; preds = %._crit_edge11.i101.i50
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i48

bb.ev:                                            ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit.i.i, %bb.em
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.ew:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.ex:                                            ; preds = %bb.ep
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.ey:                                            ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i114, %.lr.ph292.i
  %.sroa.0219.0290.i = phi ptr [ %i.aad, %.lr.ph292.i ], [ %i.aet, %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i114 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.aau = getelementptr inbounds nuw i8, ptr %.sroa.0219.0290.i, i64 32
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !176
  store i64 %i.aav, ptr %42, align 8, !tbaa !176
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.0219.0290.i, i64 40 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0219.0290.i, i64 48 ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !177 ; 3 uses
  %i.aaz = load ptr, ptr %i.aaw, align 8, !tbaa !178 ; 3 uses
  %i.aba = ptrtoint ptr %i.aay to i64
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = sub i64 %i.aba, %i.abb                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aae, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i60 = icmp eq ptr %i.aay, %i.aaz
  br i1 %.not.i.i.i.i.i.i60, label %.noexc120.i65, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.abd = icmp ugt i64 %i.abc, 9223372036854775800
  br i1 %i.abd, label %.noexc.i.i.i.i160, label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i61, !prof !179

.noexc.i.i.i.i160:                                ; preds = %bb.ez
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc119.i161 unwind label %.loopexit.split-lp271.i

.noexc119.i161:                                   ; preds = %.noexc.i.i.i.i160
  unreachable

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i61: ; preds = %bb.ez
  %i.abe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abc) #45
          to label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i64 unwind label %.loopexit270.i

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i64: ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i61
  %.pre303.i = load ptr, ptr %i.aaw, align 8, !tbaa !180
  %.pre304.i = load ptr, ptr %i.aax, align 8, !tbaa !180
  br label %.noexc120.i65

.noexc120.i65:                                    ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i64, %bb.ey
  %i.abf = phi ptr [ %i.aay, %bb.ey ], [ %.pre304.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i64 ] ; 2 uses
  %i.abg = phi ptr [ %i.aaz, %bb.ey ], [ %.pre303.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i64 ] ; 2 uses
  %i.abh = phi ptr [ null, %bb.ey ], [ %i.abe, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc120_crit_edge.i64 ] ; 4 uses
  store ptr %i.abh, ptr %i.aae, align 8, !tbaa !178
  store ptr %i.abh, ptr %i.aaf, align 8, !tbaa !177
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.abc
  store ptr %i.abi, ptr %i.aag, align 8, !tbaa !181
  %.not7.i.i.i.i.i.i.i66 = icmp eq ptr %i.abg, %i.abf
  br i1 %.not7.i.i.i.i.i.i.i66, label %.loopexit269.thread.i, label %.lr.ph.i.i.i.i.i.i.i67

.loopexit269.thread.i:                            ; preds = %.noexc120.i65
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  br label %.noexc125.thread.i159

.lr.ph.i.i.i.i.i.i.i67:                           ; preds = %.noexc120.i65, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i72
  %.09.i.i.i.i.i.i.i68 = phi ptr [ %i.abv, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i72 ], [ %i.abh, %.noexc120.i65 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i.i69 = phi ptr [ %i.abu, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i72 ], [ %i.abg, %.noexc120.i65 ] ; 4 uses
  %i.abj = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i69, align 8, !tbaa !189
  store i64 %i.abj, ptr %.09.i.i.i.i.i.i.i68, align 8, !tbaa !189
  %i.abk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i68, i64 8
  %i.abl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i69, i64 8
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i69, i64 16
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !190 ; 2 uses
  %i.abo = load <2 x ptr>, ptr %i.abl, align 8, !tbaa !80
  store <2 x ptr> %i.abo, ptr %i.abk, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i70 = icmp eq ptr %i.abn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i70, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i72, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i67
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 8 ; 3 uses
  %i.abq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i71 = icmp eq i8 %i.abq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i71, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.abr = load i32, ptr %i.abp, align 4, !tbaa !109
  %i.abs = add nsw i32 %i.abr, 1
  store i32 %i.abs, ptr %i.abp, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i72

bb.fc:                                            ; preds = %bb.fa
  %i.abt = atomicrmw volatile add ptr %i.abp, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i72

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i72: ; preds = %bb.fc, %bb.fb, %.lr.ph.i.i.i.i.i.i.i67
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i69, i64 24 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i68, i64 24 ; 4 uses
  %.not.i.i.i.i.i.i.i73 = icmp eq ptr %i.abu, %i.abf
  br i1 %.not.i.i.i.i.i.i.i73, label %.loopexit269.i, label %.lr.ph.i.i.i.i.i.i.i67, !llvm.loop !0

.loopexit269.i:                                   ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i72
  %.pre305.i = load ptr, ptr %i.aae, align 8, !tbaa !178 ; 2 uses
  store ptr %i.abv, ptr %i.aaf, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  %i.abw = ptrtoint ptr %i.abv to i64
  %i.abx = ptrtoint ptr %.pre305.i to i64
  %i.aby = sub i64 %i.abw, %i.abx                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %.not.i.i.i.i121.i74 = icmp eq ptr %i.abv, %.pre305.i
  br i1 %.not.i.i.i.i121.i74, label %.noexc125.thread.i159, label %bb.fd

bb.fd:                                            ; preds = %.loopexit269.i
  %i.abz = icmp ugt i64 %i.aby, 9223372036854775800
  br i1 %i.abz, label %.noexc.i.i.i157, label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i75, !prof !179

.noexc.i.i.i157:                                  ; preds = %bb.fd
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc124.i158 unwind label %.loopexit.split-lp276.i

.noexc124.i158:                                   ; preds = %.noexc.i.i.i157
  unreachable

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i75: ; preds = %bb.fd
  %i.aca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aby) #45
          to label %.noexc125.i77 unwind label %.loopexit275.i ; 5 uses

.noexc125.thread.i159:                            ; preds = %.loopexit269.i, %.loopexit269.thread.i
  store i64 0, ptr %43, align 8
  store ptr null, ptr %i.aai, align 8, !tbaa !181
  br label %.loopexit268.thread.i

.noexc125.i77:                                    ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i75
  %.pre306.i = load ptr, ptr %i.aae, align 8, !tbaa !180 ; 2 uses
  %.pre307.i = load ptr, ptr %i.aaf, align 8, !tbaa !180 ; 2 uses
  store ptr %i.aca, ptr %43, align 8, !tbaa !178
  store ptr %i.aca, ptr %i.aah, align 8, !tbaa !177
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.aby
  store ptr %i.acb, ptr %i.aai, align 8, !tbaa !181
  %.not7.i.i.i.i.i.i78 = icmp eq ptr %.pre306.i, %.pre307.i
  br i1 %.not7.i.i.i.i.i.i78, label %.loopexit268.thread.i, label %.lr.ph.i.i.i.i.i.i79

.lr.ph.i.i.i.i.i.i79:                             ; preds = %.noexc125.i77, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i84
  %.09.i.i.i.i.i.i80 = phi ptr [ %i.aco, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i84 ], [ %i.aca, %.noexc125.i77 ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i.i81 = phi ptr [ %i.acn, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i84 ], [ %.pre306.i, %.noexc125.i77 ] ; 4 uses
  %i.acc = load i64, ptr %.sroa.04.08.i.i.i.i.i.i81, align 8, !tbaa !189
  store i64 %i.acc, ptr %.09.i.i.i.i.i.i80, align 8, !tbaa !189
  %i.acd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i80, i64 8
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i81, i64 8
  %i.acf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i81, i64 16
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !190 ; 2 uses
  %i.ach = load <2 x ptr>, ptr %i.ace, align 8, !tbaa !80
  store <2 x ptr> %i.ach, ptr %i.acd, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i.i82 = icmp eq ptr %i.acg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i82, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i84, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.i.i.i.i.i.i79
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 8 ; 3 uses
  %i.acj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i122.i83 = icmp eq i8 %i.acj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i122.i83, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ack = load i32, ptr %i.aci, align 4, !tbaa !109
  %i.acl = add nsw i32 %i.ack, 1
  store i32 %i.acl, ptr %i.aci, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i84

bb.fg:                                            ; preds = %bb.fe
  %i.acm = atomicrmw volatile add ptr %i.aci, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i84

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i84: ; preds = %bb.fg, %bb.ff, %.lr.ph.i.i.i.i.i.i79
  %i.acn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i81, i64 24 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i80, i64 24 ; 3 uses
  %.not.i.i.i.i.i123.i85 = icmp eq ptr %i.acn, %.pre307.i
  br i1 %.not.i.i.i.i.i123.i85, label %.loopexit268.i, label %.lr.ph.i.i.i.i.i.i79, !llvm.loop !0

.loopexit268.thread.i:                            ; preds = %.noexc125.i77, %.noexc125.thread.i159
  %.0.lcssa.i.i.i.i.i.ph.i156 = phi ptr [ null, %.noexc125.thread.i159 ], [ %i.aca, %.noexc125.i77 ]
  store ptr %.0.lcssa.i.i.i.i.i.ph.i156, ptr %i.aah, align 8, !tbaa !177
  br label %._crit_edge.i86

.loopexit268.i:                                   ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i84
  %.pre308.i = load ptr, ptr %43, align 8, !tbaa !180 ; 2 uses
  store ptr %i.aco, ptr %i.aah, align 8, !tbaa !177
  %.not265286.i = icmp eq ptr %.pre308.i, %i.aco
  br i1 %.not265286.i, label %._crit_edge.i86, label %.lr.ph288.i

.lr.ph288.i:                                      ; preds = %.loopexit268.i
  %i.acp = load i64, ptr %i.vm, align 8, !tbaa !118
  br label %bb.fh

._crit_edge.i86:                                  ; preds = %bb.fh, %.loopexit268.i, %.loopexit268.thread.i
  %i.acq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.fi unwind label %bb.fy

.loopexit270.i:                                   ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i61
  %lpad.loopexit272.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

.loopexit.split-lp271.i:                          ; preds = %.noexc.i.i.i.i160
  %lpad.loopexit.split-lp273.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

.loopexit275.i:                                   ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i75
  %lpad.loopexit277.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

.loopexit.split-lp276.i:                          ; preds = %.noexc.i.i.i157
  %lpad.loopexit.split-lp278.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fh:                                            ; preds = %bb.fh, %.lr.ph288.i
  %.sroa.0215.0287.i = phi ptr [ %.pre308.i, %.lr.ph288.i ], [ %i.act, %bb.fh ] ; 4 uses
  %i.acr = load i64, ptr %.sroa.0215.0287.i, align 8, !tbaa !189
  %i.acs = add nsw i64 %i.acr, %i.acp
  store i64 %i.acs, ptr %.sroa.0215.0287.i, align 8, !tbaa !189
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.0215.0287.i, i64 24
  %.not265.i = icmp eq ptr %.sroa.0215.0287.i, %.09.i.i.i.i.i.i80
  br i1 %.not265.i, label %._crit_edge.i86, label %bb.fh

bb.fi:                                            ; preds = %._crit_edge.i86
  %i.acu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.acq, ptr noundef nonnull align 8 dereferenceable(24) %43)
          to label %bb.fj unwind label %bb.fy     ; 0 uses

bb.fj:                                            ; preds = %bb.fi
  %i.acv = load ptr, ptr %43, align 8, !tbaa !178 ; 3 uses
  %i.acw = load ptr, ptr %i.aah, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i.i.i87 = icmp eq ptr %i.acv, %i.acw
  br i1 %.not4.i.i.i.i87, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i98, label %.lr.ph.i.i.i.i88

.lr.ph.i.i.i.i88:                                 ; preds = %bb.fj, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i94
  %.05.i.i.i.i89 = phi ptr [ %i.ado, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i94 ], [ %i.acv, %bb.fj ] ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i89, i64 16
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i90 = icmp eq ptr %i.acy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i90, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i94, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i.i88
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8 ; 4 uses
  %i.ada = load atomic i64, ptr %i.acz acquire, align 8 ; 2 uses
  %i.adb = icmp eq i64 %i.ada, 4294967297
  %i.adc = trunc i64 %i.ada to i32                ; 2 uses
  br i1 %i.adb, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.acz, align 8, !tbaa !192
  %i.add = getelementptr inbounds nuw i8, ptr %i.acy, i64 12
  store i32 0, ptr %i.add, align 4, !tbaa !193
  %i.ade = load ptr, ptr %i.acy, align 8, !tbaa !114
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %i.adg = load ptr, ptr %i.adf, align 8
  call void %i.adg(ptr noundef nonnull align 8 dereferenceable(16) %i.acy) #22, !inline_history !547
  %i.adh = load ptr, ptr %i.acy, align 8, !tbaa !114
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 24
  %i.adj = load ptr, ptr %i.adi, align 8
  call void %i.adj(ptr noundef nonnull align 8 dereferenceable(16) %i.acy) #22, !inline_history !547
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i94

bb.fm:                                            ; preds = %bb.fk
  %i.adk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i91 = icmp eq i8 %i.adk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i91, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.adl = add nsw i32 %i.adc, -1
  store i32 %i.adl, ptr %i.acz, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i92

bb.fo:                                            ; preds = %bb.fm
  %i.adm = atomicrmw volatile add ptr %i.acz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i92

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i92: ; preds = %bb.fo, %bb.fn
  %.0.i.i.i.i.i.i.i.i.i.i.i93 = phi i32 [ %i.adc, %bb.fn ], [ %i.adm, %bb.fo ]
  %i.adn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i93, 1
  br i1 %i.adn, label %bb.fp, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i94, !prof !179

bb.fp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i92
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acy) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i94

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i94: ; preds = %bb.fp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i92, %bb.fl, %.lr.ph.i.i.i.i88
  %i.ado = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i89, i64 24 ; 2 uses
  %.not.i.i.i.i95 = icmp eq ptr %i.ado, %i.acw
  br i1 %.not.i.i.i.i95, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i96, label %.lr.ph.i.i.i.i88, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i96: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i94
  %.pr.i.i97 = load ptr, ptr %43, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i98

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i98: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i96, %bb.fj
  %i.adp = phi ptr [ %.pr.i.i97, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i96 ], [ %i.acv, %bb.fj ] ; 3 uses
  %.not.i.i1.i.i99 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i1.i.i99, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i100, label %bb.fq

bb.fq:                                            ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i98
  %i.adq = load ptr, ptr %i.aai, align 8, !tbaa !181
  %i.adr = ptrtoint ptr %i.adq to i64
  %i.ads = ptrtoint ptr %i.adp to i64
  %i.adt = sub i64 %i.adr, %i.ads
  call void @_ZdlPvm(ptr noundef nonnull %i.adp, i64 noundef %i.adt) #40
  br label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i100

_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i100: ; preds = %bb.fq, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.adu = load ptr, ptr %i.aae, align 8, !tbaa !178 ; 3 uses
  %i.adv = load ptr, ptr %i.aaf, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i.i.i.i101 = icmp eq ptr %i.adu, %i.adv
  br i1 %.not4.i.i.i.i.i101, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i112, label %.lr.ph.i.i.i.i126.i102

.lr.ph.i.i.i.i126.i102:                           ; preds = %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i100, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i108
  %.05.i.i.i.i.i103 = phi ptr [ %i.aen, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i108 ], [ %i.adu, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i100 ] ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i103, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i127.i104 = icmp eq ptr %i.adx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i127.i104, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i108, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph.i.i.i.i126.i102
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8 ; 4 uses
  %i.adz = load atomic i64, ptr %i.ady acquire, align 8 ; 2 uses
  %i.aea = icmp eq i64 %i.adz, 4294967297
  %i.aeb = trunc i64 %i.adz to i32                ; 2 uses
  br i1 %i.aea, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  store i32 0, ptr %i.ady, align 8, !tbaa !192
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adx, i64 12
  store i32 0, ptr %i.aec, align 4, !tbaa !193
  %i.aed = load ptr, ptr %i.adx, align 8, !tbaa !114
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 16
  %i.aef = load ptr, ptr %i.aee, align 8
  call void %i.aef(ptr noundef nonnull align 8 dereferenceable(16) %i.adx) #22, !inline_history !548
  %i.aeg = load ptr, ptr %i.adx, align 8, !tbaa !114
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 24
  %i.aei = load ptr, ptr %i.aeh, align 8
  call void %i.aei(ptr noundef nonnull align 8 dereferenceable(16) %i.adx) #22, !inline_history !548
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i108

bb.ft:                                            ; preds = %bb.fr
  %i.aej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i105 = icmp eq i8 %i.aej, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i105, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.aek = add nsw i32 %i.aeb, -1
  store i32 %i.aek, ptr %i.ady, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i106

bb.fv:                                            ; preds = %bb.ft
  %i.ael = atomicrmw volatile add ptr %i.ady, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i106

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i106: ; preds = %bb.fv, %bb.fu
  %.0.i.i.i.i.i.i.i.i.i.i.i.i107 = phi i32 [ %i.aeb, %bb.fu ], [ %i.ael, %bb.fv ]
  %i.aem = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i107, 1
  br i1 %i.aem, label %bb.fw, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i108, !prof !179

bb.fw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i106
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adx) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i108

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i108: ; preds = %bb.fw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i106, %bb.fs, %.lr.ph.i.i.i.i126.i102
  %i.aen = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i103, i64 24 ; 2 uses
  %.not.i.i.i.i128.i109 = icmp eq ptr %i.aen, %i.adv
  br i1 %.not.i.i.i.i128.i109, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i110, label %.lr.ph.i.i.i.i126.i102, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i110: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i108
  %.pr.i.i.i111 = load ptr, ptr %i.aae, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i112

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i112: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i110, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i100
  %i.aeo = phi ptr [ %.pr.i.i.i111, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i110 ], [ %i.adu, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i100 ] ; 3 uses
  %.not.i.i1.i.i.i113 = icmp eq ptr %i.aeo, null
  br i1 %.not.i.i1.i.i.i113, label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i114, label %bb.fx

bb.fx:                                            ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i112
  %i.aep = load ptr, ptr %i.aag, align 8, !tbaa !181
  %i.aeq = ptrtoint ptr %i.aep to i64
  %i.aer = ptrtoint ptr %i.aeo to i64
  %i.aes = sub i64 %i.aeq, %i.aer
  call void @_ZdlPvm(ptr noundef nonnull %i.aeo, i64 noundef %i.aes) #40
  br label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i114

_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i114: ; preds = %bb.fx, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  %i.aet = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0219.0290.i) #46 ; 2 uses
  %.not263.i = icmp eq ptr %i.aet, %i.rl
  br i1 %.not263.i, label %._crit_edge293.i, label %bb.ey

bb.fy:                                            ; preds = %bb.fi, %._crit_edge.i86
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #22
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.loopexit.split-lp276.i, %.loopexit275.i
  %.pn79.i76 = phi { ptr, i32 } [ %i.aeu, %bb.fy ], [ %lpad.loopexit277.i, %.loopexit275.i ], [ %lpad.loopexit.split-lp278.i, %.loopexit.split-lp276.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %42) #22
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %.loopexit.split-lp271.i, %.loopexit270.i
  %.pn79.pn.i62 = phi { ptr, i32 } [ %.pn79.i76, %bb.fz ], [ %lpad.loopexit272.i, %.loopexit270.i ], [ %lpad.loopexit.split-lp273.i, %.loopexit.split-lp271.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.hd

._crit_edge298.i:                                 ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i144, %._crit_edge293.i
  %i.aev = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.aew = load i8, ptr %i.aev, align 2, !tbaa !194, !range !77, !noundef !78
  %i.aex = trunc nuw i8 %i.aew to i1
  %i.aey = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !195, !range !77, !noundef !78
  %i.afa = trunc nuw i8 %i.aez to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %38, ptr noundef nonnull align 1 dereferenceable(1) %39, ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(48) %41, i1 noundef zeroext %i.aex, i1 noundef zeroext %i.afa, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.gr unwind label %bb.hc

bb.gb:                                            ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i144, %.lr.ph297.i
  %.sroa.0211.0295.i = phi ptr [ %i.aaj, %.lr.ph297.i ], [ %i.ahh, %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i144 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0211.0295.i, i64 32
  %i.afc = load i64, ptr %i.afb, align 8, !tbaa !176
  store i64 %i.afc, ptr %44, align 8, !tbaa !176
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.0211.0295.i, i64 40 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.sroa.0211.0295.i, i64 48 ; 2 uses
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !177 ; 3 uses
  %i.afg = load ptr, ptr %i.afd, align 8, !tbaa !178 ; 3 uses
  %i.afh = ptrtoint ptr %i.aff to i64
  %i.afi = ptrtoint ptr %i.afg to i64
  %i.afj = sub i64 %i.afh, %i.afi                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aak, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i129.i115 = icmp eq ptr %i.aff, %i.afg
  br i1 %.not.i.i.i.i.i129.i115, label %.noexc142.i120, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.afk = icmp ugt i64 %i.afj, 9223372036854775800
  br i1 %i.afk, label %.noexc.i.i.i140.i152, label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130.i116, !prof !179

.noexc.i.i.i140.i152:                             ; preds = %bb.gc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc141.i155 unwind label %.loopexit.split-lp.i153

.noexc141.i155:                                   ; preds = %.noexc.i.i.i140.i152
  unreachable

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130.i116: ; preds = %bb.gc
  %i.afl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afj) #45
          to label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i119 unwind label %.loopexit267.i

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i119: ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130.i116
  %.pre309.i = load ptr, ptr %i.afd, align 8, !tbaa !180
  %.pre310.i = load ptr, ptr %i.afe, align 8, !tbaa !180
  br label %.noexc142.i120

.noexc142.i120:                                   ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i119, %bb.gb
  %i.afm = phi ptr [ %i.aff, %bb.gb ], [ %.pre310.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i119 ] ; 2 uses
  %i.afn = phi ptr [ %i.afg, %bb.gb ], [ %.pre309.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i119 ] ; 2 uses
  %i.afo = phi ptr [ null, %bb.gb ], [ %i.afl, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130..noexc142_crit_edge.i119 ] ; 5 uses
  store ptr %i.afo, ptr %i.aak, align 8, !tbaa !178
  store ptr %i.afo, ptr %i.aal, align 8, !tbaa !177
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.afj
  store ptr %i.afp, ptr %i.aam, align 8, !tbaa !181
  %.not7.i.i.i.i.i.i131.i121 = icmp eq ptr %i.afn, %i.afm
  br i1 %.not7.i.i.i.i.i.i131.i121, label %.loopexit.i129, label %.lr.ph.i.i.i.i.i.i132.i122

.lr.ph.i.i.i.i.i.i132.i122:                       ; preds = %.noexc142.i120, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i127
  %.09.i.i.i.i.i.i133.i123 = phi ptr [ %i.agc, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i127 ], [ %i.afo, %.noexc142.i120 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i134.i124 = phi ptr [ %i.agb, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i127 ], [ %i.afn, %.noexc142.i120 ] ; 4 uses
  %i.afq = load i64, ptr %.sroa.04.08.i.i.i.i.i.i134.i124, align 8, !tbaa !189
  store i64 %i.afq, ptr %.09.i.i.i.i.i.i133.i123, align 8, !tbaa !189
  %i.afr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i133.i123, i64 8
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i134.i124, i64 8
  %i.aft = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i134.i124, i64 16
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !190 ; 2 uses
  %i.afv = load <2 x ptr>, ptr %i.afs, align 8, !tbaa !80
  store <2 x ptr> %i.afv, ptr %i.afr, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i.i135.i125 = icmp eq ptr %i.afu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i135.i125, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i127, label %bb.gd

bb.gd:                                            ; preds = %.lr.ph.i.i.i.i.i.i132.i122
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 8 ; 3 uses
  %i.afx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i136.i126 = icmp eq i8 %i.afx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i136.i126, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.afy = load i32, ptr %i.afw, align 4, !tbaa !109
  %i.afz = add nsw i32 %i.afy, 1
  store i32 %i.afz, ptr %i.afw, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i127

bb.gf:                                            ; preds = %bb.gd
  %i.aga = atomicrmw volatile add ptr %i.afw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i127

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i127: ; preds = %bb.gf, %bb.ge, %.lr.ph.i.i.i.i.i.i132.i122
  %i.agb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i134.i124, i64 24 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i133.i123, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i138.i128 = icmp eq ptr %i.agb, %i.afm
  br i1 %.not.i.i.i.i.i.i138.i128, label %.loopexit.i129, label %.lr.ph.i.i.i.i.i.i132.i122, !llvm.loop !0

.loopexit.i129:                                   ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i127, %.noexc142.i120
  %.0.lcssa.i.i.i.i.i.i139.i130 = phi ptr [ %i.afo, %.noexc142.i120 ], [ %i.agc, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i137.i127 ]
  store ptr %.0.lcssa.i.i.i.i.i.i139.i130, ptr %i.aal, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.agd = load i64, ptr %i.vm, align 8, !tbaa !118
  %i.age = load i64, ptr %44, align 8, !tbaa !176
  %i.agf = add nsw i64 %i.age, %i.agd
  store i64 %i.agf, ptr %i.a, align 8, !tbaa !87
  %i.agg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixEOl(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.gg unwind label %bb.gp

bb.gg:                                            ; preds = %.loopexit.i129
  %i.agh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.agg, ptr noundef nonnull align 8 dereferenceable(24) %i.aak)
          to label %bb.gh unwind label %bb.gp     ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.agi = load ptr, ptr %i.aak, align 8, !tbaa !178 ; 3 uses
  %i.agj = load ptr, ptr %i.aal, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i.i.i144.i131 = icmp eq ptr %i.agi, %i.agj
  br i1 %.not4.i.i.i.i144.i131, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i155.i142, label %.lr.ph.i.i.i.i145.i132

.lr.ph.i.i.i.i145.i132:                           ; preds = %bb.gh, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i138
  %.05.i.i.i.i146.i133 = phi ptr [ %i.ahb, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i138 ], [ %i.agi, %bb.gh ] ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i146.i133, i64 16
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i147.i134 = icmp eq ptr %i.agl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i147.i134, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i138, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.i.i.i.i145.i132
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 8 ; 4 uses
  %i.agn = load atomic i64, ptr %i.agm acquire, align 8 ; 2 uses
  %i.ago = icmp eq i64 %i.agn, 4294967297
  %i.agp = trunc i64 %i.agn to i32                ; 2 uses
  br i1 %i.ago, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  store i32 0, ptr %i.agm, align 8, !tbaa !192
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agl, i64 12
  store i32 0, ptr %i.agq, align 4, !tbaa !193
  %i.agr = load ptr, ptr %i.agl, align 8, !tbaa !114
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  %i.agt = load ptr, ptr %i.ags, align 8
  call void %i.agt(ptr noundef nonnull align 8 dereferenceable(16) %i.agl) #22, !inline_history !548
  %i.agu = load ptr, ptr %i.agl, align 8, !tbaa !114
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 24
  %i.agw = load ptr, ptr %i.agv, align 8
  call void %i.agw(ptr noundef nonnull align 8 dereferenceable(16) %i.agl) #22, !inline_history !548
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i138

bb.gk:                                            ; preds = %bb.gi
  %i.agx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i148.i135 = icmp eq i8 %i.agx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i148.i135, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.agy = add nsw i32 %i.agp, -1
  store i32 %i.agy, ptr %i.agm, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i149.i136

bb.gm:                                            ; preds = %bb.gk
  %i.agz = atomicrmw volatile add ptr %i.agm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i149.i136

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i149.i136: ; preds = %bb.gm, %bb.gl
  %.0.i.i.i.i.i.i.i.i.i.i.i150.i137 = phi i32 [ %i.agp, %bb.gl ], [ %i.agz, %bb.gm ]
  %i.aha = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i150.i137, 1
  br i1 %i.aha, label %bb.gn, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i138, !prof !179

bb.gn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i149.i136
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agl) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i138

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i138: ; preds = %bb.gn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i149.i136, %bb.gj, %.lr.ph.i.i.i.i145.i132
  %i.ahb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i146.i133, i64 24 ; 2 uses
  %.not.i.i.i.i152.i139 = icmp eq ptr %i.ahb, %i.agj
  br i1 %.not.i.i.i.i152.i139, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i153.i140, label %.lr.ph.i.i.i.i145.i132, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i153.i140: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i151.i138
  %.pr.i.i154.i141 = load ptr, ptr %i.aak, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i155.i142

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i155.i142: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i153.i140, %bb.gh
  %i.ahc = phi ptr [ %.pr.i.i154.i141, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i153.i140 ], [ %i.agi, %bb.gh ] ; 3 uses
  %.not.i.i1.i.i156.i143 = icmp eq ptr %i.ahc, null
  br i1 %.not.i.i1.i.i156.i143, label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i144, label %bb.go

bb.go:                                            ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i155.i142
  %i.ahd = load ptr, ptr %i.aam, align 8, !tbaa !181
  %i.ahe = ptrtoint ptr %i.ahd to i64
  %i.ahf = ptrtoint ptr %i.ahc to i64
  %i.ahg = sub i64 %i.ahe, %i.ahf
  call void @_ZdlPvm(ptr noundef nonnull %i.ahc, i64 noundef %i.ahg) #40
  br label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i144

_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit157.i144: ; preds = %bb.go, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i155.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  %i.ahh = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0211.0295.i) #46 ; 2 uses
  %.not264.i = icmp eq ptr %i.ahh, %i.rq
  br i1 %.not264.i, label %._crit_edge298.i, label %bb.gb

.loopexit267.i:                                   ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i130.i116
  %lpad.loopexit.i117 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

.loopexit.split-lp.i153:                          ; preds = %.noexc.i.i.i140.i152
  %lpad.loopexit.split-lp.i154 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gg, %.loopexit.i129
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %44) #22
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.loopexit.split-lp.i153, %.loopexit267.i
  %.pn77.i118 = phi { ptr, i32 } [ %i.ahi, %bb.gp ], [ %lpad.loopexit.i117, %.loopexit267.i ], [ %lpad.loopexit.split-lp.i154, %.loopexit.split-lp.i153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %bb.hd

bb.gr:                                            ; preds = %._crit_edge298.i
  %i.ahj = load ptr, ptr %i.zz, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef %i.ahj)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i145 unwind label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ahk = landingpad { ptr, i32 }
          catch ptr null
  %i.ahl = extractvalue { ptr, i32 } %i.ahk, 0
  call void @__clang_call_terminate(ptr %i.ahl) #41
  unreachable

end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal15intersect_otherIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESL_SM_SM_SL_SM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESN_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT3_EERNS18_IT4_EERNS18_IT5_EERNS18_IT6_EERNS18_IT7_EE:bb.a
  %i.gc = load ptr, ptr %31, align 8, !tbaa !204  ; 11 uses
  %i.gd = ptrtoaddr ptr %i.gc to i64              ; 2 uses
  %i.ge = load ptr, ptr %i.fz, align 8, !tbaa !203 ; 3 uses
  %i.gf = ptrtoaddr ptr %i.ge to i64              ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.gc, %i.ge
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc101.i
  %i.gg = add i64 %i.gf, -8
  %i.gh = sub i64 %i.gg, %i.gd                    ; 2 uses
  %i.gi = lshr i64 %i.gh, 3
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gh, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader118, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.gk = add i64 %i.gf, -8
  %i.gl = sub i64 %i.gk, %i.gd
  %i.gm = and i64 %i.gl, -8
  %i.gn = add i64 %i.gm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.gb, i64 %i.gn
  %scevgep112 = getelementptr i8, ptr %i.gc, i64 %i.gn
  %bound0 = icmp ult ptr %i.gb, %scevgep112
  %bound1 = icmp ult ptr %i.gc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gj, 4611686018427387900     ; 3 uses
  %i.go = shl i64 %n.vec, 3                       ; 2 uses
  %i.gp = getelementptr i8, ptr %i.gb, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gc, i64 %i.go
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gb, i64 %i.gr ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.gc, i64 %i.gr ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.gs = getelementptr i8, ptr %next.gep113, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep113, align 8, !tbaa !207, !alias.scope !610, !noalias !608
  %wide.load114 = load <2 x ptr>, ptr %i.gs, align 8, !tbaa !207, !alias.scope !610, !noalias !608
  %i.gt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !207, !alias.scope !611, !noalias !610
  store <2 x ptr> %wide.load114, ptr %i.gt, align 8, !tbaa !207, !alias.scope !611, !noalias !610
  store <2 x ptr> splat (ptr null), ptr %next.gep113, align 8, !tbaa !207, !alias.scope !610, !noalias !608
  store <2 x ptr> splat (ptr null), ptr %i.gs, align 8, !tbaa !207, !alias.scope !610, !noalias !608
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !596

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader118

.lr.ph.i.i.i.i.i.preheader118:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.gb, %vector.memcheck ], [ %i.gb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gp, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.gc, %vector.memcheck ], [ %i.gc, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader118, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader118 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.gv = load ptr, ptr %.0911.i.i.i.i.i, align 8, !tbaa !207, !alias.scope !609, !noalias !608
  store ptr %i.gv, ptr %.012.i.i.i.i.i, align 8, !tbaa !207, !alias.scope !608, !noalias !609
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !207, !alias.scope !609, !noalias !608
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.gw, %i.ge
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !597

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc101.i
  %.not.i8.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  %i.gy = load ptr, ptr %i.fy, align 8, !tbaa !210
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gc to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.hb) #40
  br label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  store ptr %i.gb, ptr %31, align 8, !tbaa !204
  store ptr %i.gb, ptr %i.fz, align 8, !tbaa !203
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fw
  store ptr %i.hc, ptr %i.fy, align 8, !tbaa !210
  %.pre284.i = load ptr, ptr %21, align 8, !tbaa !211
  %.pre285.i = load ptr, ptr %i.fi, align 8, !tbaa !211
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, %bb.aj
  %i.hd = phi ptr [ %.pre285.i, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ %i.fj, %bb.aj ]
  %i.he = phi ptr [ %.pre284.i, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ %i.fk, %bb.aj ]
  %i.hf = phi ptr [ %i.gb, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ null, %bb.aj ]
  %i.hg = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  invoke void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr %i.hf, ptr %i.he, ptr %i.hd)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i
  %i.hh = load ptr, ptr %31, align 8, !tbaa !211  ; 2 uses
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !211
  %i.hj = load ptr, ptr %22, align 8, !tbaa !211
  %i.hk = load ptr, ptr %i.fp, align 8, !tbaa !211
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = ptrtoint ptr %i.hh to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = getelementptr inbounds i8, ptr %i.hh, i64 %i.hn
  invoke void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr %i.ho, ptr %i.hj, ptr %i.hk)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.hp = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  store i32 0, ptr %i.hp, align 8, !tbaa !95
  %i.hq = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr null, ptr %i.hq, align 8, !tbaa !96
  %i.hr = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %i.hp, ptr %i.hr, align 8, !tbaa !97
  %i.hs = getelementptr inbounds nuw i8, ptr %32, i64 32
  store ptr %i.hp, ptr %i.hs, align 8, !tbaa !98
  %i.ht = getelementptr inbounds nuw i8, ptr %32, i64 40
  store i64 0, ptr %i.ht, align 8, !tbaa !99
  %i.hu = load ptr, ptr %i.d, align 8, !tbaa !97  ; 2 uses
  %.not246271.i = icmp eq ptr %i.hu, %i.b
  br i1 %.not246271.i, label %._crit_edge275.i, label %.lr.ph274.i

.lr.ph274.i:                                      ; preds = %bb.am
  %i.hv = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  br label %bb.at

._crit_edge275.i:                                 ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i, %bb.am
  %i.ia = load ptr, ptr %i.i, align 8, !tbaa !97  ; 2 uses
  %.not247276.i = icmp eq ptr %i.ia, %i.g
  br i1 %.not247276.i, label %._crit_edge280.i, label %.lr.ph279.i

.lr.ph279.i:                                      ; preds = %._crit_edge275.i
  %i.ib = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 2 uses
  br label %bb.bw

bb.an:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEElsISI_EENS_16CommaInitializerISI_EERKNS0_IT_EE.exit.i
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %.body.i

bb.ao:                                            ; preds = %bb.ae
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body96.i

bb.ap:                                            ; preds = %._crit_edge11.i.i
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.body96.i

bb.aq:                                            ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit.i.i, %bb.ai
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.ar:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.as:                                            ; preds = %bb.al
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.at:                                            ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i, %.lr.ph274.i
  %.sroa.0209.0272.i = phi ptr [ %i.hu, %.lr.ph274.i ], [ %i.mj, %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0209.0272.i, i64 32
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !176
  store i64 %i.il, ptr %33, align 8, !tbaa !176
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0209.0272.i, i64 40 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0209.0272.i, i64 48 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !177 ; 3 uses
  %i.ip = load ptr, ptr %i.im, align 8, !tbaa !178 ; 3 uses
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.io, %i.ip
  br i1 %.not.i.i.i.i.i.i, label %.noexc106.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.it = icmp ugt i64 %i.is, 9223372036854775800
  br i1 %i.it, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !179

.noexc.i.i.i.i:                                   ; preds = %bb.au
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc105.i unwind label %.loopexit.split-lp253.i

.noexc105.i:                                      ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.au
  %i.iu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #45
          to label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc106_crit_edge.i unwind label %.loopexit252.i

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc106_crit_edge.i: ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre286.i = load ptr, ptr %i.im, align 8, !tbaa !180
  %.pre287.i = load ptr, ptr %i.in, align 8, !tbaa !180
  br label %.noexc106.i

.noexc106.i:                                      ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc106_crit_edge.i, %bb.at
  %i.iv = phi ptr [ %i.io, %bb.at ], [ %.pre287.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc106_crit_edge.i ] ; 2 uses
  %i.iw = phi ptr [ %i.ip, %bb.at ], [ %.pre286.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc106_crit_edge.i ] ; 2 uses
  %i.ix = phi ptr [ null, %bb.at ], [ %i.iu, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i..noexc106_crit_edge.i ] ; 4 uses
  store ptr %i.ix, ptr %i.hv, align 8, !tbaa !178
  store ptr %i.ix, ptr %i.hw, align 8, !tbaa !177
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.is
  store ptr %i.iy, ptr %i.hx, align 8, !tbaa !181
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.iw, %i.iv
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit251.thread.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit251.thread.i:                            ; preds = %.noexc106.i
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  br label %.noexc111.thread.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc106.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.jl, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.ix, %.noexc106.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.jk, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.iw, %.noexc106.i ] ; 4 uses
  %i.iz = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.iz, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !189
  %i.ja = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !190 ; 2 uses
  %i.je = load <2 x ptr>, ptr %i.jb, align 8, !tbaa !80
  store <2 x ptr> %i.je, ptr %i.ja, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 3 uses
  %i.jg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.jg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jh = load i32, ptr %i.jf, align 4, !tbaa !109
  %i.ji = add nsw i32 %i.jh, 1
  store i32 %i.ji, ptr %i.jf, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.jj = atomicrmw volatile add ptr %i.jf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.ax, %bb.aw, %.lr.ph.i.i.i.i.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jk, %i.iv
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit251.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

.loopexit251.i:                                   ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.pre288.i = load ptr, ptr %i.hv, align 8, !tbaa !178 ; 2 uses
  store ptr %i.jl, ptr %i.hw, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %.pre288.i to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %.not.i.i.i.i107.i = icmp eq ptr %i.jl, %.pre288.i
  br i1 %.not.i.i.i.i107.i, label %.noexc111.thread.i, label %bb.ay

bb.ay:                                            ; preds = %.loopexit251.i
  %i.jp = icmp ugt i64 %i.jo, 9223372036854775800
  br i1 %i.jp, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !179

.noexc.i.i.i:                                     ; preds = %bb.ay
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc110.i unwind label %.loopexit.split-lp258.i

.noexc110.i:                                      ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.jq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jo) #45
          to label %.noexc111.i unwind label %.loopexit257.i ; 5 uses

.noexc111.thread.i:                               ; preds = %.loopexit251.i, %.loopexit251.thread.i
  store i64 0, ptr %34, align 8
  store ptr null, ptr %i.hz, align 8, !tbaa !181
  br label %.loopexit250.thread.i

.noexc111.i:                                      ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre289.i = load ptr, ptr %i.hv, align 8, !tbaa !180 ; 2 uses
  %.pre290.i = load ptr, ptr %i.hw, align 8, !tbaa !180 ; 2 uses
  store ptr %i.jq, ptr %34, align 8, !tbaa !178
  store ptr %i.jq, ptr %i.hy, align 8, !tbaa !177
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jo
  store ptr %i.jr, ptr %i.hz, align 8, !tbaa !181
  %.not7.i.i.i.i.i.i = icmp eq ptr %.pre289.i, %.pre290.i
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit250.thread.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc111.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ke, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.jq, %.noexc111.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.kd, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %.pre289.i, %.noexc111.i ] ; 4 uses
  %i.js = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.js, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !189
  %i.jt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !190 ; 2 uses
  %i.jx = load <2 x ptr>, ptr %i.ju, align 8, !tbaa !80
  store <2 x ptr> %i.jx, ptr %i.jt, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 3 uses
  %i.jz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i108.i = icmp eq i8 %i.jz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i108.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ka = load i32, ptr %i.jy, align 4, !tbaa !109
  %i.kb = add nsw i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jy, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.kc = atomicrmw volatile add ptr %i.jy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba, %.lr.ph.i.i.i.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 3 uses
  %.not.i.i.i.i.i109.i = icmp eq ptr %i.kd, %.pre290.i
  br i1 %.not.i.i.i.i.i109.i, label %.loopexit250.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit250.thread.i:                            ; preds = %.noexc111.i, %.noexc111.thread.i
  %.0.lcssa.i.i.i.i.i.ph.i = phi ptr [ null, %.noexc111.thread.i ], [ %i.jq, %.noexc111.i ]
  store ptr %.0.lcssa.i.i.i.i.i.ph.i, ptr %i.hy, align 8, !tbaa !177
  br label %._crit_edge.i

.loopexit250.i:                                   ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre291.i = load ptr, ptr %34, align 8, !tbaa !180 ; 2 uses
  store ptr %i.ke, ptr %i.hy, align 8, !tbaa !177
  %.not248268.i = icmp eq ptr %.pre291.i, %i.ke
  br i1 %.not248268.i, label %._crit_edge.i, label %.lr.ph270.i

.lr.ph270.i:                                      ; preds = %.loopexit250.i
  %i.kf = load i64, ptr %i.dd, align 8, !tbaa !118
  br label %bb.bc

._crit_edge.i:                                    ; preds = %bb.bc, %.loopexit250.i, %.loopexit250.thread.i
  %i.kg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.bd unwind label %bb.bt

.loopexit252.i:                                   ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit254.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp253.i:                          ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp255.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit257.i:                                   ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit259.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp258.i:                          ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp260.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bc:                                            ; preds = %bb.bc, %.lr.ph270.i
  %.sroa.0205.0269.i = phi ptr [ %.pre291.i, %.lr.ph270.i ], [ %i.kj, %bb.bc ] ; 4 uses
  %i.kh = load i64, ptr %.sroa.0205.0269.i, align 8, !tbaa !189
  %i.ki = add nsw i64 %i.kh, %i.kf
  store i64 %i.ki, ptr %.sroa.0205.0269.i, align 8, !tbaa !189
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0205.0269.i, i64 24
  %.not248.i = icmp eq ptr %.sroa.0205.0269.i, %.09.i.i.i.i.i.i
  br i1 %.not248.i, label %._crit_edge.i, label %bb.bc

bb.bd:                                            ; preds = %._crit_edge.i
  %i.kk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.be unwind label %bb.bt     ; 0 uses

bb.be:                                            ; preds = %bb.bd
  %i.kl = load ptr, ptr %34, align 8, !tbaa !178  ; 3 uses
  %i.km = load ptr, ptr %i.hy, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kl, %i.km
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.be, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.le, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i ], [ %i.kl, %bb.be ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 4 uses
  %i.kq = load atomic i64, ptr %i.kp acquire, align 8 ; 2 uses
  %i.kr = icmp eq i64 %i.kq, 4294967297
  %i.ks = trunc i64 %i.kq to i32                  ; 2 uses
  br i1 %i.kr, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.kp, align 8, !tbaa !192
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  store i32 0, ptr %i.kt, align 4, !tbaa !193
  %i.ku = load ptr, ptr %i.ko, align 8, !tbaa !114
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(16) %i.ko) #22, !inline_history !598
  %i.kx = load ptr, ptr %i.ko, align 8, !tbaa !114
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(16) %i.ko) #22, !inline_history !598
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.la = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.la, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lb = add nsw i32 %i.ks, -1
  store i32 %i.lb, ptr %i.kp, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.lc = atomicrmw volatile add ptr %i.kp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ks, %bb.bi ], [ %i.lc, %bb.bj ]
  %i.ld = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ld, label %bb.bk, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i, !prof !179

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ko) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i: ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.bg, %.lr.ph.i.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.le, %i.km
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %34, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.be
  %i.lf = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.kl, %bb.be ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.lg = load ptr, ptr %i.hz, align 8, !tbaa !181
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = ptrtoint ptr %i.lf to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.lj) #40
  br label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i: ; preds = %bb.bl, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  %i.lk = load ptr, ptr %i.hv, align 8, !tbaa !178 ; 3 uses
  %i.ll = load ptr, ptr %i.hw, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.lk, %i.ll
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i112.i

.lr.ph.i.i.i.i112.i:                              ; preds = %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.md, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i ], [ %i.lk, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i113.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i.i.i.i.i.i.i113.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i112.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 4 uses
  %i.lp = load atomic i64, ptr %i.lo acquire, align 8 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, 4294967297
  %i.lr = trunc i64 %i.lp to i32                  ; 2 uses
  br i1 %i.lq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.lo, align 8, !tbaa !192
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store i32 0, ptr %i.ls, align 4, !tbaa !193
  %i.lt = load ptr, ptr %i.ln, align 8, !tbaa !114
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #22, !inline_history !599
  %i.lw = load ptr, ptr %i.ln, align 8, !tbaa !114
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #22, !inline_history !599
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.lz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ma = add nsw i32 %i.lr, -1
  store i32 %i.ma, ptr %i.lo, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.mb = atomicrmw volatile add ptr %i.lo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lr, %bb.bp ], [ %i.mb, %bb.bq ]
  %i.mc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.mc, label %bb.br, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i, !prof !179

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bn, %.lr.ph.i.i.i.i112.i
  %i.md = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i114.i = icmp eq ptr %i.md, %i.ll
  br i1 %.not.i.i.i.i114.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i112.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.hv, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i
  %i.me = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.lk, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.mf = load ptr, ptr %i.hx, align 8, !tbaa !181
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.me to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef %i.mi) #40
  br label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i

_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit.i: ; preds = %bb.bs, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.mj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0209.0272.i) #46 ; 2 uses
  %.not246.i = icmp eq ptr %i.mj, %i.b
  br i1 %.not246.i, label %._crit_edge275.i, label %bb.at

bb.bt:                                            ; preds = %bb.bd, %._crit_edge.i
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %34) #22
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.loopexit.split-lp258.i, %.loopexit257.i
  %.pn79.i = phi { ptr, i32 } [ %i.mk, %bb.bt ], [ %lpad.loopexit259.i, %.loopexit257.i ], [ %lpad.loopexit.split-lp260.i, %.loopexit.split-lp258.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %33) #22
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.loopexit.split-lp253.i, %.loopexit252.i
  %.pn79.pn.i = phi { ptr, i32 } [ %.pn79.i, %bb.bu ], [ %lpad.loopexit254.i, %.loopexit252.i ], [ %lpad.loopexit.split-lp255.i, %.loopexit.split-lp253.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.dg

._crit_edge280.i:                                 ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit143.i, %._crit_edge275.i
  %i.ml = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.mm = load i8, ptr %i.ml, align 2, !tbaa !194, !range !77, !noundef !78
  %i.mn = trunc nuw i8 %i.mm to i1
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !195, !range !77, !noundef !78
  %i.mq = trunc nuw i8 %i.mp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS5_5EpeckESL_SM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKSt6vectorINS5_10Triangle_3IT1_EESaIS11_EERKSt3mapINSU_5IndexESY_ISt4pairIS17_NS5_6ObjectEESaIS1A_EESt4lessIS17_ESaIS18_IKS17_S1C_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1L_IT3_EERNS1L_IT4_EERNS1L_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(48) %32, i1 noundef zeroext %i.mn, i1 noundef zeroext %i.mq, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.cm unwind label %bb.df

bb.bw:                                            ; preds = %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit143.i, %.lr.ph279.i
  %.sroa.0201.0277.i = phi ptr [ %i.ia, %.lr.ph279.i ], [ %i.ox, %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit143.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0201.0277.i, i64 32
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !176
  store i64 %i.ms, ptr %35, align 8, !tbaa !176
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0201.0277.i, i64 40 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0201.0277.i, i64 48 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !177 ; 3 uses
  %i.mw = load ptr, ptr %i.mt, align 8, !tbaa !178 ; 3 uses
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i115.i = icmp eq ptr %i.mv, %i.mw
  br i1 %.not.i.i.i.i.i115.i, label %.noexc128.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.na = icmp ugt i64 %i.mz, 9223372036854775800
  br i1 %i.na, label %.noexc.i.i.i126.i, label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i116.i, !prof !179

.noexc.i.i.i126.i:                                ; preds = %bb.bx
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc127.i unwind label %.loopexit.split-lp.i

.noexc127.i:                                      ; preds = %.noexc.i.i.i126.i
  unreachable

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i116.i: ; preds = %bb.bx
  %i.nb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mz) #45
          to label %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i116..noexc128_crit_edge.i unwind label %.loopexit249.i

_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i116..noexc128_crit_edge.i: ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i116.i
  %.pre292.i = load ptr, ptr %i.mt, align 8, !tbaa !180
  %.pre293.i = load ptr, ptr %i.mu, align 8, !tbaa !180
  br label %.noexc128.i

.noexc128.i:                                      ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i116..noexc128_crit_edge.i, %bb.bw
  %i.nc = phi ptr [ %i.mv, %bb.bw ], [ %.pre293.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i116..noexc128_crit_edge.i ] ; 2 uses
  %i.nd = phi ptr [ %i.mw, %bb.bw ], [ %.pre292.i, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i116..noexc128_crit_edge.i ] ; 2 uses
  %i.ne = phi ptr [ null, %bb.bw ], [ %i.nb, %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i116..noexc128_crit_edge.i ] ; 5 uses
  store ptr %i.ne, ptr %i.ib, align 8, !tbaa !178
  store ptr %i.ne, ptr %i.ic, align 8, !tbaa !177
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.mz
  store ptr %i.nf, ptr %i.id, align 8, !tbaa !181
  %.not7.i.i.i.i.i.i117.i = icmp eq ptr %i.nd, %i.nc
  br i1 %.not7.i.i.i.i.i.i117.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i118.i

.lr.ph.i.i.i.i.i.i118.i:                          ; preds = %.noexc128.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i123.i
  %.09.i.i.i.i.i.i119.i = phi ptr [ %i.ns, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i123.i ], [ %i.ne, %.noexc128.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i120.i = phi ptr [ %i.nr, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i123.i ], [ %i.nd, %.noexc128.i ] ; 4 uses
  %i.ng = load i64, ptr %.sroa.04.08.i.i.i.i.i.i120.i, align 8, !tbaa !189
  store i64 %i.ng, ptr %.09.i.i.i.i.i.i119.i, align 8, !tbaa !189
  %i.nh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i119.i, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i120.i, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i120.i, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !190 ; 2 uses
  %i.nl = load <2 x ptr>, ptr %i.ni, align 8, !tbaa !80
  store <2 x ptr> %i.nl, ptr %i.nh, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i.i121.i = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i121.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i123.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i.i.i.i118.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 3 uses
  %i.nn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i122.i = icmp eq i8 %i.nn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i122.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.no = load i32, ptr %i.nm, align 4, !tbaa !109
  %i.np = add nsw i32 %i.no, 1
  store i32 %i.np, ptr %i.nm, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i123.i

bb.ca:                                            ; preds = %bb.by
  %i.nq = atomicrmw volatile add ptr %i.nm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i123.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i123.i: ; preds = %bb.ca, %bb.bz, %.lr.ph.i.i.i.i.i.i118.i
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i120.i, i64 24 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i119.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i124.i = icmp eq ptr %i.nr, %i.nc
  br i1 %.not.i.i.i.i.i.i124.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i118.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i123.i, %.noexc128.i
  %.0.lcssa.i.i.i.i.i.i125.i = phi ptr [ %i.ne, %.noexc128.i ], [ %i.ns, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i123.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i125.i, ptr %i.ic, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.nt = load i64, ptr %i.dd, align 8, !tbaa !118
  %i.nu = load i64, ptr %35, align 8, !tbaa !176
  %i.nv = add nsw i64 %i.nu, %i.nt
  store i64 %i.nv, ptr %i.a, align 8, !tbaa !87
  %i.nw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixEOl(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cb unwind label %bb.ck

bb.cb:                                            ; preds = %.loopexit.i
  %i.nx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.nw, ptr noundef nonnull align 8 dereferenceable(24) %i.ib)
          to label %bb.cc unwind label %bb.ck     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ny = load ptr, ptr %i.ib, align 8, !tbaa !178 ; 3 uses
  %i.nz = load ptr, ptr %i.ic, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i.i.i130.i = icmp eq ptr %i.ny, %i.nz
  br i1 %.not4.i.i.i.i130.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i141.i, label %.lr.ph.i.i.i.i131.i

.lr.ph.i.i.i.i131.i:                              ; preds = %bb.cc, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i137.i
  %.05.i.i.i.i132.i = phi ptr [ %i.or, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i137.i ], [ %i.ny, %bb.cc ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i132.i, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i133.i = icmp eq ptr %i.ob, null
  br i1 %.not.i.i.i.i.i.i.i.i.i133.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i137.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i131.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8 ; 4 uses
  %i.od = load atomic i64, ptr %i.oc acquire, align 8 ; 2 uses
  %i.oe = icmp eq i64 %i.od, 4294967297
  %i.of = trunc i64 %i.od to i32                  ; 2 uses
  br i1 %i.oe, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.oc, align 8, !tbaa !192
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  store i32 0, ptr %i.og, align 4, !tbaa !193
  %i.oh = load ptr, ptr %i.ob, align 8, !tbaa !114
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(16) %i.ob) #22, !inline_history !599
  %i.ok = load ptr, ptr %i.ob, align 8, !tbaa !114
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(16) %i.ob) #22, !inline_history !599
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i137.i

bb.cf:                                            ; preds = %bb.cd
  %i.on = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i134.i = icmp eq i8 %i.on, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i134.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oo = add nsw i32 %i.of, -1
  store i32 %i.oo, ptr %i.oc, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i135.i

bb.ch:                                            ; preds = %bb.cf
  %i.op = atomicrmw volatile add ptr %i.oc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i135.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i135.i: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i.i.i.i.i.i.i.i136.i = phi i32 [ %i.of, %bb.cg ], [ %i.op, %bb.ch ]
  %i.oq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i136.i, 1
  br i1 %i.oq, label %bb.ci, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i137.i, !prof !179

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i135.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ob) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i137.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i137.i: ; preds = %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i135.i, %bb.ce, %.lr.ph.i.i.i.i131.i
  %i.or = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i132.i, i64 24 ; 2 uses
  %.not.i.i.i.i138.i = icmp eq ptr %i.or, %i.nz
  br i1 %.not.i.i.i.i138.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i139.i, label %.lr.ph.i.i.i.i131.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i139.i: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i.i137.i
  %.pr.i.i140.i = load ptr, ptr %i.ib, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i141.i

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i141.i: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i139.i, %bb.cc
  %i.os = phi ptr [ %.pr.i.i140.i, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i139.i ], [ %i.ny, %bb.cc ] ; 3 uses
  %.not.i.i1.i.i142.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i1.i.i142.i, label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit143.i, label %bb.cj

bb.cj:                                            ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i141.i
  %i.ot = load ptr, ptr %i.id, align 8, !tbaa !181
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = ptrtoint ptr %i.os to i64
  %i.ow = sub i64 %i.ou, %i.ov
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.ow) #40
  br label %_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit143.i

_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev.exit143.i: ; preds = %bb.cj, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i.i141.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %i.ox = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0201.0277.i) #46 ; 2 uses
  %.not247.i = icmp eq ptr %i.ox, %i.g
  br i1 %.not247.i, label %._crit_edge280.i, label %bb.bw

.loopexit249.i:                                   ; preds = %_ZNSt15__new_allocatorISt4pairIlN4CGAL6ObjectEEE8allocateEmPKv.exit.i.i.i.i.i116.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit.split-lp.i:                             ; preds = %.noexc.i.i.i126.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cb, %.loopexit.i
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %35) #22
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.loopexit.split-lp.i, %.loopexit249.i
  %.pn77.i = phi { ptr, i32 } [ %i.oy, %bb.ck ], [ %lpad.loopexit.i, %.loopexit249.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %bb.dg

bb.cm:                                            ; preds = %._crit_edge280.i
  %i.oz = load ptr, ptr %i.hq, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef %i.oz)
          to label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev.exit.i unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pa = landingpad { ptr, i32 }
          catch ptr null
  %i.pb = extractvalue { ptr, i32 } %i.pa, 0
  call void @__clang_call_terminate(ptr %i.pb) #41
  unreachable

end_hunk_2
begin_hunk_3_@_ZN5boost14multiprecision8backends21eval_add_subtract_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.kv = load i8, ptr %i.k, align 1, !tbaa !76, !range !77, !noundef !78
  %i.kw = trunc nuw i8 %i.kv to i1
  %i.kx = load i8, ptr %i.l, align 2, !range !77
  %i.ky = trunc nuw i8 %i.kx to i1
  %or.cond.i25 = select i1 %i.kw, i1 true, i1 %i.ky
  br i1 %or.cond.i25, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit26, label %bb.bi

bb.bi:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit28
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = load i64, ptr %10, align 16
  %i.lc = shl i64 %i.lb, 3
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.lc) #40
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit26

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit26: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit28, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ld = load i8, ptr %i.g, align 1, !tbaa !76, !range !77, !noundef !78
  %i.le = trunc nuw i8 %i.ld to i1
  %i.lf = load i8, ptr %i.h, align 2, !range !77
  %i.lg = trunc nuw i8 %i.lf to i1
  %or.cond.i23 = select i1 %i.le, i1 true, i1 %i.lg
  br i1 %or.cond.i23, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit24, label %bb.bj

bb.bj:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit26
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = load i64, ptr %9, align 16
  %i.lk = shl i64 %i.lj, 3
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.lk) #40
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit24

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit24: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit26, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ll = load i8, ptr %i.c, align 1, !tbaa !76, !range !77, !noundef !78
  %i.lm = trunc nuw i8 %i.ll to i1
  %i.ln = load i8, ptr %i.d, align 2, !range !77
  %i.lo = trunc nuw i8 %i.ln to i1
  %or.cond.i = select i1 %i.lm, i1 true, i1 %i.lo
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit24
  %i.lp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = load i64, ptr %8, align 16
  %i.ls = shl i64 %i.lr, 3
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.ls) #40
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit24, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends11eval_divideINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::multiprecision::backends::rational_adaptor", align 16 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %2)
  invoke void @_ZN5boost14multiprecision8backends11eval_divideINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_(ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !76, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !77
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = load i64, ptr %0, align 16, !tbaa !86
  %i.j = shl i64 %i.i, 3
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.j) #40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !tbaa !229 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 16, !tbaa !229
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !237, !range !77, !noundef !78
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.o, ptr %i.p, align 8, !tbaa !237
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !76, !range !77, !noundef !78 ; 2 uses
  store i8 %i.r, ptr %i.a, align 1, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 26 ; 2 uses
  %i.t = load i8, ptr %i.s, align 2, !tbaa !238, !range !77, !noundef !78
  store i8 %i.t, ptr %i.d, align 2, !tbaa !238
  %i.u = trunc nuw i8 %i.r to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = shl i64 %i.l, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %0, ptr nonnull align 16 dereferenceable(64) %2, i64 %i.v, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEaSEOS6_.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !249
  store i64 0, ptr %i.k, align 16, !tbaa !229
  store i8 1, ptr %i.q, align 1, !tbaa !76
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEaSEOS6_.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEaSEOS6_.exit.i: ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76, !range !77, !noundef !78
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2, !range !77
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i3.i = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEaSEOS6_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !86
  %i.ag = load i64, ptr %i.w, align 16, !tbaa !86
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEaSEOS6_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !229 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aj, ptr %i.ak, align 16, !tbaa !229
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.am = load i8, ptr %i.al, align 8, !tbaa !237, !range !77, !noundef !78
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.am, ptr %i.an, align 8, !tbaa !237
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 57 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !76, !range !77, !noundef !78 ; 2 uses
  store i8 %i.ap, ptr %i.y, align 1, !tbaa !76
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !238, !range !77, !noundef !78
  store i8 %i.ar, ptr %i.ab, align 2, !tbaa !238
  %i.as = trunc nuw i8 %i.ap to i1
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = shl i64 %i.aj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.w, ptr nonnull align 16 dereferenceable(27) %i.x, i64 %i.at, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.w, ptr noundef nonnull align 16 dereferenceable(27) %i.x, i64 16, i1 false), !tbaa.struct !249
  store i64 0, ptr %i.ai, align 16, !tbaa !229
  store i8 1, ptr %i.ao, align 1, !tbaa !76
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i: ; preds = %bb.i, %bb.j
  %.pre5 = load i8, ptr %i.s, align 2, !range !77
  %.pre = load i8, ptr %i.q, align 1, !tbaa !76, !range !77
  %i.au = trunc nuw i8 %.pre to i1
  %i.av = trunc nuw i8 %.pre5 to i1
  %or.cond.i.i4 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond.i.i4, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load i64, ptr %2, align 16
  %i.az = shl i64 %i.ay, 3
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.az) #40
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.l:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.ba
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #12

declare void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRSt6vectorINS3_10Triangle_3IS4_EESaIS1S_EERS1Q_INS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPS1S_S1U_EENS1W_14ID_FROM_HANDLEEEESaIS23_EEE_clES1V_S26_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !167    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 72                  ; 3 uses
  %2 = icmp slt i64 %i.f, 0
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198
  %i.j = load ptr, ptr %1, align 8, !tbaa !197
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 56
  %i.o = icmp ult i64 %i.n, %i.g
  br i1 %i.o, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !799
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.l
  %i.t = mul nuw nsw i64 %i.g, 56
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #45 ; 4 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !197    ; 5 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !799  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.u, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.v, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i, i64 56, i1 false), !alias.scope !800
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !784

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.v, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE13_M_deallocateEPSE_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !198
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ac) #40
  br label %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE13_M_deallocateEPSE_m.exit.i

_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE13_M_deallocateEPSE_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit.i
  store ptr %i.u, ptr %1, align 8, !tbaa !197
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !799
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %i.g
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !198
  %.pre = load ptr, ptr %0, align 8, !tbaa !169
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !169
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE13_M_deallocateEPSE_m.exit.i
  %i.af = phi ptr [ %i.b, %bb.c ], [ %.pre26, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE13_M_deallocateEPSE_m.exit.i ]
  %i.ag = phi ptr [ %i.c, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE13_M_deallocateEPSE_m.exit.i ] ; 2 uses
  %.not24 = icmp eq ptr %i.ag, %i.af
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre27 = load ptr, ptr %i.ah, align 8, !tbaa !799
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %i.ai = phi ptr [ %.pre27, %.lr.ph ], [ %i.cd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 9 uses
  %.sroa.021.025 = phi ptr [ %i.ag, %.lr.ph ], [ %i.ce, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !228, !noalias !801 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 40
  %i.an = load double, ptr %i.am, align 8, !tbaa !228, !noalias !802 ; 4 uses
  %i.ao = fcmp olt double %i.an, %i.ak
  %.sroa.speculated23.i.i.i = select i1 %i.ao, double %i.an, double %i.ak ; 2 uses
  %i.ap = fcmp olt double %i.ak, %i.an
  %.sroa.speculated.i.i.i = select i1 %i.ap, double %i.an, double %i.ak ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 64
  %i.as = load double, ptr %i.ar, align 8, !tbaa !228, !noalias !803 ; 4 uses
  %i.at = load <2 x double>, ptr %.sroa.021.025, align 8, !tbaa !228, !noalias !801 ; 4 uses
  %i.au = load <2 x double>, ptr %i.al, align 8, !tbaa !228, !noalias !802 ; 4 uses
  %i.av = fcmp olt <2 x double> %i.au, %i.at
  %i.aw = select <2 x i1> %i.av, <2 x double> %i.au, <2 x double> %i.at ; 2 uses
  %i.ax = load <2 x double>, ptr %i.aq, align 8, !tbaa !228, !noalias !803 ; 4 uses
  %i.ay = fcmp olt <2 x double> %i.ax, %i.aw
  %i.az = select <2 x i1> %i.ay, <2 x double> %i.ax, <2 x double> %i.aw ; 2 uses
  %i.ba = fcmp olt double %i.as, %.sroa.speculated23.i.i.i
  %.sroa.speculated23.i5.i.i = select i1 %i.ba, double %i.as, double %.sroa.speculated23.i.i.i ; 2 uses
  %i.bb = fcmp olt <2 x double> %i.at, %i.au
  %i.bc = select <2 x i1> %i.bb, <2 x double> %i.au, <2 x double> %i.at ; 2 uses
  %i.bd = fcmp olt <2 x double> %i.bc, %i.ax
  %i.be = select <2 x i1> %i.bd, <2 x double> %i.ax, <2 x double> %i.bc ; 2 uses
  %i.bf = fcmp olt double %.sroa.speculated.i.i.i, %i.as
  %.sroa.speculated.i8.i.i = select i1 %i.bf, double %i.as, double %.sroa.speculated.i.i.i ; 2 uses
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !198
  %.not.i.i = icmp eq ptr %i.ai, %i.bg
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store <2 x double> %i.az, ptr %i.ai, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store <2 x double> %i.be, ptr %.sroa.710.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr %.sroa.021.025, ptr %.sroa.10.0..sroa_idx, align 8
  %i.bh = load ptr, ptr %i.ah, align 8, !tbaa !799
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56 ; 2 uses
  store ptr %i.bi, ptr %i.ah, align 8, !tbaa !799
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr %1, align 8, !tbaa !197   ; 5 uses
  %i.bk = ptrtoint ptr %i.ai to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.h, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bo = sdiv exact i64 %i.bm, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 164703072086692425)
  %i.bs = select i1 %i.bq, i64 164703072086692425, i64 %i.br ; 3 uses
  %.not.i.i.i.i5 = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i5)
  %i.bt = mul nuw nsw i64 %i.bs, 56
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #45 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm ; 5 uses
  store <2 x double> %i.az, ptr %i.bv, align 8
  %.sroa.67.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.67.0..sroa_idx8, align 8
  %.sroa.710.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store <2 x double> %i.be, ptr %.sroa.710.0..sroa_idx11, align 8
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.9.0..sroa_idx16, align 8
  %.sroa.10.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store ptr %.sroa.021.025, ptr %.sroa.10.0..sroa_idx18, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.ai
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.bu, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !804
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !784

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bu, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !198
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.cb) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  store ptr %i.bu, ptr %1, align 8, !tbaa !197
  store ptr %i.by, ptr %i.ah, align 8, !tbaa !799
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cc, ptr %i.h, align 8, !tbaa !198
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.f, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i
  %i.cd = phi ptr [ %i.bi, %bb.f ], [ %i.by, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 72 ; 2 uses
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !169
  %.not = icmp eq ptr %i.ce, %i.cf
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !798
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #30

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !87     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87
  %i.g = icmp slt i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !265 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !13

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !87
  %i.k = icmp slt i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #45 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !87
  store i64 %i.n, ptr %i.m, align 8, !tbaa !176
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.m, align 8, !tbaa !87
  %i.v = load i64, ptr %i.t, align 8, !tbaa !87
  %i.w = icmp slt i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !99
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !99
  br label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.l) #22
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.l) #22
  br label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !178    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181
  %i.i = load ptr, ptr %0, align 8, !tbaa !178    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i, !prof !179

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.p = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.p, ptr %.09.i.i.i.i.i, align 8, !tbaa !189
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !190  ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !80
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.v, align 4, !tbaa !109
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !178   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aw, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i ], [ %i.ac, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ah, align 8, !tbaa !192
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !193
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !114
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22, !inline_history !14
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22, !inline_history !14
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.k ], [ %i.au, %bb.l ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.m, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i, !prof !179

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.aw, %i.ae
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.ax = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split ], [ %i.ac, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !181
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #40
  br label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit, %bb.n
  store ptr %i.o, ptr %0, align 8, !tbaa !178
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.bc, ptr %i.g, align 8, !tbaa !181
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt4pairIlN4CGAL6ObjectEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.o:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !177 ; 3 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.bg, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp sgt i64 %i.f, 0
  br i1 %i.bh, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIlN4CGAL6ObjectEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.p
  %i.bi = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.co, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cn, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cm, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.bj = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.bj, ptr %.0811.i.i.i.i.i, align 8, !tbaa !189
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !266
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !266
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !190 ; 4 uses
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !109
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !109
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bv = atomicrmw volatile add ptr %i.br, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !190
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bw = phi ptr [ %i.bq, %bb.q ], [ %i.bq, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
end_hunk_3
begin_hunk_4_@_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors34Collinear_are_ordered_along_line_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_:bb.a

bb.n:                                             ; preds = %bb.b
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %6) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.o ], [ %i.cu, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %5) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ct, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIPN5boost3anyEEEN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS7_7Point_3INS7_5EpickEEENS7_9Segment_3ISC_EENS7_10Triangle_3ISC_EESt6vectorISD_SaISD_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !331
  switch i8 %i.b, label %bb.i [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 3 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SP_.exit unwind label %bb.c ; 3 uses

common.resume:                                    ; preds = %bb.g, %bb.e, %bb.c
  %.sink = phi ptr [ %i.k, %bb.g ], [ %i.g, %bb.e ], [ %i.c, %bb.c ]
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 8) #40
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SP_.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL7Point_3INS2_5EpickEEEEE, i64 16), ptr %i.d, align 8, !tbaa !114
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(73) %1, i64 24, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !355
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 3 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SP_.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SP_.exit: ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL9Segment_3INS2_5EpickEEEEE, i64 16), ptr %i.h, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(73) %1, i64 48, i1 false)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !355
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 3 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #45
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SP_.exit unwind label %bb.g ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SP_.exit: ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL10Triangle_3INS2_5EpickEEEEE, i64 16), ptr %i.l, align 8, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(73) %1, i64 72, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !355
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZNK4CGAL6Object16Any_from_variantclISt6vectorINS_7Point_3INS_5EpickEEESaIS6_EEEEPN5boost3anyERKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(73) %1)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SP_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SP_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SP_.exit
  %.0 = phi ptr [ %i.c, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SP_.exit ], [ %i.g, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SP_.exit ], [ %i.k, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_5EpickEEENS8_9Segment_3ISE_EENS8_10Triangle_3ISE_EESt6vectorISF_SaISF_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SP_.exit ], [ %i.o, %bb.h ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL7Point_3INS2_5EpickEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL7Point_3INS2_5EpickEEEE4typeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL7Point_3INS_5EpickEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL7Point_3INS2_5EpickEEEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL7Point_3INS2_5EpickEEEEE, i64 16), ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_5EpickEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_5EpickEEEE4typeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL9Segment_3INS_5EpickEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_5EpickEEEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL9Segment_3INS2_5EpickEEEEE, i64 16), ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_5EpickEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_5EpickEEEE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL10Triangle_3INS_5EpickEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_5EpickEEEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #45 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL10Triangle_3INS2_5EpickEEEEE, i64 16), ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4CGAL6Object16Any_from_variantclISt6vectorINS_7Point_3INS_5EpickEEESaIS6_EEEEPN5boost3anyERKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 3 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45
          to label %.noexc unwind label %bb.d     ; 6 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEEE, i64 16), ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !350  ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !288    ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc3.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !179

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc.i unwind label %bb.c, !inline_history !29

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #45
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i unwind label %bb.c, !inline_history !29

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !332
  %.pre4.i = load ptr, ptr %i.d, align 8, !tbaa !332
  br label %.noexc3.i.i

.noexc3.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i, %.noexc
  %i.l = phi ptr [ %i.e, %.noexc ], [ %.pre4.i, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 2 uses
  %i.m = phi ptr [ %i.f, %.noexc ], [ %.pre.i, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 2 uses
  %i.n = phi ptr [ null, %.noexc ], [ %i.k, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 5 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !288
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !350
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !289
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc3.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.n, %.noexc3.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc3.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !30

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #40
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc3.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc3.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !350
  store ptr %i.b, ptr %i.a, align 8, !tbaa !355
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.t, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEED2Ev.exit

_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEE4typeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTISt6vectorIN4CGAL7Point_3INS0_5EpickEEESaIS3_EE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_5EpickEEESaIS6_EEEE, i64 16), ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !350  ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !288  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc3.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !179

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.c, !inline_history !29

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #45
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge unwind label %bb.c, !inline_history !29

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !332
  %.pre3 = load ptr, ptr %i.d, align 8, !tbaa !332
  br label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge, %bb.a
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 2 uses
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 2 uses
  %i.n = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 5 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !288
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !350
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !289
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc3.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.noexc3.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc3.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !30

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc3.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc3.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !350
  ret ptr %i.a

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpickEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #40
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5boost3anyEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !190
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !192
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !193
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !357
  store ptr %i.a, ptr %0, align 8, !tbaa !190
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #22 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !355    ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5boost3anyD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #22, !inline_history !31
  br label %_ZN5boost3anyD2Ev.exit

_ZN5boost3anyD2Ev.exit:                           ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 8) #40
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost3anyD2Ev.exit, %bb.c
  invoke void @__cxa_rethrow() #43
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #41
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !355  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5boost3anyD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #22, !inline_history !31
  br label %_ZN5boost3anyD2Ev.exit

_ZN5boost3anyD2Ev.exit:                           ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #40
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost3anyD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIlN4CGAL6ObjectEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4CGAL6ObjectD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !192
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !193
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !22
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !22
  br label %_ZN4CGAL6ObjectD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4CGAL6ObjectD2Ev.exit, !prof !179

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZN4CGAL6ObjectD2Ev.exit

_ZN4CGAL6ObjectD2Ev.exit:                         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181
  %i.f = load ptr, ptr %0, align 8, !tbaa !178    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #43
  unreachable

_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.m = load i64, ptr %.0810.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.m, ptr %.011.i.i.i.i.i, align 8, !tbaa !189
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !190  ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !80
  store <2 x ptr> %i.r, ptr %i.n, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.s, align 4, !tbaa !109
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1503

_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !178    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i ], [ %i.z, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ae, align 8, !tbaa !192
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !193
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !14
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !14
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.j ], [ %i.ar, %bb.k ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.l, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i, !prof !179

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.at, %i.ab
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit
  %i.au = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split ], [ %i.z, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !181
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #40
  br label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit, %bb.m
  store ptr %i.l, ptr %0, align 8, !tbaa !178
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.az, ptr %i.aa, align 8, !tbaa !177
  store ptr %i.az, ptr %i.d, align 8, !tbaa !181
  br label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.n:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !177 ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.h                     ; 4 uses
  %.not = icmp ult i64 %i.bd, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKSt4pairIlN4CGAL6ObjectEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = icmp sgt i64 %i.c, 0
  br i1 %i.be, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIlN4CGAL6ObjectEEPS3_ET0_T_S8_S7_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.o
  %i.bf = udiv exact i64 %i.c, 24
  br label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cl, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.bf, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ck, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cj, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.bg = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.bg, ptr %.0811.i.i.i.i.i, align 8, !tbaa !189
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !266
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !266
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !190 ; 4 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i18 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !109
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !109
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bs = atomicrmw volatile add ptr %i.bo, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !190
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bt = phi ptr [ %i.bn, %bb.p ], [ %i.bn, %bb.r ], [ %.pr.pre.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.u, label %bb.v

end_hunk_4
begin_hunk_5_@_ZN4CGAL8internal18Converting_visitorINS_19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEENS3_INS_11Interval_ntILb0EEEEENS_12NT_converterISG_SJ_EEEESt8optionalISt7variantIJNS_7Point_3ISK_EENS_9Segment_3ISK_EENS_10Triangle_3ISK_EESt6vectorISR_SaISR_EEEEEEclINSU_ISH_EEEEvRKT_:bb.a
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %8 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %9 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %10 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !2773
  %i.a = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 16 dereferenceable(576) %1), !noalias !2773 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !2773
  %i.b = extractvalue { double, double } %i.a, 0
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = fneg double %i.b
  %i.e = insertelement <2 x double> poison, double %i.d, i64 0
  %i.f = insertelement <2 x double> %i.e, double %i.c, i64 1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !2773
  %i.h = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 16 dereferenceable(64) %i.g), !noalias !2773 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !2773
  %i.i = extractvalue { double, double } %i.h, 0
  %i.j = extractvalue { double, double } %i.h, 1
  %i.k = fneg double %i.i
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.j, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !2773
  %i.o = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 16 dereferenceable(64) %i.n), !noalias !2773 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !2773
  %i.p = extractvalue { double, double } %i.o, 0
  %i.q = extractvalue { double, double } %i.o, 1
  %i.r = fneg double %i.p
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !2774
  %i.v = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 16 dereferenceable(192) %i.u), !noalias !2774 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !2774
  %i.w = extractvalue { double, double } %i.v, 0
  %i.x = extractvalue { double, double } %i.v, 1
  %i.y = fneg double %i.w
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.x, i64 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !2774
  %i.ac = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(64) %i.ab), !noalias !2774 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !2774
  %i.ad = extractvalue { double, double } %i.ac, 0
  %i.ae = extractvalue { double, double } %i.ac, 1
  %i.af = fneg double %i.ad
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !2774
  %i.aj = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.ai), !noalias !2774 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !2774
  %i.ak = extractvalue { double, double } %i.aj, 0
  %i.al = extractvalue { double, double } %i.aj, 1
  %i.am = fneg double %i.ak
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.al, i64 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !2775
  %i.aq = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(192) %i.ap), !noalias !2775 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !2775
  %i.ar = extractvalue { double, double } %i.aq, 0
  %i.as = extractvalue { double, double } %i.aq, 1
  %i.at = fneg double %i.ar
  %i.au = insertelement <2 x double> poison, double %i.at, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.as, i64 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 448
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !2775
  %i.ax = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.aw), !noalias !2775 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !2775
  %i.ay = extractvalue { double, double } %i.ax, 0
  %i.az = extractvalue { double, double } %i.ax, 1
  %i.ba = fneg double %i.ay
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.az, i64 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !2775
  %i.be = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.bd), !noalias !2775 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !2775
  %i.bf = extractvalue { double, double } %i.be, 0
  %i.bg = extractvalue { double, double } %i.be, 1
  %i.bh = fneg double %i.bf
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bg, i64 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !448 ; 32 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 160 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 16, !tbaa !396, !range !77, !noundef !78
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 144 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 16, !tbaa !403
  switch i8 %i.bq, label %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE7emplaceILm2EJSA_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS6_S8_SA_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit.i.i [
    i8 2, label %_ZSt3getILm2EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit.i.i
    i8 3, label %bb.c
  ]

_ZSt3getILm2EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit.i.i: ; preds = %bb.b
  store <2 x double> %i.f, ptr %i.bl, align 16
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> %i.m, ptr %.sroa.6.0..sroa_idx6, align 16
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <2 x double> %i.t, ptr %.sroa.7.0..sroa_idx10, align 16
  %.sroa.8.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <2 x double> %i.aa, ptr %.sroa.8.0..sroa_idx14, align 16
  %.sroa.9.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store <2 x double> %i.ah, ptr %.sroa.9.0..sroa_idx18, align 16
  %.sroa.10.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  store <2 x double> %i.ao, ptr %.sroa.10.0..sroa_idx22, align 16
  %.sroa.11.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <2 x double> %i.av, ptr %.sroa.11.0..sroa_idx26, align 16
  %.sroa.12.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store <2 x double> %i.bc, ptr %.sroa.12.0..sroa_idx30, align 16
  %.sroa.13.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store <2 x double> %i.bj, ptr %.sroa.13.0..sroa_idx34, align 16
  br label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSISB_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESJ_ISt6__and_IJSt9is_scalarISF_ESK_ISF_NSt5decayISN_E4typeEEEEESt16is_constructibleISF_JSN_EESt13is_assignableIRSF_SN_EEERSG_E4typeEOSN_.exit

bb.c:                                             ; preds = %bb.b
  %i.br = load ptr, ptr %i.bl, align 16, !tbaa !410 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE7emplaceILm2EJSA_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS6_S8_SA_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !411
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #40
  br label %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE7emplaceILm2EJSA_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS6_S8_SA_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit.i.i

_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE7emplaceILm2EJSA_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS6_S8_SA_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store <2 x double> %i.f, ptr %i.bl, align 16
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> %i.m, ptr %.sroa.6.0..sroa_idx4, align 16
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <2 x double> %i.t, ptr %.sroa.7.0..sroa_idx8, align 16
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <2 x double> %i.aa, ptr %.sroa.8.0..sroa_idx12, align 16
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store <2 x double> %i.ah, ptr %.sroa.9.0..sroa_idx16, align 16
  %.sroa.10.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  store <2 x double> %i.ao, ptr %.sroa.10.0..sroa_idx20, align 16
  %.sroa.11.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <2 x double> %i.av, ptr %.sroa.11.0..sroa_idx24, align 16
  %.sroa.12.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store <2 x double> %i.bc, ptr %.sroa.12.0..sroa_idx28, align 16
  %.sroa.13.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store <2 x double> %i.bj, ptr %.sroa.13.0..sroa_idx32, align 16
  store i8 2, ptr %i.bp, align 16, !tbaa !403
  br label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSISB_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESJ_ISt6__and_IJSt9is_scalarISF_ESK_ISF_NSt5decayISN_E4typeEEEEESt16is_constructibleISF_JSN_EESt13is_assignableIRSF_SN_EEERSG_E4typeEOSN_.exit

bb.e:                                             ; preds = %bb.a
  store <2 x double> %i.f, ptr %i.bl, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> %i.m, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <2 x double> %i.t, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <2 x double> %i.aa, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store <2 x double> %i.ah, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  store <2 x double> %i.ao, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <2 x double> %i.av, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store <2 x double> %i.bc, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store <2 x double> %i.bj, ptr %.sroa.13.0..sroa_idx, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  store i8 2, ptr %i.bx, align 16, !tbaa !403
  store i8 1, ptr %i.bm, align 16, !tbaa !396
  br label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSISB_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESJ_ISt6__and_IJSt9is_scalarISF_ESK_ISF_NSt5decayISN_E4typeEEEEESt16is_constructibleISF_JSN_EESt13is_assignableIRSF_SN_EEERSG_E4typeEOSN_.exit

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSISB_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESJ_ISt6__and_IJSt9is_scalarISF_ESK_ISF_NSt5decayISN_E4typeEEEEESt16is_constructibleISF_JSN_EESt13is_assignableIRSF_SN_EEERSG_E4typeEOSN_.exit: ; preds = %_ZSt3getILm2EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit.i.i, %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE7emplaceILm2EJSA_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS6_S8_SA_SD_EE4typeEDpT0_EERSJ_E4typeEDpOSK_.exit.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal18Converting_visitorINS_19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEENS3_INS_11Interval_ntILb0EEEEENS_12NT_converterISG_SJ_EEEESt8optionalISt7variantIJNS_7Point_3ISK_EENS_9Segment_3ISK_EENS_10Triangle_3ISK_EESt6vectorISR_SaISR_EEEEEEclINSQ_ISH_EEEEvRKSW_IT_SaIS14_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #31 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"class.std::vector.738", align 8   ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !453  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !454    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 192                 ; 2 uses
  %6 = icmp slt i64 %i.f, 0
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not45 = icmp eq ptr %i.b, %i.c
  br i1 %.not45, label %._crit_edge, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.i = mul nuw nsw i64 %i.g, 48
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #45
          to label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE7reserveEm.exit unwind label %bb.g ; 5 uses

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre32.pre = load ptr, ptr %i.a, align 8, !tbaa !450
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !450 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !410
  store ptr %i.j, ptr %i.k, align 8, !tbaa !441
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.g
  store ptr %i.l, ptr %i.h, align 8, !tbaa !411
  %i.m = icmp eq ptr %.pre.pre, %.pre32.pre
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE7reserveEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit, %bb.c, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE7reserveEm.exit
  %i.o = phi ptr [ null, %bb.c ], [ %i.j, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE7reserveEm.exit ], [ %i.cb, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !448  ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 2 uses
  %i.s = load i8, ptr %i.r, align 16, !tbaa !396, !range !77, !noundef !78
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.u = invoke noundef nonnull align 16 dereferenceable(145) ptr @_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSIRSD_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS6_S8_SA_SD_EE4typeEE18is_constructible_vISM_SJ_E15is_assignable_vIRSM_SJ_EERSE_E4typeESK_(ptr noundef nonnull align 16 dereferenceable(176) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %._ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit_crit_edge unwind label %bb.g ; 0 uses

._ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit_crit_edge: ; preds = %bb.d
  %.pre33 = load ptr, ptr %5, align 8, !tbaa !410
  br label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit

bb.e:                                             ; preds = %._crit_edge
  %i.v = load ptr, ptr %5, align 8, !tbaa !410    ; 4 uses
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.v
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc10.thread, label %bb.f

.noexc10.thread:                                  ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr null, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %i.ab, align 16, !tbaa !411
  br label %_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ugt i64 %i.y, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !179

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #45
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader unwind label %bb.g ; 4 uses

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.q, align 16, !tbaa !410
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !441
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.af, ptr %i.ag, align 16, !tbaa !411
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !47

_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc10.thread
  %i.aj = phi ptr [ %i.z, %.noexc10.thread ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc10.thread ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !441
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store i8 3, ptr %i.ak, align 16, !tbaa !403
  store i8 1, ptr %i.r, align 16, !tbaa !396
  br label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.cb, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit ] ; 7 uses
  %.sroa.025.030 = phi ptr [ %.pre.pre, %.lr.ph ], [ %i.cc, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !2782
  %i.an = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(192) %.sroa.025.030)
          to label %.noexc11 unwind label %.loopexit ; 2 uses

.noexc11:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !2782
  %i.ao = extractvalue { double, double } %i.an, 0
  %i.ap = extractvalue { double, double } %i.an, 1
  %i.aq = fneg double %i.ao
  %i.ar = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.ap, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !2782
  %i.au = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.at)
          to label %.noexc12 unwind label %.loopexit ; 2 uses

.noexc12:                                         ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !2782
  %i.av = extractvalue { double, double } %i.au, 0
  %i.aw = extractvalue { double, double } %i.au, 1
  %i.ax = fneg double %i.av
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.aw, i64 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !2782
  %i.bb = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.ba)
          to label %bb.i unwind label %.loopexit  ; 2 uses

bb.i:                                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !2782
  %i.bc = extractvalue { double, double } %i.bb, 0
  %i.bd = extractvalue { double, double } %i.bb, 1
  %i.be = fneg double %i.bc
  %i.bf = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.bd, i64 1 ; 2 uses
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !411
  %.not.i.i = icmp eq ptr %i.am, %i.bh
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <2 x double> %i.as, ptr %i.am, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x double> %i.az, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store <2 x double> %i.bg, ptr %.sroa.7.0..sroa_idx, align 16
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !441
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  store ptr %i.bj, ptr %i.n, align 8, !tbaa !441
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit

bb.k:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %5, align 8, !tbaa !410   ; 5 uses
  %i.bl = ptrtoint ptr %i.am to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 4 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775776
  br i1 %i.bo, label %bb.l, label %_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bp = sdiv exact i64 %i.bn, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 192153584101141162)
  %i.bt = select i1 %i.br, i64 192153584101141162, i64 %i.bs ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.bu = mul nuw nsw i64 %i.bt, 48
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #45
          to label %.noexc16 unwind label %.loopexit ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn ; 3 uses
  store <2 x double> %i.as, ptr %i.bw, align 16
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x double> %i.az, ptr %.sroa.6.0..sroa_idx20, align 16
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store <2 x double> %i.bg, ptr %.sroa.7.0..sroa_idx22, align 16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.am
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc16, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %i.bv, %.noexc16 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %.noexc16 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.0911.i.i.i.i.i.i, i64 48, i1 false), !alias.scope !2783
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.am
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !46

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc16
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bv, %.noexc16 ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bv, ptr %5, align 8, !tbaa !410
  store ptr %i.bz, ptr %i.n, align 8, !tbaa !441
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !411
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.j
  %i.cb = phi ptr [ %i.bz, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %i.bj, %bb.j ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 192 ; 2 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !450
  %.not = icmp eq ptr %i.cc, %i.cd
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !2781

.loopexit:                                        ; preds = %bb.h, %.noexc11, %.noexc12, %_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit: ; preds = %._ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit_crit_edge, %_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i
  %i.ce = phi ptr [ %.pre33, %._ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit_crit_edge ], [ %i.v, %_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !411
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ci) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.pn = phi { ptr, i32 } [ %i.al, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cj = load ptr, ptr %5, align 8, !tbaa !410   ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !411
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit18

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit18: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(145) ptr @_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSIRSD_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS6_S8_SA_SD_EE4typeEE18is_constructible_vISM_SJ_E15is_assignable_vIRSM_SJ_EERSE_E4typeESK_(ptr noundef nonnull align 16 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !403
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZSt3getILm3EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit, label %bb.b

_ZSt3getILm3EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit: ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !441  ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !410    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775776
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !179

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #45
  %.pre = load ptr, ptr %1, align 8, !tbaa !420
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !420
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.f, %bb.b ], [ %.pre10, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.n = phi ptr [ %i.g, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.o = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i, i64 48, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !47

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  %i.s = load i8, ptr %i.a, align 16, !tbaa !403
  %i.t = icmp eq i8 %i.s, 3
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit
  %i.u = load ptr, ptr %0, align 16, !tbaa !410   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !411
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit, %bb.e, %bb.f
  store ptr %i.o, ptr %0, align 16, !tbaa !410
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !441
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.ab, align 16, !tbaa !411
  store i8 3, ptr %i.a, align 16, !tbaa !403
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, %_ZSt3getILm3EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !441  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !410    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !411
  %i.i = load ptr, ptr %0, align 8, !tbaa !410    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i, !prof !179

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -48
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 48
  %i.s = add i64 %.fr.i, 48
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.o, ptr align 16 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit: ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !410    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !411
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #40
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !410
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.z, ptr %i.g, align 8, !tbaa !411
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !441
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ad, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.f, 48
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !269

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.i, ptr align 16 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = icmp eq i64 %i.f, 48
  br i1 %i.af, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ad, 48
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !269

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.i, ptr align 16 %i.c, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ad, 48
  br i1 %i.ah, label %bb.n, label %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit

_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ai = load ptr, ptr %1, align 8, !tbaa !410
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !441 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !410
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !441 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ao, %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.011.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.0810.i.i.i.i, i64 48, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2784

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !410
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !441
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE14_M_move_assignEOSG_(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(161) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.823, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !396, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i8, ptr %i.d, align 16, !range !77
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %0, ptr %2, align 8, !tbaa !457
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4CGAL7Point_3INS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEEEENS4_9Segment_3IS9_EENS4_10Triangle_3IS9_EESt6vectorISA_SaISA_EEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJSA_SC_SE_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 16 dereferenceable(145) %1)
          to label %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSEOSE_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #41
  unreachable

_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSEOSE_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.i, align 16, !tbaa !403
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.k = load i8, ptr %i.j, align 16, !tbaa !403
  switch i8 %i.k, label %bb.j [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 48, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 96, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 144, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.i:                                             ; preds = %bb.e
  %i.l = load <2 x ptr>, ptr %1, align 16, !tbaa !420
  store <2 x ptr> %i.l, ptr %0, align 16, !tbaa !420
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !411
  store ptr %i.o, ptr %i.m, align 16, !tbaa !411
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %1, i8 0, i64 24, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.j:                                             ; preds = %bb.e
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.p = load i8, ptr %i.j, align 16, !tbaa !403
  store i8 %i.p, ptr %i.i, align 16, !tbaa !403
  store i8 1, ptr %i.a, align 16, !tbaa !396
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit

bb.k:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 16, !tbaa !396
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i8, ptr %i.q, align 16
  %i.s = icmp eq i8 %i.r, 3
  %or.cond.i = select i1 %i.c, i1 %i.s, i1 false
  br i1 %or.cond.i, label %bb.l, label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %0, align 16, !tbaa !410   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit, label %bb.m
end_hunk_5
begin_hunk_6_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4CGAL7Point_3INS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEEEENS4_9Segment_3IS9_EENS4_10Triangle_3IS9_EESt6vectorISA_SaISA_EEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJSA_SC_SE_SH_EEEEDcOSM_DpOT1_:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 48, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 16, !tbaa !410 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !411
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #40
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  store i8 -1, ptr %i.d, align 16, !tbaa !403
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 48, i1 false)
  store i8 0, ptr %i.d, align 16, !tbaa !403
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.f:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i [
    i8 1, label %bb.g
    i8 3, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 96, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.h:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.c, align 16, !tbaa !410 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i12, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !411
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #40
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  store i8 -1, ptr %i.d, align 16, !tbaa !403
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 96, i1 false)
  store i8 1, ptr %i.d, align 16, !tbaa !403
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.j:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i [
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 144, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.l:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %i.c, align 16, !tbaa !410 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i13, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !411
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #40
  br label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.j
  store i8 -1, ptr %i.d, align 16, !tbaa !403
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %i.c, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 144, i1 false)
  store i8 2, ptr %i.d, align 16, !tbaa !403
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.n:                                             ; preds = %bb.a
  %i.x = icmp eq i8 %i.e, 3
  br i1 %i.x, label %bb.o, label %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %i.c, align 16, !tbaa !410 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !411
  %i.ab = load <2 x ptr>, ptr %1, align 16, !tbaa !420
  store <2 x ptr> %i.ab, ptr %i.c, align 16, !tbaa !420
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !411
  store ptr %i.ad, ptr %i.z, align 16, !tbaa !411
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #40
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.n
  %i.ah = load <2 x ptr>, ptr %1, align 16, !tbaa !420
  store <2 x ptr> %i.ah, ptr %i.c, align 16, !tbaa !420
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !411
  store ptr %i.ak, ptr %i.ai, align 16, !tbaa !411
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %1, i8 0, i64 24, i1 false)
  store i8 3, ptr %i.d, align 16, !tbaa !403
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.q:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit: ; preds = %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.p, %bb.o, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.k, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.g, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(145) dereferenceable(145) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i8, ptr %i.a, align 16, !tbaa !403
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 16, !tbaa !410   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !411
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEC2EbRKSG_(ptr noundef nonnull align 16 dereferenceable(161) %0, i1 noundef zeroext %1, ptr noundef nonnull align 16 dereferenceable(161) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i8 0, ptr %i.a, align 16, !tbaa !396
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.c = load i8, ptr %i.b, align 16, !tbaa !396, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.e, align 16, !tbaa !403
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.g = load i8, ptr %i.f, align 16, !tbaa !403
  switch i8 %i.g, label %bb.h [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %2, i64 48, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %2, i64 96, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %2, i64 144, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.f:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !441  ; 2 uses
  %i.j = load ptr, ptr %2, align 16, !tbaa !410   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ugt i64 %i.m, 9223372036854775776
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !179

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #45
          to label %.noexc4.i.i.i.i.i.i.i.i unwind label %.body

.noexc4.i.i.i.i.i.i.i.i:                          ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.p = phi ptr [ null, %bb.f ], [ %i.o, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.p, ptr %0, align 16, !tbaa !410
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !441
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 16, !tbaa !411
  %i.t = load ptr, ptr %2, align 16, !tbaa !420   ; 2 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !420  ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.noexc4.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %.noexc4.i.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !47

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.noexc4.i.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.q, align 8, !tbaa !441
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.h:                                             ; preds = %bb.b
  unreachable

.body:                                            ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(145) dereferenceable(161) %0) #22
  resume { ptr, i32 } %i.x

_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i
  %i.y = load i8, ptr %i.f, align 16, !tbaa !403
  store i8 %i.y, ptr %i.e, align 16, !tbaa !403
  store i8 1, ptr %i.a, align 16, !tbaa !396
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISJ_EENS7_ISJ_EENS9_ISJ_EESB_ISZ_SaISZ_EEEEES2_IS3_IJNS4_ISX_EENS7_ISX_EENS9_ISX_EESB_IS16_SaIS16_EEEEENS_19Cartesian_converterISX_SJ_NS_12NT_converterISW_SI_EEEEEEEclISZ_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.862, align 1            ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #45 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !401  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i8, ptr %i.g, align 16, !tbaa !403
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.137, ptr %i.j, align 8, !tbaa !352
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !417
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.m, align 16, !tbaa !459
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.n, align 8, !tbaa !419
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !114
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !207
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit: ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !400    ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !383, !range !77, !noundef !78
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !385
  switch i8 %i.aa, label %bb.f [
    i8 0, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
    i8 -1, label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i
  ], !prof !460

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %.noexc4.i.i unwind label %bb.g

.noexc4.i.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i

_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i: ; preds = %.noexc4.i.i, %bb.e
  store ptr %i.a, ptr %i.v, align 8, !tbaa !207
  store i8 0, ptr %i.z, align 8, !tbaa !385
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #41
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !207
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i8 0, ptr %i.ad, align 8, !tbaa !385
  store i8 1, ptr %i.w, align 8, !tbaa !383
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit: ; preds = %bb.e
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !461 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !461
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #22, !inline_history !44
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.l:                                             ; preds = %bb.j
  %i.am = add nsw i32 %i.ah, -1
  store atomic i32 %i.am, ptr %i.ag monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.m:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = atomicrmw sub ptr %i.ag, i32 1 release, align 4
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit6

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #22, !inline_history !44
  br label %_ZN4CGAL6HandleD2Ev.exit6
end_hunk_6
begin_hunk_7_@_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEED0Ev:bb.a
  br i1 %.not.i.i, label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit.i
  fence acquire
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.s) #22, !inline_history !462
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 192) #40, !inline_history !462
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(96) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIPN5boost3anyEEEN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS7_7Point_3INS7_16Simple_cartesianINS7_11Interval_ntILb0EEEEEEENS7_9Segment_3ISF_EENS7_10Triangle_3ISF_EESt6vectorISG_SaISG_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(145) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i8, ptr %i.a, align 16, !tbaa !403
  switch i8 %i.b, label %bb.i [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 3 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #45
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SS_.exit unwind label %bb.c ; 3 uses

common.resume:                                    ; preds = %bb.g, %bb.e, %bb.c
  %.sink = phi ptr [ %i.k, %bb.g ], [ %i.g, %bb.e ], [ %i.c, %bb.c ]
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 8) #40
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SS_.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.d, align 16, !tbaa !114
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 48, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !355
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 3 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #45
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SS_.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SS_.exit: ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.h, align 16, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 96, i1 false)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !355
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 3 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #45
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SS_.exit unwind label %bb.g ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SS_.exit: ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.l, align 16, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.n, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 144, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !355
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZNK4CGAL6Object16Any_from_variantclISt6vectorINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEESaIS9_EEEEPN5boost3anyERKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(145) %1)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SS_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SS_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SS_.exit
  %.0 = phi ptr [ %i.c, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESB_SS_.exit ], [ %i.g, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESB_SS_.exit ], [ %i.k, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIPN5boost3anyEEEON4CGAL6Object16Any_from_variantERKSt7variantIJNS8_7Point_3INS8_16Simple_cartesianINS8_11Interval_ntILb0EEEEEEENS8_9Segment_3ISH_EENS8_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESB_SS_.exit ], [ %i.o, %bb.h ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE4typeEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE5cloneEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #45 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.a, align 16, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE4typeEv(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE5cloneEv(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #45 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.a, align 16, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost4anys6detail11placeholderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE4typeEv(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEE5cloneEv(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #45 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEEEE, i64 16), ptr %i.a, align 16, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4CGAL6Object16Any_from_variantclISt6vectorINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEESaIS9_EEEEPN5boost3anyERKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 3 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45
          to label %.noexc unwind label %bb.d     ; 6 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEEE, i64 16), ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !441  ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !410    ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc3.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.j = icmp ugt i64 %i.i, 9223372036854775776
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !179

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc.i unwind label %bb.c, !inline_history !54

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #45
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i unwind label %bb.c, !inline_history !54

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !420
  %.pre4.i = load ptr, ptr %i.d, align 8, !tbaa !420
  br label %.noexc3.i.i

.noexc3.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i, %.noexc
  %i.l = phi ptr [ %i.e, %.noexc ], [ %.pre4.i, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 2 uses
  %i.m = phi ptr [ %i.f, %.noexc ], [ %.pre.i, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 2 uses
  %i.n = phi ptr [ null, %.noexc ], [ %i.k, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge.i ] ; 5 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !410
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !441
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !411
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc3.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.n, %.noexc3.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc3.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i.i, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !47

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #40
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc3.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc3.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !441
  store ptr %i.b, ptr %i.a, align 8, !tbaa !355
  ret ptr %i.a

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.t, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !410  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !410  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEED2Ev.exit

_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEE4typeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTISt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEESaIS9_EEEE, i64 16), ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !441  ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !410  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc3.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775776
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !179

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.c, !inline_history !54

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #45
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge unwind label %bb.c, !inline_history !54

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !420
  %.pre3 = load ptr, ptr %i.d, align 8, !tbaa !420
  br label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge, %bb.a
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 2 uses
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 2 uses
  %i.n = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 5 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !410
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !441
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !411
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc3.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.noexc3.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc3.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !47

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc3.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc3.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !441
  ret ptr %i.a

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #40
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(96) %0) local_unnamed_addr #31 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::Object::Any_from_variant", align 1 ; 3 uses
  %5 = alloca %class.anon.856, align 8            ; 5 uses
  %6 = alloca %class.anon.855, align 8            ; 4 uses
  %7 = alloca %"class.CGAL::Object", align 8      ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #45 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !207 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.d, ptr %6, align 8, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %6, ptr %5, align 8, !tbaa !80
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %5, ptr %i.f, align 8, !tbaa !80
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repISt8optionalISt7variantIJNS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS3_9Segment_3ISB_EENS3_10Triangle_3ISB_EESt6vectorISC_SaISC_EEEEES5_IS6_IJNS7_INS8_IN5boost14multiprecision6numberINSN_8backends16rational_adaptorINSP_15cpp_int_backendILm0ELm0ELNSN_16cpp_integer_typeE1ELNSN_18cpp_int_check_typeE0ESaIyEEEEELNSN_26expression_template_optionE1EEEEEEENSD_ISZ_EENSF_ISZ_EESH_IS10_SaIS10_EEEEENS3_19Cartesian_converterISZ_SB_NS3_12NT_converterISY_SA_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS1E_ENUlvE_8__invokeEv, ptr %i.g, align 8, !tbaa !80
  %i.h = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #43
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.f, align 8, !tbaa !80
  store ptr null, ptr %i.g, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.f, align 8, !tbaa !80
  store ptr null, ptr %i.g, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 768
  %i.n = load i8, ptr %i.m, align 16, !tbaa !413, !range !77, !noundef !78
  %i.o = trunc nuw i8 %i.n to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  br i1 %i.o, label %bb.f, label %.noexc7

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 752
  %i.q = load i8, ptr %i.p, align 16, !tbaa !422
  %.not.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS0_9Segment_3ISJ_EENS0_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISY_EEEEE4typeEE4typeEOS17_EEEE4typeEOSW_DpOSY_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.r, align 8, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @.str.133, ptr %i.s, align 8, !tbaa !352
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.g
  unreachable

_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS0_9Segment_3ISJ_EENS0_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISY_EEEEE4typeEE4typeEOS17_EEEE4typeEOSW_DpOSY_.exit.i: ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIPN5boost3anyEEEN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS7_7Point_3INS7_16Simple_cartesianINS3_14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEEEENS7_9Segment_3ISP_EENS7_10Triangle_3ISP_EESt6vectorISQ_SaISQ_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(608) %i.l)
          to label %.noexc7 unwind label %bb.x

.noexc7:                                          ; preds = %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS0_9Segment_3ISJ_EENS0_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISY_EEEEE4typeEE4typeEOS17_EEEE4typeEOSW_DpOSY_.exit.i, %bb.e
  %i.u = phi ptr [ null, %bb.e ], [ %i.t, %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS0_9Segment_3ISJ_EENS0_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISY_EEEEE4typeEE4typeEOS17_EEEE4typeEOSW_DpOSY_.exit.i ] ; 2 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !266
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5boost3anyEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.u)
          to label %bb.h unwind label %bb.x

bb.h:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.w = load ptr, ptr %7, align 8, !tbaa !266, !nonnull !78, !noundef !78 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !355  ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i9, label %_ZNK5boost3any4typeEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef nonnull align 8 dereferenceable(16) ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #22, !inline_history !2834 ; 0 uses
  br label %_ZNK5boost3any4typeEv.exit.i.i.i

_ZNK5boost3any4typeEv.exit.i.i.i:                 ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !355
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !479
  %i.af = sext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !454
  %i.ah = getelementptr inbounds nuw [192 x i8], ptr %i.ag, i64 %i.af ; 3 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(192) %i.a, ptr noundef nonnull align 16 dereferenceable(192) %i.ah)
          to label %.noexc10 unwind label %bb.y

.noexc10:                                         ; preds = %_ZNK5boost3any4typeEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ai, ptr noundef nonnull align 16 dereferenceable(64) %i.aj)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i: ; preds = %.noexc10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ak, ptr noundef nonnull align 16 dereferenceable(64) %i.al)
          to label %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit unwind label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i, %.noexc10
  %.lcssa.ph.i.i.i.i.i = phi ptr [ %i.ak, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i ], [ %i.ai, %.noexc10 ]
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i
  %i.am = phi ptr [ %i.an, %.preheader.i.i.i.i.i ], [ %.lcssa.ph.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i ]
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -64 ; 3 uses
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.an) #22
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %.body11, label %.preheader.i.i.i.i.i

_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i13, label %_ZN4CGAL6ObjectD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l
end_hunk_7
begin_hunk_8_@_ZNK5boost3any6holderIN4CGAL7Point_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEE5cloneEv:bb.a

.body:                                            ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.b ], [ %lpad.thr_comm.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEC2ERKSI_(ptr noundef nonnull align 16 dereferenceable(400) %0, ptr noundef nonnull align 16 dereferenceable(384) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEE, i64 16), ptr %0, align 16, !tbaa !114
  %.ptr7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(384) %.ptr7, ptr noundef nonnull align 16 dereferenceable(384) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.b)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i: ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.d)
          to label %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i:             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i, %.noexc.1.i.i.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i, %.noexc
  %.lcssa12.i.i.i = phi i1 [ true, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i ], [ true, %.noexc ], [ false, %.noexc.1.i.i.i ], [ false, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i ]
  %.lcssa9.i.i.i.idx = phi i64 [ 16, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i ], [ 16, %.noexc ], [ 208, %.noexc.1.i.i.i ], [ 208, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i ] ; 2 uses
  %.lcssa.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.c, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i ], [ %i.a, %.noexc ], [ %i.i, %.noexc.1.i.i.i ], [ %i.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i ]
  %lpad.thr_comm.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.lcssa9.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa9.i.i.i.idx
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i
  %i.e = phi ptr [ %i.f, %.preheader.i.i.i.i.i.i.i.i ], [ %.lcssa.ph.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i ]
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -64 ; 3 uses
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.f) #22
  %i.g = icmp eq ptr %i.f, %.lcssa9.i.i.i.ptr
  br i1 %i.g, label %.body.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i
  %.ptr6 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(192) %.ptr6, ptr noundef nonnull align 16 dereferenceable(192) %i.h)
          to label %.noexc.1.i.i.i unwind label %.split.i.i.i

.noexc.1.i.i.i:                                   ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i: ; preds = %.noexc.1.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef nonnull align 16 dereferenceable(64) %i.l)
          to label %_ZN4CGAL9Segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

.split.i.i.i:                                     ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i.i.i

.body.i.i.i:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i
  br i1 %.lcssa12.i.i.i, label %.body, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.body.i.i.i, %.split.i.i.i
  %eh.lpad-body15.i.i.i = phi { ptr, i32 } [ %i.m, %.split.i.i.i ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i, %.body.i.i.i ]
  %.idx3 = phi i64 [ 208, %.split.i.i.i ], [ %.lcssa9.i.i.i.idx, %.body.i.i.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %.idx = phi i64 [ %.add, %.preheader.i.i.i ], [ %.idx3, %.preheader.preheader.i.i.i ]
  %.add = add nsw i64 %.idx, -192                 ; 3 uses
  %.ptr4 = getelementptr inbounds i8, ptr %0, i64 %.add
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %.ptr4) #22
  %i.n = icmp eq i64 %.add, 16
  br i1 %i.n, label %.body, label %.preheader.i.i.i

_ZN4CGAL9Segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i
  ret void

.body:                                            ; preds = %.preheader.i.i.i, %.body.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i.i.i, %.body.i.i.i ], [ %eh.lpad-body15.i.i.i, %.preheader.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(400) dereferenceable(400) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #22
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(384) %i.a) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(400) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #22
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(384) %i.a) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 400) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEE4typeEv(ptr noundef nonnull align 16 dereferenceable(400) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL9Segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEE5cloneEv(ptr noundef nonnull align 16 dereferenceable(400) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #45 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN5boost3any6holderIN4CGAL9Segment_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEC2ERKSI_(ptr noundef nonnull align 16 dereferenceable(400) %i.a, ptr noundef nonnull align 16 dereferenceable(384) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 400) #40
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(592) dereferenceable(592) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.c) #22
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(576) %i.a) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(592) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.c) #22
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(576) %i.a) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 592) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEE4typeEv(ptr noundef nonnull align 16 dereferenceable(592) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4CGAL10Triangle_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEE5cloneEv(ptr noundef nonnull align 16 dereferenceable(592) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(592) ptr @_Znwm(i64 noundef 592) #45 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEE, i64 16), ptr %i.a, align 16, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_ZNSt5arrayIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm3EEC2ERKSI_(ptr noundef nonnull align 16 dereferenceable(576) %i.c, ptr noundef nonnull align 16 dereferenceable(576) %i.b)
          to label %_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEC2ERKSI_.exit unwind label %bb.b, !inline_history !55

_ZN5boost3any6holderIN4CGAL10Triangle_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEC2ERKSI_.exit: ; preds = %bb.a
  ret ptr %i.a

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 592) #40
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost3anyC2ISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEEE, i64 16), ptr %i.a, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !453  ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !454    ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %.noexc3.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775680
  br i1 %i.i, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !179

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.f, !inline_history !57

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #45
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge unwind label %bb.f, !inline_history !57

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !450
  %.pre4 = load ptr, ptr %i.c, align 8, !tbaa !450
  br label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge, %bb.a
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre4, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ]
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ]
  %i.m = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 4 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !454
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !453
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !452
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %i.l, ptr %i.k, ptr noundef %i.m)
          to label %bb.e unwind label %bb.c, !inline_history !57

bb.c:                                             ; preds = %.noexc3.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !454  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !452
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #40, !inline_history !57
  br label %.body

bb.e:                                             ; preds = %.noexc3.i
  store ptr %i.q, ptr %i.n, align 8, !tbaa !453
  store ptr %i.a, ptr %0, align 8, !tbaa !355
  ret void

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !454  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !453  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %.05.i.i.i) #22
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !454
  br label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESaISH_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !452
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESaISH_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !454  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !453  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %.05.i.i.i.i) #22
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !454
  br label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.f = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i.i, label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !452
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #40
  br label %_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEED2Ev.exit

_ZN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEE4typeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr @_ZTISt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEESaISH_EE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost3any6holderISt6vectorIN4CGAL7Point_3INS3_16Simple_cartesianINS_14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESaISJ_EEEE, i64 16), ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !453  ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !454  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.noexc3.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775680
  br i1 %i.j, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !179

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc unwind label %bb.f, !inline_history !57

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #45
          to label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge unwind label %bb.f, !inline_history !57

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !450
  %.pre3 = load ptr, ptr %i.d, align 8, !tbaa !450
  br label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge, %bb.a
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ]
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ]
  %i.n = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 6 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !454
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !453
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !452
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %i.m, ptr %i.l, ptr noundef %i.n)
          to label %bb.e unwind label %bb.c, !inline_history !57

bb.c:                                             ; preds = %.noexc3.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.i) #40, !inline_history !57
  br label %.body

bb.e:                                             ; preds = %.noexc3.i
  store ptr %i.r, ptr %i.o, align 8, !tbaa !453
  ret ptr %i.a

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.s, %bb.d ], [ %i.s, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.i, %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 7 uses
  %.sroa.08.015 = phi ptr [ %i.h, %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(192) %.016, ptr noundef nonnull align 16 dereferenceable(192) %.sroa.08.015)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.b)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i: ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.d)
          to label %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit unwind label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i, %.noexc
  %.lcssa.ph.i.i.i.i.i.i = phi ptr [ %i.c, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i ], [ %i.a, %.noexc ]
  %lpad.thr_comm.i.i.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %i.e = phi ptr [ %i.f, %.preheader.i.i.i.i.i.i ], [ %.lcssa.ph.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ]
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -64 ; 3 uses
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.f) #22
  %i.g = icmp eq ptr %i.f, %.016
  br i1 %i.g, label %.body, label %.preheader.i.i.i.i.i.i

_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 192 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 192 ; 2 uses
  %.not = icmp eq ptr %i.h, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2838

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.b ], [ %lpad.thr_comm.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #22 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %2, %.body ] ; 2 uses
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %.05.i.i) #22
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit, label %.lr.ph.i.i, !llvm.loop !58

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit: ; preds = %.lr.ph.i.i, %.body
  invoke void @__cxa_rethrow() #43
          to label %bb.f unwind label %bb.c

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.i, %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #41
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEEaSIRSA_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S5_S7_SA_EE4typeEE18is_constructible_vISJ_SG_E15is_assignable_vIRSJ_SG_EERSB_E4typeESH_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.862, align 1            ; 3 uses
  %3 = alloca %"class.std::vector.838", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !385
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZSt3getILm3EJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSF_.exit, label %bb.b

_ZSt3getILm3EJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSF_.exit: ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !466  ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !467    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i, !prof !179

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #45
  %.pre = load ptr, ptr %1, align 8, !tbaa !405
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !405
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.f, %bb.b ], [ %.pre10, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  %i.n = phi ptr [ %i.g, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  %i.o = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !467
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !407
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.d
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
end_hunk_8
