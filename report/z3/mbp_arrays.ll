inline.NumInlined: 2024
inline.NumDeleted: 872
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN3mbp20array_project_plugin3imp21assert_extensionalityER5modelRNS_10term_graphER10ref_vectorI4expr11ast_managerE:bb.a
          to label %.noexc154 unwind label %bb.t  ; 3 uses

.noexc154:                                        ; preds = %bb.q
  store i32 %i.ax, ptr %i.bx, align 4, !tbaa !52
  %.phi.trans.insert.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %.pre2.i.i.pre = load i32, ptr %.phi.trans.insert.i.i.phi.trans.insert, align 4, !tbaa !52
  br label %.noexc

bb.r:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc:                                           ; preds = %.noexc154, %.noexc153
  %.pre2.i.i = phi i32 [ 0, %.noexc153 ], [ %.pre2.i.i.pre, %.noexc154 ]
  %.pn239 = phi ptr [ %i.at, %.noexc153 ], [ %i.bx, %.noexc154 ]
  %.sroa.6219.2 = getelementptr inbounds nuw i8, ptr %.pn239, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.noexc, %bb.h
  %.sroa.6219.1 = phi ptr [ %.sroa.6219.2, %.noexc ], [ %.sroa.6219.0307, %bb.h ] ; 5 uses
  %i.by = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.ap, %bb.h ] ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.6219.1, i64 -4
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6219.1, i64 %i.ca
  store ptr %i.aj, ptr %i.cb, align 8, !tbaa !428
  %i.cc = add i32 %i.by, 1
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !52
  %i.cd = add nuw i32 %.046308, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, %i.ai
  br i1 %exitcond.not, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, label %.lr.ph, !llvm.loop !457

bb.t:                                             ; preds = %bb.q, %bb.i, %.lr.ph
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %bb.s
  %.pre = load ptr, ptr %0, align 8, !tbaa !180   ; 2 uses
  %i.cf = add i32 %i.ai, 1                        ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit, label %.preheader241.preheader

.preheader241.preheader:                          ; preds = %_Z15get_array_arityPK4sort.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i
  %i.cg = phi i32 [ %i.cf, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ 1, %_Z15get_array_arityPK4sort.exit ] ; 3 uses
  %.sroa.6219.0.lcssa471 = phi ptr [ %.sroa.6219.1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ null, %_Z15get_array_arityPK4sort.exit ] ; 4 uses
  %i.ch = phi ptr [ %.pre, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ %i.x, %_Z15get_array_arityPK4sort.exit ] ; 4 uses
  %i.ci = phi i32 [ %i.ai, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ 0, %_Z15get_array_arityPK4sort.exit ]
  %.not317465469 = phi i1 [ false, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ true, %_Z15get_array_arityPK4sort.exit ]
  br label %.preheader241

thread-pre-split.i.i:                             ; preds = %.noexc168, %.noexc165
  %.pn = phi ptr [ %i.cm, %.noexc165 ], [ %i.dq, %.noexc168 ]
  %.sroa.10.6 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %.preheader241

.preheader241:                                    ; preds = %.preheader241.preheader, %thread-pre-split.i.i
  %.sroa.10.3 = phi ptr [ %.sroa.10.6, %thread-pre-split.i.i ], [ null, %.preheader241.preheader ] ; 8 uses
  %cond = icmp eq ptr %.sroa.10.3, null
  br i1 %cond, label %bb.u, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i:     ; preds = %.preheader241
  %i.cj = getelementptr inbounds i8, ptr %.sroa.10.3, i64 -8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !52 ; 4 uses
  %i.cl = icmp ugt i32 %i.cg, %i.ck
  br i1 %i.cl, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %.lr.ph.preheader.i.i

bb.u:                                             ; preds = %.preheader241
  %i.cm = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc165 unwind label %bb.al ; 3 uses

.noexc165:                                        ; preds = %bb.u
  store i32 2, ptr %i.cm, align 4, !tbaa !52
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 0, ptr %i.cn, align 4, !tbaa !52
  br label %thread-pre-split.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i
  %i.co = mul i32 %i.ck, 3
  %i.cp = add i32 %i.co, 1
  %i.cq = lshr i32 %i.cp, 1                       ; 3 uses
  %i.cr = shl i32 %i.cq, 3
  %i.cs = add i32 %i.cr, 8                        ; 2 uses
  %.not.i155 = icmp ugt i32 %i.cq, %i.ck
  br i1 %.not.i155, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %i.ct = shl i32 %i.ck, 3
  %i.cu = add i32 %i.ct, 8
  %.not27.i164 = icmp ugt i32 %i.cs, %i.cu
  br i1 %.not27.i164, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %i.cv = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cv, align 8, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 3 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !270
  %i.cy = load ptr, ptr %8, align 8, !tbaa !272   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !274 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.dc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cx, ptr noundef nonnull align 8 dereferenceable(1) %i.cz, i64 %i.de, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157: ; preds = %bb.x
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !272
  %i.df = load i64, ptr %i.cz, align 8, !tbaa !275
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !275
  %.phi.trans.insert.i158 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i159 = load i64, ptr %.phi.trans.insert.i158, align 8, !tbaa !274
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i160

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i160: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157, %bb.y
  %i.dg = phi i64 [ %i.dc, %bb.y ], [ %.pre.i159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i157 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !274
  store ptr %i.cz, ptr %8, align 8, !tbaa !272
  store i64 0, ptr %i.dh, align 8, !tbaa !274
  store i8 0, ptr %i.cz, align 8, !tbaa !275
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.ac unwind label %bb.z

bb.z:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i160
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load ptr, ptr %8, align 8, !tbaa !272   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cz
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i161: ; preds = %bb.z
  %i.dm = load i64, ptr %i.cz, align 8, !tbaa !275
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i162: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129

bb.aa:                                            ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @__cxa_free_exception(ptr %i.cv) #22
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129

bb.ab:                                            ; preds = %bb.v
  %i.dp = zext i32 %i.cs to i64
  %i.dq = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cj, i64 noundef %i.dp)
          to label %.noexc168 unwind label %bb.al ; 2 uses

.noexc168:                                        ; preds = %bb.ab
  store i32 %i.cq, ptr %i.dq, align 4, !tbaa !52
  br label %thread-pre-split.i.i

bb.ac:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i160
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i
  %i.dr = getelementptr inbounds i8, ptr %.sroa.10.3, i64 -4
  store i32 %i.cg, ptr %i.dr, align 4, !tbaa !52
  %i.ds = zext i32 %i.cg to i64
  %i.dt = shl nuw nsw i64 %i.ds, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.10.3, i8 0, i64 %i.dt, i1 false), !tbaa !62
  %i.du = zext i32 %i.ci to i64
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.6219.0.lcssa472 = phi ptr [ %.sroa.6219.1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ %.sroa.6219.0.lcssa471, %.lr.ph.preheader.i.i ] ; 17 uses
  %i.dv = phi ptr [ %.pre, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ %i.ch, %.lr.ph.preheader.i.i ] ; 15 uses
  %wide.trip.count = phi i64 [ 4294967295, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ %i.du, %.lr.ph.preheader.i.i ]
  %.not317465470 = phi i1 [ false, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ %.not317465469, %.lr.ph.preheader.i.i ]
  %.sroa.10.4 = phi ptr [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ], [ %.sroa.10.3, %.lr.ph.preheader.i.i ] ; 24 uses
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !32  ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.critedge, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit71.lr.ph

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit71.lr.ph: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit
  %i.dy = getelementptr inbounds i8, ptr %.sroa.10.4, i64 -4 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !52
  %.not629 = icmp eq i32 %i.ea, 0
  br i1 %.not629, label %.critedge, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85.lr.ph

.critedge240.loopexit:                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85
  %i.eb = getelementptr inbounds i8, ptr %i.fu, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !52
  %i.ed = zext i32 %i.ec to i64
  %i.ee = icmp samesign ult i64 %indvars.iv.next390, %i.ed
  br i1 %i.ee, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85.lr.ph, label %.critedge, !llvm.loop !458

.critedge:                                        ; preds = %.critedge240.loopexit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit71.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit
  %i.ef = icmp eq ptr %.sroa.10.4, null
  br i1 %i.ef, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72:         ; preds = %.critedge
  %i.eg = getelementptr inbounds i8, ptr %.sroa.10.4, i64 -4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !52 ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 3
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.10.4, i64 %i.ej
  %.not.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76
  %.06.i.i74 = phi ptr [ %i.eq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76 ], [ %.sroa.10.4, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72 ] ; 2 uses
  %i.el = load ptr, ptr %.06.i.i74, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i75, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i73
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !50
  %i.eo = add i32 %i.en, -1                       ; 2 uses
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !50
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ae, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dv, ptr noundef nonnull %i.el)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76 unwind label %bb.ag

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76: ; preds = %bb.ae, %bb.ad, %.lr.ph.i.i73
  %i.eq = getelementptr inbounds nuw i8, ptr %.06.i.i74, i64 8 ; 2 uses
  %i.er = icmp ult ptr %i.eq, %i.ek
  br i1 %i.er, label %.lr.ph.i.i73, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, !llvm.loop !63

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i76, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i72
  %i.es = getelementptr inbounds i8, ptr %.sroa.10.4, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.es)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #23
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #23
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %.critedge, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ex = icmp eq ptr %.sroa.6219.0.lcssa472, null
  br i1 %i.ex, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i:      ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ey = getelementptr inbounds i8, ptr %.sroa.6219.0.lcssa472, i64 -4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !52 ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.6219.0.lcssa472, i64 %i.fb
  %.not.i78 = icmp eq i32 %i.ez, 0
  br i1 %.not.i78, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i79

.lr.ph.i.i79:                                     ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i80 = phi ptr [ %i.fi, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %.sroa.6219.0.lcssa472, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.fd = load ptr, ptr %.06.i.i80, align 8, !tbaa !428 ; 3 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i81, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i79
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !50
  %i.fg = add i32 %i.ff, -1                       ; 2 uses
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !50
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ai, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.x, ptr noundef nonnull %i.fd)
          to label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.ak

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i79
  %i.fi = getelementptr inbounds nuw i8, ptr %.06.i.i80, i64 8 ; 2 uses
  %i.fj = icmp ult ptr %i.fi, %i.fc
  br i1 %i.fj, label %.lr.ph.i.i79, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, !llvm.loop !459

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i
  %i.fk = getelementptr inbounds i8, ptr %.sroa.6219.0.lcssa472, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fk)
          to label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #23
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #23
  unreachable

bb.al:                                            ; preds = %bb.ab, %bb.u
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body166

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85.lr.ph: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit71.lr.ph, %.critedge240.loopexit
  %indvars.iv389627 = phi i64 [ %indvars.iv.next390, %.critedge240.loopexit ], [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit71.lr.ph ] ; 2 uses
  %i.fq = phi ptr [ %i.fu, %.critedge240.loopexit ], [ %i.dw, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit71.lr.ph ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv389627
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !53 ; 6 uses
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389627, 1 ; 3 uses
  %.not.i.i107 = icmp eq ptr %i.fs, null
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %12 = trunc nuw i64 %indvars.iv.next390 to i32
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.fu = phi ptr [ %i.fq, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85.lr.ph ], [ %i.lj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 4 uses
  %.044311 = phi i32 [ %12, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85.lr.ph ], [ %14, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 3 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !52
  %i.fx = icmp ult i32 %.044311, %i.fw
  br i1 %i.fx, label %bb.am, label %.critedge240.loopexit

bb.am:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85
  %13 = zext i32 %.044311 to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %13
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !53 ; 6 uses
  %i.ga = invoke noundef zeroext i1 @_ZN5model9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef %i.fs, ptr noundef %i.fz)
          to label %_ZN3mbp20array_project_plugin3imp9are_equalER5modelP4exprS5_.exit unwind label %bb.ba

_ZN3mbp20array_project_plugin3imp9are_equalER5modelP4exprS5_.exit: ; preds = %bb.am
  br i1 %i.ga, label %bb.an, label %.preheader

.preheader:                                       ; preds = %_ZN3mbp20array_project_plugin3imp9are_equalER5modelP4exprS5_.exit
  br i1 %.not317465470, label %._crit_edge, label %.lr.ph310

bb.an:                                            ; preds = %_ZN3mbp20array_project_plugin3imp9are_equalER5modelP4exprS5_.exit
  %i.gb = load ptr, ptr %0, align 8, !tbaa !180, !nonnull !48, !align !49
  %i.gc = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gb, i32 noundef 0, i32 noundef 2, ptr noundef %i.fs, ptr noundef %i.fz)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %bb.ba ; 5 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %bb.an
  %.not.i.i.i.i88 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i88, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !50
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !50
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.ao, %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.gg = load ptr, ptr %i.o, align 8, !tbaa !11  ; 4 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.gi = getelementptr inbounds i8, ptr %i.gg, i64 -4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !52 ; 5 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gg, i64 -8 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !52
  %i.gm = icmp eq i32 %i.gj, %i.gl
  br i1 %i.gm, label %bb.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.aq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.gn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc179 unwind label %bb.ba ; 3 uses

.noexc179:                                        ; preds = %bb.aq
  store i32 2, ptr %i.gn, align 4, !tbaa !52
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store i32 0, ptr %i.go, align 4, !tbaa !52
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  store ptr %i.gp, ptr %i.o, align 8, !tbaa !11
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.ar:                                            ; preds = %bb.ap
  %i.gq = mul i32 %i.gj, 3
  %i.gr = add i32 %i.gq, 1
  %i.gs = lshr i32 %i.gr, 1                       ; 3 uses
  %i.gt = shl i32 %i.gs, 3
  %i.gu = add i32 %i.gt, 8                        ; 2 uses
  %.not.i169 = icmp ugt i32 %i.gs, %i.gj
  br i1 %.not.i169, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gv = shl i32 %i.gj, 3
  %i.gw = add i32 %i.gv, 8
  %.not27.i178 = icmp ugt i32 %i.gu, %i.gw
  br i1 %.not27.i178, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gx = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gx, align 8, !tbaa !15
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 3 uses
  store ptr %i.gz, ptr %i.gy, align 8, !tbaa !270
  %i.ha = load ptr, ptr %6, align 8, !tbaa !272   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171

bb.av:                                            ; preds = %bb.au
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !274 ; 3 uses
  %i.hf = icmp ult i64 %i.he, 16
  call void @llvm.assume(i1 %i.hf)
  %i.hg = add nuw nsw i64 %i.he, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gz, ptr noundef nonnull align 8 dereferenceable(1) %i.hb, i64 %i.hg, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171: ; preds = %bb.au
  store ptr %i.ha, ptr %i.gy, align 8, !tbaa !272
  %i.hh = load i64, ptr %i.hb, align 8, !tbaa !275
  store i64 %i.hh, ptr %i.gz, align 8, !tbaa !275
  %.phi.trans.insert.i172 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i173 = load i64, ptr %.phi.trans.insert.i172, align 8, !tbaa !274
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i174

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i174: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171, %bb.av
  %i.hi = phi i64 [ %i.he, %bb.av ], [ %.pre.i173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i64 %i.hi, ptr %i.hk, align 8, !tbaa !274
  store ptr %i.hb, ptr %6, align 8, !tbaa !272
  store i64 0, ptr %i.hj, align 8, !tbaa !274
  store i8 0, ptr %i.hb, align 8, !tbaa !275
  invoke void @__cxa_throw(ptr nonnull %i.gx, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.az unwind label %bb.aw

bb.aw:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i174
  %i.hl = landingpad { ptr, i32 }
          cleanup
  %i.hm = load ptr, ptr %6, align 8, !tbaa !272   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.hb
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i175: ; preds = %bb.aw
  %i.ho = load i64, ptr %i.hb, align 8, !tbaa !275
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i176: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body166

bb.ax:                                            ; preds = %bb.at
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @__cxa_free_exception(ptr %i.gx) #22
  br label %.body166

bb.ay:                                            ; preds = %bb.as
  %i.hr = zext i32 %i.gu to i64
  %i.hs = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.gk, i64 noundef %i.hr)
          to label %.noexc182 unwind label %bb.ba ; 2 uses

.noexc182:                                        ; preds = %bb.ay
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  store ptr %i.ht, ptr %i.o, align 8, !tbaa !11
  store i32 %i.gs, ptr %i.hs, align 4, !tbaa !52
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.az:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i174
  unreachable

bb.ba:                                            ; preds = %bb.ay, %bb.aq, %bb.an, %bb.am
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body166

.lr.ph310:                                        ; preds = %.preheader, %bb.bf
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bf ], [ 0, %.preheader ] ; 2 uses
  %i.hv = load ptr, ptr %0, align 8, !tbaa !180, !nonnull !48, !align !49
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6219.0.lcssa472, i64 %indvars.iv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %i.fs, ptr %i.a, align 16, !tbaa !62
  store ptr %i.fz, ptr %i.m, align 8, !tbaa !62
  %i.hy = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.hv, ptr noundef %i.hx, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %bb.bb unwind label %bb.bg     ; 3 uses

bb.bb:                                            ; preds = %.lr.ph310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.4, i64 %indvars.iv.next ; 2 uses
  %.not.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !50
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !50
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.bc, %bb.bb
  %i.id = load ptr, ptr %i.hz, align 8, !tbaa !62 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.id, null
  br i1 %.not.i3.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !50
  %i.ig = add i32 %i.if, -1                       ; 2 uses
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !50
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dv, ptr noundef nonnull %i.id)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.bd, %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.be
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !62
end_hunk_0
begin_hunk_1_@_ZN3mbp20array_project_plugin3imp21assert_extensionalityER5modelRNS_10term_graphER10ref_vectorI4expr11ast_managerE:bb.a
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !50
  %i.jb = add i32 %i.ja, -1                       ; 2 uses
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !50
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.bn, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i113

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dv, ptr noundef nonnull %i.iy)
          to label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i113 unwind label %bb.cc

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i113: ; preds = %bb.bm, %_ZN11ast_manager7inc_refEP3ast.exit.i108, %bb.bn
  store ptr %i.fs, ptr %.sroa.10.4, align 8, !tbaa !62
  %i.jd = load i32, ptr %i.dy, align 4, !tbaa !52
  %i.je = load ptr, ptr %i.n, align 8, !tbaa !296, !nonnull !48, !align !49
  %i.jf = load i32, ptr %i.l, align 8, !tbaa !94
  %i.jg = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.je, i32 noundef %i.jf, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef %i.jd, ptr noundef nonnull %.sroa.10.4, ptr noundef null)
          to label %_ZNK10array_util9mk_selectERK10ref_vectorI4expr11ast_managerE.exit116 unwind label %bb.cd

_ZNK10array_util9mk_selectERK10ref_vectorI4expr11ast_managerE.exit116: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i113
  %i.jh = load ptr, ptr %0, align 8, !tbaa !180, !nonnull !48, !align !49 ; 2 uses
  %i.ji = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.jh, i32 noundef 0, i32 noundef 2, ptr noundef %i.iv, ptr noundef %i.jg)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit118 unwind label %bb.cd

_ZN11ast_manager5mk_eqEP4exprS1_.exit118:         ; preds = %_ZNK10array_util9mk_selectERK10ref_vectorI4expr11ast_managerE.exit116
  %i.jj = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.jh, i32 noundef 0, i32 noundef 8, ptr noundef %i.ji)
          to label %_ZN11ast_manager6mk_notEP4expr.exit unwind label %bb.cd ; 5 uses

_ZN11ast_manager6mk_notEP4expr.exit:              ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit118
  %.not.i.i.i.i120 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i120, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i121, label %bb.bo

bb.bo:                                            ; preds = %_ZN11ast_manager6mk_notEP4expr.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !50
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !50
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i121

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i121: ; preds = %bb.bo, %_ZN11ast_manager6mk_notEP4expr.exit
  %i.jn = load ptr, ptr %i.o, align 8, !tbaa !11  ; 4 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i121
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 -4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !52 ; 5 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jn, i64 -8 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !52
  %i.jt = icmp eq i32 %i.jq, %i.js
  br i1 %i.jt, label %bb.br, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.bq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i121
  %i.ju = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc194 unwind label %bb.cd ; 3 uses

.noexc194:                                        ; preds = %bb.bq
  store i32 2, ptr %i.ju, align 4, !tbaa !52
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  store i32 0, ptr %i.jv, align 4, !tbaa !52
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  store ptr %i.jw, ptr %i.o, align 8, !tbaa !11
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.br:                                            ; preds = %bb.bp
  %i.jx = mul i32 %i.jq, 3
  %i.jy = add i32 %i.jx, 1
  %i.jz = lshr i32 %i.jy, 1                       ; 3 uses
  %i.ka = shl i32 %i.jz, 3
  %i.kb = add i32 %i.ka, 8                        ; 2 uses
  %.not.i184 = icmp ugt i32 %i.jz, %i.jq
  br i1 %.not.i184, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.kc = shl i32 %i.jq, 3
  %i.kd = add i32 %i.kc, 8
  %.not27.i193 = icmp ugt i32 %i.kb, %i.kd
  br i1 %.not27.i193, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ke = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ke, align 8, !tbaa !15
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 24 ; 3 uses
  store ptr %i.kg, ptr %i.kf, align 8, !tbaa !270
  %i.kh = load ptr, ptr %4, align 8, !tbaa !272   ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i186

bb.bv:                                            ; preds = %bb.bu
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !274 ; 3 uses
  %i.km = icmp ult i64 %i.kl, 16
  call void @llvm.assume(i1 %i.km)
  %i.kn = add nuw nsw i64 %i.kl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kg, ptr noundef nonnull align 8 dereferenceable(1) %i.ki, i64 %i.kn, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i186: ; preds = %bb.bu
  store ptr %i.kh, ptr %i.kf, align 8, !tbaa !272
  %i.ko = load i64, ptr %i.ki, align 8, !tbaa !275
  store i64 %i.ko, ptr %i.kg, align 8, !tbaa !275
  %.phi.trans.insert.i187 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i188 = load i64, ptr %.phi.trans.insert.i187, align 8, !tbaa !274
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i189

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i189: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i186, %bb.bv
  %i.kp = phi i64 [ %i.kl, %bb.bv ], [ %.pre.i188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i186 ]
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store i64 %i.kp, ptr %i.kr, align 8, !tbaa !274
  store ptr %i.ki, ptr %4, align 8, !tbaa !272
  store i64 0, ptr %i.kq, align 8, !tbaa !274
  store i8 0, ptr %i.ki, align 8, !tbaa !275
  invoke void @__cxa_throw(ptr nonnull %i.ke, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.bz unwind label %bb.bw

bb.bw:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i189
  %i.ks = landingpad { ptr, i32 }
          cleanup
  %i.kt = load ptr, ptr %4, align 8, !tbaa !272   ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.ki
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i190: ; preds = %bb.bw
  %i.kv = load i64, ptr %i.ki, align 8, !tbaa !275
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i191: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129

bb.bx:                                            ; preds = %bb.bt
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @__cxa_free_exception(ptr %i.ke) #22
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129

bb.by:                                            ; preds = %bb.bs
  %i.ky = zext i32 %i.kb to i64
  %i.kz = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.jr, i64 noundef %i.ky)
          to label %.noexc197 unwind label %bb.cd ; 2 uses

.noexc197:                                        ; preds = %bb.by
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  store ptr %i.la, ptr %i.o, align 8, !tbaa !11
  store i32 %i.jz, ptr %i.kz, align 4, !tbaa !52
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split

bb.bz:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i189
  unreachable

bb.ca:                                            ; preds = %bb.bk
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129

bb.cb:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129

bb.cc:                                            ; preds = %bb.bn
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129

bb.cd:                                            ; preds = %bb.by, %bb.bq, %_ZN11ast_manager5mk_eqEP4exprS1_.exit118, %_ZNK10array_util9mk_selectERK10ref_vectorI4expr11ast_managerE.exit116, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i113
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split: ; preds = %.noexc194, %.noexc197, %.noexc179, %.noexc182
  %.pre.i.i122.sink = phi ptr [ %i.gp, %.noexc179 ], [ %i.ht, %.noexc182 ], [ %i.la, %.noexc197 ], [ %i.jw, %.noexc194 ] ; 2 uses
  %.sink.ph = phi ptr [ %i.gc, %.noexc179 ], [ %i.gc, %.noexc182 ], [ %i.jj, %.noexc197 ], [ %i.jj, %.noexc194 ]
  %.phi.trans.insert.i.i123 = getelementptr inbounds i8, ptr %.pre.i.i122.sink, i64 -4
  %.pre2.i.i124 = load i32, ptr %.phi.trans.insert.i.i123, align 4, !tbaa !52
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split, %bb.bp, %bb.ap
  %.sink554 = phi ptr [ %i.gg, %bb.ap ], [ %i.jn, %bb.bp ], [ %.pre.i.i122.sink, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink553 = phi i32 [ %i.gj, %bb.ap ], [ %i.jq, %bb.bp ], [ %.pre2.i.i124, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.gc, %bb.ap ], [ %i.jj, %bb.bp ], [ %.sink.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.sink.split ]
  %i.lf = getelementptr inbounds i8, ptr %.sink554, i64 -4
  %i.lg = zext i32 %.sink553 to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.sink554, i64 %i.lg
  store ptr %.sink, ptr %i.lh, align 8, !tbaa !62
  %i.li = add i32 %.sink553, 1
  store i32 %i.li, ptr %i.lf, align 4, !tbaa !52
  %14 = add i32 %.044311, 1
  %i.lj = load ptr, ptr %i.r, align 8, !tbaa !32  ; 2 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %.critedge, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit85, !llvm.loop !461

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.c, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0225.0314, i64 16 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.ll, %i.g
  br i1 %.not1.i.i, label %_ZN14core_hashtableIN7obj_mapI4sortP10ref_vectorI3app11ast_managerEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit, label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.ce
  %.sroa.0225.1 = phi ptr [ %i.lo, %bb.ce ], [ %i.ll, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ] ; 3 uses
  %i.lm = load ptr, ptr %.sroa.0225.1, align 8, !tbaa !192
  %i.ln = icmp ult ptr %i.lm, inttoptr (i64 2 to ptr)
  br i1 %i.ln, label %bb.ce, label %_ZN14core_hashtableIN7obj_mapI4sortP10ref_vectorI3app11ast_managerEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit

bb.ce:                                            ; preds = %.lr.ph.i.i127
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0225.1, i64 16 ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.lo, %i.g
  br i1 %.not.i.i128, label %_ZN14core_hashtableIN7obj_mapI4sortP10ref_vectorI3app11ast_managerEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit, label %.lr.ph.i.i127, !llvm.loop !194

_ZN14core_hashtableIN7obj_mapI4sortP10ref_vectorI3app11ast_managerEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE8iteratorppEv.exit: ; preds = %.lr.ph.i.i127, %bb.ce, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %.sroa.0225.2 = phi ptr [ %i.ll, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %.sroa.0225.1, %.lr.ph.i.i127 ], [ %i.lo, %bb.ce ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0225.2, %i.k
  br i1 %.not, label %._crit_edge316, label %bb.c

.body166:                                         ; preds = %bb.ba, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i176, %bb.al, %bb.bg
  %.sroa.6219.0.lcssa473 = phi ptr [ %.sroa.6219.0.lcssa472, %bb.ax ], [ %.sroa.6219.0.lcssa472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i176 ], [ %.sroa.6219.0.lcssa472, %bb.bg ], [ %.sroa.6219.0.lcssa472, %bb.ba ], [ %.sroa.6219.0.lcssa471, %bb.al ] ; 2 uses
  %i.lp = phi ptr [ %i.dv, %bb.ax ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i176 ], [ %i.dv, %bb.bg ], [ %i.dv, %bb.ba ], [ %i.ch, %bb.al ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.4, %bb.ax ], [ %.sroa.10.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i176 ], [ %.sroa.10.4, %bb.bg ], [ %.sroa.10.4, %bb.ba ], [ %.sroa.10.3, %bb.al ] ; 2 uses
  %.pn59.pn = phi { ptr, i32 } [ %i.hq, %bb.ax ], [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i176 ], [ %i.ii, %bb.bg ], [ %i.hu, %bb.ba ], [ %i.fp, %bb.al ] ; 2 uses
  %i.lq = icmp eq ptr %.sroa.10.1, null
  br i1 %i.lq, label %.body, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129:        ; preds = %bb.cd, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i191, %bb.aa, %bb.ca, %bb.cb, %bb.cc, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i162, %.body166
  %.sroa.6219.0.lcssa474 = phi ptr [ %.sroa.6219.0.lcssa473, %.body166 ], [ %.sroa.6219.0.lcssa472, %bb.bx ], [ %.sroa.6219.0.lcssa472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i191 ], [ %.sroa.6219.0.lcssa472, %bb.cd ], [ %.sroa.6219.0.lcssa471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i162 ], [ %.sroa.6219.0.lcssa472, %bb.cc ], [ %.sroa.6219.0.lcssa472, %bb.bh ], [ %.sroa.6219.0.lcssa472, %bb.ca ], [ %.sroa.6219.0.lcssa471, %bb.aa ], [ %.sroa.6219.0.lcssa472, %bb.cb ]
  %i.lr = phi ptr [ %i.lp, %.body166 ], [ %i.dv, %bb.bx ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i191 ], [ %i.dv, %bb.cd ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i162 ], [ %i.dv, %bb.cc ], [ %i.dv, %bb.bh ], [ %i.dv, %bb.ca ], [ %i.ch, %bb.aa ], [ %i.dv, %bb.cb ]
  %.pn59.pn234 = phi { ptr, i32 } [ %.pn59.pn, %.body166 ], [ %i.kx, %bb.bx ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i191 ], [ %i.le, %bb.cd ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i162 ], [ %i.ld, %bb.cc ], [ %i.ij, %bb.bh ], [ %i.lb, %bb.ca ], [ %i.do, %bb.aa ], [ %i.lc, %bb.cb ]
  %.sroa.10.1233 = phi ptr [ %.sroa.10.1, %.body166 ], [ %.sroa.10.4, %bb.bx ], [ %.sroa.10.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i191 ], [ %.sroa.10.4, %bb.cd ], [ %.sroa.10.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i162 ], [ %.sroa.10.4, %bb.cc ], [ %.sroa.10.4, %bb.bh ], [ %.sroa.10.4, %bb.ca ], [ %.sroa.10.3, %bb.aa ], [ %.sroa.10.4, %bb.cb ] ; 4 uses
  %i.ls = getelementptr inbounds i8, ptr %.sroa.10.1233, i64 -4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !52 ; 2 uses
  %i.lu = zext i32 %i.lt to i64
  %i.lv = shl nuw nsw i64 %i.lu, 3
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.10.1233, i64 %i.lv
  %.not.i130 = icmp eq i32 %i.lt, 0
  br i1 %.not.i130, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i138, label %.lr.ph.i.i131

.lr.ph.i.i131:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i134
  %.06.i.i132 = phi ptr [ %i.mc, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i134 ], [ %.sroa.10.1233, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129 ] ; 2 uses
  %i.lx = load ptr, ptr %.06.i.i132, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i133 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i.i133, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i134, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i131
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !50
  %i.ma = add i32 %i.lz, -1                       ; 2 uses
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !50
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.cg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i134

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.lr, ptr noundef nonnull %i.lx)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i134 unwind label %bb.ci

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i134: ; preds = %bb.cg, %bb.cf, %.lr.ph.i.i131
  %i.mc = getelementptr inbounds nuw i8, ptr %.06.i.i132, i64 8 ; 2 uses
  %i.md = icmp ult ptr %i.mc, %i.lw
  br i1 %i.md, label %.lr.ph.i.i131, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i138, !llvm.loop !63

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i138: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i134, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i129
  %i.me = getelementptr inbounds i8, ptr %.sroa.10.1233, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.me)
          to label %.body unwind label %bb.ch

bb.ch:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i138
  %i.mf = landingpad { ptr, i32 }
          catch ptr null
  %i.mg = extractvalue { ptr, i32 } %i.mf, 0
  call void @__clang_call_terminate(ptr %i.mg) #23
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #23
  unreachable

.body:                                            ; preds = %.body166, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i138, %bb.t
  %.sroa.6219.0245 = phi ptr [ %.sroa.6219.0.lcssa474, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i138 ], [ %.sroa.6219.0.lcssa473, %.body166 ], [ %.sroa.6219.0307, %bb.t ] ; 2 uses
  %.pn63 = phi { ptr, i32 } [ %.pn59.pn234, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i138 ], [ %.pn59.pn, %.body166 ], [ %i.ce, %bb.t ] ; 2 uses
  %i.mj = icmp eq ptr %.sroa.6219.0245, null
  br i1 %i.mj, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit150, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i140

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i140:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.p, %.body
  %.sroa.6219.0244 = phi ptr [ %.sroa.6219.0245, %.body ], [ %.sroa.6219.0307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %.sroa.6219.0307, %bb.p ] ; 4 uses
  %.pn63237 = phi { ptr, i32 } [ %.pn63, %.body ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.bv, %bb.p ]
  %i.mk = getelementptr inbounds i8, ptr %.sroa.6219.0244, i64 -4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !52 ; 2 uses
  %i.mm = zext i32 %i.ml to i64
  %i.mn = shl nuw nsw i64 %i.mm, 3
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.6219.0244, i64 %i.mn
  %.not.i141 = icmp eq i32 %i.ml, 0
  br i1 %.not.i141, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i149, label %.lr.ph.i.i142

.lr.ph.i.i142:                                    ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i140, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i145
  %.06.i.i143 = phi ptr [ %i.mu, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i145 ], [ %.sroa.6219.0244, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i140 ] ; 2 uses
  %i.mp = load ptr, ptr %.06.i.i143, align 8, !tbaa !428 ; 3 uses
  %.not.i.i.i.i.i144 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i.i144, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i145, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i142
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !50
  %i.ms = add i32 %i.mr, -1                       ; 2 uses
  store i32 %i.ms, ptr %i.mq, align 4, !tbaa !50
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %bb.ck, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i145

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.x, ptr noundef nonnull %i.mp)
          to label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i145 unwind label %bb.cm

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i145: ; preds = %bb.ck, %bb.cj, %.lr.ph.i.i142
  %i.mu = getelementptr inbounds nuw i8, ptr %.06.i.i143, i64 8 ; 2 uses
  %i.mv = icmp ult ptr %i.mu, %i.mo
  br i1 %i.mv, label %.lr.ph.i.i142, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i149, !llvm.loop !459

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i149: ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i145, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i140
  %i.mw = getelementptr inbounds i8, ptr %.sroa.6219.0244, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.mw)
          to label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit150 unwind label %bb.cl

bb.cl:                                            ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i149
  %i.mx = landingpad { ptr, i32 }
          catch ptr null
  %i.my = extractvalue { ptr, i32 } %i.mx, 0
  call void @__clang_call_terminate(ptr %i.my) #23
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  %i.na = extractvalue { ptr, i32 } %i.mz, 0
  call void @__clang_call_terminate(ptr %i.na) #23
  unreachable

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit150: ; preds = %.body, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i149
  %.pn63238 = phi { ptr, i32 } [ %.pn63, %.body ], [ %.pn63237, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i149 ]
  resume { ptr, i32 } %.pn63238
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z7deallocI10ref_vectorI3app11ast_managerEEvPT_(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.p, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.c, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.j = load ptr, ptr %.06.i.i, align 8, !tbaa !53 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !48, !align !49
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !tbaa !50
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.k, ptr noundef nonnull %i.j)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.f

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !66

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.r = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.c, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.s)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #23
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.b, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3mbp10term_graphD1Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18for_each_expr_coreIN3mbp20array_project_plugin3imp19for_each_store_procE8obj_markI4expr10bit_vector14default_t2uintIS5_EELb0ELb0EEvRT_RT0_PS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.sbuffer, align 8             ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !462    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !463
  %i.g = icmp ult i32 %i.d, %i.f
  %i.h = and i32 %i.d, 31
  %i.i = shl nuw i32 1, %i.h                      ; 2 uses
  br i1 %i.g, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, label %bb.c

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !177  ; 2 uses
  %i.l = lshr i32 %i.d, 5
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !52
  %i.p = and i32 %i.o, %i.i
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit, label %bb.aw

bb.c:                                             ; preds = %bb.b
  %i.q = add i32 %i.d, 1
  tail call void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.q, i1 noundef zeroext false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !177
  %.pre235 = lshr i32 %i.d, 5
  %.pre236 = zext nneg i32 %.pre235 to i64
  br label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit: ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, %bb.c
  %.pre-phi237 = phi i64 [ %i.m, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ], [ %.pre236, %bb.c ]
  %i.r = phi ptr [ %i.k, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ], [ %.pre, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.pre-phi237 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !52
  %i.u = or i32 %i.t, %i.i
  store i32 %i.u, ptr %i.s, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !464
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 17 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  store i32 16, ptr %i.x, align 4, !tbaa !467
  store ptr %2, ptr %i.v, align 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %.sroa.5146.0..sroa_idx, align 8
  store i32 1, ptr %i.w, align 8, !tbaa !468
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %.preheader

thread-pre-splitthread-pre-split:                 ; preds = %bb.ar, %._crit_edge
  %.pr.pr = load i32, ptr %i.w, align 8, !tbaa !468
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-splitthread-pre-split, %.thread161, %bb.e
  %.pr = phi i32 [ %.pr.pr, %thread-pre-splitthread-pre-split ], [ %i.ad, %.thread161 ], [ %i.ad, %bb.e ] ; 2 uses
  %i.aa = icmp eq i32 %.pr, 0
  br i1 %i.aa, label %bb.at, label %.preheader.backedge

.preheader:                                       ; preds = %.preheader.backedge, %bb.d
  %i.ab = phi i32 [ 1, %bb.d ], [ %.be, %.preheader.backedge ] ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !464
  %i.ad = add i32 %i.ab, -1                       ; 6 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ae ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !469 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %trunc = trunc i32 %i.ai to i16
  switch i16 %trunc, label %bb.aq [
    i16 1, label %bb.e
    i16 0, label %bb.g
    i16 2, label %bb.ac
  ]

bb.e:                                             ; preds = %.preheader
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !468
  br label %thread-pre-split

bb.f:                                             ; preds = %bb.ar, %bb.aq
  %i.aj = landingpad { ptr, i32 }
          cleanup
end_hunk_1
