Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/FactPointTo?download=true
inline.NumInlined: 915
inline.NumDeleted: 381
begin_hunk_0_@_ZN11FactPointTo19rhs_to_lhs_transferERKSt6vectorIPK4FactSaIS3_EERKS0_IPK8VariableSaISA_EEPK10Expression:bb.a
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3
  %i.ej = icmp ult i64 %i.ec, %i.ei
  br i1 %i.ej, label %.lr.ph221, label %._crit_edge222, !llvm.loop !137

bb.ai:                                            ; preds = %.lr.ph221
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit152

bb.aj:                                            ; preds = %bb.ae
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %8, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit152, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %i.dc, align 8, !tbaa !17
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit152

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit152:     ; preds = %bb.ak, %bb.aj, %bb.ai
  %.pn127 = phi { ptr, i32 } [ %i.ek, %bb.ai ], [ %i.el, %bb.aj ], [ %i.el, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit150, %bb.ac
  %lpad.loopexit.split-lp277 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit152
  %.pn129.pn = phi { ptr, i32 } [ %.pn127, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit152 ], [ %lpad.loopexit.split-lp277, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.er = load ptr, ptr %7, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i153 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit154, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.es = load ptr, ptr %i.dd, align 8, !tbaa !17
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ev) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit154

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit154:     ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ew = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit154
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !109
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit154, %bb.an
  %.not.i.i.i156 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit157, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !17
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %i.fe, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.ff) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit157

._crit_edge226:                                   ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, %bb.aa
  %.not.i.i.i158 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit159, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge226
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !17
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.fj) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit159

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit159:     ; preds = %._crit_edge226, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit173

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit157:     ; preds = %bb.ao, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, %bb.ab
  %.pn129.pn.pn = phi { ptr, i32 } [ %i.de, %bb.ab ], [ %.pn129.pn, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit ], [ %.pn129.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit175

bb.aq:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.fk = load ptr, ptr %i.cp, align 8, !tbaa !104, !nonnull !105, !align !106 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !40
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef ptr %i.fn(ptr noundef nonnull align 8 dereferenceable(200) %i.fk)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.fp = add nuw nsw i32 %i.cb, 1
  invoke void @_ZN11FactPointTo25merge_pointees_of_pointerEPK8VariableiRKSt6vectorIPK4FactSaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %9, ptr noundef %i.fo, i32 noundef %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11FactPointTo10make_factsERKSt6vectorIPK8VariableSaIS3_EES7_(ptr dead_on_unwind writable sret(%"class.std::vector.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.fq = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i160 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i160, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit161, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !17
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit161

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit161:     ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit173

bb.av:                                            ; preds = %bb.ar, %bb.aq
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit163

bb.aw:                                            ; preds = %bb.as
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit163, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !17
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fy to i64
  %i.gd = sub i64 %i.gb, %i.gc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gd) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit163

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit163:     ; preds = %bb.ax, %bb.aw, %bb.av
  %.pn125 = phi { ptr, i32 } [ %i.fw, %bb.av ], [ %i.fx, %bb.aw ], [ %i.fx, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit175

bb.ay:                                            ; preds = %bb.j
  %i.ge = load ptr, ptr %.tr188218, align 8, !tbaa !40
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = tail call noundef ptr %i.gg(ptr noundef nonnull align 8 dereferenceable(24) %.tr188218) ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !145
  %.not119 = icmp eq i32 %i.gj, 2
  br i1 %.not119, label %bb.az, label %.critedge145

bb.az:                                            ; preds = %bb.ay
  %i.gk = tail call ptr @__dynamic_cast(ptr nonnull %i.gh, ptr nonnull @_ZTI18FunctionInvocation, ptr nonnull @_ZTI22FunctionInvocationUser, i64 0) #24 ; 6 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !40
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = tail call noundef nonnull align 8 dereferenceable(136) ptr %i.gn(ptr noundef nonnull align 8 dereferenceable(65) %i.gk)
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !77
  %i.gq = and i32 %i.gp, -2
  %spec.select.i164 = icmp eq i32 %i.gq, 2
  br i1 %spec.select.i164, label %bb.ba, label %bb.bm

bb.ba:                                            ; preds = %bb.az
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !147
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 208
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !148
  invoke void @_ZNK8Variable19find_pointer_fieldsERSt6vectorIPKS_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(200) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %.preheader189 unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader189:                                    ; preds = %bb.ba
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.gw = load ptr, ptr %3, align 8, !tbaa !16
  %.not228 = icmp eq ptr %i.gv, %i.gw
  br i1 %.not228, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader189
  %.promoted = load ptr, ptr %0, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit, %.preheader189
  %i.gz = load ptr, ptr %10, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !17
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166:     ; preds = %._crit_edge, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit173

bb.bc:                                            ; preds = %.lr.ph, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit
  %.0219 = phi i64 [ 0, %.lr.ph ], [ %i.ih, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %11 = phi ptr [ %.promoted, %.lr.ph ], [ %12, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.hf = load ptr, ptr %10, align 8, !tbaa !16
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %.0219
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !26
  %i.hi = invoke noundef ptr @_Z30get_return_fact_for_invocationPK22FunctionInvocationUserPK8Variable13eFactCategory(ptr noundef nonnull %i.gk, ptr noundef %i.hh, i32 noundef 1)
          to label %bb.bd unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hi) ]
  %i.hj = call ptr @__dynamic_cast(ptr nonnull %i.hi, ptr nonnull @_ZTI4Fact, ptr nonnull @_ZTI11FactPointTo, i64 0) #24
  %i.hk = load ptr, ptr %3, align 8, !tbaa !16
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.0219
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !26
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.ho = invoke noundef ptr @_ZN11FactPointTo9make_factEPK8VariableRKSt6vectorIS2_SaIS2_EE(ptr noundef %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %i.hn)
          to label %bb.be unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.hp = load ptr, ptr %i.gx, align 8, !tbaa !121 ; 4 uses
  %i.hq = load ptr, ptr %i.gy, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.hp, %i.hq
  br i1 %.not.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !51
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr %i.hr, ptr %i.gx, align 8, !tbaa !121
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit

bb.bg:                                            ; preds = %bb.be
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = ptrtoint ptr %11 to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 6 uses
  %i.hv = icmp eq i64 %i.hu, 9223372036854775800
  br i1 %i.hv, label %bb.bh, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
          to label %.noexc unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bg
  %i.hw = ashr exact i64 %i.hu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hw, i64 1)
  %i.hx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hw ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.hw
  %i.hz = call i64 @llvm.umin.i64(i64 %i.hx, i64 1152921504606846975)
  %i.ia = select i1 %i.hy, i64 1152921504606846975, i64 %i.hz ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ia, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ib = shl nuw nsw i64 %i.ia, 3
  %i.ic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #26
          to label %.noexc167 unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 %i.hu ; 2 uses
  store ptr %i.ho, ptr %i.id, align 8, !tbaa !51
  %i.ie = icmp sgt i64 %i.hu, 0
  br i1 %i.ie, label %bb.bi, label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.bi:                                            ; preds = %.noexc167
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ic, ptr align 8 %11, i64 %i.hu, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.bi, %.noexc167
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %.not.i17.i.i.i = icmp eq ptr %11, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %i.hu) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.bj, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ic, ptr %0, align 8, !tbaa !108
  store ptr %i.if, ptr %i.gx, align 8, !tbaa !121
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ia
  store ptr %i.ig, ptr %i.gy, align 8, !tbaa !109
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.bf
  %12 = phi ptr [ %i.ic, %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %11, %bb.bf ]
  %i.ih = add nuw i64 %.0219, 1                   ; 2 uses
  %i.ii = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.ij = load ptr, ptr %3, align 8, !tbaa !16
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 3
  %i.io = icmp ult i64 %i.ih, %i.in
  br i1 %i.io, label %bb.bc, label %._crit_edge, !llvm.loop !138

.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bd, %bb.bc, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ba, %bb.bh
  %lpad.loopexit.split-lp279 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ip = load ptr, ptr %10, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i168 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.iq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !17
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.ip to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.iu) #23
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169:     ; preds = %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.iv = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %.not.i.i.i170 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit175, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !109
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit175

bb.bm:                                            ; preds = %bb.az
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !147
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 208
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !148
  %i.jf = tail call noundef ptr @_Z30get_return_fact_for_invocationPK22FunctionInvocationUserPK8Variable13eFactCategory(ptr noundef nonnull %i.gk, ptr noundef %i.je, i32 noundef 1) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jf) ]
  %i.jg = tail call ptr @__dynamic_cast(ptr nonnull %i.jf, ptr nonnull @_ZTI4Fact, ptr nonnull @_ZTI11FactPointTo, i64 0) #24
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  tail call void @_ZN11FactPointTo10make_factsERKSt6vectorIPK8VariableSaIS3_EES7_(ptr dead_on_unwind writable sret(%"class.std::vector.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.jh)
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit173

bb.bn:                                            ; preds = %bb.j
  %i.ji = tail call ptr @__dynamic_cast(ptr nonnull %.tr188218, ptr nonnull @_ZTI10Expression, ptr nonnull @_ZTI16ExpressionAssign, i64 0) #24
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !151
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bn, %bb.bo
  %.tr188.be.in = phi ptr [ %i.jl, %bb.bn ], [ %i.jq, %bb.bo ]
  %.tr188.be = load ptr, ptr %.tr188.be.in, align 8, !tbaa !122, !nonnull !105, !align !106
  %i.jm = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.jn = load ptr, ptr %3, align 8, !tbaa !16
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %tailrecurse._crit_edge, label %.preheader195

bb.bo:                                            ; preds = %bb.j
  %i.jp = tail call ptr @__dynamic_cast(ptr nonnull %.tr188218, ptr nonnull @_ZTI10Expression, ptr nonnull @_ZTI15ExpressionComma, i64 0) #24
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  br label %tailrecurse.backedge

.critedge145:                                     ; preds = %bb.j, %bb.ay, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit173

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit173:         ; preds = %bb.bm, %bb.w, %bb.l, %bb.s, %.critedge.thread, %bb.i, %bb.h, %bb.b, %tailrecurse._crit_edge, %.critedge145, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit161, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit159, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit166
  ret void

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit175:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit163, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit157, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169, %bb.bl
  %.pn140 = phi { ptr, i32 } [ %.pn129.pn.pn, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit157 ], [ %lpad.loopexit.split-lp279, %bb.bl ], [ %.pn135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %.pn125, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit163 ], [ %lpad.loopexit.split-lp279, %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit169 ]
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
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit ] ; 4 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !121
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
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
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.r) #23
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x ; 2 uses
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !109
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backEOS2_.exit

.loopexit:                                        ; preds = %bb.c, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
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
end_hunk_0
begin_hunk_1_@bcmp
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"any p2 pointer", !12, i64 0}
!14 = !{!"p2 _ZTS8Variable", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIPK8VariableSaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 16}
!18 = !{!"p1 _ZTSSt6vectorIPK8VariableSaIS2_EE", !12, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPK8VariableSaIS3_EESaIS5_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!19, !18, i64 0}
!21 = !{!19, !18, i64 8}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!19, !18, i64 16}
!24 = !{!15, !14, i64 8}
!25 = !{!"p1 _ZTS8Variable", !12, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"_ZTS13eFactCategory", !8, i64 0}
!28 = !{!"_ZTS4Fact", !27, i64 8}
!29 = !{!"_ZTSNSt12_Vector_baseIPK8VariableSaIS2_EE12_Vector_implE", !15, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIPK8VariableSaIS2_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIPK8VariableSaIS2_EE", !30, i64 0}
!32 = !{!"_ZTS11FactPointTo", !28, i64 0, !25, i64 16, !31, i64 24}
!33 = !{!32, !25, i64 16}
!34 = !{!"_ZTS14eStatementType", !8, i64 0}
!35 = !{!"p1 _ZTS8Function", !12, i64 0}
!36 = !{!"p1 _ZTS5Block", !12, i64 0}
!37 = !{!"_ZTS9Statement", !34, i64 8, !9, i64 12, !35, i64 16, !36, i64 24}
!38 = !{!37, !36, i64 24}
!39 = !{!"vtable pointer", !7, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!43 = !{!14, !14, i64 0}
!44 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!45 = !{ptr @_ZN11FactPointToC2EPK8VariableRKSt6vectorIS2_SaIS2_EE}
!46 = !{!"p2 _ZTS4Fact", !13, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIP4FactSaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!47, !46, i64 8}
!49 = !{!47, !46, i64 16}
!50 = !{!"p1 _ZTS4Fact", !12, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!47, !46, i64 0}
!53 = !{!"_ZTS9eTypeDesc", !8, i64 0}
!54 = !{!"p1 _ZTS4Type", !12, i64 0}
!55 = !{!"_ZTS11eSimpleType", !8, i64 0}
!56 = !{!"p1 int", !12, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIjSaIjEE", !59, i64 0}
!61 = !{!"p2 _ZTS4Type", !13, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIPK4TypeSaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseIPK4TypeSaIS2_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIPK4TypeSaIS2_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIPK4TypeSaIS2_EE", !64, i64 0}
!66 = !{!"bool", !8, i64 0}
!67 = !{!"p1 _ZTS12CVQualifiers", !12, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseI12CVQualifiersSaIS0_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!"_ZTSNSt12_Vector_baseI12CVQualifiersSaIS0_EE12_Vector_implE", !68, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseI12CVQualifiersSaIS0_EE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorI12CVQualifiersSaIS0_EE", !70, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !72, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIiSaIiEE", !74, i64 0}
!76 = !{!"_ZTS4Type", !53, i64 0, !54, i64 8, !55, i64 16, !60, i64 24, !65, i64 48, !9, i64 72, !66, i64 76, !66, i64 77, !66, i64 78, !66, i64 79, !66, i64 80, !71, i64 88, !75, i64 112}
!77 = !{!76, !53, i64 0}
!78 = !{!"_ZTS9eTermType", !8, i64 0}
!79 = !{!"_ZTS10Expression", !78, i64 8, !9, i64 12, !54, i64 16}
!80 = !{!79, !78, i64 8}
!81 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIP8VariableSaIS1_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIP8VariableSaIS1_EE", !83, i64 0}
!85 = !{!"p1 omnipotent char", !12, i64 0}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !85, i64 0}
!87 = !{!"long", !8, i64 0}
!88 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !86, i64 0, !87, i64 8, !8, i64 16}
!89 = !{!"p1 _ZTS10Expression", !12, i64 0}
!90 = !{!"p1 long", !12, i64 0}
!91 = !{!"_ZTSSt18_Bit_iterator_base", !90, i64 0, !9, i64 8}
!92 = !{!"_ZTSSt13_Bit_iterator", !91, i64 0}
!93 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !92, i64 0, !92, i64 16, !90, i64 32}
!94 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !93, i64 0}
!95 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIbSaIbEE", !95, i64 0}
!97 = !{!"_ZTS12CVQualifiers", !66, i64 8, !66, i64 9, !96, i64 16, !96, i64 56}
!98 = !{!"_ZTS8Variable", !84, i64 8, !88, i64 32, !54, i64 64, !89, i64 72, !66, i64 80, !66, i64 81, !66, i64 82, !66, i64 83, !66, i64 84, !66, i64 85, !25, i64 88, !66, i64 96, !97, i64 104}
!99 = !{!98, !25, i64 88}
!100 = !{!98, !54, i64 64}
!101 = !{!88, !85, i64 0}
!102 = !{!8, !8, i64 0}
!103 = !{!"_ZTS18ExpressionVariable", !79, i64 0, !25, i64 24, !54, i64 32}
!104 = !{!103, !25, i64 24}
!105 = !{}
!106 = !{i64 8}
!107 = !{!"_ZTSNSt12_Vector_baseIPK4FactSaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!108 = !{!107, !46, i64 0}
!109 = !{!107, !46, i64 16}
!110 = !{!"p2 _ZTS10Expression", !13, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIPK10ExpressionSaIS2_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!112 = !{!"_ZTS6Effect", !31, i64 0, !31, i64 24, !31, i64 48, !66, i64 72, !66, i64 73}
!113 = !{!"p2 _ZTS5Block", !13, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIP5BlockSaIS1_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIP5BlockSaIS1_EE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIP5BlockSaIS1_EE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIP5BlockSaIS1_EE", !116, i64 0}
!118 = !{!"p1 _ZTS8Constant", !12, i64 0}
!119 = !{!"_ZTSN8Function10BuildStateE", !8, i64 0}
!120 = !{!"_ZTS8Function", !88, i64 0, !84, i64 32, !54, i64 56, !112, i64 64, !117, i64 144, !117, i64 168, !36, i64 192, !118, i64 200, !25, i64 208, !31, i64 216, !31, i64 240, !66, i64 264, !66, i64 265, !66, i64 266, !66, i64 267, !9, i64 268, !112, i64 272, !66, i64 352, !88, i64 360, !119, i64 392, !31, i64 400}
!121 = !{!107, !46, i64 8}
!122 = !{!89, !89, i64 0}
!123 = !{!88, !87, i64 8}
!124 = !{!"_ZTS3Lhs", !79, i64 0, !25, i64 24, !54, i64 32, !66, i64 40}
!125 = !{!124, !25, i64 24}
!126 = !{ptr @_ZN11FactPointToC2EPK8Variable}
!127 = !{ptr @_ZN11FactPointToD2Ev}
!128 = !{!28, !27, i64 8}
!129 = !{!98, !66, i64 96}
!130 = !{i8 0, i8 2}
!131 = !{!86, !85, i64 0}
!132 = distinct !{!132, !22}
!133 = distinct !{null}
!134 = distinct !{!134, !22}
!135 = !{!37, !35, i64 16}
!136 = distinct !{!136, !22}
!137 = distinct !{!137, !22}
!138 = distinct !{!138, !22}
!139 = !{!"_ZTS15eInvocationType", !8, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIPK10ExpressionSaIS2_EE12_Vector_implE", !111, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseIPK10ExpressionSaIS2_EE", !140, i64 0}
!142 = !{!"_ZTSSt6vectorIPK10ExpressionSaIS2_EE", !141, i64 0}
!143 = !{!"p1 _ZTS11SafeOpFlags", !12, i64 0}
!144 = !{!"_ZTS18FunctionInvocation", !139, i64 8, !142, i64 16, !66, i64 40, !66, i64 41, !143, i64 48}
!145 = !{!144, !139, i64 8}
!146 = !{!"_ZTS22FunctionInvocationUser", !144, i64 0, !35, i64 56, !66, i64 64}
!147 = !{!146, !35, i64 56}
!148 = !{!120, !25, i64 208}
!149 = !{!"p1 _ZTS15StatementAssign", !12, i64 0}
!150 = !{!"_ZTS16ExpressionAssign", !79, i64 0, !149, i64 24}
!151 = !{!150, !149, i64 24}
!152 = distinct !{!152, !22}
!153 = distinct !{!153, !22}
!154 = distinct !{!154, !22}
!155 = distinct !{!155, !22}
!156 = !{!46, !46, i64 0}
!157 = !{ptr @_ZN11FactPointToC2EPK8VariableS2_}
!158 = distinct !{!158, !22}
!159 = distinct !{!159, !22}
!160 = distinct !{!160, !22}
!161 = distinct !{!161, !22}
!162 = distinct !{!162, !22}
!163 = distinct !{!163, !22}
!164 = distinct !{!164, !22}
!165 = distinct !{!165, !22}
!166 = !{ptr @_Z10output_varPK8VariableRSo}
!167 = distinct !{ptr @_ZNK11FactPointTo13has_invisibleEPK9Statement, null}
!168 = distinct !{!168, !22}
!169 = distinct !{!169, !22}
!170 = distinct !{!170, !22}
!171 = distinct !{!171, !22}
!172 = distinct !{!172, !22}
!173 = distinct !{!173, !22}
!174 = !{!111, !110, i64 8}
!175 = !{!111, !110, i64 0}
!176 = !{!87, !87, i64 0}
!177 = distinct !{!177, !22}
!178 = distinct !{!178, !22}
!179 = distinct !{!179, !22}
!180 = distinct !{!180, !22}
!181 = distinct !{!181, !22}
!182 = !{!"p2 _ZTS8Function", !13, i64 0}
!183 = !{!"_ZTSNSt12_Vector_baseIP8FunctionSaIS1_EE17_Vector_impl_dataE", !182, i64 0, !182, i64 8, !182, i64 16}
!184 = !{!183, !182, i64 8}
!185 = !{!183, !182, i64 0}
!186 = !{!35, !35, i64 0}
!187 = !{!120, !66, i64 267}
!188 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!189 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!190 = !{!"_ZTSSt18_Rb_tree_node_base", !188, i64 0, !189, i64 8, !189, i64 16, !189, i64 24}
!191 = !{!"_ZTSSt15_Rb_tree_header", !190, i64 0, !87, i64 32}
!192 = !{!191, !189, i64 16}
!193 = distinct !{!193, !22}
!194 = distinct !{!194, i1 true, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!195 = distinct !{!195, !194, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!196 = distinct !{!196, !194, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!197 = distinct !{!197, !22}
!198 = distinct !{!198, i1 true, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!199 = distinct !{!199, !198, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!200 = distinct !{!200, !198, !"_ZSt19__relocate_object_aISt6vectorIPK8VariableSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!201 = !{!195}
!202 = !{!196}
!203 = !{!199}
!204 = !{!200}
end_hunk_1
