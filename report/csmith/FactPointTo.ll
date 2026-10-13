Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/FactPointTo?download=true
inline.NumInlined: 915
inline.NumDeleted: 381
begin_hunk_0_@_ZN11FactPointTo19rhs_to_lhs_transferERKSt6vectorIPK4FactSaIS3_EERKS0_IPK8VariableSaISA_EEPK10Expression:bb.a
bb.bf:                                            ; preds = %.lr.ph, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit
  %.0214 = phi i64 [ 0, %.lr.ph ], [ %i.im, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.hi = load ptr, ptr %10, align 8, !tbaa !16
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.0214
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !26
  %i.hl = invoke noundef ptr @_Z30get_return_fact_for_invocationPK22FunctionInvocationUserPK8Variable13eFactCategory(ptr noundef nonnull %i.gm, ptr noundef %i.hk, i32 noundef 1)
          to label %bb.bg unwind label %bb.bh     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hl) ]
  %i.hm = call ptr @__dynamic_cast(ptr nonnull %i.hl, ptr nonnull @_ZTI4Fact, ptr nonnull @_ZTI11FactPointTo, i64 0) #24
  %i.hn = load ptr, ptr %3, align 8, !tbaa !16
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.0214
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !26
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hr = invoke noundef ptr @_ZN11FactPointTo9make_factEPK8VariableRKSt6vectorIS2_SaIS2_EE(ptr noundef %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %bb.bi unwind label %bb.bo     ; 2 uses

bb.bh:                                            ; preds = %bb.bf
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bi:                                            ; preds = %bb.bg
  %i.ht = load ptr, ptr %i.gz, align 8, !tbaa !121 ; 4 uses
  %i.hu = load ptr, ptr %i.ha, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.ht, %i.hu
  br i1 %.not.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr %i.hr, ptr %i.ht, align 8, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr %i.hv, ptr %i.gz, align 8, !tbaa !121
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.hw = load ptr, ptr %0, align 8, !tbaa !108   ; 4 uses
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 6 uses
  %i.ia = icmp eq i64 %i.hz, 9223372036854775800
  br i1 %i.ia, label %bb.bl, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bk
  %i.ib = ashr exact i64 %i.hz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ib, i64 1)
  %i.ic = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ib ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ib
  %i.ie = call i64 @llvm.umin.i64(i64 %i.ic, i64 1152921504606846975)
  %i.if = select i1 %i.id, i64 1152921504606846975, i64 %i.ie ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.if, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ig = shl nuw nsw i64 %i.if, 3
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ig) #26
          to label %.noexc167 unwind label %.loopexit ; 4 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 %i.hz ; 2 uses
  store ptr %i.hr, ptr %i.ii, align 8, !tbaa !51
  %i.ij = icmp sgt i64 %i.hz, 0
  br i1 %i.ij, label %bb.bm, label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.bm:                                            ; preds = %.noexc167
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr align 8 %i.hw, i64 %i.hz, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.bm, %.noexc167
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.hz) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.bn, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ih, ptr %0, align 8, !tbaa !108
  store ptr %i.ik, ptr %i.gz, align 8, !tbaa !121
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.if
  store ptr %i.il, ptr %i.ha, align 8, !tbaa !109
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.bj
  %i.im = add nuw i64 %.0214, 1                   ; 2 uses
  %i.in = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.io = load ptr, ptr %3, align 8, !tbaa !16
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = ashr exact i64 %i.ir, 3
  %i.it = icmp ult i64 %i.im, %i.is
  br i1 %i.it, label %bb.bf, label %._crit_edge, !llvm.loop !138

bb.bo:                                            ; preds = %bb.bg
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit:                                        ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bh, %bb.bo, %bb.be
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hh, %bb.be ], [ %i.hs, %bb.bh ], [ %i.iu, %bb.bo ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.iv = load ptr, ptr %10, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i168 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !17
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169:     ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.jb = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %.not.i.i.i170 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit175, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !109
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jb to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit175

bb.bs:                                            ; preds = %bb.bb
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !147
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 208
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !148
  %i.jl = tail call noundef ptr @_Z30get_return_fact_for_invocationPK22FunctionInvocationUserPK8Variable13eFactCategory(ptr noundef nonnull %i.gm, ptr noundef %i.jk, i32 noundef 1) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jl) ]
  %i.jm = tail call ptr @__dynamic_cast(ptr nonnull %i.jl, ptr nonnull @_ZTI4Fact, ptr nonnull @_ZTI11FactPointTo, i64 0) #24
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  tail call void @_ZN11FactPointTo10make_factsERKSt6vectorIPK8VariableSaIS3_EES7_(ptr dead_on_unwind writable sret(%"class.std::vector.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.jn)
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit173

bb.bt:                                            ; preds = %bb.j
  %i.jo = tail call ptr @__dynamic_cast(ptr nonnull %.tr188213, ptr nonnull @_ZTI10Expression, ptr nonnull @_ZTI16ExpressionAssign, i64 0) #24
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !151
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bt, %bb.bu
  %.tr188.be.in = phi ptr [ %i.jr, %bb.bt ], [ %i.jw, %bb.bu ]
  %.tr188.be = load ptr, ptr %.tr188.be.in, align 8, !tbaa !122, !nonnull !105, !align !106
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.jt = load ptr, ptr %3, align 8, !tbaa !16
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %tailrecurse._crit_edge, label %.preheader190

bb.bu:                                            ; preds = %bb.j
  %i.jv = tail call ptr @__dynamic_cast(ptr nonnull %.tr188213, ptr nonnull @_ZTI10Expression, ptr nonnull @_ZTI15ExpressionComma, i64 0) #24
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  br label %tailrecurse.backedge

.critedge145:                                     ; preds = %bb.j, %bb.ba, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit173

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit173:         ; preds = %bb.bs, %bb.w, %bb.l, %bb.s, %.critedge.thread, %bb.b, %bb.h, %bb.i, %tailrecurse._crit_edge, %.critedge145, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit161, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit159, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166
  ret void

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit175:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit163, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit157, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169, %bb.br
  %.pn140 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.br ], [ %.pn.pn.pn, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169 ], [ %.pn135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %.pn125, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit163 ], [ %.pn129.pn.pn, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit157 ]
  resume { ptr, i32 } %.pn140
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11FactPointTo10make_factsERKSt6vectorIPK8VariableSaIS3_EES3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.23") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.c
  br i1 %.not15, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 7 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.am, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ]
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 11 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.014
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef ptr @_ZN11FactPointTo9make_factEPK8VariableS2_(ptr noundef nonnull %i.k, ptr noundef %2)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %i.g, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.g, ptr %i.d, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #26
          to label %.noexc10 unwind label %.loopexit ; 4 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !51
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.i, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %.noexc10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.r) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit

.loopexit:                                        ; preds = %bb.c, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.g, ptr %i.d, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr %i.i, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = ptrtoint ptr %i.f to i64
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ag) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.b
  %i.ah = phi ptr [ %i.f, %bb.e ], [ %i.ad, %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.ai = phi ptr [ %i.o, %bb.e ], [ %i.ac, %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.aj = phi ptr [ %i.i, %bb.e ], [ %i.z, %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.ak = add nuw i64 %.014, 1                    ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.am = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp ult i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !152

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit
  store ptr %i.ai, ptr %i.d, align 8
  store ptr %i.ah, ptr %i.e, align 8
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge, %bb.a
  %.lcssa = phi ptr [ %i.aj, %._crit_edge ], [ null, %bb.a ]
  store ptr %.lcssa, ptr %0, align 8
  ret void
}

declare noundef i64 @_ZNK4Type11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #7

declare noundef i32 @_ZNK8Variable12get_field_idEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !123  ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !101
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

declare void @_ZNK8Constant9get_fieldB5cxx11Em(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #0

declare noundef i32 @_ZNK18ExpressionVariable18get_indirect_levelEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11FactPointTo25merge_pointees_of_pointerEPK8VariableiRKSt6vectorIPK4FactSaIS6_EE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit.i.i:
  %4 = alloca %"class.std::vector", align 16      ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26 ; 4 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  store ptr %i.d, ptr %i.a, align 8, !tbaa !24
  store ptr %i.d, ptr %i.b, align 8, !tbaa !17
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit
  %.in = phi i32 [ %2, %.lr.ph ], [ %i.i, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit ] ; 2 uses
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.k, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit ] ; 6 uses
  %i.h = phi ptr [ %i.d, %.lr.ph ], [ %i.l, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit ] ; 2 uses
  %i.i = add nsw i32 %.in, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN11FactPointTo26merge_pointees_of_pointersERKSt6vectorIPK8VariableSaIS3_EERKS0_IPK4FactSaISA_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load <2 x ptr>, ptr %4, align 16, !tbaa !43
  %i.k = load ptr, ptr %4, align 16, !tbaa !16
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !43
  %i.l = load ptr, ptr %i.f, align 16, !tbaa !17  ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !17
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, label %_ZNSt6vectorIPK8VariableSaIS2_EEaSEOS4_.exit

_ZNSt6vectorIPK8VariableSaIS2_EEaSEOS4_.exit:     ; preds = %bb.b
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #23
  %.pr = load ptr, ptr %4, align 16, !tbaa !16    ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EEaSEOS4_.exit
  %i.p = load ptr, ptr %i.f, align 16, !tbaa !17
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %.pr to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.s) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit:        ; preds = %bb.b, %_ZNSt6vectorIPK8VariableSaIS2_EEaSEOS4_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.t = icmp samesign ugt i32 %.in, 1
  br i1 %i.t, label %bb.a, label %._crit_edge, !llvm.loop !153

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, %_ZNKSt6vectorIPK8VariableSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i9 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %i.h to i64
  %i.w = ptrtoint ptr %i.g to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit10

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit10:      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.u
}

declare void @_ZNK8Variable19find_pointer_fieldsERSt6vectorIPKS_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef zeroext i1 @_Z10merge_factRSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11FactPointTo10make_factsERKSt6vectorIPK8VariableSaIS3_EES7_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.23") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.c
  br i1 %.not15, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 7 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.am, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ]
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 11 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.014
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef ptr @_ZN11FactPointTo9make_factEPK8VariableRKSt6vectorIS2_SaIS2_EE(ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %i.g, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.g, ptr %i.d, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #26
          to label %.noexc10 unwind label %.loopexit ; 4 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !51
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.i, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %.noexc10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.r) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit

.loopexit:                                        ; preds = %bb.c, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.g, ptr %i.d, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr %i.i, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = ptrtoint ptr %i.f to i64
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ag) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.b
  %i.ah = phi ptr [ %i.f, %bb.e ], [ %i.ad, %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.ai = phi ptr [ %i.o, %bb.e ], [ %i.ac, %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.aj = phi ptr [ %i.i, %bb.e ], [ %i.z, %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.ak = add nuw i64 %.014, 1                    ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.am = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp ult i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !154

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit
  store ptr %i.ai, ptr %i.d, align 8
  store ptr %i.ah, ptr %i.e, align 8
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge, %bb.a
  %.lcssa = phi ptr [ %i.aj, %._crit_edge ], [ null, %bb.a ]
  store ptr %.lcssa, ptr %0, align 8
  ret void
}

declare noundef ptr @_Z30get_return_fact_for_invocationPK22FunctionInvocationUserPK8Variable13eFactCategory(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11FactPointTo24abstract_fact_for_assignERKSt6vectorIPK4FactSaIS3_EEPK3LhsPK10ExpressionRS5_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.std::vector.23", align 16   ; 8 uses
  %7 = alloca %"class.std::vector", align 8       ; 9 uses
  %8 = alloca %"class.std::vector.23", align 8    ; 9 uses
  %i.a = load ptr, ptr %4, align 8, !tbaa !108    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPK4FactS2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPK4FactS2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !121
  br label %_ZNSt6vectorIPK4FactSaIS2_EE5clearEv.exit

_ZNSt6vectorIPK4FactSaIS2_EE5clearEv.exit:        ; preds = %bb.a, %_ZSt8_DestroyIPPK4FactS2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125, !nonnull !105, !align !106 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(200) %i.e)
  %i.j = tail call noundef i32 @_ZNK3Lhs18get_indirect_levelEv(ptr noundef nonnull align 8 dereferenceable(41) %2)
  call void @_ZN11FactPointTo25merge_pointees_of_pointerEPK8VariableiRKSt6vectorIPK4FactSaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef %i.i, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.k = load ptr, ptr %2, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef nonnull align 8 dereferenceable(136) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(41) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE5clearEv.exit
  %i.o = load i32, ptr %i.n, align 8, !tbaa !77
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !16     ; 5 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not63 = icmp eq ptr %i.r, %i.s
  br i1 %.not63, label %thread-pre-split, label %.lr.ph61

.lr.ph61:                                         ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN11FactPointTo19rhs_to_lhs_transferERKSt6vectorIPK4FactSaIS3_EERKS0_IPK8VariableSaISA_EEPK10Expression(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.23") align 8 %6, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %4, align 8, !tbaa !108   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109
  %i.ad = load <2 x ptr>, ptr %6, align 16, !tbaa !156
  store <2 x ptr> %i.ad, ptr %4, align 8, !tbaa !156
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !109
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !109
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %_ZNSt6vectorIPK4FactSaIS2_EEaSEOS4_.exit

_ZNSt6vectorIPK4FactSaIS2_EEaSEOS4_.exit:         ; preds = %bb.d
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ai) #23
  %.pr = load ptr, ptr %6, align 16, !tbaa !108   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EEaSEOS4_.exit
  %i.aj = load ptr, ptr %i.ae, align 16, !tbaa !109
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %.pr to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.am) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %bb.d, %_ZNSt6vectorIPK4FactSaIS2_EEaSEOS4_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ap = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  br label %thread-pre-split

bb.f:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE5clearEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.g:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.u

bb.h:                                             ; preds = %.lr.ph61, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit
  %.03360 = phi i64 [ 0, %.lr.ph61 ], [ %i.ce, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.03360
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26 ; 5 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %_ZNK8Variable14is_union_fieldEv.exit.i, %bb.h
  %.tr.i = phi ptr [ %i.ax, %bb.h ], [ %i.az, %_ZNK8Variable14is_union_fieldEv.exit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99 ; 3 uses
  %.not.i.not.not.i.not = icmp eq ptr %i.az, null
  br i1 %.not.i.not.not.i.not, label %.critedge, label %_ZNK8Variable14is_union_fieldEv.exit.i

_ZNK8Variable14is_union_fieldEv.exit.i:           ; preds = %tailrecurse.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !100
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !77
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %_ZNK8Variable21is_inside_union_fieldEv.exit.preheader, label %tailrecurse.i

_ZNK8Variable21is_inside_union_fieldEv.exit.preheader: ; preds = %_ZNK8Variable14is_union_fieldEv.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !100
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !77
  %.not58 = icmp eq i32 %i.bg, 2
  br i1 %.not58, label %.critedge, label %_ZNK8Variable21is_inside_union_fieldEv.exit

_ZNK8Variable21is_inside_union_fieldEv.exit:      ; preds = %_ZNK8Variable21is_inside_union_fieldEv.exit.preheader, %_ZNK8Variable21is_inside_union_fieldEv.exit
  %.03159 = phi ptr [ %i.bi, %_ZNK8Variable21is_inside_union_fieldEv.exit ], [ %i.ax, %_ZNK8Variable21is_inside_union_fieldEv.exit.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.03159, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !99, !nonnull !105, !noundef !105 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !100
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !77
  %.not = icmp eq i32 %i.bl, 2
  br i1 %.not, label %.critedge, label %_ZNK8Variable21is_inside_union_fieldEv.exit

.critedge:                                        ; preds = %tailrecurse.i, %_ZNK8Variable21is_inside_union_fieldEv.exit, %_ZNK8Variable21is_inside_union_fieldEv.exit.preheader
  %.132 = phi ptr [ %i.bi, %_ZNK8Variable21is_inside_union_fieldEv.exit ], [ %i.ax, %_ZNK8Variable21is_inside_union_fieldEv.exit.preheader ], [ %i.ax, %tailrecurse.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZNK8Variable19find_pointer_fieldsERSt6vectorIPKS_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(200) %.132, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN11FactPointTo19rhs_to_lhs_transferERKSt6vectorIPK4FactSaIS3_EERKS0_IPK8VariableSaISA_EEPK10Expression(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.23") align 8 %8, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %3)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.bn = load ptr, ptr %8, align 8, !tbaa !156
  %i.bo = load ptr, ptr %i.x, align 8, !tbaa !156
  %i.bp = load ptr, ptr %4, align 8, !tbaa !156   ; 2 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  invoke void @_ZNSt6vectorIPK4FactSaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bt, ptr %i.bn, ptr %i.bo)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %8, align 8, !tbaa !108   ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit42, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %i.y, align 8, !tbaa !109
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit42

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit42:          ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.bz = load ptr, ptr %7, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit42
  %i.ca = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit:        ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit42, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ce = add nuw i64 %.03360, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.w
  br i1 %exitcond.not, label %thread-pre-split, label %bb.h, !llvm.loop !155

bb.n:                                             ; preds = %.critedge
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit45

bb.p:                                             ; preds = %bb.j
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %8, align 8, !tbaa !108   ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit45, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.y, align 8, !tbaa !109
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit45

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit45:          ; preds = %bb.q, %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.o ], [ %i.ch, %bb.p ], [ %i.ch, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit45, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit45 ], [ %i.cf, %bb.n ]
  %i.cn = load ptr, ptr %7, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit47, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cr) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit47

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit47:      ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.u

thread-pre-split:                                 ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, %.preheader, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit
  %i.cs = phi ptr [ %i.ap, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit ], [ %i.s, %.preheader ], [ %i.s, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit ] ; 3 uses
  %.0.in = phi i64 [ %i.at, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit ], [ 0, %.preheader ], [ %i.w, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit ]
  %.not.i.i.i48 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit49, label %bb.t

bb.t:                                             ; preds = %thread-pre-split
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit49

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit49:      ; preds = %thread-pre-split, %bb.t
  %.0 = trunc i64 %.0.in to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %.0

bb.u:                                             ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit47, %bb.g, %bb.f
  %.pn39 = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.au, %bb.f ], [ %.pn.pn, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit47 ]
  %i.cy = load ptr, ptr %5, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit51, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !17
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit51

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit51:      ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn39
}

declare noundef i32 @_ZNK3Lhs18get_indirect_levelEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK11FactPointTo5cloneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  invoke void @_ZN4FactC2E13eFactCategory(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 1)
          to label %.noexc unwind label %bb.m, !inline_history !45

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV11FactPointTo, i64 16), ptr %i.a, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !17
  br label %bb.g

bb.b:                                             ; preds = %.noexc
  %i.p = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.p, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i.i, !prof !41

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc.i unwind label %bb.f, !inline_history !45

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #26
          to label %.noexc4.i unwind label %bb.f, !inline_history !45 ; 5 uses

.noexc4.i:                                        ; preds = %_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.q, ptr %i.f, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.s, ptr %i.t, align 8, !tbaa !17
  %i.u = icmp samesign ugt i64 %i.l, 8
  br i1 %i.u, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %.noexc4.i
  %i.v = icmp eq i64 %i.l, 8
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !26
  store ptr %i.w, ptr %i.q, align 8, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4FactD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(48) %i.a) #24, !inline_history !45
  br label %.body

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %.thread
  %i.y = phi ptr [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %i.s, %bb.e ], [ %i.n, %.thread ]
  %i.z = phi ptr [ %i.r, %bb.c ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.m, %.thread ]
  store ptr %i.y, ptr %i.z, align 8, !tbaa !24
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Fact6facts_E, i64 8), align 8, !tbaa !48 ; 4 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Fact6facts_E, i64 16), align 8, !tbaa !49
  %.not.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.a, ptr %i.aa, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Fact6facts_E, i64 8), align 8, !tbaa !48
  br label %_ZNSt6vectorIP4FactSaIS1_EE9push_backEOS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @_ZN4Fact6facts_E, align 8, !tbaa !52 ; 4 uses
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 6 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.j, label %_ZNKSt6vectorIP4FactSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
  unreachable

_ZNKSt6vectorIP4FactSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
end_hunk_0
