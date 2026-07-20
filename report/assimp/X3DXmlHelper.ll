inline.NumInlined: 1190
inline.NumDeleted: 465
begin_hunk_0_@_ZN6Assimp12X3DXmlHelper24getVector2DListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listI10aiVector2tIfESaIS9_EEE:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.n:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.o:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %9, align 8               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.o
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.n
  %.pn15 = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.ai, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.ao = load ptr, ptr %7, align 8               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.m
  %.pn15.pn = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %.pn15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.l
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.af, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.045.055 = phi ptr [ %i.s, %.lr.ph ], [ %i.bc, %bb.r ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 32
  %i.au = load ptr, ptr %.sroa.045.055, align 8
  %i.av = call double @strtod(ptr noundef nonnull captures(none) %i.au, ptr noundef null) #21, !inline_history !40
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = call double @strtod(ptr noundef nonnull captures(none) %i.aw, ptr noundef null) #21, !inline_history !40
  %i.ay = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.r unwind label %bb.s       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.az = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ax, i64 1
  %i.bb = fptrunc <2 x double> %i.ba to <2 x float>
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 64 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x float> %i.bb, ptr %i.bd, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  %i.be = load i64, ptr %i.x, align 8
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.x, align 8
  %i.bg = load ptr, ptr %i.q, align 8
  %.not52 = icmp eq ptr %i.bc, %i.bg
  br i1 %.not52, label %._crit_edge.loopexit, label %bb.q, !llvm.loop !98

bb.s:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre = load ptr, ptr %5, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bi = phi ptr [ %i.s, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa = phi ptr [ %i.r, %.preheader ], [ %i.bc, %._crit_edge.loopexit ] ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bi, %.lcssa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bi, %._crit_edge ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bm = load i64, ptr %i.bk, align 8
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, %.lcssa
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.bp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bi, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.p ], [ %i.bh, %bb.s ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.w

bb.v:                                             ; preds = %bb.c, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bv = load ptr, ptr %4, align 8               ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.a
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.v
  %i.bx = load i64, ptr %i.a, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %.0.i50 = xor i1 %i.d, true
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.0.i50

bb.w:                                             ; preds = %bb.u, %bb.j
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn.pn, %bb.u ], [ %i.z, %bb.j ]
  %i.bz = load ptr, ptr %4, align 8               ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.a
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.w
  %i.cb = load i64, ptr %i.a, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn15.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper25getVector2DArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorI10aiVector2tIfESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::list.27", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %3, ptr %i.a, align 8
  store ptr %3, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8
  %i.c = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper24getVector2DListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listI10aiVector2tIfESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8                ; 4 uses
  %i.e = icmp ne ptr %i.d, %3
  %or.cond.not = select i1 %i.c, i1 %i.e, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %2, align 8                ; 8 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 3
  %i.o = icmp ult i64 %i.n, %i.f
  br i1 %i.o, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.l
  %i.t = shl nuw nsw i64 %i.f, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25
          to label %.noexc9 unwind label %bb.g    ; 7 uses

.noexc9:                                          ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.q
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc9
  %i.v = ptrtoaddr ptr %i.u to i64
  %4 = ptrtoaddr ptr %i.q to i64
  %5 = ptrtoaddr ptr %i.j to i64
  %i.w = sub i64 %4, %5
  %i.x = add i64 %i.w, -8                         ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 72
  %i.aa = sub i64 %i.l, %i.v
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.j, i64 %i.ae ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.af = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep39, align 4, !alias.scope !102, !noalias !99
  %wide.load40 = load <2 x i64>, ptr %i.af, align 4, !alias.scope !102, !noalias !99
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !99, !noalias !102
  store <2 x i64> %wide.load40, ptr %i.ag, align 4, !alias.scope !99, !noalias !102
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader62

.lr.ph.i.i.i.i.preheader62:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader62, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader62 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.ai = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !102, !noalias !99
  store i64 %i.ai, ptr %.012.i.i.i.i, align 4, !alias.scope !99, !noalias !102
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.q
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !107

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc9
  %.not.i8.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #22
  %.sroa.017.023.pre.pre = load ptr, ptr %3, align 8
  br label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %.sroa.017.023.pre = phi ptr [ %.sroa.017.023.pre.pre, %bb.f ], [ %i.d, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ]
  store ptr %i.u, ptr %2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store ptr %i.al, ptr %i.p, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.f
  store ptr %i.am, ptr %i.h, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.e
  %.sroa.017.023 = phi ptr [ %.sroa.017.023.pre, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.d, %bb.e ] ; 3 uses
  %.not24 = icmp eq ptr %.sroa.017.023, %3
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.pre = load ptr, ptr %i.an, align 8
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i, %bb.d, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit
  %i.ap = phi ptr [ %.pre, %.lr.ph ], [ %i.cb, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %.sroa.017.025 = phi ptr [ %.sroa.017.023, %.lr.ph ], [ %.sroa.017.0, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load i64, ptr %i.aq, align 4
  store i64 %i.as, ptr %i.ap, align 4
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.an, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %2, align 8               ; 8 uses
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.k, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #25
          to label %.noexc11 unwind label %.loopexit22 ; 8 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  %i.bi = load i64, ptr %i.aq, align 4
  store i64 %i.bi, ptr %i.bh, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.av, %i.ap
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc11
  %i.bj = ptrtoaddr ptr %i.bg to i64
  %6 = ptrtoaddr ptr %i.ap to i64
  %7 = ptrtoaddr ptr %i.av to i64
  %i.bk = sub i64 %6, %7
  %i.bl = add i64 %i.bk, -8                       ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.bl, 24
  %i.bo = sub i64 %i.ax, %i.bj
  %diff.check43 = icmp ugt i64 %i.bo, -32
  %or.cond60 = or i1 %min.iters.check45, %diff.check43
  br i1 %or.cond60, label %.lr.ph.i.i.i.i.i.preheader61, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec48 = and i64 %i.bn, 4611686018427387900   ; 3 uses
  %i.bp = shl i64 %n.vec48, 3                     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bg, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.av, i64 %i.bp
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph46
  %index50 = phi i64 [ 0, %vector.ph46 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.bs = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bg, i64 %i.bs ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.av, i64 %i.bs ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.bt = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 4, !alias.scope !111, !noalias !108
  %wide.load54 = load <2 x i64>, ptr %i.bt, align 4, !alias.scope !111, !noalias !108
  %i.bu = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 4, !alias.scope !108, !noalias !111
  store <2 x i64> %wide.load54, ptr %i.bu, align 4, !alias.scope !108, !noalias !111
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.bv, label %middle.block56, label %vector.body49, !llvm.loop !113

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.bn, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader61

.lr.ph.i.i.i.i.i.preheader61:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block56
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bq, %middle.block56 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %i.br, %middle.block56 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader61, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader61 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.bw = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !111, !noalias !108
  store i64 %i.bw, ptr %.012.i.i.i.i.i, align 4, !alias.scope !108, !noalias !111
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, %i.ap
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !114

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block56, %.noexc11
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bg, %.noexc11 ], [ %i.bq, %middle.block56 ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #22
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.bg, ptr %2, align 8
  store ptr %i.bz, ptr %i.an, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.ca, ptr %i.h, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i
  %i.cb = phi ptr [ %i.bz, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.au, %bb.i ]
  %.sroa.017.0 = load ptr, ptr %.sroa.017.025, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.017.0, %3
  br i1 %.not, label %.loopexit.loopexit, label %bb.h, !llvm.loop !115

.loopexit22:                                      ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit
  %.pre27 = load ptr, ptr %3, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit, %bb.b
  %i.cc = phi ptr [ %.pre27, %.loopexit.loopexit ], [ %.sroa.017.023, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit ], [ %i.d, %bb.b ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.cc, %3
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %i.cc, %.loopexit ] ; 2 uses
  %i.cd = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #22
  %.not.i.i = icmp eq ptr %i.cd, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !116

_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i1 %or.cond.not

bb.m:                                             ; preds = %.loopexit22, %.loopexit.split-lp, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %lpad.loopexit, %.loopexit22 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ce = load ptr, ptr %3, align 8               ; 2 uses
  %.not8.i.i12 = icmp eq ptr %i.ce, %3
  br i1 %.not8.i.i12, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit16, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.m, %.lr.ph.i.i13
  %.09.i.i14 = phi ptr [ %i.cf, %.lr.ph.i.i13 ], [ %i.ce, %bb.m ] ; 2 uses
  %i.cf = load ptr, ptr %.09.i.i14, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i14, i64 noundef 24) #22
  %.not.i.i15 = icmp eq ptr %i.cf, %3
  br i1 %.not.i.i15, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit16, label %.lr.ph.i.i13, !llvm.loop !116

_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit16: ; preds = %.lr.ph.i.i13, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper24getVector3DListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listI10aiVector3tIfESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::vector", align 8       ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  store ptr %i.c, ptr %3, align 8
  %i.d = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc21 unwind label %bb.j   ; 2 uses

.noexc21:                                         ; preds = %.noexc
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc21
  %i.e = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1)
          to label %.noexc22 unwind label %bb.j   ; 2 uses

.noexc22:                                         ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #21
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.f, ptr noundef nonnull %i.e, i64 noundef %i.g)
          to label %._crit_edge.i.i unwind label %bb.j ; 0 uses

bb.c:                                             ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.v

._crit_edge.i.i:                                  ; preds = %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.i, ptr %6, align 8
  store i8 32, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.k, align 1
  %i.l = invoke noundef i32 @_ZN6Assimp8tokenizeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjRKT_RSt6vectorIS7_SaIS7_EES9_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.k       ; 0 uses

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.m = load ptr, ptr %6, align 8                ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.i, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = load ptr, ptr %5, align 8                ; 4 uses
  %i.t = ptrtoint ptr %i.r to i64
end_hunk_0
