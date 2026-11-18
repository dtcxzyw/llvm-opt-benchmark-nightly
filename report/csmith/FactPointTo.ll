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
  %11 = load ptr, ptr %0, align 8, !tbaa !108     ; 4 uses
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
          to label %.noexc167 unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

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
