Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/array_decl_plugin?download=true
inline.NumInlined: 1941
inline.NumDeleted: 828
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN17array_decl_plugin9mk_selectEjPKP4sort:bb.a
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %._crit_edge.i.i76, label %scalar.ph

._crit_edge.i.i76:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc84
  %.not.i.i.i77 = icmp eq ptr %.pre.i.i70, %i.x
  %i.dq = icmp eq ptr %.pre.i.i70, null
  %or.cond.i.i.i78 = or i1 %.not.i.i.i77, %i.dq
  br i1 %or.cond.i.i.i78, label %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i80, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i76
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i70)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc85:                                         ; preds = %bb.aa
  %.pre2.pre.i79 = load i32, ptr %i.y, align 8, !tbaa !155
  br label %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i80

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i73 = phi i64 [ %indvars.iv.next.i.i74.3, %scalar.ph ], [ %indvars.iv.i.i73.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i.i73
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i70, i64 %indvars.iv.i.i73
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !137
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !137
  %indvars.iv.next.i.i74 = add nuw nsw i64 %indvars.iv.i.i73, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i74
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i70, i64 %indvars.iv.next.i.i74
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !137
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !137
  %indvars.iv.next.i.i74.1 = add nuw nsw i64 %indvars.iv.i.i73, 2 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i74.1
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i70, i64 %indvars.iv.next.i.i74.1
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !137
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !137
  %indvars.iv.next.i.i74.2 = add nuw nsw i64 %indvars.iv.i.i73, 3 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i74.2
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i70, i64 %indvars.iv.next.i.i74.2
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !137
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !137
  %indvars.iv.next.i.i74.3 = add nuw nsw i64 %indvars.iv.i.i73, 4 ; 2 uses
  %exitcond.not.i.i75.3 = icmp eq i64 %indvars.iv.next.i.i74.3, %wide.trip.count.i.i72
  br i1 %exitcond.not.i.i75.3, label %._crit_edge.i.i76, label %scalar.ph, !llvm.loop !321

_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i80:    ; preds = %.noexc85, %._crit_edge.i.i76
  %.pre2.i81 = phi i32 [ %i.dd, %._crit_edge.i.i76 ], [ %.pre2.pre.i79, %.noexc85 ]
  store ptr %i.dc, ptr %6, align 8, !tbaa !153
  store i32 %i.cz, ptr %i.z, align 4, !tbaa !154
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i80, %._crit_edge.i82
  %i.ed = phi i32 [ %i.cx, %._crit_edge.i82 ], [ %.pre2.i81, %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i80 ] ; 2 uses
  %i.ee = phi ptr [ %.pre.i83, %._crit_edge.i82 ], [ %i.dc, %_ZN6bufferIP4sortLb0ELj16EE6expandEv.exit.i80 ] ; 2 uses
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef
  store ptr %i.cw, ptr %i.eg, align 8, !tbaa !137
  %i.eh = add i32 %i.ed, 1
  store i32 %i.eh, ptr %i.y, align 8, !tbaa !155
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !322

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.aa, %bb.z, %.invoke
  %lpad.loopexit.split-lp161 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ac:                                            ; preds = %_ZNK4decl18get_num_parametersEv.exit.i
  %i.ei = load ptr, ptr %i.aq, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !39
  invoke void @_ZN14func_decl_infoC1EiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(19) %12, i32 noundef %i.ek, i32 noundef 1, i32 noundef 0, ptr noundef null)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.el = load i32, ptr %12, align 8, !tbaa !124
  %i.em = icmp eq i32 %i.el, -1
  br i1 %i.em, label %bb.ae, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 17
  %i.eo = load i16, ptr %i.en, align 1
  %i.ep = and i16 %i.eo, 507
  %or.cond.i = icmp eq i16 %i.ep, 0
  br i1 %or.cond.i, label %bb.af, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i

_ZNK14func_decl_info7is_nullEv.exit.thread.i:     ; preds = %bb.ae, %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %_ZNK14func_decl_info7is_nullEv.exit.thread.i, %bb.ae
  %.sink.i = phi ptr [ %12, %_ZNK14func_decl_info7is_nullEv.exit.thread.i ], [ null, %bb.ae ]
  %i.eq = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef %1, ptr noundef nonnull %i.ee, ptr noundef %i.ei, ptr noundef %.sink.i)
          to label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit unwind label %bb.ak

_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit: ; preds = %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !125 ; 4 uses
  %.not.i.i.i87 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i87, label %_ZN9decl_infoD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !126 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.ew, %.lr.ph.i.i.i.i.i.i.i ], [ %i.eu, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i.i ], [ %i.es, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #25
  %i.ev = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.ew = add i32 %.07.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.er, align 8, !tbaa !125
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.ex = phi ptr [ %.pre.i.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.es, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ey)
          to label %_ZN9decl_infoD2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #26
  unreachable

_ZN9decl_infoD2Ev.exit:                           ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.fb = load ptr, ptr %6, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.fb, %i.x
  %i.fc = icmp eq ptr %i.fb, null
  %or.cond.i.i.i89 = or i1 %.not.i.i.i88, %i.fc
  br i1 %or.cond.i.i.i89, label %_ZN6bufferIP4sortLb0ELj16EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN9decl_infoD2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fb)
          to label %_ZN6bufferIP4sortLb0ELj16EED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #26
  unreachable

_ZN6bufferIP4sortLb0ELj16EED2Ev.exit:             ; preds = %_ZN9decl_infoD2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret ptr %i.eq

bb.aj:                                            ; preds = %bb.ac
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.af
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %12) #25
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.ak ], [ %i.ff, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.al
  %.pn38.pn = phi { ptr, i32 } [ %.pn33.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn, %bb.al ], [ %lpad.loopexit.split-lp161, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6bufferIP4sortLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn41 = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn38.pn, %.loopexit.split-lp ]
  resume { ptr, i32 } %.pn41
}

declare noundef zeroext i1 @_ZNK11ast_manager16compatible_sortsEP4sortS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z9to_stringI7obj_refI4sort11ast_managerEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK7obj_refI4sort11ast_managerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167, !noalias !332 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %i.e, align 8, !tbaa !168, !noalias !332 ; 2 uses
  %5 = icmp ugt ptr %i.d, %4
  %.08.i.i.i = select i1 %5, ptr %i.d, ptr %4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169, !noalias !332
  %i.h = ptrtoint ptr %.08.i.i.i to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.j, ptr %i.k, align 8, !tbaa !160, !noalias !332
  %i.l = load ptr, ptr %3, align 8, !tbaa !142, !noalias !332
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !143, !noalias !332
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !170, !alias.scope !332
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !142, !noalias !332 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !160, !noalias !332 ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !142, !alias.scope !332
  %i.w = load i64, ptr %i.q, align 8, !tbaa !143, !noalias !332
  store i64 %i.w, ptr %i.o, align 8, !tbaa !143, !alias.scope !332
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !160, !noalias !332
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.x = phi i64 [ %i.t, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.z, align 8, !tbaa !160, !alias.scope !332
  store ptr %i.q, ptr %i.n, align 8, !tbaa !142, !noalias !332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.y, i8 0, i64 9, i1 false), !noalias !332
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull %i.q, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !142, !alias.scope !332 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.o
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !143, !alias.scope !332
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #27
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !41
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.b, align 8, !tbaa !41
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !142 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.q
  br i1 %i.al, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load i64, ptr %i.q, align 8, !tbaa !143
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #25
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z9to_stringI12parameter_ppENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !338, !nonnull !136, !align !171
  %i.c = load ptr, ptr %1, align 8, !tbaa !339, !nonnull !136, !align !171
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11ast_manager7displayERSoRK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZlsRSoRK12parameter_pp.exit unwind label %bb.d ; 0 uses

_ZlsRSoRK12parameter_pp.exit:                     ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !167, !noalias !342 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZlsRSoRK12parameter_pp.exit
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %i.h, align 8, !tbaa !168, !noalias !342 ; 2 uses
  %5 = icmp ugt ptr %i.g, %4
  %.08.i.i.i = select i1 %5, ptr %i.g, ptr %4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !169, !noalias !342
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.m, ptr %i.n, align 8, !tbaa !160, !noalias !342
  %i.o = load ptr, ptr %3, align 8, !tbaa !142, !noalias !342
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !143, !noalias !342
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZlsRSoRK12parameter_pp.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !170, !alias.scope !342
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !142, !noalias !342 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.w = load i64, ptr %i.v, align 8, !tbaa !160, !noalias !342 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.s, ptr %0, align 8, !tbaa !142, !alias.scope !342
  %i.z = load i64, ptr %i.t, align 8, !tbaa !143, !noalias !342
  store i64 %i.z, ptr %i.r, align 8, !tbaa !143, !alias.scope !342
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !160, !noalias !342
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.aa = phi i64 [ %i.w, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !160, !alias.scope !342
  store ptr %i.t, ptr %i.q, align 8, !tbaa !142, !noalias !342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ab, i8 0, i64 9, i1 false), !noalias !342
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull %i.t, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !142, !alias.scope !342 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.r
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !143, !alias.scope !342
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #27
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ai = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !41
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.e, align 8, !tbaa !41
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !142 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.t
  br i1 %i.ao, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ap = load i64, ptr %i.t, align 8, !tbaa !143
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #25
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.d:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.d ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !157    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4sort11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !343, !nonnull !136, !align !171
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !159
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !159
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI4sort11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI4sort11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI4sort11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6bufferIP4sortLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.a, %i.b
  %i.c = icmp eq ptr %i.a, null
  %or.cond.i.i = or i1 %.not.i.i, %i.c
  br i1 %or.cond.i.i, label %_ZN6bufferIP4sortLb0ELj16EE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN6bufferIP4sortLb0ELj16EE7destroyEv.exit unwind label %bb.c

_ZN6bufferIP4sortLb0ELj16EE7destroyEv.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN17array_decl_plugin8mk_storeEjPKP4sort(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__format::_Arg_store.108", align 16 ; 7 uses
  %4 = alloca %"class.std::__format::_Arg_store", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %class.ptr_buffer, align 8          ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %class.obj_ref, align 8             ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %class.obj_ref, align 8            ; 6 uses
  %12 = alloca %struct.func_decl_info, align 8    ; 9 uses
  %i.a = icmp ult i32 %1, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  tail call void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull @.str.31) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !137    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120  ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK17array_decl_plugin13is_array_sortEP4sort.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK4decl13get_family_idEv.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !126
  br label %_ZNK4decl13get_family_idEv.exit.thread.i

_ZNK4decl13get_family_idEv.exit.thread.i:         ; preds = %bb.d, %bb.e
  %.ph = phi i32 [ 0, %bb.d ], [ %i.l, %bb.e ]    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !39
  %i.o = load i32, ptr %i.f, align 8, !tbaa !124
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %_ZNK17array_decl_plugin13is_array_sortEP4sort.exit, label %_ZNK17array_decl_plugin13is_array_sortEP4sort.exit.thread

_ZNK17array_decl_plugin13is_array_sortEP4sort.exit: ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !135
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZNK17array_decl_plugin13is_array_sortEP4sort.exit.thread

_ZNK17array_decl_plugin13is_array_sortEP4sort.exit.thread: ; preds = %bb.c, %_ZNK4decl13get_family_idEv.exit.thread.i, %_ZNK17array_decl_plugin13is_array_sortEP4sort.exit
end_hunk_0
