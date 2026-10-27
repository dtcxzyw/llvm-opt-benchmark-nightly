Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_dereference?download=true
inline.NumInlined: 5647
inline.NumDeleted: 1809
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN38MetaDereference_PointerToFunction_Test8TestBodyEv:bb.a
  call void @__clang_call_terminate(ptr %i.dy) #28
  unreachable

_ZN4entt8meta_anyD2Ev.exit114:                    ; preds = %_ZN4entt8meta_anyD2Ev.exit112, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bq

bb.ao:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i115, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !97
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.aq, %bb.ap
  %i.ec = phi ptr [ %i.eb, %bb.aq ], [ @.str.26, %bb.ap ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 457, ptr noundef %i.ec)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ed = load ptr, ptr %14, align 8, !tbaa !99   ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.as
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(128) %i.ed) #26, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %bb.as, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.eh = load ptr, ptr %i.dz, align 8, !tbaa !100 ; 4 uses
  %.not.i.i119 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i119, label %_ZN7testing15AssertionResultD2Ev.exit123, label %bb.at

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit118
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !97 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120: ; preds = %bb.at
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !54
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit123

_ZN7testing15AssertionResultD2Ev.exit123:         ; preds = %_ZN7testing7MessageD2Ev.exit118, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.cl

bb.au:                                            ; preds = %bb.ao
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit126

bb.av:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ar
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn36 = phi { ptr, i32 } [ %i.ep, %bb.aw ], [ %i.eo, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.eq = load ptr, ptr %14, align 8, !tbaa !99   ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i124, label %_ZN7testing7MessageD2Ev.exit126, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.ax
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !37
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(128) %i.eq) #26, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit126

_ZN7testing7MessageD2Ev.exit126:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, %bb.ax, %bb.au
  %.pn36.pn = phi { ptr, i32 } [ %i.en, %bb.au ], [ %.pn36, %bb.ax ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  br label %bb.bq

.critedge50:                                      ; preds = %_ZN4entt8meta_anyD2Ev.exit110
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !100 ; 4 uses
  %.not.i.i127 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i127, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.critedge50
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !97 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128: ; preds = %bb.ay
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !54
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef 32) #27
  br label %bb.az

bb.az:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, %.critedge50
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.fb = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.fb, align 8, !tbaa !58, !alias.scope !569
  store i32 1219850847, ptr %i.fd, align 8, !tbaa !59, !alias.scope !569
  store ptr null, ptr %i.fc, align 8, !tbaa !60, !alias.scope !569
  store i8 0, ptr %i.fe, align 4, !tbaa !61, !alias.scope !569
  store ptr null, ptr %19, align 8, !tbaa !54, !alias.scope !569
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %19, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false), !alias.scope !569
  %i.fh = load ptr, ptr %i.n, align 8, !tbaa !66, !noalias !569, !nonnull !106, !noundef !106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !569
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.fi = load i8, ptr %i.k, align 4, !tbaa !61, !noalias !571
  %i.fj = icmp eq i8 %i.fi, 2
  %i.fk = load ptr, ptr %2, align 8, !noalias !571
  %i.fl = select i1 %i.fj, ptr %2, ptr %i.fk
  %i.fm = load ptr, ptr %i.h, align 8, !tbaa !58, !noalias !571
  %i.fn = load i32, ptr %i.j, align 8, !tbaa !59, !noalias !571
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.fm, ptr %i.fo, align 8, !tbaa !58, !alias.scope !570, !noalias !569
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr null, ptr %i.fp, align 8, !tbaa !60, !alias.scope !570, !noalias !569
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.fn, ptr %i.fq, align 8, !tbaa !59, !alias.scope !570, !noalias !569
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 4, ptr %i.fr, align 4, !tbaa !61, !alias.scope !570, !noalias !569
  store ptr %i.fl, ptr %1, align 8, !tbaa !54, !alias.scope !570, !noalias !569
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ft = load <2 x ptr>, ptr %i.l, align 8, !tbaa !111, !noalias !569
  %i.fu = load ptr, ptr %i.l, align 8, !tbaa !65, !noalias !569
  store ptr %i.fu, ptr %i.ff, align 8, !tbaa !65, !alias.scope !569
  store <2 x ptr> %i.ft, ptr %i.fs, align 8, !tbaa !111, !alias.scope !570, !noalias !569
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.fh, ptr %i.fv, align 8, !tbaa !66, !alias.scope !570, !noalias !569
  invoke void %i.fh(i32 noundef 256, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 %19)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.fw = load ptr, ptr %i.fp, align 8, !tbaa !60, !noalias !569 ; 2 uses
  %.not.i.i.i.i133 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i133, label %_ZN4entt8meta_anyD2Ev.exit.i134, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN4entt8meta_anyD2Ev.exit.i134 unwind label %bb.bc, !inline_history !2

bb.bc:                                            ; preds = %bb.bb
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #28
  unreachable

_ZN4entt8meta_anyD2Ev.exit.i134:                  ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !569
  %.pre195 = load ptr, ptr %i.ff, align 8, !tbaa !65, !noalias !572
  %.phi.trans.insert196 = getelementptr inbounds nuw i8, ptr %19, i64 56
  %.pre197 = load ptr, ptr %.phi.trans.insert196, align 8, !tbaa !66, !noalias !572, !nonnull !106, !noundef !106
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %18, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.fz, align 8, !tbaa !58, !alias.scope !572
  store i32 1219850847, ptr %i.gb, align 8, !tbaa !59, !alias.scope !572
  store ptr null, ptr %i.ga, align 8, !tbaa !60, !alias.scope !572
  store i8 0, ptr %i.gc, align 4, !tbaa !61, !alias.scope !572
  store ptr null, ptr %18, align 8, !tbaa !54, !alias.scope !572
  %i.gd = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  store ptr %.pre195, ptr %i.gd, align 8, !tbaa !65, !alias.scope !572
  %i.ge = getelementptr inbounds nuw i8, ptr %18, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i8 0, i64 16, i1 false), !alias.scope !572
  invoke void %.pre197(i32 noundef 256, ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull align 8 %18)
          to label %._ZN4entt8meta_anydeEv.exit137_crit_edge unwind label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #28
  unreachable

._ZN4entt8meta_anydeEv.exit137_crit_edge:         ; preds = %_ZN4entt8meta_anyD2Ev.exit.i134
  %.pre198 = load ptr, ptr %i.gd, align 8, !tbaa !65, !noalias !573
  %.phi.trans.insert199 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %.pre200 = load ptr, ptr %.phi.trans.insert199, align 8, !tbaa !66, !noalias !573, !nonnull !106, !noundef !106
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.gh = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 36 ; 3 uses
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.gh, align 8, !tbaa !58, !alias.scope !573
  store i32 1219850847, ptr %i.gj, align 8, !tbaa !59, !alias.scope !573
  store ptr null, ptr %i.gi, align 8, !tbaa !60, !alias.scope !573
  store i8 0, ptr %i.gk, align 4, !tbaa !61, !alias.scope !573
  store ptr null, ptr %17, align 8, !tbaa !54, !alias.scope !573
  %i.gl = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  store ptr %.pre198, ptr %i.gl, align 8, !tbaa !65, !alias.scope !573
  %i.gm = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !573
  invoke void %.pre200(i32 noundef 256, ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull align 8 %17)
          to label %_ZN4entt8meta_anydeEv.exit139 unwind label %bb.bf

bb.be:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit.i134
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #28
  unreachable

bb.bf:                                            ; preds = %._ZN4entt8meta_anydeEv.exit137_crit_edge
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #28
  unreachable

_ZN4entt8meta_anydeEv.exit139:                    ; preds = %._ZN4entt8meta_anydeEv.exit137_crit_edge
  %.pre201 = load i32, ptr %i.gj, align 8, !tbaa !59
  %.pre202 = load i8, ptr %i.gk, align 4
  %.pre202.fr = freeze i8 %.pre202                ; 2 uses
  %.pre203 = load ptr, ptr %17, align 8           ; 2 uses
  %i.gr = icmp ne i32 %.pre201, 1988330492
  %i.gs = icmp eq i8 %.pre202.fr, 2
  %spec.select277 = select i1 %i.gs, ptr %17, ptr %.pre203 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %spec.select277, null
  %.not.i.i.i140 = select i1 %i.gr, i1 true, i1 %.not3.i.i.i
  br i1 %.not.i.i.i140, label %.thread274, label %bb.bg

.thread274:                                       ; preds = %_ZN4entt8meta_anydeEv.exit139
  %.pr = load ptr, ptr %i.gm, align 8, !tbaa !67  ; 2 uses
  %i.gt = load ptr, ptr %i.gl, align 8, !tbaa !65
  %i.gu = icmp eq ptr %.pr, null
  br i1 %i.gu, label %.thread274._crit_edge, label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

.thread274._crit_edge:                            ; preds = %.thread274
  %.phi.trans.insert285 = getelementptr inbounds nuw i8, ptr %17, i64 56
  %.pre286 = load ptr, ptr %.phi.trans.insert285, align 8, !tbaa !66
  invoke void %.pre286(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef null)
          to label %.noexc142 unwind label %bb.br, !inline_history !566

.noexc142:                                        ; preds = %.thread274._crit_edge
  %.pre.i.i.i.i = load ptr, ptr %i.gm, align 8, !tbaa !67
  %.pre.i.i.i141 = load i8, ptr %i.gk, align 4, !tbaa !61
  %.pre5.i.i.i = load ptr, ptr %17, align 8
  br label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i

_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i:      ; preds = %.noexc142, %.thread274
  %i.gv = phi ptr [ %.pre5.i.i.i, %.noexc142 ], [ %.pre203, %.thread274 ]
  %i.gw = phi i8 [ %.pre.i.i.i141, %.noexc142 ], [ %.pre202.fr, %.thread274 ]
  %i.gx = phi ptr [ %.pre.i.i.i.i, %.noexc142 ], [ %.pr, %.thread274 ]
  %i.gy = icmp eq i8 %i.gw, 2
  %i.gz = select i1 %i.gy, ptr %17, ptr %i.gv
  %i.ha = call noundef ptr @_ZN4entt8internal8try_castERKNS0_12meta_contextERKNS0_14meta_type_nodeEjPKv(ptr noundef nonnull align 8 dereferenceable(56) %i.gt, ptr noundef nonnull align 8 dereferenceable(128) %i.gx, i32 noundef 1988330492, ptr noundef %i.gz) #26
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i, %_ZN4entt8meta_anydeEv.exit139
  %i.hb = phi ptr [ %i.ha, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i.i ], [ %spec.select277, %_ZN4entt8meta_anydeEv.exit139 ]
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !111
  %i.hd = invoke noundef i32 %i.hc()
          to label %bb.bh unwind label %bb.br     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.hd, ptr %i.c, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 3, ptr %i.d, align 4, !tbaa !62
  %i.he = icmp eq i32 %i.hd, 3
  br i1 %i.he, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bs

bb.bj:                                            ; preds = %bb.bh
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.21, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bs

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.hf = load ptr, ptr %i.gi, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i145, label %_ZN4entt8meta_anyD2Ev.exit146, label %bb.bk

bb.bk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %_ZN4entt8meta_anyD2Ev.exit146 unwind label %bb.bl, !inline_history !2

bb.bl:                                            ; preds = %bb.bk
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #28
  unreachable

_ZN4entt8meta_anyD2Ev.exit146:                    ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %bb.bk
  %i.hi = load ptr, ptr %i.ga, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i147, label %_ZN4entt8meta_anyD2Ev.exit148, label %bb.bm

bb.bm:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit146
  invoke void %i.hi(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %_ZN4entt8meta_anyD2Ev.exit148 unwind label %bb.bn, !inline_history !2

bb.bn:                                            ; preds = %bb.bm
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #28
  unreachable

_ZN4entt8meta_anyD2Ev.exit148:                    ; preds = %_ZN4entt8meta_anyD2Ev.exit146, %bb.bm
  %i.hl = load ptr, ptr %i.fc, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i149, label %_ZN4entt8meta_anyD2Ev.exit150, label %bb.bo

bb.bo:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit148
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %_ZN4entt8meta_anyD2Ev.exit150 unwind label %bb.bp, !inline_history !2

bb.bp:                                            ; preds = %bb.bo
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #28
  unreachable

_ZN4entt8meta_anyD2Ev.exit150:                    ; preds = %_ZN4entt8meta_anyD2Ev.exit148, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ho = load i8, ptr %16, align 8, !tbaa !93, !range !105, !noundef !106
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.cj, label %bb.ca

bb.bq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit126, %_ZN4entt8meta_anyD2Ev.exit114
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit126 ], [ %.pn34, %_ZN4entt8meta_anyD2Ev.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.cp

bb.br:                                            ; preds = %.thread274._crit_edge, %bb.bg
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bj, %bb.bi
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn40 = phi { ptr, i32 } [ %i.hr, %bb.bs ], [ %i.hq, %bb.br ]
  %i.hs = load ptr, ptr %i.gi, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i151 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i151, label %_ZN4entt8meta_anyD2Ev.exit152, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void %i.hs(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %_ZN4entt8meta_anyD2Ev.exit152 unwind label %bb.bv, !inline_history !2

bb.bv:                                            ; preds = %bb.bu
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #28
  unreachable

_ZN4entt8meta_anyD2Ev.exit152:                    ; preds = %bb.bt, %bb.bu
  %i.hv = load ptr, ptr %i.ga, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i153, label %_ZN4entt8meta_anyD2Ev.exit154, label %bb.bw

bb.bw:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit152
  invoke void %i.hv(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %_ZN4entt8meta_anyD2Ev.exit154 unwind label %bb.bx, !inline_history !2

bb.bx:                                            ; preds = %bb.bw
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #28
  unreachable

_ZN4entt8meta_anyD2Ev.exit154:                    ; preds = %_ZN4entt8meta_anyD2Ev.exit152, %bb.bw
  %i.hy = load ptr, ptr %i.fc, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i155, label %_ZN4entt8meta_anyD2Ev.exit156, label %bb.by

bb.by:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit154
  invoke void %i.hy(ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %_ZN4entt8meta_anyD2Ev.exit156 unwind label %bb.bz, !inline_history !2

bb.bz:                                            ; preds = %bb.by
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #28
  unreachable

end_hunk_0
