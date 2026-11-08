Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/qe_mbi?download=true
inline.NumInlined: 1405
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2qe9uflia_mbi15add_arith_dcertER5modelR10ref_vectorI4expr11ast_managerE:bb.a

.lr.ph153:                                        ; preds = %.loopexit, %_ZN14core_hashtableIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit
  %.sroa.0123.0152 = phi ptr [ %.sroa.0123.2, %_ZN14core_hashtableIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit ], [ %.sroa.0.1.i.i, %.loopexit ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0123.0152, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !108, !nonnull !91, !align !92 ; 2 uses
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !165 ; 5 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE3endEv.exit

_ZNK6vectorIP3appLb0EjE3endEv.exit:               ; preds = %.lr.ph153
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !87 ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  %.not146 = icmp eq i32 %i.cx, 0
  br i1 %.not146, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.preheader, label %.lr.ph

.critedge132.preheader:                           ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %.pre = load ptr, ptr %i.cs, align 8, !tbaa !165 ; 2 uses
  %i.db = icmp eq ptr %.pre, null
  br i1 %i.db, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.preheader

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.preheader:    ; preds = %_ZNK6vectorIP3appLb0EjE3endEv.exit, %.critedge132.preheader
  %.sroa.6.0.lcssa224 = phi ptr [ %.sroa.6.1, %.critedge132.preheader ], [ null, %_ZNK6vectorIP3appLb0EjE3endEv.exit ] ; 5 uses
  %i.dc = phi ptr [ %.pre, %.critedge132.preheader ], [ %i.cu, %_ZNK6vectorIP3appLb0EjE3endEv.exit ]
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit

.lr.ph:                                           ; preds = %_ZNK6vectorIP3appLb0EjE3endEv.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %.041148 = phi ptr [ %i.ev, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ %i.cu, %_ZNK6vectorIP3appLb0EjE3endEv.exit ] ; 2 uses
  %.sroa.6.0147 = phi ptr [ %.sroa.6.1, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ null, %_ZNK6vectorIP3appLb0EjE3endEv.exit ] ; 6 uses
  %i.dd = load ptr, ptr %.041148, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN5modelclEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %12, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef %i.dd)
          to label %bb.an unwind label %bb.az

bb.an:                                            ; preds = %.lr.ph
  %i.de = load ptr, ptr %12, align 8, !tbaa !110
  %i.df = icmp eq ptr %.sroa.6.0147, null
  br i1 %i.df, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dg = getelementptr inbounds i8, ptr %.sroa.6.0147, i64 -4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !87 ; 5 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.6.0147, i64 -8 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !87
  %i.dk = icmp eq i32 %i.dh, %i.dj
  br i1 %i.dk, label %bb.aq, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.dl = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc112 unwind label %bb.ba ; 3 uses

.noexc112:                                        ; preds = %bb.ap
  store i32 2, ptr %i.dl, align 4, !tbaa !87
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 0, ptr %i.dm, align 4, !tbaa !87
  br label %.noexc81

bb.aq:                                            ; preds = %bb.ao
  %i.dn = mul i32 %i.dh, 3
  %i.do = add i32 %i.dn, 1
  %i.dp = lshr i32 %i.do, 1                       ; 3 uses
  %i.dq = shl i32 %i.dp, 3
  %i.dr = add i32 %i.dq, 8                        ; 2 uses
  %.not.i109 = icmp ugt i32 %i.dp, %i.dh
  br i1 %.not.i109, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ds = shl i32 %i.dh, 3
  %i.dt = add i32 %i.ds, 8
  %.not27.i = icmp ugt i32 %i.dr, %i.dt
  br i1 %.not27.i, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.du = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.du, align 8, !tbaa !96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 24 ; 3 uses
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !170
  %i.dx = load ptr, ptr %3, align 8, !tbaa !172   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !173 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, 16
  call void @llvm.assume(i1 %i.ec)
  %i.ed = add nuw nsw i64 %i.eb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dw, ptr noundef nonnull align 8 dereferenceable(1) %i.dy, i64 %i.ed, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.at
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !172
  %i.ee = load i64, ptr %i.dy, align 8, !tbaa !174
  store i64 %i.ee, ptr %i.dw, align 8, !tbaa !174
  %.phi.trans.insert.i110 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i111 = load i64, ptr %.phi.trans.insert.i110, align 8, !tbaa !173
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.au
  %i.ef = phi i64 [ %i.eb, %bb.au ], [ %.pre.i111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %i.ef, ptr %i.eh, align 8, !tbaa !173
  store ptr %i.dy, ptr %3, align 8, !tbaa !172
  store i64 0, ptr %i.eg, align 8, !tbaa !173
  store i8 0, ptr %i.dy, align 8, !tbaa !174
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.ay unwind label %bb.av

bb.av:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = load ptr, ptr %3, align 8, !tbaa !172   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dy
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.av
  %i.el = load i64, ptr %i.dy, align 8, !tbaa !174
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body113

bb.aw:                                            ; preds = %bb.as
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @__cxa_free_exception(ptr %i.du) #22
  br label %.body113

bb.ax:                                            ; preds = %bb.ar
  %i.eo = zext i32 %i.dr to i64
  %i.ep = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.di, i64 noundef %i.eo)
          to label %.noexc115 unwind label %bb.ba ; 3 uses

.noexc115:                                        ; preds = %bb.ax
  store i32 %i.dp, ptr %i.ep, align 4, !tbaa !87
  %.phi.trans.insert.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %.pre2.i.i.pre = load i32, ptr %.phi.trans.insert.i.i.phi.trans.insert, align 4, !tbaa !87
  br label %.noexc81

bb.ay:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc81:                                         ; preds = %.noexc115, %.noexc112
  %.pre2.i.i = phi i32 [ 0, %.noexc112 ], [ %.pre2.i.i.pre, %.noexc115 ]
  %.pn = phi ptr [ %i.dl, %.noexc112 ], [ %i.ep, %.noexc115 ]
  %.sroa.6.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.ao, %.noexc81
  %.sroa.6.1 = phi ptr [ %.sroa.6.2, %.noexc81 ], [ %.sroa.6.0147, %bb.ao ] ; 5 uses
  %i.eq = phi i32 [ %.pre2.i.i, %.noexc81 ], [ %i.dh, %bb.ao ] ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.sroa.6.1, i64 -4
  %i.es = zext i32 %i.eq to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.1, i64 %i.es
  store ptr %i.de, ptr %i.et, align 8, !tbaa !60
  %i.eu = add i32 %i.eq, 1
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ev = getelementptr inbounds nuw i8, ptr %.041148, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ev, %i.da
  br i1 %.not, label %.critedge132.preheader, label %.lr.ph

bb.az:                                            ; preds = %.lr.ph
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ba:                                            ; preds = %bb.ax, %bb.ap
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.body113:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.aw, %bb.ba
  %eh.lpad-body114 = phi { ptr, i32 } [ %i.ex, %bb.ba ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.en, %bb.aw ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #22
  br label %bb.bj

_ZNK6vectorIP3appLb0EjE4sizeEv.exit88..critedge132.loopexit_crit_edge: ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88
  br label %.critedge132.loopexit, !llvm.loop !345

.critedge132.loopexit:                            ; preds = %bb.bi, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88..critedge132.loopexit_crit_edge
  %i.ey = phi ptr [ %i.gd, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88..critedge132.loopexit_crit_edge ], [ %i.gq, %bb.bi ] ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %.critedge, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit

_ZNK6vectorIP3appLb0EjE4sizeEv.exit:              ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.preheader, %.critedge132.loopexit
  %i.fa = phi ptr [ %i.dc, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.preheader ], [ %i.ey, %.critedge132.loopexit ] ; 3 uses
  %indvars.iv171 = phi i64 [ 0, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.preheader ], [ %indvars.iv.next172, %.critedge132.loopexit ] ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !87
  %i.fd = zext i32 %i.fc to i64
  %i.fe = icmp samesign ult i64 %indvars.iv171, %i.fd
  br i1 %i.fe, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88.preheader, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, %.critedge132.loopexit
  %i.ff = icmp eq ptr %.sroa.6.0.lcssa224, null
  br i1 %i.ff, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %.critedge132.preheader, %.critedge
  %.sroa.6.0.lcssa221228 = phi ptr [ %.sroa.6.0.lcssa224, %.critedge ], [ %.sroa.6.1, %.critedge132.preheader ] ; 4 uses
  %i.fg = getelementptr inbounds i8, ptr %.sroa.6.0.lcssa221228, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !87 ; 2 uses
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 3
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.6.0.lcssa221228, i64 %i.fj
  %.not.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %.sroa.6.0.lcssa221228, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.fl = load ptr, ptr %.06.i.i, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !44
  %i.fo = add i32 %i.fn, -1                       ; 2 uses
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !44
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.bc, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ct, ptr noundef nonnull %i.fl)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.be

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.bc, %bb.bb, %.lr.ph.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.fr = icmp ult ptr %i.fq, %i.fk
  br i1 %i.fr, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, !llvm.loop !7

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.fs = getelementptr inbounds i8, ptr %.sroa.6.0.lcssa221228, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fs)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #23
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #23
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %.lr.ph153, %.critedge, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0152, i64 16 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.fx, %i.ag
  br i1 %.not1.i.i, label %_ZN14core_hashtableIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, label %.lr.ph.i.i85

.lr.ph.i.i85:                                     ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.bf
  %.sroa.0123.1 = phi ptr [ %i.ga, %bb.bf ], [ %i.fx, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ] ; 3 uses
  %i.fy = load ptr, ptr %.sroa.0123.1, align 8, !tbaa !202
  %i.fz = icmp ult ptr %i.fy, inttoptr (i64 2 to ptr)
  br i1 %i.fz, label %bb.bf, label %_ZN14core_hashtableIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit

bb.bf:                                            ; preds = %.lr.ph.i.i85
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0123.1, i64 16 ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.ga, %i.ag
  br i1 %.not.i.i86, label %_ZN14core_hashtableIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, label %.lr.ph.i.i85, !llvm.loop !344

_ZN14core_hashtableIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit: ; preds = %.lr.ph.i.i85, %bb.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %.sroa.0123.2 = phi ptr [ %i.fx, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %.sroa.0123.1, %.lr.ph.i.i85 ], [ %i.ga, %bb.bf ] ; 2 uses
  %.not131 = icmp eq ptr %.sroa.0123.2, %i.cf
  br i1 %.not131, label %._crit_edge.loopexit, label %.lr.ph153

_ZNK6vectorIP3appLb0EjE4sizeEv.exit88.preheader:  ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.lcssa224, i64 %indvars.iv171
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !60
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88

_ZNK6vectorIP3appLb0EjE4sizeEv.exit88:            ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88.preheader, %bb.bi
  %i.gd = phi ptr [ %i.fa, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88.preheader ], [ %i.gq, %bb.bi ] ; 2 uses
  %i.ge = phi ptr [ %i.fa, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88.preheader ], [ %i.gr, %bb.bi ] ; 4 uses
  %indvars.iv168 = phi i64 [ %indvars.iv.next172, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88.preheader ], [ %indvars.iv.next169, %bb.bi ] ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !87
  %i.gh = zext i32 %i.gg to i64
  %i.gi = icmp samesign ult i64 %indvars.iv168, %i.gh
  br i1 %i.gi, label %bb.bg, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88..critedge132.loopexit_crit_edge, !llvm.loop !345

bb.bg:                                            ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.lcssa224, i64 %indvars.iv168
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !60
  %.not56 = icmp eq ptr %i.gc, %i.gk
  br i1 %.not56, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv171
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !175
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv168
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !175
  invoke void @_ZN2qe9uflia_mbi15add_arith_dcertER5modelR10ref_vectorI4expr11ast_managerEP3appS9_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.gm, ptr noundef %i.go)
          to label %._crit_edge175 unwind label %.thread127

._crit_edge175:                                   ; preds = %bb.bh
  %.pre176 = load ptr, ptr %i.cs, align 8, !tbaa !165 ; 2 uses
  br label %bb.bi

.thread127:                                       ; preds = %bb.bh
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i89

bb.bi:                                            ; preds = %._crit_edge175, %bb.bg
  %i.gq = phi ptr [ %.pre176, %._crit_edge175 ], [ %i.gd, %bb.bg ] ; 2 uses
  %i.gr = phi ptr [ %.pre176, %._crit_edge175 ], [ %i.ge, %bb.bg ] ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %.critedge132.loopexit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit88, !llvm.loop !346

bb.bj:                                            ; preds = %bb.az, %.body113
  %.pn58 = phi { ptr, i32 } [ %eh.lpad-body114, %.body113 ], [ %i.ew, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.gt = icmp eq ptr %.sroa.6.0147, null
  br i1 %i.gt, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit99, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i89

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i89:         ; preds = %.thread127, %bb.bj
  %.sroa.6.0136 = phi ptr [ %.sroa.6.0.lcssa224, %.thread127 ], [ %.sroa.6.0147, %bb.bj ] ; 4 uses
  %.pn58.pn129 = phi { ptr, i32 } [ %i.gp, %.thread127 ], [ %.pn58, %bb.bj ]
  %i.gu = getelementptr inbounds i8, ptr %.sroa.6.0136, i64 -4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !87 ; 2 uses
  %i.gw = zext i32 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, 3
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.6.0136, i64 %i.gx
  %.not.i90 = icmp eq i32 %i.gv, 0
  br i1 %.not.i90, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i98, label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i89, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i94
  %.06.i.i92 = phi ptr [ %i.he, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i94 ], [ %.sroa.6.0136, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i89 ] ; 2 uses
  %i.gz = load ptr, ptr %.06.i.i92, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i.i93, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i94, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i91
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !44
  %i.hc = add i32 %i.hb, -1                       ; 2 uses
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !44
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.bl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i94

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ct, ptr noundef nonnull %i.gz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i94 unwind label %bb.bn

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i94: ; preds = %bb.bl, %bb.bk, %.lr.ph.i.i91
  %i.he = getelementptr inbounds nuw i8, ptr %.06.i.i92, i64 8 ; 2 uses
  %i.hf = icmp ult ptr %i.he, %i.gy
  br i1 %i.hf, label %.lr.ph.i.i91, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i98, !llvm.loop !7

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i98: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i94, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i89
  %i.hg = getelementptr inbounds i8, ptr %.sroa.6.0136, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hg)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit99 unwind label %bb.bm

bb.bm:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i98
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #23
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #23
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit99: ; preds = %bb.bj, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i98, %bb.p, %bb.ai
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %.pn68.pn.pn, %bb.ai ], [ %.pn58.pn129, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i98 ], [ %.pn58, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.hl = load ptr, ptr %6, align 8, !tbaa !198   ; 3 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %_ZN7obj_mapI9func_decl10ptr_vectorI3appEED2Ev.exit108, label %bb.bo

bb.bo:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit99
  %i.hn = load i32, ptr %i.b, align 8, !tbaa !195 ; 2 uses
  %.not6.i.i.i.i.i.i.i100 = icmp eq i32 %i.hn, 0
  br i1 %.not6.i.i.i.i.i.i.i100, label %_ZSt9destroy_nIPN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEjET_S8_T0_.exit.i.i.i.i107, label %.lr.ph.i.i.i.i.i.i.i101

.lr.ph.i.i.i.i.i.i.i101:                          ; preds = %bb.bo, %_ZSt8_DestroyIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i105
  %.08.i.i.i.i.i.i.i102 = phi i32 [ %i.hu, %_ZSt8_DestroyIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i105 ], [ %i.hn, %bb.bo ]
  %.047.i.i.i.i.i.i.i103 = phi ptr [ %i.ht, %_ZSt8_DestroyIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i105 ], [ %i.hl, %bb.bo ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i103, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !165 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i104 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i104, label %_ZSt8_DestroyIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i105, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i101
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hq)
          to label %_ZSt8_DestroyIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i105 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #23
  unreachable

_ZSt8_DestroyIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i105: ; preds = %bb.bp, %.lr.ph.i.i.i.i.i.i.i101
  %i.ht = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i.i103, i64 16
  %i.hu = add i32 %.08.i.i.i.i.i.i.i102, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i106 = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i.i.i.i.i.i106, label %_ZSt9destroy_nIPN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEjET_S8_T0_.exit.i.i.i.i107, label %.lr.ph.i.i.i.i.i.i.i101, !llvm.loop !13

_ZSt9destroy_nIPN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEjET_S8_T0_.exit.i.i.i.i107: ; preds = %_ZSt8_DestroyIN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEEvPT_.exit.i.i.i.i.i.i.i105, %bb.bo
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hl)
          to label %_ZN7obj_mapI9func_decl10ptr_vectorI3appEED2Ev.exit108 unwind label %bb.br

bb.br:                                            ; preds = %_ZSt9destroy_nIPN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEjET_S8_T0_.exit.i.i.i.i107
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #23
  unreachable

_ZN7obj_mapI9func_decl10ptr_vectorI3appEED2Ev.exit108: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit99, %_ZSt9destroy_nIPN7obj_mapI9func_decl10ptr_vectorI3appEE13obj_map_entryEjET_S8_T0_.exit.i.i.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn68.pn.pn.pn.pn
}

declare void @_ZN3mbp10term_graph8set_varsERK10ref_vectorI9func_decl11ast_managerEb(ptr noundef nonnull align 8 dereferenceable(244), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN3mbp10term_graph5dcertER5modelRK10ref_vectorI4expr11ast_managerE(ptr dead_on_unwind writable sret(%class.ref_vector.1) align 8, ptr noundef nonnull align 8 dereferenceable(244), ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIP9func_declLb0EjED2Ev.exit, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit:        ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.06.i = phi ptr [ %i.o, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i ], [ %i.b, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !77 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !91, !align !92
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !44
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.i)
          to label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i unwind label %bb.e

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %.lr.ph.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, !llvm.loop !3

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit: ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIP9func_declLb0EjED2Ev.exit, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit
end_hunk_0
