Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/integration_tools?download=true
inline.NumInlined: 6691
inline.NumDeleted: 1561
loop-unroll.NumCompletelyUnrolled: 105
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 124
begin_hunk_0_@_ZN6casadi14IndexReduction28dae_struct_detect_pantelidesERNS0_11GraphStructERSt6vectorIxSaIxEES6_x:bb.a
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !147
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  store ptr %i.et, ptr %i.ge, align 8, !tbaa !148
  %i.gf = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store ptr %i.fx, ptr %i.gf, align 8, !tbaa !149
  %i.gg = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !135 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !135 ; 2 uses
  %.not2223.i = icmp eq ptr %i.gh, %i.gj
  br i1 %.not2223.i, label %_ZN6casadi14IndexReduction13graph_add_derERNS0_11GraphStructEPNS0_14EquationStructEb.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_ZNSt6vectorIPN6casadi14IndexReduction14EquationStructESaIS3_EE9push_backEOS3_.exit.i, %bb.al
  %.sroa.018.024.us.i = phi ptr [ %i.hw, %bb.al ], [ %i.gh, %_ZNSt6vectorIPN6casadi14IndexReduction14EquationStructESaIS3_EE9push_backEOS3_.exit.i ] ; 2 uses
  %i.gk = load ptr, ptr %.sroa.018.024.us.i, align 8, !tbaa !122 ; 3 uses
  tail call void @_ZN6casadi14IndexReduction12add_variableEPNS0_14EquationStructEPNS0_14VariableStructE(ptr noundef %i.fx, ptr noundef %i.gk)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !134 ; 2 uses
  %.not.us.i = icmp eq ptr %i.gm, null
  br i1 %.not.us.i, label %bb.af, label %bb.al

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %i.gn = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.gn, i8 0, i64 88, i1 false)
  %i.go = load ptr, ptr %i.j, align 8, !tbaa !119 ; 4 uses
  %i.gp = load ptr, ptr %i.k, align 8, !tbaa !120
  %.not.i.i.i105 = icmp eq ptr %i.go, %i.gp
  br i1 %.not.i.i.i105, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !122
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  store ptr %i.gq, ptr %i.j, align 8, !tbaa !119
  %.pre.i106 = load ptr, ptr %0, align 8, !tbaa !123
  br label %_ZN6casadi14IndexReduction13graph_add_derERNS0_11GraphStructEPNS0_14VariableStructE.exit113

bb.ah:                                            ; preds = %bb.af
  %i.gr = load ptr, ptr %0, align 8, !tbaa !123   ; 4 uses
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 5 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775800
  br i1 %i.gv, label %bb.ai, label %_ZNKSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i107

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #24
  unreachable

_ZNKSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i107: ; preds = %bb.ah
  %i.gw = ashr exact i64 %i.gu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i108 = tail call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i.i.i108, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = tail call i64 @llvm.umin.i64(i64 %i.gx, i64 1152921504606846975)
  %i.ha = select i1 %i.gy, i64 1152921504606846975, i64 %i.gz ; 3 uses
  %.not.i.i.i.i.i109 = icmp ne i64 %i.ha, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i109)
  %i.hb = shl nuw nsw i64 %i.ha, 3
  %i.hc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #27 ; 5 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store ptr %i.gn, ptr %i.hd, align 8, !tbaa !122
  %i.he = icmp sgt i64 %i.gu, 0
  br i1 %i.he, label %bb.aj, label %_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i110

bb.aj:                                            ; preds = %_ZNKSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i107
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hc, ptr align 8 %i.gr, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i110

_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i110: ; preds = %bb.aj, %_ZNKSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i107
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %.not.i17.i.i.i.i111 = icmp eq ptr %i.gr, null
  br i1 %.not.i17.i.i.i.i111, label %_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i112, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i110
  %i.hg = load ptr, ptr %i.k, align 8, !tbaa !120
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.hi) #26
  br label %_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i112

_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i112: ; preds = %bb.ak, %_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i110
  store ptr %i.hc, ptr %0, align 8, !tbaa !123
  store ptr %i.hf, ptr %i.j, align 8, !tbaa !119
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.ha
  store ptr %i.hj, ptr %i.k, align 8, !tbaa !120
  br label %_ZN6casadi14IndexReduction13graph_add_derERNS0_11GraphStructEPNS0_14VariableStructE.exit113

_ZN6casadi14IndexReduction13graph_add_derERNS0_11GraphStructEPNS0_14VariableStructE.exit113: ; preds = %bb.ag, %_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i112
  %i.hk = phi ptr [ %.pre.i106, %bb.ag ], [ %i.hc, %_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i112 ]
  %i.hl = phi ptr [ %i.gq, %bb.ag ], [ %i.hf, %_ZNSt6vectorIPN6casadi14IndexReduction14VariableStructESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i112 ] ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !122 ; 4 uses
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = ptrtoint ptr %i.hk to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 3
  %i.hs = add nsw i64 %i.hr, -1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !132
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  store ptr %i.gk, ptr %i.hu, align 8, !tbaa !133
  store ptr %i.hn, ptr %i.gl, align 8, !tbaa !134
  br label %bb.al

bb.al:                                            ; preds = %_ZN6casadi14IndexReduction13graph_add_derERNS0_11GraphStructEPNS0_14VariableStructE.exit113, %.lr.ph.split.us.i
  %i.hv = phi ptr [ %i.hn, %_ZN6casadi14IndexReduction13graph_add_derERNS0_11GraphStructEPNS0_14VariableStructE.exit113 ], [ %i.gm, %.lr.ph.split.us.i ]
  tail call void @_ZN6casadi14IndexReduction12add_variableEPNS0_14EquationStructEPNS0_14VariableStructE(ptr noundef %i.fx, ptr noundef nonnull %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.018.024.us.i, i64 8 ; 2 uses
  %.not22.us.i = icmp eq ptr %i.hw, %i.gj
  br i1 %.not22.us.i, label %_ZN6casadi14IndexReduction13graph_add_derERNS0_11GraphStructEPNS0_14EquationStructEb.exit, label %.lr.ph.split.us.i

_ZN6casadi14IndexReduction13graph_add_derERNS0_11GraphStructEPNS0_14EquationStructEb.exit: ; preds = %bb.al, %_ZNSt6vectorIPN6casadi14IndexReduction14EquationStructESaIS3_EE9push_backEOS3_.exit.i, %.lr.ph187
  %i.hx = add nuw nsw i64 %.079185, 1             ; 2 uses
  %exitcond220.not = icmp eq i64 %i.hx, %i.cv
  br i1 %exitcond220.not, label %.preheader, label %.lr.ph187, !llvm.loop !342

bb.am:                                            ; preds = %._crit_edge193
  %i.hy = add nuw i64 %.078195, 1                 ; 2 uses
  %exitcond221.not = icmp eq i64 %i.hy, %.pre234
  br i1 %exitcond221.not, label %.critedge, label %.lr.ph196, !llvm.loop !343

.lr.ph196:                                        ; preds = %.preheader, %bb.am
  %.078195 = phi i64 [ %i.hy, %bb.am ], [ %i.cv, %.preheader ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.pre228, i64 %.078195
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !141 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !135 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !135 ; 2 uses
  %.not147188 = icmp eq ptr %i.ic, %i.ie
  br i1 %.not147188, label %.critedge96, label %.lr.ph192

._crit_edge193:                                   ; preds = %.lr.ph192
  br i1 %spec.select, label %bb.am, label %.critedge96

.lr.ph192:                                        ; preds = %.lr.ph196, %.lr.ph192
  %.0190 = phi i1 [ %spec.select, %.lr.ph192 ], [ false, %.lr.ph196 ]
  %.sroa.0118.0189 = phi ptr [ %i.ik, %.lr.ph192 ], [ %i.ic, %.lr.ph196 ] ; 2 uses
  %i.if = load ptr, ptr %.sroa.0118.0189, align 8, !tbaa !122 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !154
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !154
  %i.ij = icmp ne ptr %i.ig, %i.ii
  %spec.select = select i1 %i.ij, i1 true, i1 %.0190 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0118.0189, i64 8 ; 2 uses
  %.not147 = icmp eq ptr %i.ik, %i.ie
  br i1 %.not147, label %._crit_edge193, label %.lr.ph192

.critedge:                                        ; preds = %bb.am, %._crit_edge184, %.preheader
  %i.il = load ptr, ptr %0, align 8, !tbaa !135   ; 3 uses
  %i.im = load ptr, ptr %i.j, align 8, !tbaa !135 ; 3 uses
  %.not146197 = icmp eq ptr %i.il, %i.im
  br i1 %.not146197, label %._crit_edge200, label %.lr.ph199

._crit_edge200:                                   ; preds = %bb.ap, %.critedge
  %i.in = getelementptr inbounds nuw i8, ptr %.089202, i64 56
  %i.io = add nuw i64 %i.r, 1
  %exitcond222 = icmp eq i64 %i.r, %i.m
  br i1 %exitcond222, label %.critedge96, label %bb.b, !llvm.loop !344

.lr.ph199:                                        ; preds = %.critedge, %bb.ap
  %.sroa.0114.0198 = phi ptr [ %i.jh, %bb.ap ], [ %i.il, %.critedge ] ; 2 uses
  %i.ip = load ptr, ptr %.sroa.0114.0198, align 8, !tbaa !122 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !152, !range !137, !noundef !138
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.lr.ph199
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 81
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !136, !range !137, !noundef !138
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 48 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !151
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !149
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !134 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  store ptr %i.iz, ptr %i.jc, align 8, !tbaa !151
  %i.jd = load ptr, ptr %i.iw, align 8, !tbaa !151
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !149
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  store ptr %i.jb, ptr %i.jg, align 8, !tbaa !153
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.lr.ph199
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0114.0198, i64 8 ; 2 uses
  %.not146 = icmp eq ptr %i.jh, %i.im
  br i1 %.not146, label %._crit_edge200, label %.lr.ph199

bb.aq:                                            ; preds = %._crit_edge180
  %i.ji = add nuw nsw i64 %.083209, 1             ; 2 uses
  %exitcond223.not = icmp eq i64 %i.ji, %i.h
  br i1 %exitcond223.not, label %.critedge96, label %.lr.ph204, !llvm.loop !345

.critedge96:                                      ; preds = %bb.aq, %._crit_edge200, %.lr.ph196, %._crit_edge193, %.lr.ph212, %bb.a
  %.not94157 = phi i1 [ false, %.lr.ph212 ], [ false, %.lr.ph196 ], [ false, %._crit_edge200 ], [ true, %bb.a ], [ false, %._crit_edge193 ], [ true, %bb.aq ]
  ret i1 %.not94157
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6casadi14IndexReduction17dae_struct_detectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityERSt6vectorIxSaIxEESF_x(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %14 = alloca %"class.std::vector", align 8      ; 5 uses
  %15 = alloca %"struct.casadi::IndexReduction::GraphStruct", align 8 ; 25 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::vector", align 8      ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %33 = alloca %"class.std::vector", align 8      ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %42 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %43 = alloca %"class.std::vector", align 8      ; 5 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %52 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %53 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.e = load ptr, ptr %2, align 8, !tbaa !104
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.8)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !359
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #24
          to label %bb.fh unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.thread: ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

bb.l:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

bb.m:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

bb.n:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

bb.o:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %.0188 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !37     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.w = load i64, ptr %i.u, align 8, !tbaa !38
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.1189 = phi i1 [ true, %bb.o ], [ %.0188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0188, %bb.p ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.p ] ; 2 uses
  %i.y = load ptr, ptr %10, align 8, !tbaa !37    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !38
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255, %bb.n
  %.2190 = phi i1 [ true, %bb.n ], [ %.1189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255 ], [ %.1189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.q, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.ad = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258, %bb.m
  %.3191 = phi i1 [ true, %bb.m ], [ %.2190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258 ], [ %.2190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ] ; 2 uses
  %i.ai = load ptr, ptr %12, align 8, !tbaa !37   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
end_hunk_0
